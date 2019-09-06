Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC43AB304
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 09:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyHBJi1fW9XS3KiZzlrXBny1IVLGB7TYMbxSULqCoG4=; b=gVY9pqTd2aQawk
	OsT75UlrotD03Xr+09Exkn6udu2L31yS057rmf3nuNWvDtMr1DVTOefLaMO5ROacW1wavg6liSwVw
	Vy9S6ObEvdhKv19kaF3Ol0cBlPJM25xIq1FNgrvUj0XyWJOtU/5P1T9c0Z8cfd5W1qdJMJ6Ge+gd4
	lWE3Fce/Wv5+VxdV3pzzXIktmtqANcwg/fRqhaoAfrxp5oxA3vduu+031HmCbQ/9GbixVRDU3aofs
	ut16CATrNoPuG25gfKV20yywdyIP/1k0B44AWm19wbNSGhacxMvdocAiAxNG96OlOOiu/23V2jlHs
	LcH6iw01VU7GA7TL06Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68Io-00019M-UK; Fri, 06 Sep 2019 07:05:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i68HB-0000mA-CH; Fri, 06 Sep 2019 07:03:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 05E0E28;
 Fri,  6 Sep 2019 00:03:19 -0700 (PDT)
Received: from [10.162.42.101] (p8cg001049571a15.blr.arm.com [10.162.42.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B8A783F67D; Fri,  6 Sep 2019 00:05:32 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: "Kirill A. Shutemov" <kirill@shutemov.name>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904141950.ykoe3h7b4hcvnysu@box>
 <6d4b989d-8eaa-d26e-6068-4b0e4d7a52f9@arm.com>
 <20190905085910.i6dppgnqi4ple22w@box.shutemov.name>
Message-ID: <9c226f84-fe8f-8438-b378-b6659cccfcd1@arm.com>
Date: Fri, 6 Sep 2019 12:33:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190905085910.i6dppgnqi4ple22w@box.shutemov.name>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_000321_929597_4282C263 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8wNS8yMDE5IDAyOjI5IFBNLCBLaXJpbGwgQS4gU2h1dGVtb3Ygd3JvdGU6Cj4gT24g
VGh1LCBTZXAgMDUsIDIwMTkgYXQgMDE6NDg6MjdQTSArMDUzMCwgQW5zaHVtYW4gS2hhbmR1YWwg
d3JvdGU6Cj4+Pj4gKyNkZWZpbmUgVkFERFJfVEVTVAkoUEdESVJfU0laRSArIFBVRF9TSVpFICsg
UE1EX1NJWkUgKyBQQUdFX1NJWkUpCj4+Pgo+Pj4gV2hhdCBpcyBzcGVjaWFsIGFib3V0IHRoaXMg
YWRkcmVzcz8gSG93IGRvIHlvdSBrbm93IGlmIGl0IGlzIG5vdCBvY2N1cGllZAo+Pj4geWV0Pwo+
Pgo+PiBXZSBhcmUgY3JlYXRpbmcgdGhlIHBhZ2UgdGFibGUgZnJvbSBzY3JhdGNoIGFmdGVyIGFs
bG9jYXRpbmcgYW4gbW1fc3RydWN0Cj4+IGZvciBhIGdpdmVuIHJhbmRvbSB2aXJ0dWFsIGFkZHJl
c3MgJ1ZBRERSX1RFU1QnLiBIZW5jZSBub3RoaW5nIGlzIG9jY3VwaWVkCj4+IGp1c3QgeWV0LiBU
aGVyZSBpcyBub3RoaW5nIHNwZWNpYWwgYWJvdXQgdGhpcyBhZGRyZXNzLCBqdXN0IHRoYXQgaXQg
dHJpZXMKPj4gdG8gZW5zdXJlIHRoZSBwYWdlIHRhYmxlIGVudHJpZXMgYXJlIGJlaW5nIGNyZWF0
ZWQgd2l0aCBzb21lIG9mZnNldCBmcm9tCj4+IGJlZ2lubmluZyBvZiByZXNwZWN0aXZlIHBhZ2Ug
dGFibGUgcGFnZSBhdCBhbGwgbGV2ZWxzID8gVGhlIGlkZWEgaXMgdG8KPj4gaGF2ZSBhIG1vcmUg
cmVwcmVzZW50YXRpdmUgZm9ybSBvZiBwYWdlIHRhYmxlIHN0cnVjdHVyZSBmb3IgdGVzdC4KPiAK
PiBXaHkgUDREX1NJWkUgaXMgbWlzc2luZz8KClRoYXQgd2FzIGFuIG9taXNzaW9uIGV2ZW4gdGhv
dWdoIEkgd2FzIHdvbmRlcmluZyB3aGV0aGVyIGl0IHdpbGwgYmUKYXBwbGljYWJsZSBvciBldmVu
IG1ha2Ugc2Vuc2Ugb24gcGxhdGZvcm1zIHdoaWNoIGRvbnQgaGF2ZSByZWFsIFA0RC4KCj4gCj4g
QXJlIHlvdSBzdXJlIGl0IHdpbGwgbm90IGxhbmQgaW50byBrZXJuZWwgYWRkcmVzcyBzcGFjZSBv
biBhbnkgYXJjaD8KCkNhbiBpdCBldmVuIGNyb3NzIHVzZXIgdmlydHVhbCBhZGRyZXNzIHJhbmdl
IHdpdGgganVzdCBhIHNpbmdsZSBzcGFuCmF0IGVhY2ggcGFnZSB0YWJsZSBsZXZlbCA/IFRCSCBJ
IGRpZCBub3QgdGhpbmsgYWJvdXQgdGhhdCBwb3NzaWJpbGl0eS4KCj4gCj4gSSB0aGluayBtb3Jl
IHJvYnVzdCB3YXkgdG8gZGVhbCB3aXRoIHRoaXMgd291bGQgYmUgdXNpbmcKPiBnZXRfdW5tYXBw
ZWRfYXJlYSgpIGluc3RlYWQgb2YgZml4ZWQgYWRkcmVzcy4KCk1ha2VzIHNlbnNlIGFuZCBwcm9i
YWJseSBpdHMgYmV0dGVyIHRvIGdldCBhIHZpcnR1YWwgYWRkcmVzcyB3aGljaAppcyBrbm93biB0
byBoYXZlIGJlZW4gY2hlY2tlZCBhZ2FpbnN0IGFsbCBib3VuZGFyeSBjb25kaXRpb25zLiBXaWxs
CmV4cGxvcmUgYXJvdW5kIGdldF91bm1hcHBlZF9hcmVhKCkgaW4gdGhpcyByZWdhcmQuCgo+IAo+
PiBUaGlzIG1ha2VzIHNlbnNlIGZvciBydW50aW1lIGNhc2VzIGJ1dCB0aGVyZSBpcyBhIHByb2Js
ZW0gaGVyZS4KPj4KPj4gT24gYXJtNjQsIHBnZF9wb3B1bGF0ZSgpIHdoaWNoIHRha2VzIChwdWRf
dCAqKSBhcyBsYXN0IGFyZ3VtZW50IGluc3RlYWQgb2YKPj4gKHA0ZF90ICopIHdpbGwgZmFpbCB0
byBidWlsZCB3aGVuIG5vdCB3cmFwcGVkIGluICFfX1BBR0VUQUJMRV9QNERfRk9MREVECj4+IG9u
IGNlcnRhaW4gY29uZmlndXJhdGlvbnMuCj4+Cj4+IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9w
Z2FsbG9jLmg6ODE6NzU6IG5vdGU6Cj4+IGV4cGVjdGVkIOKAmHB1ZF90ICrigJkge2FrYSDigJhz
dHJ1Y3QgPGFub255bW91cz4gKuKAmX0KPj4gYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg4oCYcGdk
X3QgKuKAmSB7YWthIOKAmHN0cnVjdCA8YW5vbnltb3VzPiAq4oCZfQo+PiBzdGF0aWMgaW5saW5l
IHZvaWQgcGdkX3BvcHVsYXRlKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLCBwZ2RfdCAqcGdkcCwgcHVk
X3QgKnB1ZHApCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+Xn5+fgo+PiBXb25kZXJpbmcgaWYgdGhpcyBp
cyBzb21ldGhpbmcgdG8gYmUgZml4ZWQgb24gYXJtNjQgb3IgaXRzIG1vcmUgZ2VuZXJhbAo+PiBw
cm9ibGVtLiBXaWxsIGxvb2sgaW50byB0aGlzIGZ1cnRoZXIuCj4gCj4gSSB0aGluayB5b3UgbmVl
ZCB3cmFwIHRoaXMgaW50byAjaWZuZGVmIF9fQVJDSF9IQVNfNUxFVkVMX0hBQ0suCgpPa2F5LgoK
PiAKPj4+PiArCXBtZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcG1kcCwgKHBndGFibGVfdCkgcGFnZSk7
Cj4+Pgo+Pj4gVGhpcyBpcyBub3QgY29ycmVjdCBmb3IgYXJjaGl0ZWN0dXJlcyB0aGF0IGRlZmlu
ZXMgcGd0YWJsZV90IGFzIHB0ZV90Cj4+PiBwb2ludGVyLCBub3Qgc3RydWN0IHBhZ2UgcG9pbnRl
ci4KPj4KPj4gUmlnaHQsIGEgZ3JlcCBvbiB0aGUgc291cmNlIGNvbmZpcm1zIHRoYXQuCj4+Cj4+
IFRoZXNlIHBsYXRmb3JtcyBkZWZpbmUgcGd0YWJsZV90IGFzIHN0cnVjdCBwYWdlICoKPj4KPj4g
YXJjaC9hbHBoYS9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJs
ZV90Owo+PiBhcmNoL2FybS9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAq
cGd0YWJsZV90Owo+PiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVj
dCBwYWdlICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvY3NreS9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRl
ZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+PiBhcmNoL2hleGFnb24vaW5jbHVkZS9hc20vcGFn
ZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPj4gYXJjaC9pYTY0L2luY2x1ZGUv
YXNtL3BhZ2UuaDogIHR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPj4gYXJjaC9pYTY0
L2luY2x1ZGUvYXNtL3BhZ2UuaDogICAgdHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+
PiBhcmNoL202OGsvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFi
bGVfdDsKPj4gYXJjaC9taWNyb2JsYXplL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVj
dCBwYWdlICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvbWlwcy9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRl
ZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+PiBhcmNoL25kczMyL2luY2x1ZGUvYXNtL3BhZ2Uu
aDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvbmlvczIvaW5jbHVkZS9h
c20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPj4gYXJjaC9vcGVucmlz
Yy9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+PiBh
cmNoL3BhcmlzYy9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJs
ZV90Owo+PiBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdl
ICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvc2gvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0
IHBhZ2UgKnBndGFibGVfdDsKPj4gYXJjaC9zcGFyYy9pbmNsdWRlL2FzbS9wYWdlXzMyLmg6dHlw
ZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+PiBhcmNoL3VtL2luY2x1ZGUvYXNtL3BhZ2Uu
aDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvdW5pY29yZTMyL2luY2x1
ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4+IGFyY2gveDg2
L2luY2x1ZGUvYXNtL3BndGFibGVfdHlwZXMuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxl
X3Q7Cj4+IGFyY2gveHRlbnNhL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdl
ICpwZ3RhYmxlX3Q7Cj4+Cj4+IFRoZXNlIHBsYXRmb3JtcyBkZWZpbmUgcGd0YWJsZV90IGFzIHB0
ZV90ICoKPj4KPj4gYXJjaC9hcmMvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgcHRlX3QgKiBw
Z3RhYmxlX3Q7Cj4+IGFyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9tbXUuaDp0eXBlZGVmIHB0ZV90
ICpwZ3RhYmxlX3Q7Cj4+IGFyY2gvczM5MC9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBwdGVf
dCAqcGd0YWJsZV90Owo+PiBhcmNoL3NwYXJjL2luY2x1ZGUvYXNtL3BhZ2VfNjQuaDp0eXBlZGVm
IHB0ZV90ICpwZ3RhYmxlX3Q7Cj4+Cj4+IFNob3VsZCB3ZSBuZWVkIGhhdmUgdHdvIHBtZF9wb3B1
bGF0ZV90ZXN0cygpIGRlZmluaXRpb25zIHdpdGgKPj4gZGlmZmVyZW50IGFyZ3VtZW50cyAoc3Ry
dWN0IHBhZ2UgcG9pbnRlciBvciBwdGVfdCBwb2ludGVyKSBhbmQgdGhlbgo+PiBjYWxsIGVpdGhl
ciBvbmUgYWZ0ZXIgZGV0ZWN0aW5nIHRoZSBnaXZlbiBwbGF0Zm9ybSA/Cj4gCj4gVXNlIHB0ZV9h
bGxvY19vbmUoKSBpbnN0ZWFkIG9mIGFsbG9jX21hcHBlZF9wYWdlKCkgdG8gYWxsb2NhdGUgdGhl
IHBhZ2UKPiB0YWJsZS4KClJpZ2h0LCB0aGUgUFRFIHBhZ2UgdGFibGUgcGFnZSBzaG91bGQgY29t
ZSBmcm9tIHB0ZV9hbGxvY19vbmUoKSBpbnN0ZWFkCmRpcmVjdGx5IGZyb20gYSBzdHJ1Y3QgcGFn
ZS4gVGhlIGZ1bmN0aW9ucyBwdGVfYWxsb2Nfb25lKCkgYW5kIHB0ZV9mcmVlKCkKb3BlcmF0ZSBv
biAoc3RydWN0IHBhZ2Ugb3IgcHRlX3QpIHBvaW50ZXJzIGRlcGVuZGluZyBhcHBsaWNhYmxlIHBn
dGFibGVfdApkZWZpbml0aW9uIChpbiBjYXNlcyB3aGVyZSBwbGF0Zm9ybSBkZWZpbmVzIG90aGVy
d2lzZSkuIFdpbGwgZml4IGl0LgoKPiAKPj4+PiArCXB1ZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcHVk
cCwgcG1kcCk7Cj4+Pj4gKwlwNGRfcG9wdWxhdGVfdGVzdHMobW0sIHA0ZHAsIHB1ZHApOwo+Pj4+
ICsJcGdkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwZ2RwLCBwNGRwKTsKPj4+Cj4+PiBUaGlzIGlzIHdy
b25nLiBBbGwgcD9kcCBwb2ludHMgdG8gdGhlIHNlY29uZCBlbnRyeSBpbiBwYWdlIHRhYmxlIGVu
dHJ5Lgo+Pj4gVGhpcyBpcyBub3QgdmFsaWQgcG9pbnRlciBmb3IgcGFnZSB0YWJsZSBhbmQgdHJp
Z2dlcnMgcD9kX2JhZCgpIG9uIHg4Ni4KPj4KPj4gWWVhaCB0aGVzZSBhcmUgc2Vjb25kIGVudHJp
ZXMgYmVjYXVzZSBvZiB0aGUgd2F5IHdlIGNyZWF0ZSB0aGUgcGFnZSB0YWJsZS4KPj4gQnV0IEkg
Z3Vlc3MgaXRzIGFwcGxpY2FibGUgb25seSB0byB0aGUgc2Vjb25kIGFyZ3VtZW50IGluIGFsbCB0
aGVzZSBhYm92ZQo+PiBjYXNlcyBiZWNhdXNlIHRoZSBmaXJzdCBhcmd1bWVudCBjYW4gYmUgYW55
IHZhbGlkIGVudHJ5IG9uIHByZXZpb3VzIHBhZ2UKPj4gdGFibGUgbGV2ZWwuCj4gCj4gWWVzOgo+
IAo+IEBAIC0zOTcsOSArMzk2LDkgQEAgc3RhdGljIGludCBfX2luaXQgYXJjaF9wZ3RhYmxlX3Rl
c3RzX2luaXQodm9pZCkKPiAgCXBnZF9jbGVhcl90ZXN0cyhwZ2RwKTsKPiAgCj4gIAlwbWRfcG9w
dWxhdGVfdGVzdHMobW0sIHBtZHAsIChwZ3RhYmxlX3QpIHBhZ2UpOwo+IC0JcHVkX3BvcHVsYXRl
X3Rlc3RzKG1tLCBwdWRwLCBwbWRwKTsKPiAtCXA0ZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcDRkcCwg
cHVkcCk7Cj4gLQlwZ2RfcG9wdWxhdGVfdGVzdHMobW0sIHBnZHAsIHA0ZHApOwo+ICsJcHVkX3Bv
cHVsYXRlX3Rlc3RzKG1tLCBwdWRwLCBzYXZlZF9wbWRwKTsKPiArCXA0ZF9wb3B1bGF0ZV90ZXN0
cyhtbSwgcDRkcCwgc2F2ZWRfcHVkcCk7Cj4gKwlwZ2RfcG9wdWxhdGVfdGVzdHMobW0sIHBnZHAs
IHNhdmVkX3A0ZHApOwoKU3VyZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
