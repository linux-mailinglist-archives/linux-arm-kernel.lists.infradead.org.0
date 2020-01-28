Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 896B114AFAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 07:17:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g7l3nrwUlr+trcy5b41uXEDEPCpYcrZCXnoMTGQb4qM=; b=BhyJ35wksswzfrZOtWEiairUp
	27as5oRLbhyGkTf9Ngie4fVxLRuxljSG1TM1XbZPJarUp/UOaYtllB8vaHSwF7GKamBWodGDL19KU
	hkfet28MNPtcPHGR/d8fkOVyOeB022IeTBlF8/NikeYOwSGs9yaK4H/dX8ZYevS4Q4Z0WakUrJKGU
	K/PnqJs6JbRKwRYKBlShQVFTgQRou8YKH+q6lvhOTnfmsDjd1QU6gFkOlUERZF04hpGCQvmcKPUu0
	DJwxcygq9ZEahoCVK313sXUpQpFowh+QlzotQKEihx6ltdKXVxP4g6/DDCY8yEJngrSlIF4DVrG5S
	wfztp1ubg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKC4-0006oR-W9; Tue, 28 Jan 2020 06:17:49 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKBu-0006o1-G9; Tue, 28 Jan 2020 06:17:40 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 486Gcc0WVCz9v22Q;
 Tue, 28 Jan 2020 07:17:36 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=lgZskWmS; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id UkHPZqpb554O; Tue, 28 Jan 2020 07:17:35 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 486Gcb627Gz9v22N;
 Tue, 28 Jan 2020 07:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580192255; bh=+DPt49RKHi9mO1gnM2058SFaj+Fq0ceAMy7haYJU1NM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lgZskWmSj1VA5v5b98S9ZEmr7USU9rrof5MnKymq+rXgWJyl99vDSXQIZX47bFjeC
 /6k5GZov6uOPE4UU+Xi9hVhZlNd3ZPIeokTTE6E9eAr6ycFttvMUe986W6/vBNtjV8
 Ykd6Kd6ETlhEILSsCQYi5j6eBswWvSBhAxwf3fzs=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8873F8B7C2;
 Tue, 28 Jan 2020 07:17:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id RqoGVOoiJ5M4; Tue, 28 Jan 2020 07:17:36 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DC9498B75B;
 Tue, 28 Jan 2020 07:17:33 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <Anshuman.Khandual@arm.com>
References: <012158b7-a40e-050f-cd1b-d6ce7faf042f@arm.com>
 <EE5B936C-121E-4322-A285-603D82D59B3A@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <115c187b-73ce-30b2-0694-999db1f2183b@c-s.fr>
Date: Tue, 28 Jan 2020 07:17:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <EE5B936C-121E-4322-A285-603D82D59B3A@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_221738_843290_92D77207 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyOC8wMS8yMDIwIMOgIDA2OjQ4LCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IAo+IAo+PiBP
biBKYW4gMjcsIDIwMjAsIGF0IDExOjU4IFBNLCBBbnNodW1hbiBLaGFuZHVhbCA8QW5zaHVtYW4u
S2hhbmR1YWxAYXJtLmNvbT4gd3JvdGU6Cj4+Cj4+IEFzIEkgaGFkIG1lbnRpb25lZCBiZWZvcmUs
IHRoZSB0ZXN0IGF0dGVtcHRzIHRvIGZvcm1hbGl6ZSBwYWdlIHRhYmxlIGhlbHBlciBzZW1hbnRp
Y3MKPj4gYXMgZXhwZWN0ZWQgZnJvbSBnZW5lcmljIE1NIGNvZGUgcGF0aHMgYW5kIGludGVuZCB0
byBjYXRjaCBkZXZpYXRpb25zIHdoZW4gZW5hYmxlZCBvbgo+PiBhIGdpdmVuIHBsYXRmb3JtLiBI
b3cgZWxzZSBzaG91bGQgd2UgdGVzdCBzZW1hbnRpY3MgZXJyb3JzIG90aGVyd2lzZSA/IFRoZXJl
IGFyZSBwYXN0Cj4+IGV4YW1wbGVzIG9mIHVzZWZ1bG5lc3MgZm9yIHRoaXMgcHJvY2VkdXJlIG9u
IGFybTY0IGFuZCBvbiBzMzkwLiBJIGFtIHdvbmRlcmluZyBob3cKPj4gZWxzZSB0byBwcm92ZSB0
aGUgdXNlZnVsbmVzcyBvZiBhIGRlYnVnIGZlYXR1cmUgaWYgdGhlc2UgcmVmZXJlbmNlcyBhcmUg
bm90IGVub3VnaC4KPiAKPiBOb3Qgc2F5aW5nIGl0IHdpbGwgbm90IGJlIHVzZWZ1bC4gQXMgeW91
IG1lbnRpb25lZCBpdCBhY3R1YWxseSBmb3VuZCBhIGJ1ZyBvciB0d28gaW4gdGhlIHBhc3QuIFRo
ZSBwcm9ibGVtIGlzIHRoYXQgdGhlcmUgaXMgYWx3YXlzIGEgY29zdCB0byBtYWludGFpbiBzb21l
dGhpbmcgbGlrZSB0aGlzLCBhbmQgbm9ib2R5IGtuZXcgaG93IHRoaW5ncyBjb3VsZCBiZSBicm9r
ZW4gZXZlbiBmb3IgdGhlIGlzb2xhdGVkIGNvZGUgeW91IG1lbnRpb25lZCBpbiB0aGUgZnV0dXJl
IGdpdmVuIGhvdyBjb21wbGljYXRlZCB0aGUga2VybmVsIGNvZGUgYmFzZSBpcy4gSSBhbSBub3Qg
c28gcG9zaXRpdmUgdGhhdCBtYW55IGRldmVsb3BlcnMgd291bGQgZW5hYmxlIHRoaXMgZGVidWcg
ZmVhdHVyZSBhbmQgdXNlIGl0IG9uIGEgcmVndWxhciBiYXNpcyBmcm9tIHRoZSBpbmZvcm1hdGlv
biB5b3UgZ2F2ZSBzbyBmYXIuCj4gCj4gT24gdGhlIG90aGVyIGhhbmQsIGl0IG1pZ2h0IGp1c3Qg
YmUgZ29vZCBhdCBtYWludGFpbmluZyB0aGlzIHRoaW5nIG91dCBvZiB0cmVlIGJ5IHlvdXJzZWxm
IGFueXdheSwgYmVjYXVzZSBpZiB0aGVyZSBpc27igJl0IGdvaW5nIHRvIGJlIHVzZWQgYnkgbWFu
eSBkZXZlbG9wZXJzLCBmZXcgcGVvcGxlIGlzIGdvaW5nIHRvIGNvbnRyaWJ1dGUgdG8gdGhpcyBh
bmQgZXZlbiBub3RpY2VkIHdoZW4gaXQgaXMgYnJva2VuLiBXaGF04oCZcyB0aGUgcG9pbnQgb2Yg
Z2V0dGluZyB0aGlzIG1lcmdlZCBhcGFydCBmcm9tIGJlaW5nIGdldHRpbmcgc29tZSBtZWFuaW5n
bGVzcyBjcmVkaXRzPwo+IAoKSXQgaXMgJ2RlZmF1bHQgeScgc28gdGhlcmUgaXMgbm8gbXVjaCBy
aXNrIHRoYXQgaXQgaXMgZm9yZ290dGVuLCBhdCAKbGVhc3QgYWxsIHRlc3Qgc3VpdGVzIHJ1biB3
aXRoICdhbGx5ZXNfZGVmY29uZmlnJyB3aWxsIHRyaWdnZXIgdGhlIHRlc3QsIApzbyBJIHRoaW5r
IGl0IGlzIHJlYWxseSBhIGdvb2QgZmVhdHVyZS4KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
