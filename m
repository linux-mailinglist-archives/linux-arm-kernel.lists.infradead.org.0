Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FED12A05E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 12:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rQkfrnk7WF9R97KHp/BKJhw9sE9BX1dBe6SwEm2O6mk=; b=WwmyqUjCAQhawB6yLPfgXOIhA
	RMJl+VRYl3K+xuXKBHLNvuXLIARcIepiX9zY0CFYyY7nIniyrPwRe26CXTls/oThGZRZw358iof5L
	cyxMTNKjYFAXx44NsBYFcHdStGgmv6tsx8+GBshjd1hpcCDoWsoFiuA6NlLq595wzeR1tWhl8cvkU
	R2CaJC49/gBsOOdGa/1EoMNJh2yY6oPFToxZeVYOvJccOoKtXTN1syq5E1y5BxkF9KRdX3s9m91He
	BfxvgigaMToMoICJKQxnL1yv2o02JT9xfsga3D5tU20CDy8euRmHx1G872GufMJjIraobqHEkXHQi
	i8w6w92XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iji7D-0004em-Oi; Tue, 24 Dec 2019 11:12:39 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iji74-0004du-Sp
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 11:12:32 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47htpw3bjjz9tyXM;
 Tue, 24 Dec 2019 12:12:24 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=MvKlVWsI; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id DhOumcXGkzWb; Tue, 24 Dec 2019 12:12:24 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47htpw28BKz9tyXL;
 Tue, 24 Dec 2019 12:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577185944; bh=Bn7IZfCcqw5bT2ttt8/4pM+iuD9f7XixnnqnooPsUO8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=MvKlVWsI0nhGXz1jiEzJgtsO3vre9b9taOd50nQEl4NtQ8XZ3gLcegD4mGQBWSKK2
 TTyqxkgAFFOLrKfmRrtzeuOO6v+SE4+x6E4aUxR22pmu3jsA79yAvhgE5ex0ylbUmL
 FwCieuRAWn5hiSJ/qG7Zj3Zqlf5cj4c53n1w9sSA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6C3B18B783;
 Tue, 24 Dec 2019 12:12:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ZGl4WaMQ75fX; Tue, 24 Dec 2019 12:12:25 +0100 (CET)
Received: from [192.168.232.53] (unknown [192.168.232.53])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 685338B782;
 Tue, 24 Dec 2019 12:12:24 +0100 (CET)
Subject: Re: [RFC PATCH v2 07/10] lib: vdso: don't use READ_ONCE() in
 __c_kernel_time()
To: Andy Lutomirski <luto@kernel.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <fc1ff722c7cbe63a63ae02ade3a714d2049d54a5.1577111367.git.christophe.leroy@c-s.fr>
 <CALCETrV1TWD4iMoGFX6abxXFukz081Y2XaXy6p1KJBNLpp6ZTA@mail.gmail.com>
From: christophe leroy <christophe.leroy@c-s.fr>
Message-ID: <abc4b4a6-d355-4dfd-a207-603e877b2b23@c-s.fr>
Date: Tue, 24 Dec 2019 12:12:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CALCETrV1TWD4iMoGFX6abxXFukz081Y2XaXy6p1KJBNLpp6ZTA@mail.gmail.com>
Content-Language: fr
X-Antivirus: Avast (VPS 191223-0, 23/12/2019), Outbound message
X-Antivirus-Status: Not-Tested
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_031231_074959_EF678EEB 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNC8xMi8yMDE5IMOgIDAyOjU4LCBBbmR5IEx1dG9taXJza2kgYSDDqWNyaXTCoDoKPiBP
biBNb24sIERlYyAyMywgMjAxOSBhdCA2OjMxIEFNIENocmlzdG9waGUgTGVyb3kKPiA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Pgo+PiBSRUFEX09OQ0UoKSBmb3JjZXMgdGhlIHJl
YWQgb2YgdGhlIDY0IGJpdCB2YWx1ZSBvZgo+PiB2ZFtDU19IUkVTX0NPQVJTRV0uYmFzZXRpbWVb
Q0xPQ0tfUkVBTFRJTUVdLnNlYyBhbGx0aG91Z2gKPj4gb25seSB0aGUgbG93ZXIgcGFydCBpcyBu
ZWVkZWQuCj4gCj4gU2VlbXMgcmVhc29uYWJsZSBhbmQgdmVyeSB1bmxpa2VseSB0byBiZSBoYXJt
ZnVsLiAgVGhhdCBiZWluZyBzYWlkLAo+IHRoaXMgZnVuY3Rpb24gcmVhbGx5IG91Z2h0IHRvIGJl
IGNvbnNpZGVyZWQgZGVwcmVjYXRlZCAtLSAzMi1iaXQKPiB0aW1lX3QgaXMgaW5zdWZmaWNpZW50
Lgo+IAo+IERvIHlvdSBnZXQgZXZlbiBiZXR0ZXIgY29kZSBpZiB5b3UgbW92ZSB0aGUgcmVhZCBp
bnRvIHRoZSBpZiBzdGF0ZW1lbnQ/CgpFdWggLi4uCgpIb3cgY2FuIHlvdSByZXR1cm4gdCB3aGVu
IHRpbWUgcG9pbnRlciBpcyBOVUxMIGlmIHlvdSByZWFkIHQgb25seSB3aGVuIAp0aW1lIHBvaW50
ZXIgaXMgbm90IE5VTEwgPwoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
