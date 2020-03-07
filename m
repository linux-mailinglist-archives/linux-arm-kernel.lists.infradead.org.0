Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E0717C95B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDDAE6MpQJxkm9iqZIdb/vRDlnxqK4gvFeGnmTUtk18=; b=Q8bbW2p7P/xL3G
	8N7q+bOal2lE5RkdlehxafxDEMjPmCQ8H+liczKjkJNBXFd82ZtCygI38jKZta7UfbKcku5MBjKlK
	GZRdk5VajGumnkFZBT3pXEVWY1nITpGUDrLZ60PoMTXIvaS3v5p7pgKEdMg2TRXL9ApyN+FjhITQ7
	3aJ2PCEvvV3XHKiUVuzNp30wBbmyzbhqM+nhwGYHPoFthTK1O7/WP9lBRRf1V5BAhM1ES/FYNr6Qh
	1R1PzUgx2WylRhWO9NMzR9MX9+ufxXvEhwSK7SKA2arD5Ww7tLlLQD0Geryac8TNsLlj9Lp0+Kcxl
	I8KJuwawt4BmMIVB5jXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMwP-0008U4-2W; Sat, 07 Mar 2020 00:03:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMwG-0008R9-Uo; Sat, 07 Mar 2020 00:03:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A3A530E;
 Fri,  6 Mar 2020 16:03:26 -0800 (PST)
Received: from [10.163.1.59] (unknown [10.163.1.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 689F93F237;
 Fri,  6 Mar 2020 16:03:17 -0800 (PST)
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
To: Qian Cai <cai@lca.pw>, linux-mm@kvack.org
References: <1583452659-11801-1-git-send-email-anshuman.khandual@arm.com>
 <1583527481.7365.165.camel@lca.pw>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <61250cdc-f80b-2e50-5168-2ec67ec6f1e6@arm.com>
Date: Sat, 7 Mar 2020 05:33:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1583527481.7365.165.camel@lca.pw>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_160333_080305_25F9C9BD 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8wNy8yMDIwIDAyOjE0IEFNLCBRaWFuIENhaSB3cm90ZToKPiBPbiBGcmksIDIwMjAt
MDMtMDYgYXQgMDU6MjcgKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBUaGlzIGFk
ZHMgdGVzdHMgd2hpY2ggd2lsbCB2YWxpZGF0ZSBhcmNoaXRlY3R1cmUgcGFnZSB0YWJsZSBoZWxw
ZXJzIGFuZAo+PiBvdGhlciBhY2Nlc3NvcnMgaW4gdGhlaXIgY29tcGxpYW5jZSB3aXRoIGV4cGVj
dGVkIGdlbmVyaWMgTU0gc2VtYW50aWNzLgo+PiBUaGlzIHdpbGwgaGVscCB2YXJpb3VzIGFyY2hp
dGVjdHVyZXMgaW4gdmFsaWRhdGluZyBjaGFuZ2VzIHRvIGV4aXN0aW5nCj4+IHBhZ2UgdGFibGUg
aGVscGVycyBvciBhZGRpdGlvbiBvZiBuZXcgb25lcy4KPj4KPj4gVGhpcyB0ZXN0IGNvdmVycyBi
YXNpYyBwYWdlIHRhYmxlIGVudHJ5IHRyYW5zZm9ybWF0aW9ucyBpbmNsdWRpbmcgYnV0IG5vdAo+
PiBsaW1pdGVkIHRvIG9sZCwgeW91bmcsIGRpcnR5LCBjbGVhbiwgd3JpdGUsIHdyaXRlIHByb3Rl
Y3QgZXRjIGF0IHZhcmlvdXMKPj4gbGV2ZWwgYWxvbmcgd2l0aCBwb3B1bGF0aW5nIGludGVybWVk
aWF0ZSBlbnRyaWVzIHdpdGggbmV4dCBwYWdlIHRhYmxlIHBhZ2UKPj4gYW5kIHZhbGlkYXRpbmcg
dGhlbS4KPj4KPj4gVGVzdCBwYWdlIHRhYmxlIHBhZ2VzIGFyZSBhbGxvY2F0ZWQgZnJvbSBzeXN0
ZW0gbWVtb3J5IHdpdGggcmVxdWlyZWQgc2l6ZQo+PiBhbmQgYWxpZ25tZW50cy4gVGhlIG1hcHBl
ZCBwZm5zIGF0IHBhZ2UgdGFibGUgbGV2ZWxzIGFyZSBkZXJpdmVkIGZyb20gYQo+PiByZWFsIHBm
biByZXByZXNlbnRpbmcgYSB2YWxpZCBrZXJuZWwgdGV4dCBzeW1ib2wuIFRoaXMgdGVzdCBnZXRz
IGNhbGxlZAo+PiBpbnNpZGUga2VybmVsX2luaXQoKSByaWdodCBhZnRlciBhc3luY19zeW5jaHJv
bml6ZV9mdWxsKCkuCj4+Cj4+IFRoaXMgdGVzdCBnZXRzIGJ1aWx0IGFuZCBydW4gd2hlbiBDT05G
SUdfREVCVUdfVk1fUEdUQUJMRSBpcyBzZWxlY3RlZC4gQW55Cj4+IGFyY2hpdGVjdHVyZSwgd2hp
Y2ggaXMgd2lsbGluZyB0byBzdWJzY3JpYmUgdGhpcyB0ZXN0IHdpbGwgbmVlZCB0byBzZWxlY3QK
Pj4gQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4gRm9yIG5vdyB0aGlzIGlzIGxpbWl0ZWQgdG8g
YXJjLCBhcm02NCwgeDg2LCBzMzkwCj4+IGFuZCBwcGMzMiBwbGF0Zm9ybXMgd2hlcmUgdGhlIHRl
c3QgaXMga25vd24gdG8gYnVpbGQgYW5kIHJ1biBzdWNjZXNzZnVsbHkuCj4+IEdvaW5nIGZvcndh
cmQsIG90aGVyIGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBzdWJzY3JpYmUgdGhlIHRlc3QgYWZ0ZXIg
Zml4aW5nCj4+IGFueSBidWlsZCBvciBydW50aW1lIHByb2JsZW1zIHdpdGggdGhlaXIgcGFnZSB0
YWJsZSBoZWxwZXJzLiBNZWFud2hpbGUgZm9yCj4+IGJldHRlciBwbGF0Zm9ybSBjb3ZlcmFnZSwg
dGhlIHRlc3QgY2FuIGFsc28gYmUgZW5hYmxlZCB3aXRoIENPTkZJR19FWFBFUlQKPj4gZXZlbiB3
aXRob3V0IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUuCj4+Cj4+IEZvbGtzIGludGVyZXN0ZWQg
aW4gbWFraW5nIHN1cmUgdGhhdCBhIGdpdmVuIHBsYXRmb3JtJ3MgcGFnZSB0YWJsZSBoZWxwZXJz
Cj4+IGNvbmZvcm0gdG8gZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3Mgc2hvdWxkIGVuYWJs
ZSB0aGUgYWJvdmUgY29uZmlnCj4+IHdoaWNoIHdpbGwganVzdCB0cmlnZ2VyIHRoaXMgdGVzdCBk
dXJpbmcgYm9vdC4gQW55IG5vbiBjb25mb3JtaXR5IGhlcmUgd2lsbAo+PiBiZSByZXBvcnRlZCBh
cyBhbiB3YXJuaW5nIHdoaWNoIHdvdWxkIG5lZWQgdG8gYmUgZml4ZWQuIFRoaXMgdGVzdCB3aWxs
IGhlbHAKPj4gY2F0Y2ggYW55IGNoYW5nZXMgdG8gdGhlIGFncmVlZCB1cG9uIHNlbWFudGljcyBl
eHBlY3RlZCBmcm9tIGdlbmVyaWMgTU0gYW5kCj4+IGVuYWJsZSBwbGF0Zm9ybXMgdG8gYWNjb21t
b2RhdGUgaXQgdGhlcmVhZnRlci4KPiAKPiBPSywgSSBnZXQgdGhpcyB3b3JraW5nIG9uIHBvd2Vy
cGMgaGFzaCBNTVUgYXMgd2VsbCwgc28gdGhpcz8KPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9mZWF0dXJlcy9kZWJ1Zy9kZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQKPiBi
L0RvY3VtZW50YXRpb24vZmVhdHVyZXMvZGVidWcvZGVidWctdm0tcGd0YWJsZS9hcmNoLXN1cHBv
cnQudHh0Cj4gaW5kZXggNjRkMGY5YjE1YzQ5Li5jNTI3ZDA1YzA0NTkgMTAwNjQ0Cj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9mZWF0dXJlcy9kZWJ1Zy9kZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9y
dC50eHQKPiArKysgYi9Eb2N1bWVudGF0aW9uL2ZlYXR1cmVzL2RlYnVnL2RlYnVnLXZtLXBndGFi
bGUvYXJjaC1zdXBwb3J0LnR4dAo+IEBAIC0yMiw4ICsyMiw3IEBACj4gwqDCoMKgwqDCoHzCoMKg
wqDCoMKgwqDCoG5pb3MyOiB8IFRPRE8gfAo+IMKgwqDCoMKgwqB8wqDCoMKgwqBvcGVucmlzYzog
fCBUT0RPIHwKPiDCoMKgwqDCoMKgfMKgwqDCoMKgwqDCoHBhcmlzYzogfCBUT0RPIHwKPiAtwqDC
oMKgwqB8wqDCoHBvd2VycGMvMzI6IHzCoMKgb2vCoMKgfAo+IC3CoMKgwqDCoHzCoMKgcG93ZXJw
Yy82NDogfCBUT0RPIHwKPiArwqDCoMKgwqB8wqDCoMKgwqDCoHBvd2VycGM6IHzCoMKgb2vCoMKg
fAo+IMKgwqDCoMKgwqB8wqDCoMKgwqDCoMKgwqByaXNjdjogfCBUT0RPIHwKPiDCoMKgwqDCoMKg
fMKgwqDCoMKgwqDCoMKgwqBzMzkwOiB8wqDCoG9rwqDCoHwKPiDCoMKgwqDCoMKgfMKgwqDCoMKg
wqDCoMKgwqDCoMKgc2g6IHwgVE9ETyB8Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcG93ZXJwYy9LY29u
ZmlnIGIvYXJjaC9wb3dlcnBjL0tjb25maWcKPiBpbmRleCAyZTdlZWU1MjNiYTEuLjE3NjkzMGY0
MGUwNyAxMDA2NDQKPiAtLS0gYS9hcmNoL3Bvd2VycGMvS2NvbmZpZwo+ICsrKyBiL2FyY2gvcG93
ZXJwYy9LY29uZmlnCj4gQEAgLTExNiw3ICsxMTYsNyBAQCBjb25maWcgUFBDCj4gwqAJIwo+IMKg
CXNlbGVjdCBBUkNIXzMyQklUX09GRl9UIGlmIFBQQzMyCj4gwqAJc2VsZWN0IEFSQ0hfSEFTX0RF
QlVHX1ZJUlRVQUwKPiAtCXNlbGVjdCBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFIGlmIFBQQzMy
Cj4gKwlzZWxlY3QgQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRQo+IMKgCXNlbGVjdCBBUkNIX0hB
U19ERVZNRU1fSVNfQUxMT1dFRAo+IMKgCXNlbGVjdCBBUkNIX0hBU19FTEZfUkFORE9NSVpFCj4g
wqAJc2VsZWN0IEFSQ0hfSEFTX0ZPUlRJRllfU09VUkNFCj4gZGlmZiAtLWdpdCBhL21tL2RlYnVn
X3ZtX3BndGFibGUuYyBiL21tL2RlYnVnX3ZtX3BndGFibGUuYwo+IGluZGV4IDk2YTkxYmRhM2E4
NS4uOTg5OTBhNTE1MjY4IDEwMDY0NAo+IC0tLSBhL21tL2RlYnVnX3ZtX3BndGFibGUuYwo+ICsr
KyBiL21tL2RlYnVnX3ZtX3BndGFibGUuYwo+IEBAIC0yNTYsNyArMjU2LDggQEAgc3RhdGljIHZv
aWQgX19pbml0IHB0ZV9jbGVhcl90ZXN0cyhzdHJ1Y3QgbW1fc3RydWN0ICptbSwKPiBwdGVfdCAq
cHRlcCwKPiDCoAlwdGVfdCBwdGUgPSBSRUFEX09OQ0UoKnB0ZXApOwo+IMKgCj4gwqAJcHRlID0g
X19wdGUocHRlX3ZhbChwdGUpIHwgUkFORE9NX09SVkFMVUUpOwo+IC0JV1JJVEVfT05DRSgqcHRl
cCwgcHRlKTsKPiArCXNldF9wdGVfYXQobW0sIHZhZGRyLCBwdGVwLCBwdGUpOwoKSG1tLCBzZXRf
cHRlX2F0KCkgZnVuY3Rpb24gaXMgbm90IHByZWZlcnJlZCBoZXJlIGZvciB0aGVzZSB0ZXN0cy4g
VGhlIGlkZWEKaXMgdG8gYXZvaWQgb3IgYXRsZWFzdCBtaW5pbWl6ZSBUTEIvY2FjaGUgZmx1c2hl
cyB0cmlnZ2VyZWQgZnJvbSB0aGVzZSBzb3J0Cm9mICdzdGF0aWMnIHRlc3RzLiBzZXRfcHRlX2F0
KCkgaXMgcGxhdGZvcm0gcHJvdmlkZWQgYW5kIGNvdWxkL21pZ2h0IHRyaWdnZXIKdGhlc2UgZmx1
c2hlcyBvciBzb21lIG90aGVyIHBsYXRmb3JtIHNwZWNpZmljIHN5bmNocm9uaXphdGlvbiBzdHVm
Zi4gSnVzdAp3b25kZXJpbmcgaXMgdGhlcmUgc3BlY2lmaWMgcmVhc29uIHdpdGggcmVzcGVjdCB0
byB0aGUgc29mdCBsb2NrIHVwIHByb2JsZW0KbWFraW5nIGl0IG5lY2Vzc2FyeSB0byB1c2Ugc2V0
X3B0ZV9hdCgpIHJhdGhlciB0aGFuIGEgc2ltcGxlIFdSSVRFX09OQ0UoKSA/Cgo+ICsJYmFycmll
cigpOwo+IMKgCXB0ZV9jbGVhcihtbSwgdmFkZHIsIHB0ZXApOwo+IMKgCXB0ZSA9IFJFQURfT05D
RSgqcHRlcCk7Cj4gwqAJV0FSTl9PTighcHRlX25vbmUocHRlKSk7Cj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
