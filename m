Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757D016FD63
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zl5hGcD3UWXexAxK2nOdpYwNpWWsCKrQ8+tqW7SrNDE=; b=dEDQdIErP13BsuS3EdA3kQQIG
	uOmPbfIRsGJFsEs5DXpY6SOoFEuCRffFN0YpylKlTCgPTj9r7RF7UkaakttSNSbbbo3acY+1q6jT2
	VU5HgQrSeEg79HB4Y+2gdTALsG/QUTvJB0jd+Wzc2vbttSYMHKWhqi0EjAVgZJBRFXhC0FUVLExX2
	OXpOXTmtz+2KFMLEhUIQhgmI8grdfYNozkmXTUNZuE6mSDXp7ayJ/7FwOLIUTHAZJeNDQDNnfXNBs
	RZ8URl5o6r4YHw/Dy4dMQclnIg/PyxMFGvBXdPPhDVP3LPW1G1AF3JncJDuKuK3fyQ7MbHesp94Vl
	K9nQ94C7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ukq-0006ep-FM; Wed, 26 Feb 2020 11:21:28 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uka-0006dv-9T
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:21:16 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48SCzM1tTVz9tyML;
 Wed, 26 Feb 2020 12:21:03 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=dcbZx4t5; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id J7zfGGKBixz2; Wed, 26 Feb 2020 12:21:03 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48SCzL6n6pz9tyLT;
 Wed, 26 Feb 2020 12:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582716063; bh=u+44lvk1l0rvN0rVt0XeRLZF9pAnZ+SeTYsCRW90jUs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=dcbZx4t5T2TqZBsmJqeETgOslZL/sjGjY3jtgZjyAkWRnWp+cZWdaA9+1CVcQnyrg
 EAK/r3fzS6yjM9r4KrQXdxQ3U95U+v+IizkroXw9QSoxVs+Y7bA5gjhV+iBVeI3LhD
 1eV+B927JsHKM6Lu+qpoDnmZLHfscXCGj3HKorDY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 166CF8B844;
 Wed, 26 Feb 2020 12:21:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id HTbfYZhVV_tY; Wed, 26 Feb 2020 12:21:03 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B0DBC8B776;
 Wed, 26 Feb 2020 12:21:01 +0100 (CET)
Subject: Re: [PATCH v2 07/13] powerpc: add support for folded p4d page tables
To: Mike Rapoport <rppt@kernel.org>
References: <20200216081843.28670-1-rppt@kernel.org>
 <20200216081843.28670-8-rppt@kernel.org>
 <c79b363c-a111-389a-5752-51cf85fa8c44@c-s.fr> <20200218105440.GA1698@hump>
 <20200226091315.GA11803@hump> <f881f732-729b-a098-f520-b30e44dc10c8@c-s.fr>
 <20200226105615.GB11803@hump>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <7a008227-433c-73d7-b01a-1c6c7c66f04e@c-s.fr>
Date: Wed, 26 Feb 2020 12:20:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200226105615.GB11803@hump>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_032112_631017_D4C333DC 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNi8wMi8yMDIwIMOgIDExOjU2LCBNaWtlIFJhcG9wb3J0IGEgw6ljcml0wqA6Cj4gT24g
V2VkLCBGZWIgMjYsIDIwMjAgYXQgMTA6NDY6MTNBTSArMDEwMCwgQ2hyaXN0b3BoZSBMZXJveSB3
cm90ZToKPj4KPj4KPj4gTGUgMjYvMDIvMjAyMCDDoCAxMDoxMywgTWlrZSBSYXBvcG9ydCBhIMOp
Y3JpdMKgOgo+Pj4gT24gVHVlLCBGZWIgMTgsIDIwMjAgYXQgMTI6NTQ6NDBQTSArMDIwMCwgTWlr
ZSBSYXBvcG9ydCB3cm90ZToKPj4+PiBPbiBTdW4sIEZlYiAxNiwgMjAyMCBhdCAxMTo0MTowN0FN
ICswMTAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBMZSAxNi8w
Mi8yMDIwIMOgIDA5OjE4LCBNaWtlIFJhcG9wb3J0IGEgw6ljcml0wqA6Cj4+Pj4+PiBGcm9tOiBN
aWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4+Pj4+Pgo+Pj4+Pj4gSW1wbGVtZW50
IHByaW1pdGl2ZXMgbmVjZXNzYXJ5IGZvciB0aGUgNHRoIGxldmVsIGZvbGRpbmcsIGFkZCB3YWxr
cyBvZiBwNGQKPj4+Pj4+IGxldmVsIHdoZXJlIGFwcHJvcHJpYXRlIGFuZCByZXBsYWNlIDVsZXZl
bC1maXh1cC5oIHdpdGggcGd0YWJsZS1ub3A0ZC5oLgo+Pj4+Pgo+Pj4+PiBJIGRvbid0IHRoaW5r
IGl0IGlzIHdvcnRoIGFkZGluZyBhbGwgdGhpcyBhZGRpdGlvbm5hbHMgd2Fsa3Mgb2YgcDRkLCB0
aGlzCj4+Pj4+IHBhdGNoIGNvdWxkIGJlIGxpbWl0ZWQgdG8gY2hhbmdlcyBsaWtlOgo+Pj4+Pgo+
Pj4+PiAtCQlwdWQgPSBwdWRfb2Zmc2V0KHBnZCwgZ3BhKTsKPj4+Pj4gKwkJcHVkID0gcHVkX29m
ZnNldChwNGRfb2Zmc2V0KHBnZCwgZ3BhKSwgZ3BhKTsKPj4+Pj4KPj4+Pj4gVGhlIGFkZGl0aW9u
bmFsIHdhbGtzIHNob3VsZCBiZSBhZGRlZCB0aHJvdWdoIGFub3RoZXIgcGF0Y2ggdGhlIGRheSBw
b3dlcnBjCj4+Pj4+IG5lZWQgdGhlbS4KPj4+Pgo+Pj4+IE9rLCBJJ2xsIHVwZGF0ZSB0aGUgcGF0
Y2ggdG8gcmVkdWNlIHdhbGtpbmcgdGhlIHA0ZC4KPj4+Cj4+PiBIZXJlJ3Mgd2hhdCBJIGhhdmUg
d2l0aCBtb3JlIGRpcmVjdCBhY2Nlc2VzIGZyb20gcGdkIHRvIHB1ZC4KPj4KPj4gSSB3ZW50IHF1
aWNrbHkgdGhyb3VnaC4gVGhpcyBsb29rcyBwcm9taXNpbmcuCj4+Cj4+IERvIHdlIG5lZWQgdGhl
IHdhbGtfcDRkKCkgaW4gYXJjaC9wb3dlcnBjL21tL3B0ZHVtcC9oYXNocGFnZXRhYmxlLmMgPwo+
PiBDYW4ndCB3ZSBqdXN0IGRvCj4+Cj4+IEBAIC00NDUsNyArNDU5LDcgQEAgc3RhdGljIHZvaWQg
d2Fsa19wYWdldGFibGVzKHN0cnVjdCBwZ19zdGF0ZSAqc3QpCj4+ICAgCQlhZGRyID0gS0VSTl9W
SVJUX1NUQVJUICsgaSAqIFBHRElSX1NJWkU7Cj4+ICAgCQlpZiAoIXBnZF9ub25lKCpwZ2QpKQo+
PiAgIAkJCS8qIHBnZCBleGlzdHMgKi8KPj4gLQkJCXdhbGtfcHVkKHN0LCBwZ2QsIGFkZHIpOwo+
PiArCQkJd2Fsa19wdWQoc3QsIHA0ZF9vZmZzZXQocGdkLCBhZGRyKSwgYWRkcik7Cj4gCj4gV2Ug
Y2FuIGRvCj4gCj4gCWFkZHIgPSBLRVJOX1ZJUlRfU1RBUlQgKyBpICogUEdESVJfU0laRTsKPiAJ
cDRkID0gcDRkX29mZnNldChwZ2QsIGFkZHIpOwo+IAlpZiAoIXA0ZF9ub25lKCpwZ2QpKQo+IAkJ
d2Fsa19wdWQoKQo+IAo+IEJ1dCBJIGRvbid0IHRoaW5rIHRoaXMgaXMgcmVhbGx5IGVzc2VudGlh
bC4gQWdhaW4sIHdlIGFyZSB0cmFkaW5nIG9mZiBjb2RlCj4gY29uc2lzdGVuY3kgdnMgbGluZSBj
b3VudC4gSSBkb24ndCB0aGluayBsaW5lIGNvdW50IGlzIHRoYXQgaW1wb3J0YW50LgoKT2suCgpD
aHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
