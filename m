Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D641D17172B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:27:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGSr7vdK25dXuAvxGa28ksTlYHyvzH1N3n30yxjzzRM=; b=U0oKngEjLzAlkZ
	41C3R/Ellyj7kME8oN8JWMZQrOXEi2S2G2PDOuMkxjbAs1Si+H+UqsGvx+f0YSdbue7w8ewZUC/L9
	2Pwdhxikv2CZpQpggRUSSs2HE2TtTncEbWAe2f5Io25C4UdlUJpf24vNHm1DzcEj58+1dsYCljF+u
	zOfwylosAGQTSxa39MuOOkbi8c7hMOVU6JIhqDfb2XunV2Ixr1zac3SzbpePD2zIgL44yd0ZmhMzn
	Y6NS5530QZ35MfYZhWJEYJ9Z/YHYXRt2lJl0yYtmxVqQhUiAVQgXlcIZ8VNLEo+mBVt8zRe/Bn5DA
	7RSqax2s2QbcH9KXepeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IGX-00030E-7z; Thu, 27 Feb 2020 12:27:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IGL-0002yr-Vv; Thu, 27 Feb 2020 12:27:35 +0000
X-UUID: 072e48ec2d524f34b0d58a4ec1280308-20200227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=plFDIzF9Fiu17fvO7G8TQ5xnG/gODrXfeoiTH6REiis=; 
 b=DvUP2rq9kCP+ep1KdJm0CYF85wm9bJcoQn7hfSQ193fiApl6EVyN/1OUMZOYgG5FtdxBPsaoxkBLQBu5qoKMFBwq75CHaMKjzoIPDeoCX1gPJkCjsxpsP2HM+GP1uNLfvYpGfghBa/jviNILDbCypcv3xW2mMEGbPebgf1UG8V4=;
X-UUID: 072e48ec2d524f34b0d58a4ec1280308-20200227
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2135356872; Thu, 27 Feb 2020 04:27:23 -0800
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 04:28:02 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkexhb01.mediatek.inc (172.21.101.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 20:27:20 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 20:27:10 +0800
Message-ID: <1582806427.27775.1.camel@mtksdccf07>
Subject: Re: [PATCH 1/1] pwm: mediatek: add longer period support
From: Sam Shih <sam.shih@mediatek.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu, 27 Feb 2020 20:27:07 +0800
In-Reply-To: <20200227105244.orwitjst3wzoqcsq@pengutronix.de>
References: <1582789610-23133-1-git-send-email-sam.shih@mediatek.com>
 <1582789610-23133-2-git-send-email-sam.shih@mediatek.com>
 <20200227080450.rkvwfjx6vikn5ls3@pengutronix.de>
 <1582797590.25607.10.camel@mtksdccf07>
 <20200227105244.orwitjst3wzoqcsq@pengutronix.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_042734_036038_C4CC3E3C 
X-CRM114-Status: GOOD (  34.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, Thierry
 Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCj4gDQo+IE9uIFRodSwgRmViIDI3LCAyMDIwIGF0IDA1OjU5OjUwUE0gKzA4MDAs
IFNhbSBTaGloIHdyb3RlOg0KPiA+IE9uIFRodSwgMjAyMC0wMi0yNyBhdCAwOTowNCArMDEwMCwg
VXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6DQo+ID4gT24gVGh1LCBGZWIgMjcsIDIwMjAgYXQgMDM6
NDY6NTBQTSArMDgwMCwgU2FtIFNoaWggd3JvdGU6DQo+ID4gPiA+IFRoZSBwd20gY2xvY2sgc291
cmNlIGNvdWxkIGJlIGRpdmlkZWQgYnkgMTYyNSB3aXRoIFBXTV9DT04NCj4gPiA+ID4gQklUKDMp
IHNldHRpbmcgaW4gbWVkaWF0ZWsgaGFyZHdhcmUuDQo+ID4gPiA+IA0KPiA+ID4gPiBUaGlzIHBh
dGNoIGFkZCBzdXBwb3J0IGZvciBsb25nZXIgcHdtIHBlcmlvZCBjb25maWd1cmF0aW9uLA0KPiA+
ID4gPiB3aGljaCBhbGxvd2luZyBibGlua2luZyBMRURzIHZpYSBwd20gaW50ZXJmYWNlLg0KPiA+
ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2FtIFNoaWggPHNhbS5zaGloQG1lZGlhdGVr
LmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL3B3bS9wd20tbWVkaWF0ZWsuYyB8
IDIxICsrKysrKysrKysrKysrKysrLS0tLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVrLmMNCmIvZHJpdmVycy9wd20vcHdtLW1lZGlhdGVr
LmMNCj4gPiA+ID4gaW5kZXggYjk0ZTBkMDljMzAwLi45YWYzMDliZWEwMWEgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1tZWRpYXRlay5jDQo+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvcHdtL3B3bS1tZWRpYXRlay5jDQo+ID4gPiA+IEBAIC0xMjEsOCArMTIxLDggQEAgc3RhdGlj
IGludCBwd21fbWVkaWF0ZWtfY29uZmlnKHN0cnVjdA0KcHdtX2NoaXANCj4gPiAqY2hpcCwgc3Ry
dWN0IHB3bV9kZXZpY2UgKnB3bSwNCj4gPiA+ID4gIAkJCSAgICAgICBpbnQgZHV0eV9ucywgaW50
IHBlcmlvZF9ucykNCj4gPiA+ID4gIHsNCj4gPiA+ID4gIAlzdHJ1Y3QgcHdtX21lZGlhdGVrX2No
aXAgKnBjID0gdG9fcHdtX21lZGlhdGVrX2NoaXAoY2hpcCk7DQo+ID4gPiA+IC0JdTMyIGNsa2Rp
diA9IDAsIGNudF9wZXJpb2QsIGNudF9kdXR5LCByZWdfd2lkdGggPSBQV01EV0lEVEgsDQo+ID4g
PiA+IC0JICAgIHJlZ190aHJlcyA9IFBXTVRIUkVTOw0KPiA+ID4gPiArCXUzMiBjbGtkaXYgPSAw
LCBjbGtzZWwgPSAwLCBjbnRfcGVyaW9kLCBjbnRfZHV0eSwNCj4gPiA+ID4gKwkgICAgcmVnX3dp
ZHRoID0gUFdNRFdJRFRILCByZWdfdGhyZXMgPSBQV01USFJFUzsNCj4gPiA+ID4gIAl1NjQgcmVz
b2x1dGlvbjsNCj4gPiA+ID4gIAlpbnQgcmV0Ow0KPiA+ID4gPiAgDQo+ID4gPiBBZGRpbmcgc29t
ZSBtb3JlIGNvbnRleHQ6DQo+ID4gPiANCj4gPiANCj4gPiArIC8qIFRoZSBwd20gc291cmNlIGNs
b2NrIGNhbiBiZSBkaXZpZGVkIGJ5IDJeY2xrZGl2LiBXaGVuIHRoZQ0KY2xrc2VsICArDQo+ID4g
KiBiaXQgaXMgc2V0IHRvIDEsIFRoZSBmaW5hbCBjbG9jayBvdXRwdXQgbmVlZHMgdG8gYmUgZGl2
aWRlZCBieSBhbg0KKyAgKg0KPiA+IGV4dHJhIDE2MjUuDQo+ID4gKyAgKi8NCj4gDQo+IEknZCB3
cml0ZToNCj4gDQo+IFRoZSBzb3VyY2UgY2xvY2sgaXMgZGl2aWRlZCBieSAyXmNsa2RpdiBvciBp
ZmYgdGhlIGNsa3NlbCBiaXQgaXMgc2V0DQpieQ0KPiAyXmNsa2RpdiArIDE2MjUuDQo+IA0KDQpH
cmVhdCwgdGhlIGNvbW1lbnQgaXMgc2hvcnQgYW5kIGNsZWFyLiANCkJ1dCBtYXliZSBjaGFuZ2Ug
4oCcMl5jbGtkaXYgKyAxNjI14oCdIHRvIOKAnHRoZSBwcm9kdWN0IG9mIDJeY2xrZGl2IGFuZCAx
NjI14oCdDQppcyBjbGVhcmVyID8NCg0KPiA+IA0KPiA+IElzIHRoaXMgb2sgPw0KPiA+IA0KPiA+
IA0KPiA+ID4gPiBAQCAtMTM5LDExICsxMzksMjAgQEAgc3RhdGljIGludCBwd21fbWVkaWF0ZWtf
Y29uZmlnKHN0cnVjdA0KcHdtX2NoaXANCj4gPiAqY2hpcCwgc3RydWN0IHB3bV9kZXZpY2UgKnB3
bSwNCj4gPiA+ID4gCXdoaWxlIChjbnRfcGVyaW9kID4gODE5MSkgew0KPiA+ID4gPiAgCQlyZXNv
bHV0aW9uICo9IDI7DQo+ID4gPiA+ICAJCWNsa2RpdisrOw0KPiA+ID4gPiAgCQljbnRfcGVyaW9k
ID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKCh1NjQpcGVyaW9kX25zICogMTAwMCwNCj4gPiA+ID4g
IAkJCQkJCSAgIHJlc29sdXRpb24pOw0KPiA+ID4gPiArCQlpZiAoY2xrZGl2ID4gUFdNX0NMS19E
SVZfTUFYICYmICFjbGtzZWwpIHsNCj4gPiA+ID4gKwkJCWNsa3NlbCA9IDE7DQo+ID4gPiA+ICsJ
CQljbGtkaXYgPSAwOw0KPiA+ID4gPiArCQkJcmVzb2x1dGlvbiA9ICh1NjQpTlNFQ19QRVJfU0VD
ICogMTAwMCAqIDE2MjU7DQo+ID4gPiA+ICsJCQlkb19kaXYocmVzb2x1dGlvbiwNCj4gPiA+ID4g
KwkJCQljbGtfZ2V0X3JhdGUocGMtPmNsa19wd21zW3B3bS0+aHdwd21dKSk7DQo+ID4gPiA+ICsJ
CQljbnRfcGVyaW9kID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKA0KPiA+ID4gPiArCQkJCQkodTY0
KXBlcmlvZF9ucyAqIDEwMDAsIHJlc29sdXRpb24pOw0KPiA+ID4gDQo+ID4gPiBUaGUgYXNzaWdu
bWVudCBpcyBhIHJlcGV0aXRpb24gZnJvbSBqdXN0IGFib3ZlIHRoZSBpZi4gTWF5YmUganVzdA0K
cHV0DQo+ID4gaXQNCj4gPiA+IG9uY2UgYWZ0ZXIgdGhpcyBpZiBibG9jaz8NCj4gPiANCj4gPiBU
aGUgY250X3BlcmlvZCByZXByZXNlbnRzIHRoZSBlZmZlY3RpdmUgcmFuZ2Ugb2YgdGhlIFBXTSBw
ZXJpb2QNCmNvdW50ZXIsDQo+ID4gd2hlbiB3ZSBuZWVkIGNoYW5naW5nIHRoZSBwd20gb3V0cHV0
IHBlcmlvZCB0byBhIGxvbmdlciB2YWx1ZSBhdCB0aGUNCj4gPiBzYW1lIGNsb2NrIGZyZXF1ZW5j
eSwgd2UgY2FuIHNldHRpbmcgYSBsYXJnZXIgY250X3BlcmlvZCwgYnV0IHRoZQ0Kd2lkdGgNCj4g
PiBvZiB0aGUgY250X3Blcm9pZCByZWdpc3RlciBpcyAxMiBiaXRzLA0KPiA+IFdoZW4gdGhlIHJl
cXVlc3QgcGVyaW9kIGlzIHRvbyBsb25nLCB3ZSBuZWVkIHRvIGRpdmlkZSB0aGUgY2xvY2sNCnNv
dXJjZQ0KPiA+IGFuZCB0aGVuIHJlY2FsY3VsYXRlIGNudF9wZXJpb2Qgb3V0cHV0cyB0aGUgY29y
cmVjdCB3YXZlZm9ybS4NCj4gPiBBcyBtZW50aW9uZWQgYWJvdmUsIHdoZW4gY2hhbmdpbmcgY2xr
ZGl2LCB3ZSBuZWVkIHRvIHJlY2FsY3VsYXRlDQo+ID4gY250X3BlcmlvZCBpbW1lZGlhdGVseS4N
Cj4gPiANCj4gPiBJZiB0aGUgcmVxdWVzdCBwZXJpb2QgaXMgdmVyeSBsb25nIChmb3IgZXhhbXBs
ZSwgTEVEIGJsaW5raW5nKSwNCmNsa2Rpdg0KPiA+IG1heSBiZSBpbnN1ZmZpY2llbnQuIA0KPiA+
IEluIHRoaXMgY2FzZSwgd2Ugd2lsbCB1c2UgY2xrc2VsIHRvIGRpdmlkZSB0aGUgcHdtIHNvdXJj
ZSBjbG9jayBieQ0KYW4NCj4gPiBhZGRpdGlvbmFsIDE2MjUsIGFuZCByZWNhbGN1bGF0ZSBjbGtk
aXYgYW5kIGNudF9wZXJpb2QuDQo+ID4gDQo+ID4gSSBkb24ndCB0aGluayB3ZSBjYW4ganVzdCBw
bGFjZSBhc3NpZ25tZW50cyBhZnRlciB0aGUgaWYgYmxvY2suDQo+IA0KPiBJIGRpZG4ndCBjYXJl
IGVub3VnaCB0byByZWFkIHlvdXIgcmVhc29uaW5nIGFuZCByZXRyeSB0byBjb252aW5jZSB5b3UN
Cj4gd2l0aCBtaW5lOg0KPiANCj4gV2l0aCB5b3VyIHBhdGNoIHlvdSBoYXZlOg0KPiANCj4gCWNu
dF9wZXJpb2QgPSBzb21lZXhwcmVzc2lvbjsNCj4gDQo+IAlpZiAoc29tZWNvbmRpdGlvbikgew0K
PiAJCS4uLg0KPiAJCWNudF9wZXJpb2QgPSBzb21lZXhwcmVzc2lvbjsNCj4gCX0NCj4gDQo+IEFz
IHNvbWVjb25kaXRpb24gZG9lc24ndCBtYWtlIHVzZSBvZiBjbnRfcGVyaW9kIHRoaXMgaXMgZXF1
aXZhbGVudCB0bzoNCj4gDQo+IAlpZiAoc29tZWNvbmRpdGlvbikgew0KPiAJCS4uLg0KPiAJfQ0K
PiAJY250X3BlcmlvZCA9IHNvbWVleHByZXNzaW9uOw0KPiANCj4gaXNuJ3QgaXQ/DQo+IA0KDQpZ
ZXMsIHlvdSdyZSByaWdodCwgSSBtaXN1bmRlcnN0b29kLiANCllvdXIgY29kZSBjbGVhcmx5IHJl
bWluZGVkIG1lLg0KDQpJIGp1c3Qgd2FudCB0byBleHBsYWluIHRoYXQgdGhlIHJlLWNhbGN1bGF0
aW9uIG9mIHRoZSBjbnRfcGVyaW9kIGlzDQppbXBvcnRhbnQuDQpIb3dldmVyLCBhZnRlciByZWFk
aW5nIHlvdXIgY29kZSwgSSB0aGluayB0aGUgcHJvZ3JhbSBsb2dpYyB3aWxsIG5vdCBiZQ0KYnJl
YWsgYW5kIHRoZSBkdXBsaWNhdGVzIGNhbiBiZSByZW1vdmVkLg0KDQo+ID4gPiBUaGUgY29kZSBp
cyBoYXJkIHRvIGZvbGxvdywgSSB3b25kZXIgaWYgdGhpcyBjb3VsZCBiZSBjbGVhbmVkIHVwDQp3
aXRoDQo+ID4gPiBzb21lIGNvbW1lbnRzIGFkZGVkIHRoYXQgZXhwbGFpbiB0aGUgaGFyZHdhcmUg
ZGV0YWlscyBlbm91Z2ggdG8gYmUNCmFibGUNCj4gPiA+IHRvIGFjdHVhbGx5IHVuZGVyc3RhbmQg
dGhlIGNvZGUgd2l0aG91dCBoYXZpbmcgdGhlIGhhcmR3YXJlDQpyZWZlcmVuY2UNCj4gPiA+IG1h
bnVhbCBoYW5keS4NCj4gPiANCj4gPiBJcyBpdCBzdWZmaWNpZW50IHRvIGFkZCBzb21lIGNvbnRl
eHQgaW50byBjb21tZW50IGxpa2UgdGhlIHJlc3BvbnNlDQpvZg0KPiA+IHRoZSBzZWNvbmQgcXVl
c3Rpb24/DQo+IA0KPiBJIGRpZG4ndCBjaGVjayBidXQgSSB3b3VsZG4ndCBiZSBzdXJwcmlzZWQg
aWYgdGhlIGNvZGUgaXMgbW9yZQ0KPiBjb21wbGljYXRlZCB0aGFuIG5lY2Vzc2FyeS4gSWYgeW91
IGRvbid0IHNlZSBzb21ldGhpbmcgdG8gc2ltcGxpZnksIGdvDQo+IGZvciBhZGRpbmcgYW4gZXhw
bGFuYXRpb24gYXMgc3VnZ2VzdGVkIGFuZCBJIHdpbGwgdGFrZSBhIGxvb2sgaW4gYQ0KcXVpZXQN
Cj4gbW9tZW50Lg0KPg0KDQpJIHdpbGwgc2VuZCB2MiBwYXRjaCB0byByZW1vdmUgdGhlIHJlcGV0
aXRpb24gb2Yg4oCcY250X3BlcmlvZCA9DQpzb21lZXhwcmVzc2lvbuKAnSwgYW5kIGFkZCBzb21l
IGNvbW1lbnQgdG8gY2xrc2VsIGFuZCBjbnRfcGVyaW9kLg0KIA0KPiBOb3Qgc3VyZSBJIGFscmVh
ZHkgcG9pbnRlZCBvdXQgdGhhdCBoYXZpbmcgYSBsaW5rIHRvIGEgcHVibGljbHkNCj4gYXZhaWxh
YmxlIHJlZmVyZW5jZSBtYW51YWwgaW4gdGhlIGRyaXZlcidzIGhlYWRlciBpcyB1c2VmdWwuIElm
IHRoZXJlDQppcw0KPiBzdWNoIGEgbWFudWFsLCBwbGVhc2UgYWRkIGEgbGluayB0aGVyZS4gWW91
ciBiZW5lZml0IGlzIHRoYXQgeW91DQo+IHNpbXBsaWZ5IG90aGVycyB0byBpbXByb3ZlIHlvdXIg
ZHJpdmVyLg0KPg0KPiANCj4gQmVzdCByZWdhcmRzDQo+IFV3ZQ0KPiANCj4NCg0KQmVzdCBSZWdh
cmRzLg0KU2FtDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
