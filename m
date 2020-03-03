Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA28176F0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3i5DetydKkAoQ8nwc3ZDR36lBe45iaovlkvqto9q5i8=; b=fEKCtixBT1mGLxSNfmdxd8fVN
	eM3I/EpoEfIuwRHTU5qvPbvVZZQ8M7olGN+4GMffLoo2Pk+aDegwP9a7EaPKVf1rcgBqQ1XZKD6lr
	YoRNTLUw+QTfAsqCCP+vDBMbxoBlvg++3rM0d6Y307Wepzdn8gY4tAS6yv+0J9XOi09mwwBe1tr/V
	jmIg0RLR4TvvI+TkTfdoC/MbBWgyssD2G4Z9D4UA9YvdLzqglstxEv4gT6BSvIGLBUwRwA8M5Wo4U
	eT04sPzrcIi3xdztUMrdcRRSsUWqI8qtvRJdfKjX5g2Ep8RLcNdMlBXQhiAw7Bm/CSB2ry5xoq/S7
	U+cW3Q5Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90b2-0000cH-UR; Tue, 03 Mar 2020 06:00:00 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90ar-0000b8-Lx; Tue, 03 Mar 2020 05:59:52 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48WmYt2NC7z9tyyX;
 Tue,  3 Mar 2020 06:59:46 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=sXKIwD1R; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id UVZtmD4b7vsp; Tue,  3 Mar 2020 06:59:46 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48WmYt108kz9tyyS;
 Tue,  3 Mar 2020 06:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1583215186; bh=ocYA26gERwg/bGzKOX6R9AQoOaFWREyAef/Kd9zo+5s=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=sXKIwD1RD3BLfW6HS5aTsLH2zDt5HeqokUB+K7FsxVkoJhvVgR9r7Ff79VBf3fPhg
 IjF4WeUvoHflMO8+N2ifkTwV8WIp6KloKV0XCSvcbUBFZYWyK3co0cvATpqgmD7E3m
 B5ViAb14Ei63PR4Qy3/Ndcwn06LEcho6L0JaXjUc=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D1E5C8B79A;
 Tue,  3 Mar 2020 06:59:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id b_l-0DSpkXO5; Tue,  3 Mar 2020 06:59:46 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 081278B755;
 Tue,  3 Mar 2020 06:59:44 +0100 (CET)
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-mm@kvack.org
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
 <1582732318.7365.129.camel@lca.pw> <1583178042.7365.146.camel@lca.pw>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <6757aa1d-7951-69ef-de93-50a7b7b172e0@c-s.fr>
Date: Tue, 3 Mar 2020 06:59:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583178042.7365.146.camel@lca.pw>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_215950_021492_2D6B1CF3 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMi8wMy8yMDIwIMOgIDIwOjQwLCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+IE9uIFdlZCwg
MjAyMC0wMi0yNiBhdCAxMDo1MSAtMDUwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+IE9uIFdlZCwgMjAy
MC0wMi0yNiBhdCAxNTo0NSArMDEwMCwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4+Cj4+PiBM
ZSAyNi8wMi8yMDIwIMOgIDE1OjA5LCBRaWFuIENhaSBhIMOpY3JpdMKgOgo+Pj4+IE9uIE1vbiwg
MjAyMC0wMi0xNyBhdCAwODo0NyArMDUzMCwgQW5zaHVtYW4gS2hhbmR1YWwgd3JvdGU6Cj4+Pj4+
IFRoaXMgYWRkcyB0ZXN0cyB3aGljaCB3aWxsIHZhbGlkYXRlIGFyY2hpdGVjdHVyZSBwYWdlIHRh
YmxlIGhlbHBlcnMgYW5kCj4+Pj4+IG90aGVyIGFjY2Vzc29ycyBpbiB0aGVpciBjb21wbGlhbmNl
IHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuCj4+Pj4+IFRoaXMgd2lsbCBoZWxw
IHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBpbiB2YWxpZGF0aW5nIGNoYW5nZXMgdG8gZXhpc3RpbmcK
Pj4+Pj4gcGFnZSB0YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9uIG9mIG5ldyBvbmVzLgo+Pj4+Pgo+
Pj4+PiBUaGlzIHRlc3QgY292ZXJzIGJhc2ljIHBhZ2UgdGFibGUgZW50cnkgdHJhbnNmb3JtYXRp
b25zIGluY2x1ZGluZyBidXQgbm90Cj4+Pj4+IGxpbWl0ZWQgdG8gb2xkLCB5b3VuZywgZGlydHks
IGNsZWFuLCB3cml0ZSwgd3JpdGUgcHJvdGVjdCBldGMgYXQgdmFyaW91cwo+Pj4+PiBsZXZlbCBh
bG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50ZXJtZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0IHBhZ2Ug
dGFibGUgcGFnZQo+Pj4+PiBhbmQgdmFsaWRhdGluZyB0aGVtLgo+Pj4+Pgo+Pj4+PiBUZXN0IHBh
Z2UgdGFibGUgcGFnZXMgYXJlIGFsbG9jYXRlZCBmcm9tIHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1
aXJlZCBzaXplCj4+Pj4+IGFuZCBhbGlnbm1lbnRzLiBUaGUgbWFwcGVkIHBmbnMgYXQgcGFnZSB0
YWJsZSBsZXZlbHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4+Pj4+IHJlYWwgcGZuIHJlcHJlc2VudGlu
ZyBhIHZhbGlkIGtlcm5lbCB0ZXh0IHN5bWJvbC4gVGhpcyB0ZXN0IGdldHMgY2FsbGVkCj4+Pj4+
IGluc2lkZSBrZXJuZWxfaW5pdCgpIHJpZ2h0IGFmdGVyIGFzeW5jX3N5bmNocm9uaXplX2Z1bGwo
KS4KPj4+Pj4KPj4+Pj4gVGhpcyB0ZXN0IGdldHMgYnVpbHQgYW5kIHJ1biB3aGVuIENPTkZJR19E
RUJVR19WTV9QR1RBQkxFIGlzIHNlbGVjdGVkLiBBbnkKPj4+Pj4gYXJjaGl0ZWN0dXJlLCB3aGlj
aCBpcyB3aWxsaW5nIHRvIHN1YnNjcmliZSB0aGlzIHRlc3Qgd2lsbCBuZWVkIHRvIHNlbGVjdAo+
Pj4+PiBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFLiBGb3Igbm93IHRoaXMgaXMgbGltaXRlZCB0
byBhcmMsIGFybTY0LCB4ODYsIHMzOTAKPj4+Pj4gYW5kIHBwYzMyIHBsYXRmb3JtcyB3aGVyZSB0
aGUgdGVzdCBpcyBrbm93biB0byBidWlsZCBhbmQgcnVuIHN1Y2Nlc3NmdWxseS4KPj4+Pj4gR29p
bmcgZm9yd2FyZCwgb3RoZXIgYXJjaGl0ZWN0dXJlcyB0b28gY2FuIHN1YnNjcmliZSB0aGUgdGVz
dCBhZnRlciBmaXhpbmcKPj4+Pj4gYW55IGJ1aWxkIG9yIHJ1bnRpbWUgcHJvYmxlbXMgd2l0aCB0
aGVpciBwYWdlIHRhYmxlIGhlbHBlcnMuIE1lYW53aGlsZSBmb3IKPj4+Pj4gYmV0dGVyIHBsYXRm
b3JtIGNvdmVyYWdlLCB0aGUgdGVzdCBjYW4gYWxzbyBiZSBlbmFibGVkIHdpdGggQ09ORklHX0VY
UEVSVAo+Pj4+PiBldmVuIHdpdGhvdXQgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4KPj4+Pj4K
Pj4+Pj4gRm9sa3MgaW50ZXJlc3RlZCBpbiBtYWtpbmcgc3VyZSB0aGF0IGEgZ2l2ZW4gcGxhdGZv
cm0ncyBwYWdlIHRhYmxlIGhlbHBlcnMKPj4+Pj4gY29uZm9ybSB0byBleHBlY3RlZCBnZW5lcmlj
IE1NIHNlbWFudGljcyBzaG91bGQgZW5hYmxlIHRoZSBhYm92ZSBjb25maWcKPj4+Pj4gd2hpY2gg
d2lsbCBqdXN0IHRyaWdnZXIgdGhpcyB0ZXN0IGR1cmluZyBib290LiBBbnkgbm9uIGNvbmZvcm1p
dHkgaGVyZSB3aWxsCj4+Pj4+IGJlIHJlcG9ydGVkIGFzIGFuIHdhcm5pbmcgd2hpY2ggd291bGQg
bmVlZCB0byBiZSBmaXhlZC4gVGhpcyB0ZXN0IHdpbGwgaGVscAo+Pj4+PiBjYXRjaCBhbnkgY2hh
bmdlcyB0byB0aGUgYWdyZWVkIHVwb24gc2VtYW50aWNzIGV4cGVjdGVkIGZyb20gZ2VuZXJpYyBN
TSBhbmQKPj4+Pj4gZW5hYmxlIHBsYXRmb3JtcyB0byBhY2NvbW1vZGF0ZSBpdCB0aGVyZWFmdGVy
Lgo+Pj4+Cj4+Pj4gSG93IHVzZWZ1bCBpcyB0aGlzIHRoYXQgc3RyYWlnaHRseSBjcmFzaCB0aGUg
cG93ZXJwYz8KPj4+Pgo+Pj4+IFvCoMKgwqAyMy4yNjM0MjVdW8KgwqDCoMKgVDFdIGRlYnVnX3Zt
X3BndGFibGU6IGRlYnVnX3ZtX3BndGFibGU6IFZhbGlkYXRpbmcKPj4+PiBhcmNoaXRlY3R1cmUg
cGFnZSB0YWJsZSBoZWxwZXJzCj4+Pj4gW8KgwqDCoDIzLjI2MzYyNV1bwqDCoMKgwqBUMV0gLS0t
LS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+Pj4gW8KgwqDCoDIzLjI2MzY0OV1b
wqDCoMKgwqBUMV0ga2VybmVsIEJVRyBhdCBhcmNoL3Bvd2VycGMvbW0vcGd0YWJsZS5jOjI3NCEK
Pj4+Cj4+PiBUaGUgcHJvYmxlbSBvbiBQUEM2NCBpcyBrbm93biBhbmQgaGFzIHRvIGJlIGludmVz
dGlnYXRlZCBhbmQgZml4ZWQuCj4+Cj4+IEl0IG1pZ2h0IGJlIGludGVyZXN0aW5nIHRvIGhlYXIg
d2hhdCBwb3dlcnBjNjQgbWFpbnRhaW5lcnMgd291bGQgc2F5IGFib3V0IGl0Cj4+IGFuZCBpZiBp
dCBpcyBhY3R1YWxseSB3b3J0aCAiZml4aW5nIiBpbiB0aGUgYXJjaCBjb2RlLCBidXQgdGhhdCBC
VUdfT04oKSB3YXMKPj4gdGhlcmUgc2luY2UgMjAwOSBhbmQgaGFkIG5vdCBiZWVuIGV4cG9zZWQg
dW50aWwgdGhpcyBwYXRjaCBjb21lcyBhbG9uZT8KPiAKPiBUaGlzIHBhdGNoIGJlbG93IG1ha2Vz
IGl0IHdvcmtzIG9uIHBvd2VycGM2NCBpbiBvcmRlciB0byBkb2RnZSB0aGUgQlVHX09OKClzIGlu
Cj4gYXNzZXJ0X3B0ZV9sb2NrZWQoKSB0cmlnZ2VyZWQgYnkgcHRlX2NsZWFyX3Rlc3RzKCkuCj4g
Cj4gCj4gZGlmZiAtLWdpdCBhL21tL2RlYnVnX3ZtX3BndGFibGUuYyBiL21tL2RlYnVnX3ZtX3Bn
dGFibGUuYwo+IGluZGV4IDk2ZGQ3ZDU3NGNlZi4uNTBiMzg1MjMzOTcxIDEwMDY0NAo+IC0tLSBh
L21tL2RlYnVnX3ZtX3BndGFibGUuYwo+ICsrKyBiL21tL2RlYnVnX3ZtX3BndGFibGUuYwo+IEBA
IC01NSw2ICs1NSw4IEBACj4gIMKgI2RlZmluZSBSQU5ET01fT1JWQUxVRQlHRU5NQVNLKEJJVFNf
UEVSX0xPTkcgLSAxLCBTMzkwX01BU0tfQklUUykKPiAgwqAjZGVmaW5lIFJBTkRPTV9OWlZBTFVF
CUdFTk1BU0soNywgMCkKPiAgIAo+ICt1bnNpZ25lZCBsb25nIHZhZGRyOwo+ICsKCkNhbiB3ZSBh
dm9pZCBnbG9iYWwgdmFyID8KCj4gIMKgc3RhdGljIHZvaWQgX19pbml0IHB0ZV9iYXNpY190ZXN0
cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkKPiAgwqB7Cj4gIMKgCXB0ZV90IHB0
ZSA9IHBmbl9wdGUocGZuLCBwcm90KTsKPiBAQCAtMjU2LDcgKzI1OCw3IEBAIHN0YXRpYyB2b2lk
IF9faW5pdCBwdGVfY2xlYXJfdGVzdHMoc3RydWN0IG1tX3N0cnVjdCAqbW0sCj4gcHRlX3QgKnB0
ZXApCj4gICAKPiAgwqAJcHRlID0gX19wdGUocHRlX3ZhbChwdGUpIHwgUkFORE9NX09SVkFMVUUp
Owo+ICDCoAlXUklURV9PTkNFKCpwdGVwLCBwdGUpOwo+IC0JcHRlX2NsZWFyKG1tLCAwLCBwdGVw
KTsKPiArCXB0ZV9jbGVhcihtbSwgdmFkZHIsIHB0ZXApOwo+ICDCoAlwdGUgPSBSRUFEX09OQ0Uo
KnB0ZXApOwo+ICDCoAlXQVJOX09OKCFwdGVfbm9uZShwdGUpKTsKPiAgwqB9Cj4gQEAgLTMxMCw4
ICszMTIsOSBAQCB2b2lkIF9faW5pdCBkZWJ1Z192bV9wZ3RhYmxlKHZvaWQpCj4gIMKgCXBndGFi
bGVfdCBzYXZlZF9wdGVwOwo+ICDCoAlwZ3Byb3RfdCBwcm90Owo+ICDCoAlwaHlzX2FkZHJfdCBw
YWRkcjsKPiAtCXVuc2lnbmVkIGxvbmcgdmFkZHIsIHB0ZV9hbGlnbmVkLCBwbWRfYWxpZ25lZDsK
CkNhbiB3ZSBwYXNzIGxvY2FsIHZhZGRyIHRvIHB0ZV9jbGVhcl90ZXN0cygpIGluc3RlYWQgb2Yg
bWFraW5nIGl0IGEgCmdsb2JhbCB2YXIgPwoKPiArCXVuc2lnbmVkIGxvbmcgcHRlX2FsaWduZWQs
IHBtZF9hbGlnbmVkOwo+ICDCoAl1bnNpZ25lZCBsb25nIHB1ZF9hbGlnbmVkLCBwNGRfYWxpZ25l
ZCwgcGdkX2FsaWduZWQ7Cj4gKwlzcGlubG9ja190ICpwdGw7Cj4gICAKPiAgwqAJcHJfaW5mbygi
VmFsaWRhdGluZyBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxwZXJzXG4iKTsKPiAgwqAJcHJv
dCA9IHZtX2dldF9wYWdlX3Byb3QoVk1GTEFHUyk7Cj4gQEAgLTM0NCw3ICszNDcsNyBAQCB2b2lk
IF9faW5pdCBkZWJ1Z192bV9wZ3RhYmxlKHZvaWQpCj4gIMKgCXA0ZHAgPSBwNGRfYWxsb2MobW0s
IHBnZHAsIHZhZGRyKTsKPiAgwqAJcHVkcCA9IHB1ZF9hbGxvYyhtbSwgcDRkcCwgdmFkZHIpOwo+
ICDCoAlwbWRwID0gcG1kX2FsbG9jKG1tLCBwdWRwLCB2YWRkcik7Cj4gLQlwdGVwID0gcHRlX2Fs
bG9jX21hcChtbSwgcG1kcCwgdmFkZHIpOwo+ICsJcHRlcCA9IHB0ZV9hbGxvY19tYXBfbG9jayht
bSwgcG1kcCwgdmFkZHIsICZwdGwpOwo+ICAgCj4gIMKgCS8qCj4gIMKgCcKgKiBTYXZlIGFsbCB0
aGUgcGFnZSB0YWJsZSBwYWdlIGFkZHJlc3NlcyBhcyB0aGUgcGFnZSB0YWJsZQo+IEBAIC0zNzAs
NyArMzczLDcgQEAgdm9pZCBfX2luaXQgZGVidWdfdm1fcGd0YWJsZSh2b2lkKQo+ICDCoAlwNGRf
Y2xlYXJfdGVzdHMobW0sIHA0ZHApOwo+ICDCoAlwZ2RfY2xlYXJfdGVzdHMobW0sIHBnZHApOwo+
ICAgCj4gLQlwdGVfdW5tYXAocHRlcCk7Cj4gKwlwdGVfdW5tYXBfdW5sb2NrKHB0ZXAsIHB0bCk7
Cj4gICAKPiAgwqAJcG1kX3BvcHVsYXRlX3Rlc3RzKG1tLCBwbWRwLCBzYXZlZF9wdGVwKTsKPiAg
wqAJcHVkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwdWRwLCBzYXZlZF9wbWRwKTsKPiAKCkNocmlzdG9w
aGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
