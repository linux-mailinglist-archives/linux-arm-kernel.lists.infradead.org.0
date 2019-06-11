Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9943C2CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 06:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AMRw/wl0Op5zAcjp5Ks0LqVt4wp1g3Eeq1N+KYmG2F4=; b=dtF0fN8+4nSO9hjHUcLhYd1bf
	kw961K0UFd1+Di8CJhq0ezncCtqLjj27aa4b3MxW+7R3w5BqFVPFfOr4EbwFPZGe1Swywlb4X2RMe
	8nMqt4SfrdHRDpCx4XvjTWolHpz/8XeLlUX1MaAoEowG8fqdFuzM+v+hsPawuNnNCr+9HHDVqmwwF
	+FJvUiChtOqbq8FUdiak0UQYya9S8AARMKIMfSy4uaAMxwKskAY9Gip8K/HM5+fzu9mGvSrQZopi4
	eUvuDQD0vtWMhmkJcqYGpWJ63BCzuxhS+pzDz7LnxlQLhkWmHFaEBhCryiFJg1n4xoyCsoMdVN/91
	ciOT1r+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haYib-0007qd-O8; Tue, 11 Jun 2019 04:49:09 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haYge-0006BA-R0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 04:47:12 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45NHXf2BP3z9v0HF;
 Tue, 11 Jun 2019 06:46:58 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Uun90qxc; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id avsAg6XPUzBY; Tue, 11 Jun 2019 06:46:58 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45NHXf0sfyz9v0HD;
 Tue, 11 Jun 2019 06:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1560228418; bh=/aMRulpty9t7H3JTx3hipMqu1qlrioTIDM2V/KkRdX4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Uun90qxcpVGke7C6xjx6hZiTEjoe5+wbKHPxvR7AvbLcn9dIuw9nFp/rrPMgGvD3Q
 FYxBAGdy8BbBOYe7qvC1UbefMBepbLH1fQwVOzzBxmPoiW5LfJBKfBHZ23m1VTvcQc
 bFDBroJnV6ApMxUFXBa2IDtHCJbnlt4kt6D5pgA0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 283A58B7CF;
 Tue, 11 Jun 2019 06:46:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id qkhrper0Hu4Q; Tue, 11 Jun 2019 06:46:57 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7A49A8B75B;
 Tue, 11 Jun 2019 06:46:54 +0200 (CEST)
Subject: Re: [RFC V3] mm: Generalize and rename notify_page_fault() as
 kprobe_page_fault()
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org
References: <1559903655-5609-1-git-send-email-anshuman.khandual@arm.com>
 <ec764ff4-f68a-fce5-ac1e-a4664e1123c7@c-s.fr>
 <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <f6d295c8-574d-3e64-79ae-2f7d3ff4c9f0@c-s.fr>
Date: Tue, 11 Jun 2019 06:46:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <97e9c9b3-89c8-d378-4730-841a900e6800@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_214709_209716_22185958 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpMZSAxMC8wNi8yMDE5IMOgIDA0OjM5LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IAo+IAo+IE9uIDA2LzA3LzIwMTkgMDk6MDEgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+
Cj4+Cj4+IExlIDA3LzA2LzIwMTkgw6AgMTI6MzQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0
wqA6Cj4+PiBWZXJ5IHNpbWlsYXIgZGVmaW5pdGlvbnMgZm9yIG5vdGlmeV9wYWdlX2ZhdWx0KCkg
YXJlIGJlaW5nIHVzZWQgYnkgbXVsdGlwbGUKPj4+IGFyY2hpdGVjdHVyZXMgZHVwbGljYXRpbmcg
bXVjaCBvZiB0aGUgc2FtZSBjb2RlLiBUaGlzIGF0dGVtcHRzIHRvIHVuaWZ5IGFsbAo+Pj4gb2Yg
dGhlbSBpbnRvIGEgZ2VuZXJpYyBpbXBsZW1lbnRhdGlvbiwgcmVuYW1lIGl0IGFzIGtwcm9iZV9w
YWdlX2ZhdWx0KCkgYW5kCj4+PiB0aGVuIG1vdmUgaXQgdG8gYSBjb21tb24gaGVhZGVyLgo+Pj4K
Pj4+IGtwcm9iZXNfYnVpbHRfaW4oKSBjYW4gZGV0ZWN0IENPTkZJR19LUFJPQkVTLCBoZW5jZSBu
ZXcga3Byb2JlX3BhZ2VfZmF1bHQoKQo+Pj4gbmVlZCBub3QgYmUgd3JhcHBlZCBhZ2FpbiB3aXRo
aW4gQ09ORklHX0tQUk9CRVMuIFRyYXAgbnVtYmVyIGFyZ3VtZW50IGNhbgo+Pj4gbm93IGNvbnRh
aW4gdXB0byBhbiAndW5zaWduZWQgaW50JyBhY2NvbW1vZGF0aW5nIGFsbCBwb3NzaWJsZSBwbGF0
Zm9ybXMuCj4+Pgo+Pj4ga3Byb2JlX3BhZ2VfZmF1bHQoKSBnb2VzIHRoZSB4ODYgd2F5IHdoaWxl
IGRlYWxpbmcgd2l0aCBwcmVlbXB0aW9uIGNvbnRleHQuCj4+PiBBcyBleHBsYWluZWQgaW4gdGhl
c2UgZm9sbG93aW5nIGNvbW1pdHMgdGhlIGludm9raW5nIGNvbnRleHQgaW4gaXRzZWxmIG11c3QK
Pj4+IGJlIG5vbi1wcmVlbXB0aWJsZSBmb3Iga3Byb2JlcyBwcm9jZXNzaW5nIGNvbnRleHQgaXJy
ZXNwZWN0aXZlIG9mIHdoZXRoZXIKPj4+IGtwcm9iZV9ydW5uaW5nKCkgb3IgcGVyaGFwcyBzbXBf
cHJvY2Vzc29yX2lkKCkgaXMgc2FmZSBvciBub3QuIEl0IGRvZXMgbm90Cj4+PiBtYWtlIG11Y2gg
c2Vuc2UgdG8gY29udGludWUgd2hlbiBvcmlnaW5hbCBjb250ZXh0IGlzIHByZWVtcHRpYmxlLiBJ
bnN0ZWFkCj4+PiBqdXN0IGJhaWwgb3V0IGVhcmxpZXIuCj4+Pgo+Pj4gY29tbWl0IGE5ODBjMGVm
OWY2ZAo+Pj4gKCJ4ODYva3Byb2JlczogUmVmYWN0b3Iga3Byb2Jlc19mYXVsdCgpIGxpa2Uga3By
b2JlX2V4Y2VwdGlvbnNfbm90aWZ5KCkiKQo+Pj4KPj4+IGNvbW1pdCBiNTA2YTlkMDhiYWUgKCJ4
ODY6IGNvZGUgY2xhcmlmaWNhdGlvbiBwYXRjaCB0byBLcHJvYmVzIGFyY2ggY29kZSIpCj4+Pgo+
Pj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gQ2M6IGxpbnV4
LWlhNjRAdmdlci5rZXJuZWwub3JnCj4+PiBDYzogbGludXhwcGMtZGV2QGxpc3RzLm96bGFicy5v
cmcKPj4+IENjOiBsaW51eC1zMzkwQHZnZXIua2VybmVsLm9yZwo+Pj4gQ2M6IGxpbnV4LXNoQHZn
ZXIua2VybmVsLm9yZwo+Pj4gQ2M6IHNwYXJjbGludXhAdmdlci5rZXJuZWwub3JnCj4+PiBDYzog
eDg2QGtlcm5lbC5vcmcKPj4+IENjOiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRp
b24ub3JnPgo+Pj4gQ2M6IE1pY2hhbCBIb2NrbyA8bWhvY2tvQHN1c2UuY29tPgo+Pj4gQ2M6IE1h
dHRoZXcgV2lsY294IDx3aWxseUBpbmZyYWRlYWQub3JnPgo+Pj4gQ2M6IE1hcmsgUnV0bGFuZCA8
bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+PiBDYzogQ2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3Bo
ZS5sZXJveUBjLXMuZnI+Cj4+PiBDYzogU3RlcGhlbiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5v
cmcuYXU+Cj4+PiBDYzogQW5kcmV5IEtvbm92YWxvdiA8YW5kcmV5a252bEBnb29nbGUuY29tPgo+
Pj4gQ2M6IE1pY2hhZWwgRWxsZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5hdT4KPj4+IENjOiBQYXVs
IE1hY2tlcnJhcyA8cGF1bHVzQHNhbWJhLm9yZz4KPj4+IENjOiBSdXNzZWxsIEtpbmcgPGxpbnV4
QGFybWxpbnV4Lm9yZy51az4KPj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5h
c0Bhcm0uY29tPgo+Pj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsLmRlYWNvbkBhcm0uY29tPgo+Pj4g
Q2M6IFRvbnkgTHVjayA8dG9ueS5sdWNrQGludGVsLmNvbT4KPj4+IENjOiBGZW5naHVhIFl1IDxm
ZW5naHVhLnl1QGludGVsLmNvbT4KPj4+IENjOiBNYXJ0aW4gU2Nod2lkZWZza3kgPHNjaHdpZGVm
c2t5QGRlLmlibS5jb20+Cj4+PiBDYzogSGVpa28gQ2Fyc3RlbnMgPGhlaWtvLmNhcnN0ZW5zQGRl
LmlibS5jb20+Cj4+PiBDYzogWW9zaGlub3JpIFNhdG8gPHlzYXRvQHVzZXJzLnNvdXJjZWZvcmdl
LmpwPgo+Pj4gQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0Pgo+Pj4g
Q2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+Pj4gQ2M6IFBldGVyIFpp
amxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9yZz4KPj4+IENjOiBJbmdvIE1vbG5hciA8bWluZ29A
cmVkaGF0LmNvbT4KPj4+IENjOiBBbmR5IEx1dG9taXJza2kgPGx1dG9Aa2VybmVsLm9yZz4KPj4+
IENjOiBEYXZlIEhhbnNlbiA8ZGF2ZS5oYW5zZW5AbGludXguaW50ZWwuY29tPgo+Pj4KPj4+IFNp
Z25lZC1vZmYtYnk6IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVhbEBhcm0uY29t
Pgo+Pj4gLS0tCj4+PiBUZXN0aW5nOgo+Pj4KPj4+IC0gQnVpbGQgYW5kIGJvb3QgdGVzdGVkIG9u
IGFybTY0IGFuZCB4ODYKPj4+IC0gQnVpbGQgdGVzdGVkIG9uIHNvbWUgb3RoZXIgYXJjaHMgKGFy
bSwgc3BhcmM2NCwgYWxwaGEsIHBvd2VycGMgZXRjKQo+Pj4KPj4+IENoYW5nZXMgaW4gUkZDIFYz
Ogo+Pj4KPj4+IC0gVXBkYXRlZCB0aGUgY29tbWl0IG1lc3NhZ2Ugd2l0aCBhbiBleHBsYWluYXRp
b24gZm9yIG5ldyBwcmVlbXB0aW9uIGJlaGF2aW91cgo+Pj4gLSBNb3ZlZCBub3RpZnlfcGFnZV9m
YXVsdCgpIHRvIGtwcm9iZXMuaCB3aXRoICdzdGF0aWMgbm9rcHJvYmVfaW5saW5lJyBwZXIgTWF0
dGhldwo+Pj4gLSBDaGFuZ2VkIG5vdGlmeV9wYWdlX2ZhdWx0KCkgcmV0dXJuIHR5cGUgZnJvbSBp
bnQgdG8gYm9vbCBwZXIgTWljaGFlbCBFbGxlcm1hbgo+Pj4gLSBSZW5hbWVkIG5vdGlmeV9wYWdl
X2ZhdWx0KCkgYXMga3Byb2JlX3BhZ2VfZmF1bHQoKSBwZXIgUGV0ZXJ6Cj4+Pgo+Pj4gQ2hhbmdl
cyBpbiBSRkMgVjI6IChodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwOTc0MjIx
LykKPj4+Cj4+PiAtIENoYW5nZWQgZ2VuZXJpYyBub3RpZnlfcGFnZV9mYXVsdCgpIHBlciBNYXRo
ZXcgV2lsY294Cj4+PiAtIENoYW5nZWQgeDg2IHRvIHVzZSBuZXcgZ2VuZXJpYyBub3RpZnlfcGFn
ZV9mYXVsdCgpCj4+PiAtIHMvbXVzdCBub3QvbmVlZCBub3QvIGluIGNvbW1pdCBtZXNzYWdlIHBl
ciBNYXR0aGV3IFdpbGNveAo+Pj4KPj4+IENoYW5nZXMgaW4gUkZDIFYxOiAoaHR0cHM6Ly9wYXRj
aHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDk2ODI3My8pCj4+Pgo+Pj4gIMKgIGFyY2gvYXJtL21t
L2ZhdWx0LmPCoMKgwqDCoMKgIHwgMjQgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgwqAg
YXJjaC9hcm02NC9tbS9mYXVsdC5jwqDCoMKgIHwgMjQgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4+PiAgwqAgYXJjaC9pYTY0L21tL2ZhdWx0LmPCoMKgwqDCoCB8IDI0ICstLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+Pj4gIMKgIGFyY2gvcG93ZXJwYy9tbS9mYXVsdC5jwqAgfCAyMyArKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+Pj4gIMKgIGFyY2gvczM5MC9tbS9mYXVsdC5jwqDCoMKgwqAgfCAx
NiArLS0tLS0tLS0tLS0tLS0tCj4+PiAgwqAgYXJjaC9zaC9tbS9mYXVsdC5jwqDCoMKgwqDCoMKg
IHwgMTggKystLS0tLS0tLS0tLS0tLS0tCj4+PiAgwqAgYXJjaC9zcGFyYy9tbS9mYXVsdF82NC5j
IHwgMTYgKy0tLS0tLS0tLS0tLS0tLQo+Pj4gIMKgIGFyY2gveDg2L21tL2ZhdWx0LmPCoMKgwqDC
oMKgIHwgMjEgKystLS0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgwqAgaW5jbHVkZS9saW51eC9rcHJv
YmVzLmjCoCB8IDE2ICsrKysrKysrKysrKysrKysKPj4+ICDCoCA5IGZpbGVzIGNoYW5nZWQsIDI3
IGluc2VydGlvbnMoKyksIDE1NSBkZWxldGlvbnMoLSkKPj4+Cj4+Cj4+IFsuLi5dCj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9rcHJvYmVzLmggYi9pbmNsdWRlL2xpbnV4L2twcm9i
ZXMuaAo+Pj4gaW5kZXggNDQzZDk4MC4uMDY0ZGQxNSAxMDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUv
bGludXgva3Byb2Jlcy5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L2twcm9iZXMuaAo+Pj4gQEAg
LTQ1OCw0ICs0NTgsMjAgQEAgc3RhdGljIGlubGluZSBib29sIGlzX2twcm9iZV9vcHRpbnNuX3Ns
b3QodW5zaWduZWQgbG9uZyBhZGRyKQo+Pj4gIMKgIH0KPj4+ICDCoCAjZW5kaWYKPj4+ICDCoCAr
c3RhdGljIG5va3Byb2JlX2lubGluZSBib29sIGtwcm9iZV9wYWdlX2ZhdWx0KHN0cnVjdCBwdF9y
ZWdzICpyZWdzLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHVuc2lnbmVkIGludCB0cmFwKQo+Pj4gK3sKPj4+ICvCoMKgwqAgaW50IHJldCA9
IDA7Cj4+Cj4+IHJldCBpcyBwb2ludGxlc3MuCj4+Cj4+PiArCj4+PiArwqDCoMKgIC8qCj4+PiAr
wqDCoMKgwqAgKiBUbyBiZSBwb3RlbnRpYWxseSBwcm9jZXNzaW5nIGEga3Byb2JlIGZhdWx0IGFu
ZCB0byBiZSBhbGxvd2VkCj4+PiArwqDCoMKgwqAgKiB0byBjYWxsIGtwcm9iZV9ydW5uaW5nKCks
IHdlIGhhdmUgdG8gYmUgbm9uLXByZWVtcHRpYmxlLgo+Pj4gK8KgwqDCoMKgICovCj4+PiArwqDC
oMKgIGlmIChrcHJvYmVzX2J1aWx0X2luKCkgJiYgIXByZWVtcHRpYmxlKCkgJiYgIXVzZXJfbW9k
ZShyZWdzKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChrcHJvYmVfcnVubmluZygpICYmIGtw
cm9iZV9mYXVsdF9oYW5kbGVyKHJlZ3MsIHRyYXApKQo+Pgo+PiBkb24ndCBuZWVkIGFuICdpZiBB
IGlmIEInLCBjYW4gZG8gJ2lmIEEgJiYgQicKPiAKPiBXaGljaCB3aWxsIG1ha2UgaXQgYSB2ZXJ5
IGxlbmd0aHkgY29uZGl0aW9uIGNoZWNrLgoKWWVzLiBCdXQgaXMgdGhhdCBhIHByb2JsZW0gYXQg
YWxsID8KCkZvciBtZSB0aGUgZm9sbG93aW5nIHdvdWxkIGJlIGVhc2llciB0byByZWFkLgoKaWYg
KGtwcm9iZXNfYnVpbHRfaW4oKSAmJiAhcHJlZW1wdGlibGUoKSAmJiAhdXNlcl9tb2RlKHJlZ3Mp
ICYmCiAgICAga3Byb2JlX3J1bm5pbmcoKSAmJiBrcHJvYmVfZmF1bHRfaGFuZGxlcihyZWdzLCB0
cmFwKSkKCXJldCA9IDE7CgpDaHJpc3RvcGhlCgo+IAo+Pgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0ID0gMTsKPj4KPj4gY2FuIGRvICdyZXR1cm4gdHJ1ZTsnIGRpcmVjdGx5IGhlcmUK
Pj4KPj4+ICvCoMKgwqAgfQo+Pj4gK8KgwqDCoCByZXR1cm4gcmV0Owo+Pgo+PiBBbmQgJ3JldHVy
biBmYWxzZScgaGVyZS4KPiAKPiBNYWtlcyBzZW5zZSwgd2lsbCBkcm9wIHJldC4KPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
