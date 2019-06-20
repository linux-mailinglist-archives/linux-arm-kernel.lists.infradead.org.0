Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F21C4CB5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4CwWt4YXfM9mlb3W03kqF8G5uc5SZcspPfqchfhHTU=; b=YQ9IfT+ToCMkbv
	ZfgaAib/fyzfyVvv9VgimETldQ83mGsCVjdayOaOA/UhaG6ftWdKGgEwjAkWkihYFVcKfYLHtr/Ke
	SwfDPp8jbwBmiMs8sCQvzRzCEzbqyUGbAEKZHwx09OBuWPXOfRS24rJsu8Y3NAtzGtSncbcIsCg4S
	I9VLjEvcd0HU7ypG0v6DIrHNzsbGnfkfbZpPxOe4FK3iQJkOWHFAfxtvOsJVBI6u4SEkI1bg91HIQ
	Vj1Wo+53rJnHZxjlmjBzVbilFTl3Pwx15J6Jsetj6i19fO1UxIdvDaN7IoSk5Hu0PB+wlpq7eT3UW
	Lscufby+t27BuZGyE10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtnc-0001t7-Ou; Thu, 20 Jun 2019 09:56:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtnP-0001se-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:55:56 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5K9tfj3111742;
 Thu, 20 Jun 2019 04:55:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561024541;
 bh=gMzqG6E9O4i2YfBt81xekJ8pv03pPdWDJCxTqsWo7G0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NQ1so63dygklF44KpEHQFiJ65zCl0/AG3QG3xL6D2Q80yRU4yN1Xr7yF7OXemcQ/g
 L/6fgj0DcUkGXq9jDqzNfvHqmJLecmfbVOYF2e0EhgDKIlQ/N3PvauhHr48h0H6+Um
 6Erh7jeFw3aOiugZPDZqfCMIL+NMlwhgpUM63Nuk=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5K9tfcN086307
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 20 Jun 2019 04:55:41 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 20
 Jun 2019 04:55:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 20 Jun 2019 04:55:41 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5K9tciC018188;
 Thu, 20 Jun 2019 04:55:38 -0500
Subject: Re: [PATCH 09/16] dt-bindings: dma: ti: Add document for K3 UDMA
To: Rob Herring <robh@kernel.org>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
 <20190506123456.6777-10-peter.ujfalusi@ti.com> <20190613181626.GA7039@bogus>
 <e0d6a264-96b5-31a6-e70b-3b1c2d863988@ti.com>
 <CAL_JsqJNMkKL_FubZfjKY6jLebMetmgR24EoendHoPM2ckrUQA@mail.gmail.com>
 <e811d674-b79f-4da8-c632-c7a90844b6c5@ti.com>
 <CAL_JsqJTWNKTB1D2wNysonzasgL9awLLvr1HdOckUnQbpgsDQw@mail.gmail.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <f7bb4e82-95ea-a043-e2b1-f429b16642ba@ti.com>
Date: Thu, 20 Jun 2019 12:56:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJTWNKTB1D2wNysonzasgL9awLLvr1HdOckUnQbpgsDQw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_025555_325315_7F22E950 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Tony Lindgren <tony@atomide.com>,
 Vinod <vkoul@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, "open
 list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxOS8wNi8yMDE5IDE3LjA0LCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBGcmksIEp1biAx
NCwgMjAxOSBhdCA3OjQyIEFNIFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+
IHdyb3RlOgo+Pgo+Pgo+PiBPbiAxNC8wNi8yMDE5IDE2LjIwLCBSb2IgSGVycmluZyB3cm90ZToK
Pj4+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDI6MzMgUE0gUGV0ZXIgVWpmYWx1c2kgPHBldGVy
LnVqZmFsdXNpQHRpLmNvbT4gd3JvdGU6Cj4+Pj4KPj4+PiBSb2IsCj4+Pj4KPj4+PiBPbiAxMy8w
Ni8yMDE5IDIxLjE2LCBSb2IgSGVycmluZyB3cm90ZToKPj4+Pj4+ICtSZW1vdGUgUFNJLUwgZW5k
cG9pbnQKPj4+Pj4+ICsKPj4+Pj4+ICtSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4+Pj4gKy0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4+Pj4+PiArLSB0aSxwc2lsLWJhc2U6ICAgICAgICAgICAgIFBTSS1M
IHRocmVhZCBJRCBiYXNlIG9mIHRoZSBlbmRwb2ludAo+Pj4+Pj4gKwo+Pj4+Pj4gK1dpdGhpbiB0
aGUgUFNJLUwgZW5kcG9pbnQgbm9kZSB0aHJlYWQgY29uZmlndXJhdGlvbiBzdWJub2RlcyBtdXN0
IHByZXNlbnQgd2l0aDoKPj4+Pj4+ICt0aSxwc2lsLWNvbmZpZ1ggbmFtaW5nIGNvbnZlbnRpb24s
IHdoZXJlIFggaXMgdGhlIHRocmVhZCBJRCBvZmZzZXQuCj4+Pj4+Cj4+Pj4+IERvbid0IHVzZSB2
ZW5kb3IgcHJlZml4ZXMgb24gbm9kZSBuYW1lcy4KPj4+Pgo+Pj4+IE9LLgo+Pj4+Cj4+Pj4+PiAr
Cj4+Pj4+PiArQ29uZmlndXJhdGlvbiBub2RlIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4+Pj4+PiAr
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+ICstIGxpbnV4LHVkbWEtbW9kZTogIENoYW5uZWwg
bW9kZSwgY2FuIGJlOgo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgLSBVRE1BX1BLVF9NT0RF
OiBmb3IgUGFja2V0IG1vZGUgY2hhbm5lbHMgKHBlcmlwaGVyYWxzKQo+Pj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgLSBVRE1BX1RSX01PREU6IGZvciBUaGlyZC1QYXJ0eSBtb2RlCj4+Pj4+Cj4+
Pj4+IFRoaXMgaXMgaGFyZGx5IGEgY29tbW9uIGxpbnV4IHRoaW5nLiBXaGF0IGRldGVybWluZXMg
dGhlIHZhbHVlIGhlcmUuCj4+Pj4KPj4+PiBVbmZvcnR1bmF0ZWx5IGl0IGlzLgo+Pj4KPj4+IE5v
LCBpdCdzIGEgZmVhdHVyZSBvZiB5b3VyIGgvdyBhbmQgaW4gbm8gd2F5IGlzIHNvbWV0aGluZyBs
aW51eAo+Pj4gZGVmaW5lZCB3aGljaCBpcyB0aGUgcG9pbnQgb2YgJ2xpbnV4JyBwcmVmaXguCj4+
Cj4+IFRoZSBjaGFubmVsIGNhbiBiZSBlaXRoZXIgUGFja2V0IG9yIFRSIG1vZGUuIFRoZSBIVyBp
cyByZWFsbHkgZmxleGlibGUKPj4gb24gdGhpcyAoYW5kIG9uIG90aGVyIHRoaW5ncyBhcyB3ZWxs
KS4KPj4gSXQganVzdCBoYXBwZW5zIHRoYXQgTGludXggbmVlZCB0byB1c2Ugc3BlY2lmaWMgY2hh
bm5lbHMgaW4gYSBzcGVjaWZpYyBtb2RlLgo+Pgo+PiBXb3VsZCBpdCBoZWxwIGlmIHdlIGFzc3Vt
ZSB0aGF0IGFsbCBjaGFubmVscyBhcmUgdXNlZCBpbiBQYWNrZXQgbW9kZSwKPj4gYnV0IHdlIGhh
dmUgbGludXgsdHItbW9kZSBib29sIHRvIGluZGljYXRlIHRoYXQgdGhlIGdpdmVuIGNoYW5uZWwg
aW4KPj4gTGludXggbmVlZCB0byBiZSB1c2VkIGluIFRSIG1vZGUuCj4gCj4gWW91ciB1c2Ugb2Yg
J2xpbnV4JyBwcmVmaXggaXMgd3JvbmcuIFN0b3AgdXNpbmcgaXQuCgpPSywgSSBjYW4gbm90IGFy
Z3VlIHdpdGggdGhhdC4KSSdsbCBoYXZlICd0ci1tb2RlJyBib29sIHRvIGluZGljYXRlIHRoYXQg
dGhlIGNoYW5uZWwgc2hvdWxkIGJlCmNvbmZpZ3VyZWQgaW4gVFIgbW9kZSBmb3IgdGhlIGdpdmVu
IHRocmVhZC4KCj4+Pj4gRWFjaCBjaGFubmVsIGNhbiBiZSBjb25maWd1cmVkIHRvIFBhY2tldCBv
ciBUUiBtb2RlLiBGb3Igc29tZQo+Pj4+IHBlcmlwaGVyYWxzIGl0IGlzIHRydWUgdGhhdCB0aGV5
IG9ubHkgc3VwcG9ydCBwYWNrZXQgbW9kZSwgdGhlc2UgYXJlIHRoZQo+Pj4+IG5ld2VyIFBTSS1M
IG5hdGl2ZSBwZXJpcGhlcmFscy4KPj4+PiBGb3IgdGhlc2UgY2hhbm5lbHMgYSB1ZG1hLW1vZGUg
cHJvcGVydHkgd291bGQgYmUgY29ycmVjdC4KPj4+Pgo+Pj4+IEJ1dCB3ZSBoYXZlIGxlZ2FjeSBw
ZXJpcGhlcmFscyBhcyB3ZWxsIGFuZCB0aGV5IGFyZSBzZXJ2aWNlZCBieSBQRE1BCj4+Pj4gKHdo
aWNoIGlzIGEgbmF0aXZlIHBlcmlwaGVyYWwgZGVzaWduZWQgdG8gdGFsayB0byB0aGUgZ2l2ZW4g
bGVnYWN5IElQKS4KPj4+PiBXZSBjYW4gdXNlIGVpdGhlciBwYWNrZXQgb3IgVFIgbW9kZSBpbiBV
RE1BUCB0byB0YWxrIHRvIFBETUFzLCBpdCBpcyBpbgo+Pj4+IG1vc3QgY2FzZXMgY2xlYXIgd2hh
dCB0byB1c2UsIGJ1dCBmb3IgZXhhbXBsZSBmb3IgYXVkaW8gKE1jQVNQKSBjaGFubmVscwo+Pj4+
IExpbnV4IGlzIHVzaW5nIFRSIGNoYW5uZWwgYmVjYXVzZSB3ZSBuZWVkIGN5Y2xpYyBETUEgd2hp
bGUgZm9yIGV4YW1wbGUKPj4+PiBSVE9TIGlzIHVzaW5nIFBhY2tldCBtb2RlIGFzIGl0IGZpdHMg
dGhlaXIgbmVlZHMgYmV0dGVyLgo+Pj4+Cj4+Pj4gSGVyZSBJIG5lZWQgdG8gcHJlZml4IHRoZSB1
ZG1hLW1vZGUgd2l0aCBsaW51eCBhcyB0aGUgbW9kZSBpcyB1c2VkIGJ5Cj4+Pj4gTGludXgsIGJ1
dCBvdGhlciBPUyBtaWdodCBvcHQgdG8gdXNlIGRpZmZlcmVudCBjaGFubmVsIG1vZGUuCj4+Pgo+
Pj4gU28geW91J2QgbmVlZCA8b3M+LHVkbWEtbW9kZT8gVGhhdCBkb2Vzbid0IHdvcmsuLi4gSWYg
dGhlIHNldHRpbmcgaXMKPj4+IHBlciBPUywgdGhlbiBpdCBiZWxvbmdzIGluIHRoZSBPUyBiZWNh
dXNlIHRoZSBzYW1lIGR0YiBzaG91bGQgd29yawo+Pj4gYWNyb3NzIE9TJ3MuCj4+Cj4+IFNvIEkg
c2hvdWxkIGhhdmUgYSB0YWJsZSBmb3IgdGhlIHRocmVhZCBJRHMgaW4gdGhlIERNQSBkcml2ZXIg
YW5kIG1hcmsKPj4gY2hhbm5lbHMgYXMgVFIgb3IgUGFja2V0IGluIHRoZXJlIGZvciBMaW51eCB1
c2U/Cj4gCj4gUGVyaGFwcy4gSSBoYXZlbid0IGhlYXJkIGFueSByZWFzb25zIHdoeSB5b3UgbmVl
ZCB0aGlzIGluIERULiBJZiBMaW51eAo+IGlzIGRpY3RhdGluZyB0aGUgbW9kZXMsIHRoZW4gc291
bmRzIGxpa2UgaXQgc2hvdWxkIGJlIGluIExpbnV4Lgo+IAo+IEJ1dCByZWFsbHksIEkgZG9uJ3Qg
ZnVsbHkgdW5kZXJzdGFuZCB3aGF0IHlvdSBhcmUgZG9pbmcgaGVyZSB0byB0ZWxsCj4geW91IHdo
YXQgdG8gZG8gYmV5b25kIHVzaW5nICdsaW51eCcgcHJlZml4IGlzIHdyb25nLgoKV2UgaGF2ZSBj
ZXJ0YWluIHBlcmlwaGVyYWxzIChNY0FTUC9VQVJUL01jU1BJL2V0Yykgd2hpY2ggaXMgc2Vydmlj
ZWQgYnkKUERNQXMgdG8gYmUgY29tcGF0aWJsZSB3aXRoIHRoZSBkYXRhIG1vdmVtZW50IGFyY2hp
dGVjdHVyZSBpbXBsZW1lbnRlZAp3aXRoaW4gTkFWU1MuClVubGlrZSBuYXRpdmUgcGVyaXBoZXJh
bHMsIGxpa2UgbmV0d29ya2luZyB3ZSBjYW4gY29uZmlndXJlIHRoZSBVRE1BUApjaGFubmVsIHRv
IGVpdGhlciBQYWNrZXQgb3IgVFIgbW9kZS4gVGhlcmUgYXJlIGRpZmZlcmVuY2VzIGJldHdlZW4g
dGhlCnR3byBtb2RlcywgYnV0IHRoZSBqb2IgY2FuIGJlIGRvbmUgaW4gYm90aCBtb2Rlcy4KSW4g
TGludXggd2UgdXNlIFRSIG1vZGUgZm9yIGF1ZGlvIGNoYW5uZWxzIGFzIGl0IHByb3ZpZGVzIHRo
ZSBuZWVkZWQKZnVuY3Rpb25hbGl0eSB3ZSBuZWVkIChlZmZpY2llbnQgY3ljbGljIG1vZGUsIGNh
biBkaXNhYmxlIGludGVycnVwdHMpLgoKVGhlcmUgaXMgbm8gaW5mb3JtYXRpb24gZnJvbSB0aGUg
SFcgb24gaG93IGEgZ2l2ZW4gdGhyZWFkIGlzIGJlc3QgdXNlZAphbmQgb3RoZXIgT1NzIGNhbiBv
cHQgZm9yIG5vdCBvcHRpbWFsIHVzZS4KCkJ1dCB0aGUgbWFqb3JpdHkgb2YgdGhyZWFkcyBhcmUg
YmV0dGVyIHNlcnZlZCBpbiBQYWNrZXQgbW9kZSwgc28gYWRkaW5nCmEgYm9vbCBmbGFnIHRvIHRo
ZSB0aHJlYWQgY29uZmlndXJhdGlvbiB0byBpbmRpY2F0ZSB0aGF0IFRSIG1vZGUgaXMgdGhlCmFk
dmlzZWQgbW9kZSBmb3IgaXQgaXMgcGVyZmVjdGx5IGZpbmUuCgotIFDDqXRlcgoKVGV4YXMgSW5z
dHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClkt
dHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNp
bmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
