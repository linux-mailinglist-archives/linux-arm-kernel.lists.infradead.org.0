Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2CE1FA8C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 08:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAdhjuSZx1yWloim0m45nK2qJbvBx6vz45VXRKeJAbI=; b=hGOxnkK+A20U8Z
	lgTtRc9POA/A1qpoFj6D/RI9blvmjpe04xssAk6dGyfSDqpiSNHpS04EYnqiYoZruchUK9o3JQu1G
	k/VwQCCsy4xklItiCt0sW7Vw2Sgwn2v67lPYDbopVttSdEQwciQT7gCfqCeNoAQt72XRcECnMM2R8
	sOXexNlfVsLClFgMfxoL9lGLUfodwIqzKwuDRwssOfr3zwMsAVMYFWOIZxHbOO7/aqHYe3cjFSoxA
	HC4pgIumiphipmpejCaYAKO32gYZoBi3qQeg3AOptKmSikoU+oxr1L5HHaPldx7LxVTPvzJYCUtJK
	ExuR2H4DxPurCxMJPkZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl53l-0002tp-Cv; Tue, 16 Jun 2020 06:27:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl53c-0002sx-DD; Tue, 16 Jun 2020 06:26:54 +0000
X-UUID: 7f0258d04a854ff18ab05a7719056f68-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=W/ueputhDRkRPjBhF0TvVzqMTSqLl9GiuJKA6uNs9+c=; 
 b=XaG+e2qqIXL5d/DS0WB+Imw+s446JAvXj7No0oGDhmxMv4zqCfvyoDkgqOa5iOO7zflqYYZPDY2ElBD1aO+lrLrDGOH3p3D7cpyL5mJen7hsFblxVG53Oc/nuybXWVkrIY1cssPagz9e/PxrBZ/NNXdX0vsp7ecIpDyaDVbk0zU=;
X-UUID: 7f0258d04a854ff18ab05a7719056f68-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1440616809; Mon, 15 Jun 2020 22:26:50 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 23:19:54 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 14:19:48 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 16 Jun 2020 14:19:42 +0800
Message-ID: <1592288387.18012.8.camel@mtkswgap22>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
From: Neal Liu <neal.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 16 Jun 2020 14:19:47 +0800
In-Reply-To: <CAAOTY_-T7L5Cj3UOXDgwTo7jGw+PbcM9Fyy9StX35PwU533zLQ@mail.gmail.com>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY_-T7L5Cj3UOXDgwTo7jGw+PbcM9Fyy9StX35PwU533zLQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_232652_456066_50288323 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Neal Liu <neal.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywNCg0KT24gTW9uLCAyMDIwLTA2LTE1IGF0IDIzOjUxICswODAwLCBDaHVu
LUt1YW5nIEh1IHdyb3RlOg0KPiBIaSwgTmVhbDoNCj4gDQo+IE5lYWwgTGl1IDxuZWFsLmxpdUBt
ZWRpYXRlay5jb20+IOaWvCAyMDIw5bm0NuaciDnml6Ug6YCx5LqMIOS4i+WNiDY6MjXlr6vpgZPv
vJoNCj4gPg0KPiA+IE1UNjg3MyBidXMgZnJhYnJpYyBwcm92aWRlcyBUcnVzdFpvbmUgc2VjdXJp
dHkgc3VwcG9ydCBhbmQgZGF0YQ0KPiA+IHByb3RlY3Rpb24gdG8gcHJldmVudCBzbGF2ZXMgZnJv
bSBiZWluZyBhY2Nlc3NlZCBieSB1bmV4cGVjdGVkDQo+ID4gbWFzdGVycy4NCj4gPiBUaGUgc2Vj
dXJpdHkgdmlvbGF0aW9ucyBhcmUgbG9nZ2VkIGFuZCBzZW50IHRvIHRoZSBwcm9jZXNzb3IgZm9y
DQo+ID4gZnVydGhlciBhbmFseXNpcyBvciBjb3VudGVybWVhc3VyZXMuDQo+ID4NCj4gPiBBbnkg
b2NjdXJyZW5jZSBvZiBzZWN1cml0eSB2aW9sYXRpb24gd291bGQgcmFpc2UgYW4gaW50ZXJydXB0
LCBhbmQNCj4gPiBpdCB3aWxsIGJlIGhhbmRsZWQgYnkgZGV2YXBjLW10Njg3MyBkcml2ZXIuIFRo
ZSB2aW9sYXRpb24NCj4gPiBpbmZvcm1hdGlvbiBpcyBwcmludGVkIGluIG9yZGVyIHRvIGZpbmQg
dGhlIG11cmRlcmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTmVhbCBMaXUgPG5lYWwubGl1
QG1lZGlhdGVrLmNvbT4NCj4gPiAtLS0NCj4gDQo+IFtzbmlwXQ0KPiANCj4gPiArICAgICAgIHsx
LCAwLCAyMiwgIk1NU1lTIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7MSwgMSwgMjMsICJNTVNZU19E
SVNQIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7MSwgMiwgMjQsICJTTUkiLCB0cnVlfSwNCj4gPiAr
ICAgICAgIHsxLCAzLCAyNSwgIlNNSSIsIHRydWV9LA0KPiA+ICsgICAgICAgezEsIDQsIDI2LCAi
U01JIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7MSwgNSwgMjcsICJNTVNZU19ESVNQIiwgdHJ1ZX0s
DQo+ID4gKyAgICAgICB7MSwgNiwgMjgsICJNTVNZU19ESVNQIiwgdHJ1ZX0sDQo+ID4gKw0KPiA+
ICsgICAgICAgLyogMzAgKi8NCj4gPiArICAgICAgIHsxLCA3LCAyOSwgIk1NU1lTX0RJU1AiLCB0
cnVlfSwNCj4gPiArICAgICAgIHsxLCA4LCAzMCwgIk1NU1lTX0RJU1AiLCB0cnVlfSwNCj4gPiAr
ICAgICAgIHsxLCA5LCAzMSwgIk1NU1lTX0RJU1AiLCB0cnVlfSwNCj4gPiArICAgICAgIHsxLCAx
MCwgMzIsICJNTVNZU19ESVNQIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7MSwgMTEsIDMzLCAiTU1T
WVNfRElTUCIsIHRydWV9LA0KPiA+ICsgICAgICAgezEsIDEyLCAzNCwgIk1NU1lTX0RJU1AiLCB0
cnVlfSwNCj4gPiArICAgICAgIHsxLCAxMywgMzUsICJNTVNZU19ESVNQIiwgdHJ1ZX0sDQo+ID4g
KyAgICAgICB7MSwgMTQsIDM2LCAiTU1TWVNfRElTUCIsIHRydWV9LA0KPiA+ICsgICAgICAgezEs
IDE1LCAzNywgIk1NU1lTX0RJU1AiLCB0cnVlfSwNCj4gPiArICAgICAgIHsxLCAxNiwgMzgsICJN
TVNZU19ESVNQIiwgdHJ1ZX0sDQo+ID4gKw0KPiA+ICsgICAgICAgLyogNDAgKi8NCj4gPiArICAg
ICAgIHsxLCAxNywgMzksICJNTVNZU19ESVNQIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7MSwgMTgs
IDQwLCAiTU1TWVNfRElTUCIsIHRydWV9LA0KPiA+ICsgICAgICAgezEsIDE5LCA0MSwgIk1NU1lT
X0RJU1AiLCB0cnVlfSwNCj4gPiArICAgICAgIHsxLCAyMCwgNDIsICJNTVNZU19ESVNQIiwgdHJ1
ZX0sDQo+ID4gKyAgICAgICB7MSwgMjEsIDQzLCAiTU1TWVNfRElTUCIsIHRydWV9LA0KPiA+ICsg
ICAgICAgezEsIDIyLCA0NCwgIk1NU1lTX0RJU1AiLCB0cnVlfSwNCj4gDQo+IEkgdGhpbmsgdGhl
IGRldmljZSBuYW1lLCBzdWNoIGFzICJNTVNZU19ESVNQIiBkb2VzIG5vdCBoZWxwIGZvciBkZWJ1
Zy4NCj4gV2hlbiBEZXZBUEMgcHJpbnQgIk1NU1lTX0RJU1AiIGhhcyBlcnJvciwgaG93IGRvZXMg
dXMga25vdyB0aGF0IHRvIGRvDQo+IG5leHQ/IFdIRVJFIGlzIHRoZSBjb2RlIG1heSByZWxhdGVk
IHRvIHRoaXMgZXJyb3IsIGFuZCBXSE8gc2hvdWxkIHVzDQo+IHRvIGZpbmQgaGVscD8gSSB0aGlu
ayB3ZSBqdXN0IG5lZWQgdmlvIGFkZHJlc3MuIFVzaW5nIG10ODE3MyBmb3INCj4gZXhhbXBsZSwg
aWYgdGhlIHZpbyBhZGRyZXNzIGlzIDB4MTQwMGQwM2MsIHdlIGNvdWxkIGZpbmQgdGhlIGRldmlj
ZSBpbg0KPiBtdDgxNzMuZHRzaSBbMV0sDQo+IA0KPiBvdmwxOiBvdmxAMTQwMGQwMDAgew0KPiAg
ICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTczLWRpc3Atb3ZsIjsNCj4gICAgICAg
ICByZWcgPSA8MCAweDE0MDBkMDAwIDAgMHgxMDAwPjsNCj4gfTsNCj4gDQo+IHdlIGNvdWxkIGtu
b3cgZXJyb3Igb2NjdXIgaW4gb3ZsMSwgYW5kIHdlIGNvdWxkIGZpbmQgdGhlIGNvbXBhdGlibGUN
Cj4gc3RyaW5nICJtZWRpYXRlayxtdDgxNzMtZGlzcC1vdmwiIGluDQo+IGRyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jLCBzbyB3ZSBrbm93IFdIRVJFIGlzIHRoZSBjb2RlDQo+
IG1heSByZWxhdGVkIHRvIHRoaXMgZXJyb3IuIEFuZCB3ZSBjb3VsZCBmaW5kIG1haW50YWluZXIg
bGlzdCBbMl0gdG8NCj4gZmluZCBvdXQgdGhlIG1haW50YWluZXIgb2YgdGhpcyBjb2RlOg0KPiAN
Cj4gRFJNIERSSVZFUlMgRk9SIE1FRElBVEVLDQo+IE06IENodW4tS3VhbmcgSHUgPGNodW5rdWFu
Zy5odUBrZXJuZWwub3JnPg0KPiBNOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4
LmRlPg0KPiBMOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFM6IFN1cHBvcnRl
ZA0KPiBGOiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRl
ay8NCj4gRjogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrLw0KPiANCj4gYW5kIHdlIGtub3cgZmlu
ZCBXSE8gZm9yIGhlbHAuDQo+IFNvIEkgdGhpbmsgd2Ugc2hvdWxkIGRyb3AgZGV2aWNlIG5hbWUg
YW5kIGp1c3QgcHJpbnQgdmlvIGFkZHJlc3MgaXMNCj4gZW5vdWdoIGZvciBkZWJ1Zy4NCj4gDQo+
IFsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3My5k
dHNpP2g9djUuOC1yYzENCj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL01BSU5UQUlORVJTP2g9djUuOC1y
YzENCj4gDQoNCllvdSBhcmUgcmlnaHQuIFRoaXMgaXMgYSB3YXkgdG8gZmluZCBXSE8gY2FuIGhl
bHAgdGhpcyBpc3N1ZS4NCldlIGludGVncmF0ZWQgb3VyIGludGVybmFsIGRlYnVnIHN5c3RlbSB3
aXRoIGRldmljZSBuYW1lLCBhbmQgaXQgY2FuDQpoZWxwIHVzIHRvIGZpbmQgbW9kdWxlIG93bmVy
IGF1dG9tYXRpY2FsbHkgaW5zdGVhZCBvZiBzZWFyY2hpbmcgZHRzIGFuZA0Kc291cmNlIGNvZGUg
bWFudWFsbHkuDQpCdXQgdGhpcyBraW5kcyBvZiBkZWJ1Z2dpbmcgZmxvdyBpcyBub3QgbmVjZXNz
YXJ5IGZvciB1cHN0cmVhbS4gSSdsbCB0cnkNCnRvIHJlbW92ZSBpdC4NCg0KPiA+ICsgICAgICAg
ezEsIDIzLCA0NSwgIk1NU1lTX01EUCIsIHRydWV9LA0KPiA+ICsgICAgICAgezEsIDI0LCA0Niwg
Ik1NU1lTX01EUCIsIHRydWV9LA0KPiA+ICsgICAgICAgezEsIDI1LCA0NywgIk1NU1lTX01EUCIs
IHRydWV9LA0KPiA+ICsgICAgICAgezEsIDI2LCA0OCwgIk1NU1lTX01EUCIsIHRydWV9LA0KPiA+
ICsNCj4gDQo+IFtzbmlwXQ0KPiANCj4gPiArDQo+ID4gK2ludCBtdGtfZGV2YXBjX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsIHN0cnVjdCBtdGtfZGV2YXBjX3NvYyAqc29jKQ0K
PiA+ICt7DQo+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBwZGV2LT5kZXYu
b2Zfbm9kZTsNCj4gPiArICAgICAgIHUzMiBzbGF2ZV90eXBlX251bTsNCj4gPiArICAgICAgIGlu
dCBzbGF2ZV90eXBlOw0KPiA+ICsgICAgICAgaW50IHJldDsNCj4gPiArDQo+ID4gKyAgICAgICBp
ZiAoSVNfRVJSKG5vZGUpKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsNCj4g
PiArDQo+ID4gKyAgICAgICBtdGtfZGV2YXBjX2N0eC0+c29jID0gc29jOw0KPiA+ICsgICAgICAg
c2xhdmVfdHlwZV9udW0gPSBtdGtfZGV2YXBjX2N0eC0+c29jLT5zbGF2ZV90eXBlX251bTsNCj4g
PiArDQo+ID4gKyAgICAgICBmb3IgKHNsYXZlX3R5cGUgPSAwOyBzbGF2ZV90eXBlIDwgc2xhdmVf
dHlwZV9udW07IHNsYXZlX3R5cGUrKykgew0KPiA+ICsgICAgICAgICAgICAgICBtdGtfZGV2YXBj
X2N0eC0+ZGV2YXBjX3BkX2Jhc2Vbc2xhdmVfdHlwZV0gPQ0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIG9mX2lvbWFwKG5vZGUsIHNsYXZlX3R5cGUpOw0KPiA+ICsgICAgICAgICAgICAgICBp
ZiAoIW10a19kZXZhcGNfY3R4LT5kZXZhcGNfcGRfYmFzZVtzbGF2ZV90eXBlXSkNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiArICAgICAgIH0NCj4gPiAr
DQo+ID4gKyAgICAgICBtdGtfZGV2YXBjX2N0eC0+aW5mcmFjZmdfYmFzZSA9IG9mX2lvbWFwKG5v
ZGUsIHNsYXZlX3R5cGVfbnVtICsgMSk7DQo+ID4gKyAgICAgICBpZiAoIW10a19kZXZhcGNfY3R4
LT5pbmZyYWNmZ19iYXNlKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4g
PiArDQo+ID4gKyAgICAgICBtdGtfZGV2YXBjX2N0eC0+ZGV2YXBjX2lycSA9IGlycV9vZl9wYXJz
ZV9hbmRfbWFwKG5vZGUsIDApOw0KPiA+ICsgICAgICAgaWYgKCFtdGtfZGV2YXBjX2N0eC0+ZGV2
YXBjX2lycSkNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gKw0KPiA+
ICsgICAgICAgLyogQ0NGIChDb21tb24gQ2xvY2sgRnJhbWV3b3JrKSAqLw0KPiA+ICsgICAgICAg
bXRrX2RldmFwY19jdHgtPmRldmFwY19pbmZyYV9jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRl
diwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJkZXZhcGMtaW5mcmEtY2xvY2siKTsNCj4gPiArDQo+ID4gKyAgICAgICBpZiAoSVNf
RVJSKG10a19kZXZhcGNfY3R4LT5kZXZhcGNfaW5mcmFfY2xrKSkNCj4gPiArICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gKw0KPiA+ICsgICAgICAgcHJvY19jcmVhdGUoImRldmFw
Y19kYmciLCAwNjY0LCBOVUxMLCAmZGV2YXBjX2RiZ19mb3BzKTsNCj4gDQo+IEkgdGhpbmsgZGVi
dWdmcyBpcyBub3QgYSBiYXNpYyBmdW5jdGlvbiwgc28gbW92ZSBkZWJ1Z2ZzIGZ1bmN0aW9uIHRv
DQo+IGFub3RoZXIgcGF0Y2guDQo+IA0KDQpPa2F5LCBJJ2xsIHRyeSB0byByZW1vdmUgYW5kIHVw
c3RyZWFtIGFnYWluLg0KDQo+IFJlZ2FyZHMsDQo+IENodW4tS3VhbmcuDQo+IA0KPiA+ICsNCj4g
PiArICAgICAgIGlmIChjbGtfcHJlcGFyZV9lbmFibGUobXRrX2RldmFwY19jdHgtPmRldmFwY19p
bmZyYV9jbGspKQ0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+
ID4gKyAgICAgICBzdGFydF9kZXZhcGMoKTsNCj4gPiArDQo+ID4gKyAgICAgICByZXQgPSBkZXZt
X3JlcXVlc3RfaXJxKCZwZGV2LT5kZXYsIG10a19kZXZhcGNfY3R4LT5kZXZhcGNfaXJxLA0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoaXJxX2hhbmRsZXJfdClkZXZhcGNfdmlv
bGF0aW9uX2lycSwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9UUklH
R0VSX05PTkUsICJkZXZhcGMiLCBOVUxMKTsNCj4gPiArICAgICAgIGlmIChyZXQpIHsNCj4gPiAr
ICAgICAgICAgICAgICAgcHJfZXJyKFBGWCAicmVxdWVzdCBkZXZhcGMgaXJxIGZhaWxlZCwgcmV0
OiVkXG4iLCByZXQpOw0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+ICsgICAg
ICAgfQ0KPiA+ICsNCj4gPiArICAgICAgIHJldHVybiAwOw0KPiA+ICt9DQo+ID4gK0VYUE9SVF9T
WU1CT0xfR1BMKG10a19kZXZhcGNfcHJvYmUpOw0KPiA+ICsNCj4gPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
