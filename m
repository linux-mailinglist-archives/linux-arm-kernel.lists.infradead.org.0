Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283671603AD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 11:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZR6hZ94XSKR67Mzl8QE4IT3TzWagKlvStsXGSuGmA0=; b=TQ0W87OGuR3B5qIIBDCKqbEGi
	uqU3ylUICgY0aKpKIRaV4e7JlwxaGHhZqb782MEE0gmc7B/sTFZSPzIOsfZX2UJ/fnIacBbQknEss
	tRGs2d1JZDWcIxdnGqfLsGusWHUUDQ05pAiluC5IQR8eIZs4AjmXNGJz8A7cHH7AiBA3KQtc2tyjw
	bp/073wZTT9ts65Og3YHn0Y3g7ozQaogBb4qy0Kma5r0VMIXYwRnpCSZGftuNsqEGawekN/xP1sTm
	WUpZSTNynioBlPV90pEFbhTAQo4W1DoXcXAOT9ydM3bTZSnLopv1z7dePikwqmJXoPZFGhu3iUrIE
	4fVWeRpVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3HRT-0002cc-9w; Sun, 16 Feb 2020 10:46:27 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3HRK-0002bY-Qw
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 10:46:20 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48L3gh69Lpz9tyMB;
 Sun, 16 Feb 2020 11:46:08 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=RMQrDTHX; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 0F5rpVhkSbpS; Sun, 16 Feb 2020 11:46:08 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48L3gh3dBjz9tyM9;
 Sun, 16 Feb 2020 11:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581849968; bh=puEVphfmlLbrWTO3mdDB17WkluHf49q+nkCLHU1WEPk=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RMQrDTHXiSIvSNdSJIUAuTLTwTBfKbldAHrwtZjJ0BW+ZG7c0EUq537f7BNPK+LIN
 e+qzSqPhQUdW5m9f0ovUN5sc2R9fpgjJRx6JMSfOyIGDK3OikFgbqf4WNmfnjBWb14
 Yj8xq1+79SXISvpVp+Jg6Y8NZ4c+QrYGyIAwuT0U=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 63ADD8B784;
 Sun, 16 Feb 2020 11:46:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id GYiIMEW0V5j7; Sun, 16 Feb 2020 11:46:10 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 992958B755;
 Sun, 16 Feb 2020 11:45:59 +0100 (CET)
Subject: Re: [PATCH v2 00/13] mm: remove __ARCH_HAS_5LEVEL_HACK
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@kernel.org>
References: <20200216081843.28670-1-rppt@kernel.org>
 <20200216082230.GV25745@shell.armlinux.org.uk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <d6691709-30ce-4d28-0b7b-34f1fa3b4e6f@c-s.fr>
Date: Sun, 16 Feb 2020 11:45:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200216082230.GV25745@shell.armlinux.org.uk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_024619_180166_C9FCEA8C 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ley Foon Tan <ley.foon.tan@intel.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
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

CgpMZSAxNi8wMi8yMDIwIMOgIDA5OjIyLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4g
YSDDqWNyaXTCoDoKPiBPbiBTdW4sIEZlYiAxNiwgMjAyMCBhdCAxMDoxODozMEFNICswMjAwLCBN
aWtlIFJhcG9wb3J0IHdyb3RlOgo+PiBGcm9tOiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4Lmli
bS5jb20+Cj4+Cj4+IEhpLAo+Pgo+PiBUaGVzZSBwYXRjaGVzIGNvbnZlcnQgc2V2ZXJhbCBhcmNo
aXRlY3R1cmVzIHRvIHVzZSBwYWdlIHRhYmxlIGZvbGRpbmcgYW5kCj4+IHJlbW92ZSBfX0FSQ0hf
SEFTXzVMRVZFTF9IQUNLIGFsb25nIHdpdGggaW5jbHVkZS9hc20tZ2VuZXJpYy81bGV2ZWwtZml4
dXAuaC4KPj4KPj4gVGhlIGNoYW5nZXMgYXJlIG1vc3RseSBhYm91dCBtZWNoYW5pY2FsIHJlcGxh
Y2VtZW50IG9mIHBnZCBhY2Nlc3NvcnMgd2l0aCBwNGQKPj4gb25lcyBhbmQgdGhlIGFkZGl0aW9u
IG9mIGhpZ2hlciBsZXZlbHMgdG8gcGFnZSB0YWJsZSB0cmF2ZXJzYWxzLgo+Pgo+PiBBbGwgdGhl
IHBhdGNoZXMgd2VyZSBzZW50IHNlcGFyYXRlbHkgdG8gdGhlIHJlc3BlY3RpdmUgYXJjaCBsaXN0
cyBhbmQKPj4gbWFpbnRhaW5lcnMgaGVuY2UgdGhlICJ2MiIgcHJlZml4Lgo+IAo+IFlvdSBmYWls
IHRvIGV4cGxhaW4gd2h5IHRoaXMgY2hhbmdlIHdoaWNoIGFkZHMgNDg4IGFkZGl0aW9uYWwgbGlu
ZXMgb2YKPiBjb2RlIGlzIGRlc2lyYWJsZS4KPiAKClRoZSBwdXJwb3NlIG9mIHRoZSBzZXJpZXMs
IGllIGRyb3BpbmcgYSBIQUNLLCBpcyB3b3J0aCBpdC4KCkhvd2V2ZXIgbG9va2luZyBhdCB0aGUg
cG93ZXJwYyBwYXRjaCBJIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCB0aGlzIHNlcmllcyAKZ29lcyBi
ZWhpbmQgaXRzIHB1cnBvc2UuCgpUaGUgbnVtYmVyIGFkZGl0aW9uYWwgbGluZXMgY291bGQgYmUg
ZGVlcGx5IHJlZHVjZWQgSSB0aGluayBpZiB3ZSBsaW1pdCAKdGhlIHBhdGNoZXMgdG8gdGhlIHN0
cmljdCBtaW5pbXVtLCBpZSBqdXN0IGRvIHRoaW5ncyBsaWtlIGJlbG93IGluc3RlYWQgCm9mIGFk
ZGluZyBsb3RzIG9mIGhhbmRsaW5nIG9mIHVzZWxlc3MgbGV2ZWxzLgoKSW5zdGVhZCBvZiBkb2lu
ZyB0aGluZ3MgbGlrZToKCi0JcHVkID0gTlVMTDsKKwlwNGQgPSBOVUxMOwogIAlpZiAocGdkX3By
ZXNlbnQoKnBnZCkpCi0JCXB1ZCA9IHB1ZF9vZmZzZXQocGdkLCBncGEpOworCQlwNGQgPSBwNGRf
b2Zmc2V0KHBnZCwgZ3BhKTsKKwllbHNlCisJCW5ld19wNGQgPSBwNGRfYWxsb2Nfb25lKGt2bS0+
bW0sIGdwYSk7CisKKwlwdWQgPSBOVUxMOworCWlmIChwNGRfcHJlc2VudCgqcDRkKSkKKwkJcHVk
ID0gcHVkX29mZnNldChwNGQsIGdwYSk7CiAgCWVsc2UKICAJCW5ld19wdWQgPSBwdWRfYWxsb2Nf
b25lKGt2bS0+bW0sIGdwYSk7CgpJdCBjb3VsZCBiZSBsaW1pdGVkIHRvOgoKICAJaWYgKHBnZF9w
cmVzZW50KCpwZ2QpKQotCQlwdWQgPSBwdWRfb2Zmc2V0KHBnZCwgZ3BhKTsKKwkJcHVkID0gcHVk
X29mZnNldChwNGRfb2Zmc2V0KHBnZCwgZ3BhKSwgZ3BhKTsKICAJZWxzZQogIAkJbmV3X3B1ZCA9
IHB1ZF9hbGxvY19vbmUoa3ZtLT5tbSwgZ3BhKTsKCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
