Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B829142700
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgQc+4wZn4GWKYj4KobEUT0pzAeOll+oUDPGIaCcWMo=; b=d8Nw2sM6wdUqFb
	ZTfPoz3Mh/CyaEUDraieoxzGFfamBSo3Tv7FsNBat7kYeJXMWHVOdB4U5fOAqJ48gf/G13os6vc9k
	dZ7uqMImH27DwKcwuotMlBC68UEm7nBv3m4UUHecjSSI+jzNZzSkUp9sUAjtIcTlBwkOkHS7rbXpm
	C+npLu3hIMylr6Z6n7r08H9PIyxqII8S41+Q9udlLe+27v375jPeRXQPbbnzsIkh9IVPHF6D7cogN
	92VkxrOC/cJPrPJqHhlBsFBdCmbnr3w9ohLpkal4FuXkQNzCvJt+mEGUl81utDrNCo2gtBe/AJi8C
	t/WzKWeBxdx7s79AP2BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2zN-0004uu-Ej; Wed, 12 Jun 2019 13:08:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2zF-0004tv-Hj
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:08:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8F4528;
 Wed, 12 Jun 2019 06:08:20 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EF2E3F557;
 Wed, 12 Jun 2019 06:08:18 -0700 (PDT)
Date: Wed, 12 Jun 2019 14:08:13 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 04/20] PCI: mobiveil: Remove the flag
 MSI_FLAG_MULTI_PCI_MSI
Message-ID: <20190612130813.GA15747@redmoon>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-5-Zhiqiang.Hou@nxp.com>
 <20190611165935.GA22836@redmoon>
 <AM0PR04MB67383023B81AEB33DAF9C35584EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB67383023B81AEB33DAF9C35584EC0@AM0PR04MB6738.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_060821_679721_FDD1ADCF 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTE6MzQ6NTFBTSArMDAwMCwgWi5xLiBIb3Ugd3JvdGU6
Cj4gSGkgTG9yZW56bywKPiAKPiBUaGFua3MgYSBsb3QgZm9yIHlvdXIgY29tbWVudHMhCj4gCj4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogTG9yZW56byBQaWVyYWxpc2kg
PGxvcmVuem8ucGllcmFsaXNpQGFybS5jb20+Cj4gPiBTZW50OiAyMDE55bm0NuaciDEy5pelIDE6
MDAKPiA+IFRvOiBaLnEuIEhvdSA8emhpcWlhbmcuaG91QG54cC5jb20+Cj4gPiBDYzogbGludXgt
cGNpQHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Owo+ID4gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmc7Cj4gPiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyByb2JoK2R0QGtlcm5lbC5vcmc7IG1hcmsu
cnV0bGFuZEBhcm0uY29tOwo+ID4gbC5zdWJyYWhtYW55YUBtb2JpdmVpbC5jby5pbjsgc2hhd25n
dW9Aa2VybmVsLm9yZzsgTGVvIExpCj4gPiA8bGVveWFuZy5saUBueHAuY29tPjsgY2F0YWxpbi5t
YXJpbmFzQGFybS5jb207IHdpbGwuZGVhY29uQGFybS5jb207Cj4gPiBNaW5na2FpIEh1IDxtaW5n
a2FpLmh1QG54cC5jb20+OyBNLmguIExpYW4gPG1pbmdodWFuLmxpYW5AbnhwLmNvbT47Cj4gPiBY
aWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2
NSAwNC8yMF0gUENJOiBtb2JpdmVpbDogUmVtb3ZlIHRoZSBmbGFnCj4gPiBNU0lfRkxBR19NVUxU
SV9QQ0lfTVNJCj4gPiAKPiA+IE9uIEZyaSwgQXByIDEyLCAyMDE5IGF0IDA4OjM1OjM2QU0gKzAw
MDAsIFoucS4gSG91IHdyb3RlOgo+ID4gPiBGcm9tOiBIb3UgWmhpcWlhbmcgPFpoaXFpYW5nLkhv
dUBueHAuY29tPgo+ID4gPgo+ID4gPiBUaGUgY3VycmVudCBjb2RlIGRvZXMgbm90IHN1cHBvcnQg
bXVsdGlwbGUgTVNJcywgc28gcmVtb3ZlIHRoZQo+ID4gPiBjb3JyZXNwb25kaW5nIGZsYWcgZnJv
bSB0aGUgbXNpX2RvbWFpbl9pbmZvIHN0cnVjdHVyZS4KPiA+IAo+ID4gUGxlYXNlIGV4cGxhaW4g
bWUgd2hhdCdzIHRoZSBwcm9ibGVtIGJlZm9yZSByZW1vdmluZyBtdWx0aSBNU0kgc3VwcG9ydC4K
PiAKPiBOWFAgTFgyIFBDSWUgdXNlIHRoZSBHSUMtSVRTIGluc3RlYWQgb2YgTW9iaXZlaWwgSVAg
aW50ZXJuYWwgTVNJCj4gY29udHJvbGxlciwgc28sIEkgZGlkbid0IGVuY291bnRlciBwcm9ibGVt
LgoKV2VsbCwgeW91IHNlbnQgYSBwYXRjaCB0byBmaXggYW4gaXNzdWUsIGV4cGxhaW4gbWUgdGhl
IGlzc3VlIHlvdQphcmUgZml4aW5nIHRoZW4sIGFrYSB3aGF0IGhhdmUgeW91IHNlbnQgdGhpcyBw
YXRjaCBmb3IgPwoKTG9yZW56bwoKPiBTdWJidSwgZGlkIHlvdSB0ZXN0IHdpdGggRW5kcG9pbnQg
c3VwcG9ydGluZyBtdWx0aSBNU0k/Cj4gCj4gVGhhbmtzLAo+IFpoaXFpYW5nCj4gCj4gPiAKPiA+
IFRoYW5rcywKPiA+IExvcmVuem8KPiA+IAo+ID4gPiBGaXhlczogMWU5MTNlNTgzMzVmICgiUENJ
OiBtb2JpdmVpbDogQWRkIE1TSSBzdXBwb3J0IikKPiA+ID4gU2lnbmVkLW9mZi1ieTogSG91IFpo
aXFpYW5nIDxaaGlxaWFuZy5Ib3VAbnhwLmNvbT4KPiA+ID4gUmV2aWV3ZWQtYnk6IE1pbmdodWFu
IExpYW4gPE1pbmdodWFuLkxpYW5AbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+IFY1Ogo+ID4gPiAg
LSBDb3JyZWN0ZWQgdGhlIHN1YmplY3QuCj4gPiA+Cj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtbW9iaXZlaWwuYyB8IDIgKy0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMKPiA+ID4gYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtbW9iaXZlaWwuYwo+ID4gPiBpbmRleCA1NjMyMTBlNzMxZDMuLmEwZGQzMzdjNjIx
NCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWls
LmMKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLW1vYml2ZWlsLmMKPiA+
ID4gQEAgLTcwMyw3ICs3MDMsNyBAQCBzdGF0aWMgc3RydWN0IGlycV9jaGlwIG1vYml2ZWlsX21z
aV9pcnFfY2hpcCA9IHsKPiA+ID4KPiA+ID4gIHN0YXRpYyBzdHJ1Y3QgbXNpX2RvbWFpbl9pbmZv
IG1vYml2ZWlsX21zaV9kb21haW5faW5mbyA9IHsKPiA+ID4gIAkuZmxhZ3MJPSAoTVNJX0ZMQUdf
VVNFX0RFRl9ET01fT1BTIHwKPiA+IE1TSV9GTEFHX1VTRV9ERUZfQ0hJUF9PUFMgfAo+ID4gPiAt
CQkgICBNU0lfRkxBR19NVUxUSV9QQ0lfTVNJIHwgTVNJX0ZMQUdfUENJX01TSVgpLAo+ID4gPiAr
CQkgICBNU0lfRkxBR19QQ0lfTVNJWCksCj4gPiA+ICAJLmNoaXAJPSAmbW9iaXZlaWxfbXNpX2ly
cV9jaGlwLAo+ID4gPiAgfTsKPiA+ID4KPiA+ID4gLS0KPiA+ID4gMi4xNy4xCj4gPiA+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
