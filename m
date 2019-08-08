Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA7A85B27
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsrAb0YwpQRi8Rxniwz1Tdey6lxENBnKzCUUz8D3J/A=; b=ZqcEjnpUBvP3fB
	LIQKNPR46xnFyrk+pv0ZV3ROEMTWsZBwbdDjKTC6P0AsP2IsCnN8yifVnKGSvPaSWzDEXagWj8kRh
	d10x2lSq5lGkVNkb3+pXEXffZy6Uci9nmLki6E6MHwXvN9D76cMkyDbANQt2EMb+Ys8mlObydUHph
	jfd2NUGScT29KyWSu1IbQs5ZMT7tid0pTiMpOyNb0GKRd8kaEiyu0FRS12oaln6zAUQ5piAVa4q/G
	IDvLAMQzytF/+9aybG3VTjjbYxOYYdmZsN2AVngbEfxGtnc5Y4sN/351IcsVV8xiI+0SMGxlWmfPn
	hRCucZLVF58gynkEd+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcOg-0005Yw-Rp; Thu, 08 Aug 2019 06:59:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcOI-0005US-6a
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:59:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E449337;
 Wed,  7 Aug 2019 23:59:13 -0700 (PDT)
Received: from [10.163.1.243] (unknown [10.163.1.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A1CF3F706;
 Thu,  8 Aug 2019 00:01:13 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, James Morse <James.Morse@arm.com>
References: <20190807045851.10772-1-justin.he@arm.com>
 <ce0be561-117c-ef94-6a26-f88c3ba21096@arm.com>
 <DB7PR08MB30823791749E5B083AF167B5F7D70@DB7PR08MB3082.eurprd08.prod.outlook.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <7c950e09-bc34-fa19-8889-598832c97b44@arm.com>
Date: Thu, 8 Aug 2019 12:28:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <DB7PR08MB30823791749E5B083AF167B5F7D70@DB7PR08MB3082.eurprd08.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_235914_439831_C3A34A5C 
X-CRM114-Status: GOOD (  23.66  )
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
Cc: Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>,
 Dan Williams <dan.j.williams@intel.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jun Yao <yaojun8558363@gmail.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>, Qian Cai <cai@lca.pw>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Robin Murphy <Robin.Murphy@arm.com>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOC8wOC8yMDE5IDExOjUwIEFNLCBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5h
KSB3cm90ZToKPiBIaSBBbnNodW1hbgo+IFRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzLCBwbGVhc2Ug
c2VlIG15IGNvbW1lbnRzIGJlbG93Cj4gCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+
IEZyb206IEFuc2h1bWFuIEtoYW5kdWFsIDxhbnNodW1hbi5raGFuZHVhbEBhcm0uY29tPgo+PiBT
ZW50OiAyMDE55bm0OOaciDjml6UgMTM6MTkKPj4gVG86IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xv
Z3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT47IENhdGFsaW4KPj4gTWFyaW5hcyA8Q2F0YWxp
bi5NYXJpbmFzQGFybS5jb20+OyBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPjsKPj4gTWFy
ayBSdXRsYW5kIDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEphbWVzIE1vcnNlCj4+IDxKYW1lcy5N
b3JzZUBhcm0uY29tPgo+PiBDYzogQ2hyaXN0b2ZmZXIgRGFsbCA8Q2hyaXN0b2ZmZXIuRGFsbEBh
cm0uY29tPjsgUHVuaXQgQWdyYXdhbAo+PiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IFFpYW4g
Q2FpIDxjYWlAbGNhLnB3PjsgSnVuIFlhbwo+PiA8eWFvanVuODU1ODM2M0BnbWFpbC5jb20+OyBB
bGV4IFZhbiBCcnVudCA8YXZhbmJydW50QG52aWRpYS5jb20+Owo+PiBSb2JpbiBNdXJwaHkgPFJv
YmluLk11cnBoeUBhcm0uY29tPjsgVGhvbWFzIEdsZWl4bmVyCj4+IDx0Z2x4QGxpbnV0cm9uaXgu
ZGU+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQo+PiBrZXJu
ZWxAdmdlci5rZXJuZWwub3JnCj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGFybTY0OiBtbTogYWRk
IG1pc3NpbmcgUFRFX1NQRUNJQUwgaW4KPj4gcHRlX21rZGV2bWFwIG9uIGFybTY0Cj4+Cj4gWy4u
Ll0KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaAo+PiBi
L2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oCj4+PiBpbmRleCA1ZmRjZmUyMzczMzgu
LmUwOTc2MGVjZTg0NCAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0
YWJsZS5oCj4+PiArKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaAo+Pj4gQEAg
LTIwOSw3ICsyMDksNyBAQCBzdGF0aWMgaW5saW5lIHBtZF90IHBtZF9ta2NvbnQocG1kX3QgcG1k
KQo+Pj4KPj4+ICBzdGF0aWMgaW5saW5lIHB0ZV90IHB0ZV9ta2Rldm1hcChwdGVfdCBwdGUpCj4+
PiAgewo+Pj4gLQlyZXR1cm4gc2V0X3B0ZV9iaXQocHRlLCBfX3BncHJvdChQVEVfREVWTUFQKSk7
Cj4+PiArCXJldHVybiBzZXRfcHRlX2JpdChwdGUsIF9fcGdwcm90KFBURV9ERVZNQVAgfCBQVEVf
U1BFQ0lBTCkpOwo+Pj4gIH0KPj4+Cj4+PiAgc3RhdGljIGlubGluZSB2b2lkIHNldF9wdGUocHRl
X3QgKnB0ZXAsIHB0ZV90IHB0ZSkKPj4+IEBAIC0zOTYsNyArMzk2LDEwIEBAIHN0YXRpYyBpbmxp
bmUgaW50IHBtZF9wcm90bm9uZShwbWRfdCBwbWQpCj4+PiAgI2lmZGVmIENPTkZJR19UUkFOU1BB
UkVOVF9IVUdFUEFHRQo+Pj4gICNkZWZpbmUgcG1kX2Rldm1hcChwbWQpCQlwdGVfZGV2bWFwKHBt
ZF9wdGUocG1kKSkKPj4+ICAjZW5kaWYKPj4+IC0jZGVmaW5lIHBtZF9ta2Rldm1hcChwbWQpCj4+
IAlwdGVfcG1kKHB0ZV9ta2Rldm1hcChwbWRfcHRlKHBtZCkpKQo+Pj4gK3N0YXRpYyBpbmxpbmUg
cG1kX3QgcG1kX21rZGV2bWFwKHBtZF90IHBtZCkKPj4+ICt7Cj4+PiArCXJldHVybiBwdGVfcG1k
KHNldF9wdGVfYml0KHBtZF9wdGUocG1kKSwKPj4gX19wZ3Byb3QoUFRFX0RFVk1BUCkpKTsKPj4+
ICt9Cj4+Cj4+IFRob3VnaCBJIGNvdWxkIHNlZSBvdGhlciBwbGF0Zm9ybXMgbGlrZSBwb3dlcnBj
IGFuZCB4ODYgZm9sbG93aW5nIHNhbWUKPj4gYXBwcm9hY2ggKERFVk1BUCArIFNQRUNJQUwpIGZv
ciBwdGUgc28gdGhhdCBpdCBjaGVja3MgcG9zaXRpdmUgZm9yCj4+IHB0ZV9zcGVjaWFsKCkgYnV0
IHRoZW4ganVzdCBERVZNQVAgZm9yIHBtZCB3aGljaCBjb3VsZCBuZXZlciBoYXZlIGEKPj4gcG1k
X3NwZWNpYWwoKS4gQnV0IGEgbW9yZSBmdW5kYW1lbnRhbCBxdWVzdGlvbiBpcyAtIHdoeSBzaG91
bGQgYSBkZXZtYXAKPj4gYmUgYSBzcGVjaWFsIHB0ZSBhcyB3ZWxsID8KPiAKPiBJSVVDLCBzcGVj
aWFsIHB0ZSBiaXQgbWFrZSB0aGluZ3MgaGFuZGxpbmcgZWFzaWVyIGNvbXBhcmUgd2l0aCB0aG9z
ZSBhcmNoZXMgd2hpY2gKPiBoYXZlIG5vIHNwZWNpYWwgYml0LiBUaGUgbWVtb3J5IGNvZGVzIHdp
bGwgcmVnYXJkIGRldm1hcCBwYWdlIGFzIGEgc3BlY2lhbCBvbmUgCj4gY29tcGFyZWQgd2l0aCBu
b3JtYWwgcGFnZS4KCkZvciB0aGF0IHdlIGhhdmUgUFRFX0RFVk1BUCBvbiBhcm02NCB3aGljaCBk
aWZmZXJlbnRpYXRlcyBkZXZpY2UgbWVtb3J5CmVudHJpZXMgZnJvbSBvdGhlcnMgYW5kIGl0IHNo
b3VsZCBub3QgYWdhaW4gbmVlZCBQVEVfU1BFQ0lBTCBhcyB3ZWxsIGZvcgp0aGF0LiBXZSBzZXQg
Ym90aCBiaXRzIHdoaWxlIGNyZWF0aW5nIHRoZSBlbnRyaWVzIHdpdGggcHRlX21rZGV2bWFwKCkK
YW5kIGNoZWNrIGp1c3Qgb25lIGJpdCBQVEVfREVWTUFQIHdpdGggcHRlX2Rldm1hcCgpLiBQcm9i
bGVtIGlzIGl0IHdpbGwKYWxzbyB0ZXN0IHBvc2l0aXZlIGZvciBwdGVfc3BlY2lhbCgpIGFuZCBy
aXNrcyBiZWluZyBpZGVudGlmaWVkIGFzIG9uZS4KCj4gRGV2bWFwIHBhZ2Ugc3RydWN0dXJlIGNh
biBiZSBzdG9yZWQgaW4gcmFtL3BtZW0vbm9uZS4KClRoYXQgaXMgYWx0b2dldGhlciBhIGRpZmZl
cmVudCBhc3BlY3Qgd2hpY2ggaXMgaGFuZGxlZCB3aXRoIHZtZW1fYWx0bWFwCmR1cmluZyBob3Rw
bHVnIGFuZCBub3RoaW5nIHRvIGRvIHdpdGggaG93IGRldmljZSBtZW1vcnkgaXMgbWFwcGVkIGlu
IHRoZQpwYWdlIHRhYmxlLiBJIGFtIG5vdCBzdXJlIGFib3V0ICJub25lIiB0aG91Z2guIElJVUMg
dW5saWtlIHRyYWRpdGlvbmFsCmRldmljZSBwZm4gYWxsIFpPTkVfREVWSUNFIG1lbW9yeSB3aWxs
IGhhdmUgc3RydWN0IHBhZ2UgYmFja2luZyBlaXRoZXIKb24gc3lzdGVtIFJBTSBvciBpbiB0aGUg
ZGV2aWNlIG1lbW9yeSBpdHNlbGYuCgo+IAo+Pgo+PiBBbHNvIGluIHZtX25vcm1hbF9wYWdlKCkg
d2h5IGNhbm5vdCBpdCB0ZXN0cyBmb3IgcHRlX2Rldm1hcCgpIGJlZm9yZSBpdAo+PiBzdGFydHMg
bG9va2luZyBmb3IgQ09ORklHX0FSQ0hfSEFTX1BURV9TUEVDSUFMLiBJcyB0aGlzIHRoZSBvbmx5
IHBhdGgKPj4gZm9yCj4gCj4gQUZBSUNULCB5ZXMsIGJ1dCBpdCBjaGFuZ2VzIHRvIG11Y2ggYmVz
aWRlcyBhcm0gY29kZXMuIPCfmIoKCklmIHRoaXMgaXMgdGhlIG9ubHkgcGF0aCBmb3Igd2hpY2gg
YWxsIHBsYXRmb3JtcyBoYXZlIHRvIHNldCBQVEVfU1BFQ0lBTAppbiB0aGVpciBkZXZpY2UgbWFw
cGluZywgdGhlbiBpdCBzaG91bGQganVzdCBiZSBmaXhlZCBpbiB2bV9ub3JtYWxfcGFnZSgpLgoK
PiAKPj4gd2hpY2ggd2UgbmVlZCB0byBzZXQgU1BFQ0lBTCBiaXQgb24gYSBkZXZtYXAgcHRlIG9y
IHRoZXJlIGFyZSBvdGhlciBwYXRocwo+PiB3aGVyZSB0aGlzIHNlbWFudGljcyBpcyBhc3N1bWVk
ID8KPiAKPiBObyBpZGVhCgpQcm9iYWJseSBzb21ldGhpbmcgdG8gYmUgYXNrZWQgaW4gdGhlIG1t
IGNvbW11bml0eS4KCjEuIFdoeSBwdGVfbWtkZXZtYXAoKSBzaG91bGQgc2V0IFNQRUNJQUwgYml0
IGZvciBhIHBvc2l0aXZlIHB0ZV9zcGVjaWFsKCkKICAgY2hlY2suIFdoeSB0aGUgc2FtZSBtYXBw
aW5nIGJlIGlkZW50aWZpZWQgYXMgcHRlX2Rldm1hcCgpIGFzIHdlbGwgYXMKICAgcHRlX3NwZWNp
YWwoKS4KCjIuIENhbiBwdGVfZGV2bWFwKCkgYW5kIHB0ZV9zcGVjaWFsKCkgcmUtb3JkZXJpbmcg
YXQgdm1fbm9ybWFsX3BhZ2UoKSB3aWxsCiAgIHJlbW92ZSB0aGlzIGRlcGVuZGVuY3kgb3IgdGhl
cmUgYXJlIG90aGVyIGNvbW1vbnMgTU0gcGF0aHMgd2hpY2ggYXNzdW1lCiAgIHRoaXMgYmVoYXZp
b3IgPwoKKyBsaW51eC1tbUBrdmFjay5vcmcgPGxpbnV4LW1tQGt2YWNrLm9yZz4KKyBEYW4gV2ls
bGlhbXMgPGRhbi5qLndpbGxpYW1zQGludGVsLmNvbT4KKyBKw6lyw7RtZSBHbGlzc2UgPGpnbGlz
c2VAcmVkaGF0LmNvbT4KKyBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0BkZWx0YXRlZS5jb20+Cisg
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
