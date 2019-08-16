Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5C790000
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:26:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=so+wMdE31eRJJmL+A4+vbzz/w4YllfzUF91F6rrzg3c=; b=So8gHAt3z/TVVJ
	X2Aw7v36WTTurFoNUEzN9Y7sBWKDwEQnzggZEG7lt+uQUR504QiV0f9i0/EdXWPLlm4TJUgc8Fef3
	uzG9rWZWV5NoBWmBBLAmwZqG9D2Btcl/mFA9NyrHaoaGI8FwzrxoGUWwcyv/gceHvF3hna9lCYZTl
	yHzyxVfKQdZDqBwhHWbO2IbZMS0aU904fZ07Y/fno/VBUf7bRMSD1o+d31hZMqfNc0DvbiuxadyWd
	YrkzpyyCmwx9QXppr64UmacEFbCp4q8pxGQt/eZrf9AbCKB5bUz45c5kTLurL0kWzV9yZ07+z8gWx
	+8mbHM85daagJwEB8tdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZQq-0004md-Lr; Fri, 16 Aug 2019 10:26:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZQb-0004mB-6P
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:25:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CC4028;
 Fri, 16 Aug 2019 03:25:48 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B8BA3F706;
 Fri, 16 Aug 2019 03:25:47 -0700 (PDT)
Date: Fri, 16 Aug 2019 11:25:46 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 05/10] PCI: layerscape: Modify the way of getting
 capability with different PEX
Message-ID: <20190816102545.GC14111@e119886-lin.cambridge.arm.com>
References: <20190815083716.4715-1-xiaowei.bao@nxp.com>
 <20190815083716.4715-5-xiaowei.bao@nxp.com>
 <20190815125103.GH43882@e119886-lin.cambridge.arm.com>
 <AM5PR04MB329966792C66E9AAB6C0B30DF5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB329966792C66E9AAB6C0B30DF5AF0@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_032549_278735_0B5E9342 
X-CRM114-Status: GOOD (  23.13  )
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
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "kishon@ti.com" <kishon@ti.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDM6MDA6MDBBTSArMDAwMCwgWGlhb3dlaSBCYW8gd3Jv
dGU6Cj4gCj4gCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQW5kcmV3
IE11cnJheSA8YW5kcmV3Lm11cnJheUBhcm0uY29tPgo+ID4gU2VudDogMjAxOeW5tDjmnIgxNeaX
pSAyMDo1MQo+ID4gVG86IFhpYW93ZWkgQmFvIDx4aWFvd2VpLmJhb0BueHAuY29tPgo+ID4gQ2M6
IGppbmdvb2hhbjFAZ21haWwuY29tOyBndXN0YXZvLnBpbWVudGVsQHN5bm9wc3lzLmNvbTsKPiA+
IGJoZWxnYWFzQGdvb2dsZS5jb207IHJvYmgrZHRAa2VybmVsLm9yZzsgbWFyay5ydXRsYW5kQGFy
bS5jb207Cj4gPiBzaGF3bmd1b0BrZXJuZWwub3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNv
bT47IGtpc2hvbkB0aS5jb207Cj4gPiBsb3JlbnpvLnBpZXJhbGlzaUBhcm0uY29tOyBhcm5kQGFy
bmRiLmRlOyBncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZzsKPiA+IE0uaC4gTGlhbiA8bWluZ2h1
YW4ubGlhbkBueHAuY29tPjsgTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsKPiA+IFJv
eSBaYW5nIDxyb3kuemFuZ0BueHAuY29tPjsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsKPiA+
IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3Jn
Owo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eHBwYy1kZXZA
bGlzdHMub3psYWJzLm9yZwo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCAwNS8xMF0gUENJOiBsYXll
cnNjYXBlOiBNb2RpZnkgdGhlIHdheSBvZiBnZXR0aW5nCj4gPiBjYXBhYmlsaXR5IHdpdGggZGlm
ZmVyZW50IFBFWAo+ID4gCj4gPiBPbiBUaHUsIEF1ZyAxNSwgMjAxOSBhdCAwNDozNzoxMVBNICsw
ODAwLCBYaWFvd2VpIEJhbyB3cm90ZToKPiA+ID4gVGhlIGRpZmZlcmVudCBQQ0llIGNvbnRyb2xs
ZXIgaW4gb25lIGJvYXJkIG1heSBiZSBoYXZlIGRpZmZlcmVudAo+ID4gPiBjYXBhYmlsaXR5IG9m
IE1TSSBvciBNU0lYLCBzbyBjaGFuZ2UgdGhlIHdheSBvZiBnZXR0aW5nIHRoZSBNU0kKPiA+ID4g
Y2FwYWJpbGl0eSwgbWFrZSBpdCBtb3JlIGZsZXhpYmxlLgo+ID4gPgo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBYaWFvd2VpIEJhbyA8eGlhb3dlaS5iYW9AbnhwLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jIHwgMjgKPiA+ID4g
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaS1sYXllcnNjYXBlLWVwLmMKPiA+ID4gaW5kZXggYmU2MWQ5
Ni4uOTQwNGNhMCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpLWxheWVyc2NhcGUtZXAuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2ktbGF5ZXJzY2FwZS1lcC5jCj4gPiA+IEBAIC0yMiw2ICsyMiw3IEBACj4gPiA+Cj4gPiA+
ICBzdHJ1Y3QgbHNfcGNpZV9lcCB7Cj4gPiA+ICAJc3RydWN0IGR3X3BjaWUJCSpwY2k7Cj4gPiA+
ICsJc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMJKmxzX2VwYzsKPiA+ID4gIH07Cj4gPiA+Cj4gPiA+
ICAjZGVmaW5lIHRvX2xzX3BjaWVfZXAoeCkJZGV2X2dldF9kcnZkYXRhKCh4KS0+ZGV2KQo+ID4g
PiBAQCAtNDAsMjUgKzQxLDI2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkCj4g
PiBsc19wY2llX2VwX29mX21hdGNoW10gPSB7Cj4gPiA+ICAJeyB9LAo+ID4gPiAgfTsKPiA+ID4K
PiA+ID4gLXN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyBsc19wY2llX2VwY19m
ZWF0dXJlcyA9IHsKPiA+ID4gLQkubGlua3VwX25vdGlmaWVyID0gZmFsc2UsCj4gPiA+IC0JLm1z
aV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4gLQkubXNpeF9jYXBhYmxlID0gZmFsc2UsCj4gPiA+IC19
Owo+ID4gPiAtCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMqICBs
c19wY2llX2VwX2dldF9mZWF0dXJlcyhzdHJ1Y3QKPiA+ID4gZHdfcGNpZV9lcCAqZXApICB7Cj4g
PiA+IC0JcmV0dXJuICZsc19wY2llX2VwY19mZWF0dXJlczsKPiA+ID4gKwlzdHJ1Y3QgZHdfcGNp
ZSAqcGNpID0gdG9fZHdfcGNpZV9mcm9tX2VwKGVwKTsKPiA+ID4gKwlzdHJ1Y3QgbHNfcGNpZV9l
cCAqcGNpZSA9IHRvX2xzX3BjaWVfZXAocGNpKTsKPiA+ID4gKwo+ID4gPiArCXJldHVybiBwY2ll
LT5sc19lcGM7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICBzdGF0aWMgdm9pZCBsc19wY2llX2VwX2lu
aXQoc3RydWN0IGR3X3BjaWVfZXAgKmVwKSAgewo+ID4gPiAgCXN0cnVjdCBkd19wY2llICpwY2kg
PSB0b19kd19wY2llX2Zyb21fZXAoZXApOwo+ID4gPiArCXN0cnVjdCBsc19wY2llX2VwICpwY2ll
ID0gdG9fbHNfcGNpZV9lcChwY2kpOwo+ID4gPiAgCWVudW0gcGNpX2Jhcm5vIGJhcjsKPiA+ID4K
PiA+ID4gIAlmb3IgKGJhciA9IEJBUl8wOyBiYXIgPD0gQkFSXzU7IGJhcisrKQo+ID4gPiAgCQlk
d19wY2llX2VwX3Jlc2V0X2JhcihwY2ksIGJhcik7Cj4gPiA+ICsKPiA+ID4gKwlwY2llLT5sc19l
cGMtPm1zaV9jYXBhYmxlID0gZXAtPm1zaV9jYXAgPyB0cnVlIDogZmFsc2U7Cj4gPiA+ICsJcGNp
ZS0+bHNfZXBjLT5tc2l4X2NhcGFibGUgPSBlcC0+bXNpeF9jYXAgPyB0cnVlIDogZmFsc2U7Cj4g
PiA+ICB9Cj4gPiA+Cj4gPiA+ICBzdGF0aWMgaW50IGxzX3BjaWVfZXBfcmFpc2VfaXJxKHN0cnVj
dCBkd19wY2llX2VwICplcCwgdTggZnVuY19ubywgQEAKPiA+ID4gLTExOCw2ICsxMjAsNyBAQCBz
dGF0aWMgaW50IF9faW5pdCBsc19wY2llX2VwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UK
PiA+ICpwZGV2KQo+ID4gPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gPiA+
ICAJc3RydWN0IGR3X3BjaWUgKnBjaTsKPiA+ID4gIAlzdHJ1Y3QgbHNfcGNpZV9lcCAqcGNpZTsK
PiA+ID4gKwlzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyAqbHNfZXBjOwo+ID4gPiAgCXN0cnVjdCBy
ZXNvdXJjZSAqZGJpX2Jhc2U7Cj4gPiA+ICAJaW50IHJldDsKPiA+ID4KPiA+ID4gQEAgLTEyOSw2
ICsxMzIsMTAgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QKPiA+
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gIAlpZiAoIXBjaSkKPiA+ID4gIAkJcmV0dXJu
IC1FTk9NRU07Cj4gPiA+Cj4gPiA+ICsJbHNfZXBjID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpsc19lcGMpLCBHRlBfS0VSTkVMKTsKPiA+ID4gKwlpZiAoIWxzX2VwYykKPiA+ID4gKwkJcmV0
dXJuIC1FTk9NRU07Cj4gPiA+ICsKPiA+ID4gIAlkYmlfYmFzZSA9IHBsYXRmb3JtX2dldF9yZXNv
dXJjZV9ieW5hbWUocGRldiwgSU9SRVNPVVJDRV9NRU0sCj4gPiAicmVncyIpOwo+ID4gPiAgCXBj
aS0+ZGJpX2Jhc2UgPSBkZXZtX3BjaV9yZW1hcF9jZmdfcmVzb3VyY2UoZGV2LCBkYmlfYmFzZSk7
Cj4gPiA+ICAJaWYgKElTX0VSUihwY2ktPmRiaV9iYXNlKSkKPiA+ID4gQEAgLTEzOSw2ICsxNDYs
MTMgQEAgc3RhdGljIGludCBfX2luaXQgbHNfcGNpZV9lcF9wcm9iZShzdHJ1Y3QKPiA+IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiA+ID4gIAlwY2ktPm9wcyA9ICZsc19wY2llX2VwX29wczsKPiA+
ID4gIAlwY2llLT5wY2kgPSBwY2k7Cj4gPiA+Cj4gPiA+ICsJbHNfZXBjLT5saW5rdXBfbm90aWZp
ZXIgPSBmYWxzZSwKPiA+ID4gKwlsc19lcGMtPm1zaV9jYXBhYmxlID0gdHJ1ZSwKPiA+ID4gKwls
c19lcGMtPm1zaXhfY2FwYWJsZSA9IHRydWUsCj4gPiAKPiA+IEFzIFttc2ksbXNpeF1fY2FwYWJs
ZSBpcyBzaG9ydGx5IHNldCBmcm9tIGxzX3BjaWVfZXBfaW5pdCAtIGlzIHRoZXJlIGFueSByZWFz
b24KPiA+IHRvIHNldCB0aGVtIGhlcmUgKHRvIHBvdGVudGlhbGx5IGluY29ycmVjdCB2YWx1ZXMp
Pwo+IFRoaXMgaXMgYSBJTklUIHZhbHVlLCBtYXliZSBmYWxzZSBpcyBiZXR0ZXIgZm9yIG1zaV9j
YXBhYmxlIGFuZCBtc2l4X2NhcGFibGUsIAo+IG9mIGNvdXJzZSwgd2UgZG9uJ3QgbmVlZCB0byBz
ZXQgaXQuCgpsc19lcGMgaXMga3phbGxvYydkIGFuZCBzbyBhbGwgemVyb3MsIHNvIHlvdSBnZXQg
ZmFsc2UgZm9yIGZyZWUuIEkgdGhpbmsgeW91CmNhbiByZW1vdmUgdGhlc2UgdHdvIGxpbmVzIChv
ciBhbGwgdGhyZWUgaWYgeW91IGRvbid0IGNhcmUgdGhhdCBsaW5rdXBfbm90aWZpZXIKaXNuJ3Qg
ZXhwbGljaXRseSBzZXQpLgoKVGhhbmtzLAoKQW5kcmV3IE11cnJheQoKPiA+IAo+ID4gVGhhbmtz
LAo+ID4gCj4gPiBBbmRyZXcgTXVycmF5Cj4gPiAKPiA+ID4gKwlsc19lcGMtPmJhcl9maXhlZF82
NGJpdCA9ICgxIDw8IEJBUl8yKSB8ICgxIDw8IEJBUl80KSwKPiA+ID4gKwo+ID4gPiArCXBjaWUt
PmxzX2VwYyA9IGxzX2VwYzsKPiA+ID4gKwo+ID4gPiAgCXBsYXRmb3JtX3NldF9kcnZkYXRhKHBk
ZXYsIHBjaWUpOwo+ID4gPgo+ID4gPiAgCXJldCA9IGxzX2FkZF9wY2llX2VwKHBjaWUsIHBkZXYp
Owo+ID4gPiAtLQo+ID4gPiAyLjkuNQo+ID4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
