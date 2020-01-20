Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B581425A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpsI0rMBa4EFtWaoL2wf7s4vcMhmz9d9YIcxCwPm+GI=; b=pgDzvpwxpdo3yq
	79eY+rZDBnNU9NHqOFQ69rpeockyu2Qy7QMaQJdImbuJWr82ol+ulK8uznIPgP6nQ00pWqDqSxGmr
	gbBFU69KERmcqLn8FF4Rm+KqXLEXupIyG3bUFaofl5+dBbgTCUUrB0CQ7+ry7z6p06OA7rKIIKyYN
	xadzYViJY06ZNNKg+9w33WMQ+OksCIyYPM0gtfiB4WMHdfahNYjgKYmlyKhN2UQswDuAIdQGz5wW9
	AAKeWt7h+QczaYyz8MexX05MkUjl2Dg0q4XtKWeKPAxQsu80SvbgDyGHh2m2clSsc1pfSDVUWQbsb
	j5J1DF8q5A5r2XiTzHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSWj-0005El-Dy; Mon, 20 Jan 2020 08:35:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSWS-0004QK-29; Mon, 20 Jan 2020 08:35:04 +0000
X-UUID: ab791967f1e9483393f1ed25dca56648-20200120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=4Ok/P/DsJ/ditnwskg4FAWhWq4PcnWnbx3PU5Gl8rtQ=; 
 b=CH0EJKpL+dXS0PqBcWjZjnRSKEMkBiQxVMiP6Q97PNpOmU6SIC1sY2nVjOWwLTSNe6vjWeRmoeKTESeNYneJdmejstn7QmSBmya1NCYF8bweiFf20adn66xiz/usUdthqw9zf9yEpmzECzJgrQsB1LkNdKVOnNnAWX2qTKqaddw=;
X-UUID: ab791967f1e9483393f1ed25dca56648-20200120
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1354902653; Mon, 20 Jan 2020 00:34:54 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 Jan 2020 00:35:50 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 20 Jan 2020 16:33:33 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 Jan 2020 16:34:55 +0800
Message-ID: <1579509281.5781.23.camel@mhfsdcap03>
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <andriy.shevchenko@linux.intel.com>
Date: Mon, 20 Jan 2020 16:34:41 +0800
In-Reply-To: <e8b59857e39744a6acfe5d862f3ac8d5@mtkmbs05n2.mediatek.inc>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905102633.GC2680@smile.fi.intel.com>
 <e8b59857e39744a6acfe5d862f3ac8d5@mtkmbs05n2.mediatek.inc>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 39254EC8C7A19E8D44FB54288ACDEC390C4B67959728088945E48F091B6A000E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_003500_109010_19D2564C 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gQW5keSwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3LiBQbGVhc2Ugc2VlIHRoZSByZXBs
aWVzIGJlbG93Lg0KDQpPbiBNb24sIDIwMTktMDktMDUgYXQgMTI6MjYgKzAyMDAsIEFuZHkgU2hl
dmNoZW5rbyB3cm90ZToNCj4gT24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDM6MjE6NDJQTSArMDgw
MCwgZG9uZ2NodW4uemh1QG1lZGlhdGVrLmNvbSB3cm90ZToNCj4gPiBGcm9tOiBEb25nY2h1biBa
aHUgPGRvbmdjaHVuLnpodUBtZWRpYXRlay5jb20+DQo+ID4NCj4gPiBUaGlzIHBhdGNoIGFkZHMg
YSBWNEwyIHN1Yi1kZXZpY2UgZHJpdmVyIGZvciBEVzk3NjggbGVucyB2b2ljZSBjb2lsLA0KPiA+
IGFuZCBwcm92aWRlcyBjb250cm9sIHRvIHNldCB0aGUgZGVzaXJlZCBmb2N1cy4NCj4gPg0KPiA+
IFRoZSBEVzk3NjggaXMgYSAxMCBiaXQgREFDIHdpdGggMTAwbUEgb3V0cHV0IGN1cnJlbnQgc2lu
ayBjYXBhYmlsaXR5DQo+ID4gZnJvbSBEb25nd29vbiwgZGVzaWduZWQgZm9yIGxpbmVhciBjb250
cm9sIG9mIHZvaWNlIGNvaWwgbW90b3IsIGFuZA0KPiA+IGNvbnRyb2xsZWQgdmlhIEkyQyBzZXJp
YWwgaW50ZXJmYWNlLg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBEb25nY2h1biBaaHUgPGRvbmdj
aHVuLnpodUBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4gIE1BSU5UQUlORVJTICAgICAgICAg
ICAgICAgIHwgICAxICsNCj4gDQo+IFRoaXMgc2hvdWxkIGdvIHRvIHRoZSBzYW1lIHBhdGNoLCB3
aGVyZSB5b3UgaW50cm9kdWNlIGEgcmVjb3JkIGluIHRoZSBNQUlOVEFJTkVSUyBkYXRhYmFzZS4N
Cj4gDQo+ID4gKyNkZWZpbmUgRFc5NzY4X1NFVF9QT1NJVElPTl9BRERSICAgICAgICAgICAgICAg
IDB4MDMNCj4gDQo+IEluZGVudGF0aW9uIGlzc3VlLg0KPiANCg0KRml4ZWQgaW4gbmV4dCByZWxl
YXNlLg0KDQo+ID4gK3N0YXRpYyBzdHJ1Y3QgcmVndmFsX2xpc3QgZHc5NzY4X2luaXRfcmVnc1td
ID0gew0KPiA+ICt7MHgwMiwgMHgwMn0sDQo+ID4gK3tEVzk3NjhfQ01EX0RFTEFZLCBEVzk3Njhf
Q01EX0RFTEFZfSwNCj4gPiArezB4MDYsIDB4NDF9LA0KPiA+ICt7MHgwNywgMHgzOX0sDQo+ID4g
K3tEVzk3NjhfQ01EX0RFTEFZLCBEVzk3NjhfQ01EX0RFTEFZfSwgfTsNCj4gPiArDQo+ID4gK3N0
YXRpYyBzdHJ1Y3QgcmVndmFsX2xpc3QgZHc5NzY4X3JlbGVhc2VfcmVnc1tdID0gew0KPiA+ICt7
MHgwMiwgMHgwMH0sDQo+ID4gK3tEVzk3NjhfQ01EX0RFTEFZLCBEVzk3NjhfQ01EX0RFTEFZfSwN
Cj4gPiArezB4MDEsIDB4MDB9LA0KPiA+ICt7RFc5NzY4X0NNRF9ERUxBWSwgRFc5NzY4X0NNRF9E
RUxBWX0sIH07DQo+ID4gKw0KPiA+ICtzdGF0aWMgaW50IGR3OTc2OF93cml0ZV9zbWJ1cyhzdHJ1
Y3QgZHc5NzY4ICpkdzk3NjgsIHVuc2lnbmVkIGNoYXIgcmVnLA0KPiA+ICsgICAgICB1bnNpZ25l
ZCBjaGFyIHZhbHVlKQ0KPiA+ICt7DQo+ID4gK3N0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQgPSB2
NGwyX2dldF9zdWJkZXZkYXRhKCZkdzk3NjgtPnNkKTsNCj4gPiAraW50IHJldDsNCj4gPiArDQo+
IA0KPiA+ICtpZiAocmVnID09IERXOTc2OF9DTURfREVMQVkgICYmIHZhbHVlID09IERXOTc2OF9D
TURfREVMQVkpDQo+IA0KPiBJbmRlbnRhdGlvbiBpc3N1ZS4NCj4gQnV0IHNlZSBvdGhlcidzIGNv
bW1lbnRzLg0KPiANCj4gPiArdXNsZWVwX3JhbmdlKERXOTc2OF9DVFJMX0RFTEFZX1VTLA0KPiA+
ICsgICAgIERXOTc2OF9DVFJMX0RFTEFZX1VTICsgMTAwKTsNCj4gDQo+ID4gK2Vsc2UNCj4gDQo+
IFRoaXMgbmVlZHMgYW4gZXhwbGFuYXRpb24uDQo+IA0KDQpGaXhlZCBpbiBuZXh0IHJlbGVhc2Uu
DQoNCj4gPiArcmV0ID0gaTJjX3NtYnVzX3dyaXRlX2J5dGVfZGF0YShjbGllbnQsIHJlZywgdmFs
dWUpOw0KPiA+ICtyZXR1cm4gcmV0Ow0KPiA+ICt9DQo+IA0KPiBJJ20gd29uZGVyaW5nIGlmIHdl
IGNhbiBiZW5lZml0IGZyb20gcmVnbWFwIEnCskMgQVBJIGluIHRoaXMgZHJpdmVyLg0KPiANCj4g
PiArc3RhdGljIGludCBfX21heWJlX3VudXNlZCBkdzk3NjhfdmNtX3N1c3BlbmQoc3RydWN0IGRl
dmljZSAqZGV2KSB7DQo+IA0KPiA+ICtzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50ID0gdG9faTJj
X2NsaWVudChkZXYpOw0KPiA+ICtzdHJ1Y3QgdjRsMl9zdWJkZXYgKnNkID0gaTJjX2dldF9jbGll
bnRkYXRhKGNsaWVudCk7DQo+IA0KPiBpc24ndCBpcyBzaW1wbGUgZGV2X2dldF9kcnZkYXRhKCkg
Pw0KPiANCg0KQXMgZGlzY3Vzc2VkIGluIGFub3RoZXIgZ3JvdXAgbWFpbCwgZXZlbiBkZXZfc2V0
X2RydmRhdGEoKSBpcyBzZXQgd2hlbg0KcHJvYmUsIHRoZSBwb2ludGVyIHRoYXQgcG9pbnQgdG8g
dGhlIHByaXZhdGUgZGV2aWNlIHN0cnVjdCBjaGFuZ2VzIHdoZW4NCnVzaW5nIGRldl9nZXRfZHJ2
ZGF0YSgpIEFQSS4NClRoZW4gcmVzdW1lL3Bvd2VyIG9uIHdvdWxkIHJlc3VsdCBpbiBrZXJuZWwg
ZXhjZXB0aW9uIGluDQpyZWd1bGF0b3JfZW5hYmxlLg0KDQpUaGlzIGlzIHNvIHdlaXJkLg0KV2Ug
ZmlsZWQgb25lIEdvb2dsZSBpc3N1ZSB0byB0cmFjZSB0aGlzIGJlaGF2aW9yLg0KaHR0cHM6Ly9w
YXJ0bmVyaXNzdWV0cmFja2VyLmNvcnAuZ29vZ2xlLmNvbS9pc3N1ZXMvMTQ3OTU3OTc1DQoNCkkg
YW0gd29uZGVyaW5nIHdoZXRoZXIgdGhlcmUgaXMgYW55IGNvbmRpdGlvbiBvZiB0aGUgdXNlIG9m
DQpkZXZfZ2V0X2RydmRhdGEoKS4NCkkgY2hlY2tlZCB0aGUgb3RoZXIgZHJpdmVycyBhbmQgZm91
bmQgdGhhdCBtb3N0IGRldmljZXMgdGhhdCB1c2UNCmRldl9nZXRfZHJ2ZGF0YSgpIGFyZSBwbGF0
Zm9ybSBkZXZpY2VzIG9yIG5vbiBpMmMgY2xpZW50IGRldmljZXMuDQpTbyBtYXliZSBkdzk3Njgg
b3Igb3RoZXIgbWVkaWEvaTJjIGRldmljZXMgY2Fubm90IHN1cHBvcnQNCmRldl9nZXRfZHJ2ZGF0
YSgpPw0KDQo+ID4gK3N0cnVjdCBkdzk3NjggKmR3OTc2OCA9IHNkX3RvX2R3OTc2OF92Y20oc2Qp
Ow0KPiA+ICsNCj4gPiArcmV0dXJuIGR3OTc2OF9wb3dlcl9vZmYoZHc5NzY4KTsNCj4gPiArfQ0K
PiA+ICsNCj4gPiArc3RhdGljIGludCBfX21heWJlX3VudXNlZCBkdzk3NjhfdmNtX3Jlc3VtZShz
dHJ1Y3QgZGV2aWNlICpkZXYpIHsNCj4gDQo+ID4gK3N0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQg
PSB0b19pMmNfY2xpZW50KGRldik7DQo+ID4gK3N0cnVjdCB2NGwyX3N1YmRldiAqc2QgPSBpMmNf
Z2V0X2NsaWVudGRhdGEoY2xpZW50KTsNCj4gDQo+IERpdHRvLg0KPiANCj4gPiArc3RydWN0IGR3
OTc2OCAqZHc5NzY4ID0gc2RfdG9fZHc5NzY4X3ZjbShzZCk7DQo+ID4gKw0KPiA+ICtyZXR1cm4g
ZHc5NzY4X3Bvd2VyX29uKGR3OTc2OCk7DQo+ID4gK30NCj4gDQo+ID4gK3N0YXRpYyBjb25zdCBz
dHJ1Y3QgaTJjX2RldmljZV9pZCBkdzk3NjhfaWRfdGFibGVbXSA9IHsNCj4gPiAreyBEVzk3Njhf
TkFNRSwgMCB9LA0KPiANCj4gPiAreyB9LA0KPiANCj4gTm8gY29tbWEuDQo+IA0KDQpUaGlzIHN0
cnVjdCB3b3VsZCBiZSByZW1vdmVkIGluIG5leHQgcmVsZWFzZS4NCg0KPiA+ICt9Ow0KPiANCj4g
PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZHc5NzY4X29mX3RhYmxlW10gPSB7
DQo+ID4gK3sgLmNvbXBhdGlibGUgPSAiZG9uZ3dvb24sZHc5NzY4IiB9LA0KPiANCj4gPiAreyB9
LA0KPiANCj4gRGl0dG8uDQo+IA0KDQpGaXhlZCBpbiBuZXh0IHJlbGVhc2UuDQoNCj4gPiArfTsN
Cj4gDQo+IC0tDQo+IFdpdGggQmVzdCBSZWdhcmRzLA0KPiBBbmR5IFNoZXZjaGVua28NCj4gDQo+
IA0KPiAqKioqKioqKioqKioqKioqKioqKipNRURJQVRFSyBDb25maWRlbnRpYWwvSW50ZXJuYWwg
VXNlKioqKioqKioqKioqKioqKioqKioqDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
