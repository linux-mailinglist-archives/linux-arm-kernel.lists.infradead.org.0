Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BDD9E948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Pp8XZQZnRQsWmK4CXdoYPkFsRZcsQB8mmAzEZyE2Mg=; b=YKZO3OK2YoRyQl
	4+q9BZ9GFAWD9861/PUTZZq+8dteWlcIw9OvJezp9scgZRZ2P09o8a78SlqcY3aXjpABh+/OUJ7AE
	vT2unymT9fyPl6VpfjIosaxdw13W87AHoN1T2hw/ki1/MUEg9LTpOh6F8BI/DPjQ8HNiiSg7KWw7+
	e8a4lYVlAY5buqiVT/xijYa7EI6uG5AjlmW4vhllbo5Hyw292tBR6KTlfRT56VwAwMxWZqm3DbRN3
	Sq8U5ZINOCDt2tAd9iSm9SSy38dX0iQa0olkm98FZ65KZrXrnkVfNve17OQUNnpx71aSI/AmFhvUy
	DBFamRQvnII5KBGilq2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bU3-0002lc-BO; Tue, 27 Aug 2019 13:26:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bT9-0001YY-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:25:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6B8FE28;
 Tue, 27 Aug 2019 06:25:07 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BA87A3F246;
 Tue, 27 Aug 2019 06:25:06 -0700 (PDT)
Date: Tue, 27 Aug 2019 14:25:05 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the
 doorbell way
Message-ID: <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-7-xiaowei.bao@nxp.com>
 <20190823135816.GH14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_062509_247042_B064A3B6 
X-CRM114-Status: GOOD (  26.25  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy Zang <roy.zang@nxp.com>,
 "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, Leo Li <leoyang.li@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMTI6MDg6NDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDjmnIgyM+aX
pSAyMTo1OAo+ID4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gQ2M6
IGJoZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFy
bS5jb207Cj4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNv
bT47IGtpc2hvbkB0aS5jb207Cj4gPiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY287IGFybmRAYXJu
ZGIuZGU7IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnOyBNLmguCj4gPiBMaWFuIDxtaW5naHVh
bi5saWFuQG54cC5jb20+OyBNaW5na2FpIEh1IDxtaW5na2FpLmh1QG54cC5jb20+OyBSb3kKPiA+
IFphbmcgPHJveS56YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsKPiA+IGd1c3Rh
dm8ucGltZW50ZWxAc3lub3BzeXMuY29tOyBsaW51eC1wY2lAdmdlci5rZXJuZWwub3JnOwo+ID4g
ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7
Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRldkBs
aXN0cy5vemxhYnMub3JnCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDA3LzEwXSBQQ0k6IGxh
eWVyc2NhcGU6IE1vZGlmeSB0aGUgTVNJWCB0byB0aGUKPiA+IGRvb3JiZWxsIHdheQo+ID4gCj4g
PiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAwNzoyMjozOVBNICswODAwLCBYaWFvd2VpIEJhbyB3
cm90ZToKPiA+ID4gVGhlIGxheWVyc2NhcGUgcGxhdGZvcm0gdXNlIHRoZSBkb29yYmVsbCB3YXkg
dG8gdHJpZ2dlciBNU0lYIGludGVycnVwdAo+ID4gPiBpbiBFUCBtb2RlLgo+ID4gPgo+ID4gCj4g
PiBJIGhhdmUgbm8gcHJvYmxlbXMgd2l0aCB0aGlzIHBhdGNoLCBob3dldmVyLi4uCj4gPiAKPiA+
IEFyZSB5b3UgYWJsZSB0byBhZGQgdG8gdGhpcyBtZXNzYWdlIGEgcmVhc29uIGZvciB3aHkgeW91
IGFyZSBtYWtpbmcgdGhpcwo+ID4gY2hhbmdlPyBEaWQgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2ly
cSBub3Qgd29yayB3aGVuIGZ1bmNfbm8gIT0gMD8gT3IgZGlkCj4gPiBpdCB3b3JrIHlldCBkd19w
Y2llX2VwX3JhaXNlX21zaXhfaXJxX2Rvb3JiZWxsIGlzIG1vcmUgZWZmaWNpZW50Pwo+IAo+IFRo
ZSBmYWN0IGlzIHRoYXQsIHRoaXMgZHJpdmVyIGlzIHZlcmlmaWVkIGluIGxzMTA0NmEgcGxhdGZv
cm0gb2YgTlhQIGJlZm9yZSwgYW5kIGxzMTA0NmEgZG9uJ3QKPiBzdXBwb3J0IE1TSVggZmVhdHVy
ZSwgc28gSSBzZXQgdGhlIG1zaXhfY2FwYWJsZSBvZiBwY2lfZXBjX2ZlYXR1cmVzIHN0cnVjdCBp
cyBmYWxzZSwKPiBidXQgaW4gb3RoZXIgcGxhdGZvcm0sIGUuZy4gbHMxMDg4YSwgaXQgc3VwcG9y
dCB0aGUgTVNJWCBmZWF0dXJlLCBJIHZlcmlmaWVkIHRoZSBNU0lYCj4gZmVhdHVyZSBpbiBsczEw
ODhhLCBpdCBpcyBub3QgT0ssIHNvIEkgY2hhbmdlZCB0byBhbm90aGVyIHdheS4gVGhhbmtzLgoK
UmlnaHQsIHNvIHRoZSBleGlzdGluZyBwY2ktbGF5ZXJzY2FwZS1lcC5jIGRyaXZlciBuZXZlciBz
dXBwb3J0ZWQgTVNJWCB5ZXQgaXQKZXJyb25lb3VzbHkgaGFkIGEgc3dpdGNoIGNhc2Ugc3RhdGVt
ZW50IHRvIGNhbGwgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSB3aGljaAp3b3VsZCBuZXZlciBn
ZXQgdXNlZC4KCk5vdyB0aGF0IHdlJ3JlIGFkZGluZyBhIHBsYXRmb3JtIHdpdGggTVNJWCBzdXBw
b3J0IHRoZSBleGlzdGluZwpkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxIGRvZXNuJ3Qgd29yayAo
Zm9yIHRoaXMgcGxhdGZvcm0pIHNvIHdlIGFyZSBhZGRpbmcgYQpkaWZmZXJlbnQgbWV0aG9kLgoK
R2l2ZW4gdGhhdCBkd19wY2llX2VwX3JhaXNlX21zaXhfaXJxIGlzIHVzZWQgYnkgcGNpZS1kZXNp
Z253YXJlLXBsYXQuYyB3ZQpjYW4gYXNzdW1lIHRoaXMgZnVuY3Rpb24gYXQgbGVhc3Qgd29ya3Mg
Zm9yIGl0J3MgdXNlIGNhc2UuCgpQbGVhc2UgdXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZSAtIEl0
IHdvdWxkIGJlIGhlbHBmdWwgdG8gc3VnZ2VzdCB0aGF0CmR3X3BjaWVfZXBfcmFpc2VfbXNpeF9p
cnEgd2FzIG5ldmVyIGNhbGxlZCBpbiB0aGUgZXhpc2l0bmcgZHJpdmVyIGJlY2F1c2UKbXNpeF9j
YXBhYmxlIHdhcyBhbHdheXMgc2V0IHRvIGZhbHNlLgoKVGhhbmtzLAoKQW5kcmV3IE11cnJheQoK
PiAKPiA+IAo+ID4gVGhhbmtzLAo+ID4gCj4gPiBBbmRyZXcgTXVycmF5Cj4gPiAKPiA+ID4gU2ln
bmVkLW9mZi1ieTogWGlhb3dlaSBCYW8gPHhpYW93ZWkuYmFvQG54cC5jb20+Cj4gPiA+IC0tLQo+
ID4gPiB2MjoKPiA+ID4gIC0gTm8gY2hhbmdlLgo+ID4gPgo+ID4gPiAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYyB8IDMgKystCj4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiBp
bmRleCA4NDYxZjYyLi43Y2E1ZmU4IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPiA+ID4gQEAgLTc0LDcgKzc0LDggQEAg
c3RhdGljIGludCBsc19wY2llX2VwX3JhaXNlX2lycShzdHJ1Y3QgZHdfcGNpZV9lcCAqZXAsCj4g
PiB1OCBmdW5jX25vLAo+ID4gPiAgCWNhc2UgUENJX0VQQ19JUlFfTVNJOgo+ID4gPiAgCQlyZXR1
cm4gZHdfcGNpZV9lcF9yYWlzZV9tc2lfaXJxKGVwLCBmdW5jX25vLCBpbnRlcnJ1cHRfbnVtKTsK
PiA+ID4gIAljYXNlIFBDSV9FUENfSVJRX01TSVg6Cj4gPiA+IC0JCXJldHVybiBkd19wY2llX2Vw
X3JhaXNlX21zaXhfaXJxKGVwLCBmdW5jX25vLCBpbnRlcnJ1cHRfbnVtKTsKPiA+ID4gKwkJcmV0
dXJuIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnFfZG9vcmJlbGwoZXAsIGZ1bmNfbm8sCj4gPiA+
ICsJCQkJCQkJICBpbnRlcnJ1cHRfbnVtKTsKPiA+ID4gIAlkZWZhdWx0Ogo+ID4gPiAgCQlkZXZf
ZXJyKHBjaS0+ZGV2LCAiVU5LTk9XTiBJUlEgdHlwZVxuIik7Cj4gPiA+ICAJCXJldHVybiAtRUlO
VkFMOwo+ID4gPiAtLQo+ID4gPiAyLjkuNQo+ID4gPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
