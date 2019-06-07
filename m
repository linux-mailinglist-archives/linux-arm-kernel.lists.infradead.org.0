Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF13938F1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SDe8KE2zUmIgppfCgYvbjzcm/u5XlwXuV9//0Y9jM+Y=; b=teT+JUIndzTl6O2UPUgF6brQo
	thaB1t9NqhLTQeaL6OMUXLnDouVj8j3pl+QbBoqhqGGnFup94SU7VQ/6gbNCIvl7RQHMypx86YjS3
	1TPwdOvQUv375bFSGsicSDsieRfSg3QOX80k4q0+cT1NKS7olwpffgd/9Rv38kSu9IDcUNwDvaga9
	8dCTAE1FEQcTuBbEq5XtwL+gtahPE73+TJ1BofjCmJugBMxjCr5PIOpERM9YzDg5v7hx3S0MDcZ6P
	wcU7HwdDCwMyix9jZAIKsXF7qVBQlXzbETus7BWS0tRUW3iatEs16TJZPvZ3I3mOzzIAlDOo2E4ff
	xkk+tLbsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGqB-0000t9-3w; Fri, 07 Jun 2019 15:31:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGpv-0000lx-PD
 for linux-arm-kernel@bombadil.infradead.org; Fri, 07 Jun 2019 15:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VmfDdFiLX51Z+4KXelOTCLHxqnwbZKmMb30NnGggSrg=; b=FjCxbyy1RZIVQcIuq3LsoV11KZ
 PbIvquS8ihvBSDK7pYxZ0SOON+52QS9Z1rWKdQn+xTVaRZ11YSdqhwwj+cLKvBte8wEEKJOmcQ7cS
 x2Wntpr0xAxDZqxk26YqBli+Tchp5qGXkNMnHbk2JN0i/UDGPPIARPi/Jt6sRNVh+f9E1y1mTGyCt
 Sh5oP1jxkI0WVPHi3xjn2b4VSlk4SiKuD37JiiiweWYch1ekxCfOI+xROdLRsUuXkvfRkWPYXDFI5
 YF5jTHLeDqQtFTEEy3SAnNmlrOTS250uVe094Wk3wez4Xy3/m/U4EknmW9FdjbddVALOAYQshtpky
 gKo3QiyQ==;
Received: from pegase1.c-s.fr ([93.17.236.30])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGps-0002Y4-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:31:21 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45L61d14g1zB09ZC;
 Fri,  7 Jun 2019 17:31:01 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=eGVfNun4; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id x89FBxEH0k-2; Fri,  7 Jun 2019 17:31:01 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45L61c6w95z9vDcN;
 Fri,  7 Jun 2019 17:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1559921461; bh=VmfDdFiLX51Z+4KXelOTCLHxqnwbZKmMb30NnGggSrg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=eGVfNun43ICAVfa8ZTRLt9LZB+Sw+rVDTnJQrQQzRDQR1yqPQrK5CRYJQxf8p+Ipa
 R1OpmRuRWrOPBIlhZSprzwJ/3NLXR8zDak3Nj1wnhzpk5JfCcrrPY7EoJV7dnEmkz3
 YFKZL+PWpjANAl87vTbWY/TcYYwKl4VV2B3J7fwk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 831ED8B8BE;
 Fri,  7 Jun 2019 17:31:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id s9MhfGu4umRg; Fri,  7 Jun 2019 17:31:02 +0200 (CEST)
Received: from PO15451 (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0A6BD8B8BA;
 Fri,  7 Jun 2019 17:31:02 +0200 (CEST)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
Date: Fri, 7 Jun 2019 17:31:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: fr
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 linux-s390@vger.kernel.org, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Will Deacon <will.deacon@arm.com>,
 Ingo Molnar <mingo@redhat.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwNy8wNi8yMDE5IMOgIDEyOjM0LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IFZlcnkgc2ltaWxhciBkZWZpbml0aW9ucyBmb3Igbm90aWZ5X3BhZ2VfZmF1bHQoKSBhcmUgYmVp
bmcgdXNlZCBieSBtdWx0aXBsZQo+IGFyY2hpdGVjdHVyZXMgZHVwbGljYXRpbmcgbXVjaCBvZiB0
aGUgc2FtZSBjb2RlLiBUaGlzIGF0dGVtcHRzIHRvIHVuaWZ5IGFsbAo+IG9mIHRoZW0gaW50byBh
IGdlbmVyaWMgaW1wbGVtZW50YXRpb24sIHJlbmFtZSBpdCBhcyBrcHJvYmVfcGFnZV9mYXVsdCgp
IGFuZAo+IHRoZW4gbW92ZSBpdCB0byBhIGNvbW1vbiBoZWFkZXIuCj4gCj4ga3Byb2Jlc19idWls
dF9pbigpIGNhbiBkZXRlY3QgQ09ORklHX0tQUk9CRVMsIGhlbmNlIG5ldyBrcHJvYmVfcGFnZV9m
YXVsdCgpCj4gbmVlZCBub3QgYmUgd3JhcHBlZCBhZ2FpbiB3aXRoaW4gQ09ORklHX0tQUk9CRVMu
IFRyYXAgbnVtYmVyIGFyZ3VtZW50IGNhbgo+IG5vdyBjb250YWluIHVwdG8gYW4gJ3Vuc2lnbmVk
IGludCcgYWNjb21tb2RhdGluZyBhbGwgcG9zc2libGUgcGxhdGZvcm1zLgo+IAo+IGtwcm9iZV9w
YWdlX2ZhdWx0KCkgZ29lcyB0aGUgeDg2IHdheSB3aGlsZSBkZWFsaW5nIHdpdGggcHJlZW1wdGlv
biBjb250ZXh0Lgo+IEFzIGV4cGxhaW5lZCBpbiB0aGVzZSBmb2xsb3dpbmcgY29tbWl0cyB0aGUg
aW52b2tpbmcgY29udGV4dCBpbiBpdHNlbGYgbXVzdAo+IGJlIG5vbi1wcmVlbXB0aWJsZSBmb3Ig
a3Byb2JlcyBwcm9jZXNzaW5nIGNvbnRleHQgaXJyZXNwZWN0aXZlIG9mIHdoZXRoZXIKPiBrcHJv
YmVfcnVubmluZygpIG9yIHBlcmhhcHMgc21wX3Byb2Nlc3Nvcl9pZCgpIGlzIHNhZmUgb3Igbm90
LiBJdCBkb2VzIG5vdAo+IG1ha2UgbXVjaCBzZW5zZSB0byBjb250aW51ZSB3aGVuIG9yaWdpbmFs
IGNvbnRleHQgaXMgcHJlZW1wdGlibGUuIEluc3RlYWQKPiBqdXN0IGJhaWwgb3V0IGVhcmxpZXIu
Cj4gCj4gY29tbWl0IGE5ODBjMGVmOWY2ZAo+ICgieDg2L2twcm9iZXM6IFJlZmFjdG9yIGtwcm9i
ZXNfZmF1bHQoKSBsaWtlIGtwcm9iZV9leGNlcHRpb25zX25vdGlmeSgpIikKPiAKPiBjb21taXQg
YjUwNmE5ZDA4YmFlICgieDg2OiBjb2RlIGNsYXJpZmljYXRpb24gcGF0Y2ggdG8gS3Byb2JlcyBh
cmNoIGNvZGUiKQo+IAo+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiBDYzogbGludXgtaWE2NEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXhwcGMtZGV2QGxpc3Rz
Lm96bGFicy5vcmcKPiBDYzogbGludXgtczM5MEB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgt
c2hAdmdlci5rZXJuZWwub3JnCj4gQ2M6IHNwYXJjbGludXhAdmdlci5rZXJuZWwub3JnCj4gQ2M6
IHg4NkBrZXJuZWwub3JnCj4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlv
bi5vcmc+Cj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQHN1c2UuY29tPgo+IENjOiBNYXR0aGV3
IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1
dGxhbmRAYXJtLmNvbT4KPiBDYzogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBj
LXMuZnI+Cj4gQ2M6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+IENj
OiBBbmRyZXkgS29ub3ZhbG92IDxhbmRyZXlrbnZsQGdvb2dsZS5jb20+Cj4gQ2M6IE1pY2hhZWwg
RWxsZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5hdT4KPiBDYzogUGF1bCBNYWNrZXJyYXMgPHBhdWx1
c0BzYW1iYS5vcmc+Cj4gQ2M6IFJ1c3NlbGwgS2luZyA8bGludXhAYXJtbGludXgub3JnLnVrPgo+
IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+IENjOiBXaWxs
IERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4KPiBDYzogVG9ueSBMdWNrIDx0b255Lmx1Y2tA
aW50ZWwuY29tPgo+IENjOiBGZW5naHVhIFl1IDxmZW5naHVhLnl1QGludGVsLmNvbT4KPiBDYzog
TWFydGluIFNjaHdpZGVmc2t5IDxzY2h3aWRlZnNreUBkZS5pYm0uY29tPgo+IENjOiBIZWlrbyBD
YXJzdGVucyA8aGVpa28uY2Fyc3RlbnNAZGUuaWJtLmNvbT4KPiBDYzogWW9zaGlub3JpIFNhdG8g
PHlzYXRvQHVzZXJzLnNvdXJjZWZvcmdlLmpwPgo+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2
ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXgu
ZGU+Cj4gQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPiBDYzogSW5n
byBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+Cj4gQ2M6IEFuZHkgTHV0b21pcnNraSA8bHV0b0Br
ZXJuZWwub3JnPgo+IENjOiBEYXZlIEhhbnNlbiA8ZGF2ZS5oYW5zZW5AbGludXguaW50ZWwuY29t
Pgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVh
bEBhcm0uY29tPgo+IC0tLQo+IFRlc3Rpbmc6Cj4gCj4gLSBCdWlsZCBhbmQgYm9vdCB0ZXN0ZWQg
b24gYXJtNjQgYW5kIHg4Ngo+IC0gQnVpbGQgdGVzdGVkIG9uIHNvbWUgb3RoZXIgYXJjaHMgKGFy
bSwgc3BhcmM2NCwgYWxwaGEsIHBvd2VycGMgZXRjKQo+IAo+IENoYW5nZXMgaW4gUkZDIFYzOgo+
IAo+IC0gVXBkYXRlZCB0aGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCBhbiBleHBsYWluYXRpb24gZm9y
IG5ldyBwcmVlbXB0aW9uIGJlaGF2aW91cgo+IC0gTW92ZWQgbm90aWZ5X3BhZ2VfZmF1bHQoKSB0
byBrcHJvYmVzLmggd2l0aCAnc3RhdGljIG5va3Byb2JlX2lubGluZScgcGVyIE1hdHRoZXcKPiAt
IENoYW5nZWQgbm90aWZ5X3BhZ2VfZmF1bHQoKSByZXR1cm4gdHlwZSBmcm9tIGludCB0byBib29s
IHBlciBNaWNoYWVsIEVsbGVybWFuCj4gLSBSZW5hbWVkIG5vdGlmeV9wYWdlX2ZhdWx0KCkgYXMg
a3Byb2JlX3BhZ2VfZmF1bHQoKSBwZXIgUGV0ZXJ6Cj4gCj4gQ2hhbmdlcyBpbiBSRkMgVjI6ICho
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTc0MjIxLykKPiAKPiAtIENoYW5n
ZWQgZ2VuZXJpYyBub3RpZnlfcGFnZV9mYXVsdCgpIHBlciBNYXRoZXcgV2lsY294Cj4gLSBDaGFu
Z2VkIHg4NiB0byB1c2UgbmV3IGdlbmVyaWMgbm90aWZ5X3BhZ2VfZmF1bHQoKQo+IC0gcy9tdXN0
IG5vdC9uZWVkIG5vdC8gaW4gY29tbWl0IG1lc3NhZ2UgcGVyIE1hdHRoZXcgV2lsY294Cj4gCj4g
Q2hhbmdlcyBpbiBSRkMgVjE6IChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEw
OTY4MjczLykKPiAKPiAgIGFyY2gvYXJtL21tL2ZhdWx0LmMgICAgICB8IDI0ICstLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICAgYXJjaC9hcm02NC9tbS9mYXVsdC5jICAgIHwgMjQgKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gICBhcmNoL2lhNjQvbW0vZmF1bHQuYyAgICAgfCAyNCArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0KPiAgIGFyY2gvcG93ZXJwYy9tbS9mYXVsdC5jICB8IDIzICsrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gICBhcmNoL3MzOTAvbW0vZmF1bHQuYyAgICAgfCAxNiArLS0t
LS0tLS0tLS0tLS0tCj4gICBhcmNoL3NoL21tL2ZhdWx0LmMgICAgICAgfCAxOCArKy0tLS0tLS0t
LS0tLS0tLS0KPiAgIGFyY2gvc3BhcmMvbW0vZmF1bHRfNjQuYyB8IDE2ICstLS0tLS0tLS0tLS0t
LS0KPiAgIGFyY2gveDg2L21tL2ZhdWx0LmMgICAgICB8IDIxICsrLS0tLS0tLS0tLS0tLS0tLS0t
LQo+ICAgaW5jbHVkZS9saW51eC9rcHJvYmVzLmggIHwgMTYgKysrKysrKysrKysrKysrKwo+ICAg
OSBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxNTUgZGVsZXRpb25zKC0pCj4gCgpb
Li4uXQoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9rcHJvYmVzLmggYi9pbmNsdWRlL2xp
bnV4L2twcm9iZXMuaAo+IGluZGV4IDQ0M2Q5ODAuLjA2NGRkMTUgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9saW51eC9rcHJvYmVzLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2twcm9iZXMuaAo+IEBA
IC00NTgsNCArNDU4LDIwIEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19rcHJvYmVfb3B0aW5zbl9z
bG90KHVuc2lnbmVkIGxvbmcgYWRkcikKPiAgIH0KPiAgICNlbmRpZgo+ICAgCj4gK3N0YXRpYyBu
b2twcm9iZV9pbmxpbmUgYm9vbCBrcHJvYmVfcGFnZV9mYXVsdChzdHJ1Y3QgcHRfcmVncyAqcmVn
cywKPiArCQkJCQkgICAgICB1bnNpZ25lZCBpbnQgdHJhcCkKPiArewo+ICsJaW50IHJldCA9IDA7
CgpyZXQgaXMgcG9pbnRsZXNzLgoKPiArCj4gKwkvKgo+ICsJICogVG8gYmUgcG90ZW50aWFsbHkg
cHJvY2Vzc2luZyBhIGtwcm9iZSBmYXVsdCBhbmQgdG8gYmUgYWxsb3dlZAo+ICsJICogdG8gY2Fs
bCBrcHJvYmVfcnVubmluZygpLCB3ZSBoYXZlIHRvIGJlIG5vbi1wcmVlbXB0aWJsZS4KPiArCSAq
Lwo+ICsJaWYgKGtwcm9iZXNfYnVpbHRfaW4oKSAmJiAhcHJlZW1wdGlibGUoKSAmJiAhdXNlcl9t
b2RlKHJlZ3MpKSB7Cj4gKwkJaWYgKGtwcm9iZV9ydW5uaW5nKCkgJiYga3Byb2JlX2ZhdWx0X2hh
bmRsZXIocmVncywgdHJhcCkpCgpkb24ndCBuZWVkIGFuICdpZiBBIGlmIEInLCBjYW4gZG8gJ2lm
IEEgJiYgQicKCj4gKwkJCXJldCA9IDE7CgpjYW4gZG8gJ3JldHVybiB0cnVlOycgZGlyZWN0bHkg
aGVyZQoKPiArCX0KPiArCXJldHVybiByZXQ7CgpBbmQgJ3JldHVybiBmYWxzZScgaGVyZS4KCkNo
cmlzdG9waGUKCj4gK30KPiArCj4gICAjZW5kaWYgLyogX0xJTlVYX0tQUk9CRVNfSCAqLwo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
