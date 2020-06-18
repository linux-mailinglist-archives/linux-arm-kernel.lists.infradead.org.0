Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAED81FFA47
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1Yrhd2N065RHsaTJI7vQmXEOsCbZESySxJQXOUEpq4=; b=P0LzcWjxpIg/X0
	/aJNKLktAHfr/qxyNuGhAoBcWshshUv+1KyoAzPrWqXwIVlXsiqKp3zmy+S6jvQ9wTfbHPrtfAGPl
	4Fen8Uy/4nm8S24hD8Bri8XXxgmDkl98xLrnzaX4lS6V2UEZzIReLfU6YGCn5UA086A+UnF3CuJxv
	CfF2uv5f7Cqk389sqQCgDNCRLFIo4rz8E11nT82iP6PSZlvL6gKPT81y/HBHndFadb0DaggdFBHr2
	aKtGNSOcaJSkzxyk2wSz+BFRQ3u8esqfRBEtf8H9kk6zP3/MjZ5MKpn/lOS5Ldniu1mYb6JZBWIpJ
	879oJ7cUMU3Dmj287UlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyNW-0001te-Q2; Thu, 18 Jun 2020 17:31:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyLB-0005Vw-1b; Thu, 18 Jun 2020 17:28:54 +0000
X-UUID: 722680842ae74222a9d5cd4aab6c9cfb-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yNjyRymIlzIUx/0UrSoiHb16khUEPf/l+Jda96r8vqM=; 
 b=rrebVpn2C7+nZUaEsgCBMuTAm8Fc2nX5D0rwLR57cV7PdMuZNlCtYQl2OTnIfPzPhLe9LahppXwjxaTJ3qtBMS6+2zg1x2Ug9sXqcaIEmqXUNVNOFhsqJLRoWmCJFIY56Wa8un3MIqUgU7fCr2JYnNBD7YNX4Nu1MfOivj8ExtI=;
X-UUID: 722680842ae74222a9d5cd4aab6c9cfb-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <rick.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 362857895; Thu, 18 Jun 2020 09:28:10 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 10:28:12 -0700
Received: from MTKCAS66.mediatek.inc (172.29.193.44) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 01:28:11 +0800
Received: from mussux00 (172.29.97.100) by MTKCAS66.mediatek.inc
 (172.29.193.43) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 18 Jun 2020 10:28:09 -0700
Message-ID: <1592501293.13123.2.camel@mediatek.com>
Subject: Re: [PATCH v4 06/17] media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
From: Rick Chang <rick.chang@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>
Date: Thu, 18 Jun 2020 10:28:13 -0700
In-Reply-To: <1592472725.20080.12.camel@mhfsdcap03>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-7-git-send-email-yong.wu@mediatek.com>
 <1592472725.20080.12.camel@mhfsdcap03>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_102841_114027_28E4BFEC 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: xia.jiang@mediatek.com, Will Deacon <will.deacon@arm.com>,
 youlin.pei@mediatek.com, Nicolas Boichat <drinkcat@chromium.org>,
 Joerg Roedel <joro@8bytes.org>, Evan
 Green <evgreen@chromium.org>, eizan@chromium.org, Matthias
 Kaehlcke <mka@chromium.org>, devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, ming-fan.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, anan.sun@mediatek.com,
 acourbot@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWW9uZywNCg0KT24gVGh1LCAyMDIwLTA2LTE4IGF0IDE3OjMyICswODAwLCBZb25nIFd1IHdy
b3RlOg0KPiArIFJpY2sNCj4gDQo+IE9uIFNhdCwgMjAyMC0wNS0zMCBhdCAxNjoxMCArMDgwMCwg
WW9uZyBXdSB3cm90ZToNCj4gPiANCj4gPiBNZWRpYVRlayBJT01NVSBoYXMgYWxyZWFkeSBhZGRl
ZCBkZXZpY2VfbGluayBiZXR3ZWVuIHRoZSBjb25zdW1lcg0KPiA+IGFuZCBzbWktbGFyYiBkZXZp
Y2UuIElmIHRoZSBqcGcgZGV2aWNlIGNhbGwgdGhlDQo+ID4gcG1fcnVudGltZV9nZXRfc3luYywN
Cj4gPiB0aGUgc21pLWxhcmIncyBwbV9ydW50aW1lX2dldF9zeW5jIGFsc28gYmUgY2FsbGVkIGF1
dG9tYXRpY2FsbHkuDQo+ID4gDQoNCkFja2VkLWJ5OiBSaWNrIENoYW5nIDxyaWNrLmNoYW5nQG1l
ZGlhdGVrLmNvbT4NCg0KPiA+IENDOiBSaWNrIENoYW5nIDxyaWNrLmNoYW5nQG1lZGlhdGVrLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4NCj4g
PiBSZXZpZXdlZC1ieTogRXZhbiBHcmVlbiA8ZXZncmVlbkBjaHJvbWl1bS5vcmc+DQo+ID4gLS0t
DQo+ID4gwqBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1qcGVnL210a19qcGVnX2NvcmUuYyB8
IDIyIC0tLS0tLS0tLS0tDQo+ID4gLS0tLS0tLS0tLS0NCj4gPiDCoGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vbXRrLWpwZWcvbXRrX2pwZWdfY29yZS5oIHzCoMKgMiAtLQ0KPiA+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAyNCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9tdGstanBlZy9tdGtfanBlZ19jb3JlLmMNCj4gPiBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vbXRrLWpwZWcvbXRrX2pwZWdfY29yZS5jDQo+ID4gaW5kZXggZjgyYTgxYS4u
MjFmYmE2ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1qcGVn
L210a19qcGVnX2NvcmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLWpw
ZWcvbXRrX2pwZWdfY29yZS5jDQo+ID4gQEAgLTIxLDcgKzIxLDYgQEANCj4gPiDCoCNpbmNsdWRl
IDxtZWRpYS92NGwyLWlvY3RsLmg+DQo+ID4gwqAjaW5jbHVkZSA8bWVkaWEvdmlkZW9idWYyLWNv
cmUuaD4NCj4gPiDCoCNpbmNsdWRlIDxtZWRpYS92aWRlb2J1ZjItZG1hLWNvbnRpZy5oPg0KPiA+
IC0jaW5jbHVkZSA8c29jL21lZGlhdGVrL3NtaS5oPg0KPiA+IMKgDQo+ID4gwqAjaW5jbHVkZSAi
bXRrX2pwZWdfaHcuaCINCj4gPiDCoCNpbmNsdWRlICJtdGtfanBlZ19jb3JlLmgiDQo+ID4gQEAg
LTg5MywxMSArODkyLDYgQEAgc3RhdGljIGludCBtdGtfanBlZ19xdWV1ZV9pbml0KHZvaWQgKnBy
aXYsDQo+ID4gc3RydWN0IHZiMl9xdWV1ZSAqc3JjX3ZxLA0KPiA+IMKgDQo+ID4gwqBzdGF0aWMg
dm9pZCBtdGtfanBlZ19jbGtfb24oc3RydWN0IG10a19qcGVnX2RldiAqanBlZykNCj4gPiDCoHsN
Cj4gPiAtCWludCByZXQ7DQo+ID4gLQ0KPiA+IC0JcmV0ID0gbXRrX3NtaV9sYXJiX2dldChqcGVn
LT5sYXJiKTsNCj4gPiAtCWlmIChyZXQpDQo+ID4gLQkJZGV2X2VycihqcGVnLT5kZXYsICJtdGtf
c21pX2xhcmJfZ2V0IGxhcmJ2ZGVjIGZhaWwNCj4gPiAlZFxuIiwgcmV0KTsNCj4gPiDCoAljbGtf
cHJlcGFyZV9lbmFibGUoanBlZy0+Y2xrX2pkZWNfc21pKTsNCj4gPiDCoAljbGtfcHJlcGFyZV9l
bmFibGUoanBlZy0+Y2xrX2pkZWMpOw0KPiA+IMKgfQ0KPiA+IEBAIC05MDYsNyArOTAwLDYgQEAg
c3RhdGljIHZvaWQgbXRrX2pwZWdfY2xrX29mZihzdHJ1Y3QNCj4gPiBtdGtfanBlZ19kZXYgKmpw
ZWcpDQo+ID4gwqB7DQo+ID4gwqAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGpwZWctPmNsa19qZGVj
KTsNCj4gPiDCoAljbGtfZGlzYWJsZV91bnByZXBhcmUoanBlZy0+Y2xrX2pkZWNfc21pKTsNCj4g
PiAtCW10a19zbWlfbGFyYl9wdXQoanBlZy0+bGFyYik7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDC
oHN0YXRpYyBpcnFyZXR1cm5fdCBtdGtfanBlZ19kZWNfaXJxKGludCBpcnEsIHZvaWQgKnByaXYp
DQo+ID4gQEAgLTEwNTEsMjEgKzEwNDQsNiBAQCBzdGF0aWMgaW50IG10a19qcGVnX3JlbGVhc2Uo
c3RydWN0IGZpbGUNCj4gPiAqZmlsZSkNCj4gPiDCoA0KPiA+IMKgc3RhdGljIGludCBtdGtfanBl
Z19jbGtfaW5pdChzdHJ1Y3QgbXRrX2pwZWdfZGV2ICpqcGVnKQ0KPiA+IMKgew0KPiA+IC0Jc3Ry
dWN0IGRldmljZV9ub2RlICpub2RlOw0KPiA+IC0Jc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
djsNCj4gPiAtDQo+ID4gLQlub2RlID0gb2ZfcGFyc2VfcGhhbmRsZShqcGVnLT5kZXYtPm9mX25v
ZGUsDQo+ID4gIm1lZGlhdGVrLGxhcmIiLCAwKTsNCj4gPiAtCWlmICghbm9kZSkNCj4gPiAtCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPiAtCXBkZXYgPSBvZl9maW5kX2RldmljZV9ieV9ub2RlKG5vZGUp
Ow0KPiA+IC0JaWYgKFdBUk5fT04oIXBkZXYpKSB7DQo+ID4gLQkJb2Zfbm9kZV9wdXQobm9kZSk7
DQo+ID4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gLQl9DQo+ID4gLQlvZl9ub2RlX3B1dChub2Rl
KTsNCj4gPiAtDQo+ID4gLQlqcGVnLT5sYXJiID0gJnBkZXYtPmRldjsNCj4gPiAtDQo+ID4gwqAJ
anBlZy0+Y2xrX2pkZWMgPSBkZXZtX2Nsa19nZXQoanBlZy0+ZGV2LCAianBnZGVjIik7DQo+ID4g
wqAJaWYgKElTX0VSUihqcGVnLT5jbGtfamRlYykpDQo+ID4gwqAJCXJldHVybiBQVFJfRVJSKGpw
ZWctPmNsa19qZGVjKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9t
dGstanBlZy9tdGtfanBlZ19jb3JlLmgNCj4gPiBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRr
LWpwZWcvbXRrX2pwZWdfY29yZS5oDQo+ID4gaW5kZXggOTk5YmQxNC4uODU3OTQ5NCAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL210ay1qcGVnL210a19qcGVnX2NvcmUu
aA0KPiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbXRrLWpwZWcvbXRrX2pwZWdfY29y
ZS5oDQo+ID4gQEAgLTQ3LDcgKzQ3LDYgQEAgZW51bSBtdGtfanBlZ19jdHhfc3RhdGUgew0KPiA+
IMKgICogQGRlY19yZWdfYmFzZToJSlBFRyByZWdpc3RlcnMgbWFwcGluZw0KPiA+IMKgICogQGNs
a19qZGVjOgkJSlBFRyBodyB3b3JraW5nIGNsb2NrDQo+ID4gwqAgKiBAY2xrX2pkZWNfc21pOglK
UEVHIFNNSSBidXMgY2xvY2sNCj4gPiAtICogQGxhcmI6CQlTTUkgZGV2aWNlDQo+ID4gwqAgKi8N
Cj4gPiDCoHN0cnVjdCBtdGtfanBlZ19kZXYgew0KPiA+IMKgCXN0cnVjdCBtdXRleAkJbG9jazsN
Cj4gPiBAQCAtNjEsNyArNjAsNiBAQCBzdHJ1Y3QgbXRrX2pwZWdfZGV2IHsNCj4gPiDCoAl2b2lk
IF9faW9tZW0JCSpkZWNfcmVnX2Jhc2U7DQo+ID4gwqAJc3RydWN0IGNsawkJKmNsa19qZGVjOw0K
PiA+IMKgCXN0cnVjdCBjbGsJCSpjbGtfamRlY19zbWk7DQo+ID4gLQlzdHJ1Y3QgZGV2aWNlCQkq
bGFyYjsNCj4gPiDCoH07DQo+ID4gwqANCj4gPiDCoC8qKg0KPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
