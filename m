Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36F19EB97
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 15:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94dbs6/Al+BAeb1lqSnlqyoGDwRtVU6hKTDRnX8ovnk=; b=p/7VLYq1WLRcQl
	gp/4CurFmUzgiIog91AcoGzWJyMFmu4P/tdD5dz7sQDAchcaCtoTHEU6uUCwold6Gd6vIo2w91ua2
	67SbNOgycFVF0YVA+sSB8x39pM0oVOc0IBWL8dZlNBU9ODVrqwxVdkS+G52RwDEo+iM5+okiSS8Pc
	wBKFAq5RWEp99ZMnaH0Q+ABkN7T1ERVhLuJELj+r1nGNjc3Tuw4d8h0vd8C+/weUykPBVOb1OzqOm
	y9KF0qUDYs8v4gf7NdTZjYl/DXs5mLegIZ5IPR/fP7czzj8+qzFfrslj8/mWEAHfEXvzV+LtITnF+
	bz18a32ThlWCubmgxkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL5ea-0008Sx-76; Sun, 05 Apr 2020 13:49:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL5eT-0008S2-Dl; Sun, 05 Apr 2020 13:49:31 +0000
X-UUID: 54950bae89a040ee9687fa25e2762151-20200405
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=UbTwFkXlKvsh7AL8yRvXou4qBQc6I/nzGcy+Hyh3Skw=; 
 b=jYry63KbM4o57brsLB2iD5/qb64G1u2dfWaTRrlKXNMVJ7o7RlURl9jJ/22FGh/6+TTcIygejwUZUvNQNl5+GPhIJrm9BGjt7h2HjdPIPywiHNTsRcBYaAn4VOedUDum1QTDEIsgj8z1IdHt5/Fl1J48ylwYsetpqE1nCQEjgBM=;
X-UUID: 54950bae89a040ee9687fa25e2762151-20200405
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 289421431; Sun, 05 Apr 2020 05:49:16 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 5 Apr 2020 06:39:16 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sun, 5 Apr 2020 21:39:12 +0800
Received: from [10.16.6.141] (10.16.6.141) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sun, 5 Apr 2020 21:39:11 +0800
Message-ID: <1586093949.10544.4.camel@mszsdaap41>
Subject: Re: [PATCH v4 4/4] drm/mediatek: config mipitx impedance with
 calibration data
From: Jitao Shi <jitao.shi@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 5 Apr 2020 21:39:09 +0800
In-Reply-To: <CAAOTY_8vpzfKeyxVxXOVC7mDpw+QGGOX+8fJaQg5WduvndEmoA@mail.gmail.com>
References: <20200331082725.81048-1-jitao.shi@mediatek.com>
 <20200331082725.81048-5-jitao.shi@mediatek.com>
 <CAAOTY_8vpzfKeyxVxXOVC7mDpw+QGGOX+8fJaQg5WduvndEmoA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3590BF9D5BA1AE18EC2E1E20178B6904B8159592795221EED6053E89AE35411F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_064929_477179_E1CB6D44 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiBTYXQsIDIwMjAtMDQtMDQgYXQgMjI6MjYgKzA4MDAsIENodW4tS3VhbmcgSHUgd3JvdGU6
DQo+IEhpLCBKaXRhbzoNCj4gDQo+IEppdGFvIFNoaSA8aml0YW8uc2hpQG1lZGlhdGVrLmNvbT4g
5pa8IDIwMjDlubQz5pyIMzHml6Ug6YCx5LqMIOS4i+WNiDQ6Mjjlr6vpgZPvvJoNCj4gPg0KPiA+
IFJlYWQgY2FsaWJyYXRpb24gZGF0YSBmcm9tIG52bWVtLCBhbmQgY29uZmlnIG1pcGl0eCBpbXBl
ZGFuY2Ugd2l0aA0KPiA+IGNhbGlicmF0aW9uIGRhdGEgdG8gbWFrZSBzdXJlIHRoZWlyIGltcGVk
YW5jZSBhcmUgMTAwb2htLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogSml0YW8gU2hpIDxqaXRh
by5zaGlAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX210ODE4M19taXBpX3R4LmMgfCA1NyArKysrKysrKysrKysrKysrKysrDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jDQo+ID4gaW5kZXggZTRjYzk2Nzc1MGNi
Li4wZjg3Y2QzZDFkN2QgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19tdDgxODNfbWlwaV90eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19tdDgxODNfbWlwaV90eC5jDQo+ID4gQEAgLTUsNiArNSw4IEBADQo+ID4gICAqLw0KPiA+
DQo+ID4gICNpbmNsdWRlICJtdGtfbWlwaV90eC5oIg0KPiA+ICsjaW5jbHVkZSA8bGludXgvbnZt
ZW0tY29uc3VtZXIuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPg0KPiA+ICAj
ZGVmaW5lIE1JUElUWF9MQU5FX0NPTiAgICAgICAgICAgICAgICAweDAwMGMNCj4gPiAgI2RlZmlu
ZSBSR19EU0lfQ1BIWV9UMURSVl9FTiAgICAgICAgICAgQklUKDApDQo+ID4gQEAgLTI4LDYgKzMw
LDcgQEANCj4gPiAgI2RlZmluZSBNSVBJVFhfUExMX0NPTjQgICAgICAgICAgICAgICAgMHgwMDNj
DQo+ID4gICNkZWZpbmUgUkdfRFNJX1BMTF9JQklBUyAgICAgICAgICAgICAgICgzIDw8IDEwKQ0K
PiA+DQo+ID4gKyNkZWZpbmUgTUlQSVRYX0QyUF9SVENPREUgICAgICAweDAxMDANCj4gPiAgI2Rl
ZmluZSBNSVBJVFhfRDJfU1dfQ1RMX0VOICAgIDB4MDE0NA0KPiA+ICAjZGVmaW5lIE1JUElUWF9E
MF9TV19DVExfRU4gICAgMHgwMjQ0DQo+ID4gICNkZWZpbmUgTUlQSVRYX0NLX0NLTU9ERV9FTiAg
ICAweDAzMjgNCj4gPiBAQCAtMTA4LDYgKzExMSw1OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNs
a19vcHMgbXRrX21pcGlfdHhfcGxsX29wcyA9IHsNCj4gPiAgICAgICAgIC5yZWNhbGNfcmF0ZSA9
IG10a19taXBpX3R4X3BsbF9yZWNhbGNfcmF0ZSwNCj4gPiAgfTsNCj4gPg0KPiA+ICtzdGF0aWMg
dm9pZCBtdGtfbWlwaV90eF9jb25maWdfY2FsaWJyYXRpb25fZGF0YShzdHJ1Y3QgbXRrX21pcGlf
dHggKm1pcGlfdHgpDQo+ID4gK3sNCj4gPiArICAgICAgIHUzMiAqYnVmOw0KPiA+ICsgICAgICAg
dTMyIHJ0X2NvZGVbNV07DQo+ID4gKyAgICAgICBpbnQgaSwgajsNCj4gPiArICAgICAgIHN0cnVj
dCBudm1lbV9jZWxsICpjZWxsOw0KPiA+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gbWlw
aV90eC0+ZGV2Ow0KPiA+ICsgICAgICAgc2l6ZV90IGxlbjsNCj4gPiArDQo+ID4gKyAgICAgICBj
ZWxsID0gbnZtZW1fY2VsbF9nZXQoZGV2LCAiY2FsaWJyYXRpb24tZGF0YSIpOw0KPiA+ICsgICAg
ICAgaWYgKElTX0VSUihjZWxsKSkgew0KPiA+ICsgICAgICAgICAgICAgICBkZXZfaW5mbyhkZXYs
ICJudm1lbV9jZWxsX2dldCBmYWlsXG4iKTsNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuOw0K
PiA+ICsgICAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAgIGJ1ZiA9ICh1MzIgKiludm1lbV9jZWxs
X3JlYWQoY2VsbCwgJmxlbik7DQo+ID4gKw0KPiA+ICsgICAgICAgbnZtZW1fY2VsbF9wdXQoY2Vs
bCk7DQo+ID4gKw0KPiA+ICsgICAgICAgaWYgKElTX0VSUihidWYpKSB7DQo+ID4gKyAgICAgICAg
ICAgICAgIGRldl9pbmZvKGRldiwgImNhbid0IGdldCBkYXRhXG4iKTsNCj4gPiArICAgICAgICAg
ICAgICAgcmV0dXJuOw0KPiA+ICsgICAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAgIGlmIChsZW4g
PCAzICogc2l6ZW9mKHUzMikpIHsNCj4gPiArICAgICAgICAgICAgICAgZGV2X2luZm8oZGV2LCAi
aW52YWxpZCBjYWxpYnJhdGlvbiBkYXRhXG4iKTsNCj4gPiArICAgICAgICAgICAgICAga2ZyZWUo
YnVmKTsNCj4gPiArICAgICAgICAgICAgICAgcmV0dXJuOw0KPiA+ICsgICAgICAgfQ0KPiA+ICsN
Cj4gPiArICAgICAgIHJ0X2NvZGVbMF0gPSAoKGJ1ZlswXSA+PiA2ICYgMHgxZikgPDwgNSkgfCAo
YnVmWzBdID4+IDExICYgMHgxZik7DQo+ID4gKyAgICAgICBydF9jb2RlWzFdID0gKChidWZbMV0g
Pj4gMjcgJiAweDFmKSA8PCA1KSB8IChidWZbMF0gPj4gMSAmIDB4MWYpOw0KPiA+ICsgICAgICAg
cnRfY29kZVsyXSA9ICgoYnVmWzFdID4+IDE3ICYgMHgxZikgPDwgNSkgfCAoYnVmWzFdID4+IDIy
ICYgMHgxZik7DQo+ID4gKyAgICAgICBydF9jb2RlWzNdID0gKChidWZbMV0gPj4gNyAmIDB4MWYp
IDw8IDUpIHwgKGJ1ZlsxXSA+PiAxMiAmIDB4MWYpOw0KPiA+ICsgICAgICAgcnRfY29kZVs0XSA9
ICgoYnVmWzJdID4+IDI3ICYgMHgxZikgPDwgNSkgfCAoYnVmWzFdID4+IDIgJiAweDFmKTsNCj4g
DQo+IFdoeSBub3QganVzdCBzYXZlIHJ0X2NvZGUgaW4gbnZtZW0gYW5kIHlvdSBkb24ndCBuZWVk
IHRvIHRyYW5zbGF0ZSBoZXJlPw0KPiBJZiB5b3UgbmVlZCB0byBkbyBzbywgcGxlYXNlIGFkZCBk
ZXNjcmlwdGlvbiBmb3IgdGhpcy4NCj4gDQo+IFJlZ2FyZHMsDQo+IENodW4tS3VhbmcuDQo+IA0K
DQpIaSBDaHVuLUt1YW5nLA0KDQpUaGUgY2FsaWJyYXRpb24gZGF0YSBpcyBmbGFzaGVkIGluIHJv
bSB3aGVuIHRoZSBJQyBGVCB0ZXN0DQpBbmQgdGhlIGRhdGEgc3RydWN0IGNhbid0IGJlIHN0b3Jl
ZCBhZ2Fpbg0KDQpCZXN0IFJlZ2FyZHMNCkpJdGFvDQo+IA0KPiA+ICsNCj4gPiArICAgICAgIGZv
ciAoaSA9IDA7IGkgPCA1OyBpKyspIHsNCj4gPiArICAgICAgICAgICAgICAgaWYgKChydF9jb2Rl
W2ldICYgMHgxZikgPT0gMCkNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBydF9jb2RlW2ld
IHw9IDB4MTA7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICBpZiAoKHJ0X2NvZGVbaV0gPj4g
NSAmIDB4MWYpID09IDApDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcnRfY29kZVtpXSB8
PSAweDEwIDw8IDU7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICBmb3IgKGogPSAwOyBqIDwg
MTA7IGorKykNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICBtdGtfbWlwaV90eF91cGRhdGVf
Yml0cyhtaXBpX3R4LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUlQSVRY
X0QyUF9SVENPREUgKiAoaSArIDEpICsgaiAqIDQsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAxLCBydF9jb2RlW2ldID4+IGogJiAxKTsNCj4gPiArICAgICAgIH0NCj4gPiAr
DQo+ID4gKyAgICAgICBrZnJlZShidWYpOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgdm9p
ZCBtdGtfbWlwaV90eF9wb3dlcl9vbl9zaWduYWwoc3RydWN0IHBoeSAqcGh5KQ0KPiA+ICB7DQo+
ID4gICAgICAgICBzdHJ1Y3QgbXRrX21pcGlfdHggKm1pcGlfdHggPSBwaHlfZ2V0X2RydmRhdGEo
cGh5KTsNCj4gPiBAQCAtMTMwLDYgKzE4NSw4IEBAIHN0YXRpYyB2b2lkIG10a19taXBpX3R4X3Bv
d2VyX29uX3NpZ25hbChzdHJ1Y3QgcGh5ICpwaHkpDQo+ID4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBSR19EU0lfSFNUWF9MRE9fUkVGX1NFTCwNCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIChtaXBpX3R4LT5taXBpdHhfZHJpdmUgLSAzMDAwKSAvIDIwMCA8PCA2
KTsNCj4gPg0KPiA+ICsgICAgICAgbXRrX21pcGlfdHhfY29uZmlnX2NhbGlicmF0aW9uX2RhdGEo
bWlwaV90eCk7DQo+ID4gKw0KPiA+ICAgICAgICAgbXRrX21pcGlfdHhfc2V0X2JpdHMobWlwaV90
eCwgTUlQSVRYX0NLX0NLTU9ERV9FTiwgRFNJX0NLX0NLTU9ERV9FTik7DQo+ID4gIH0NCj4gPg0K
PiA+IC0tDQo+ID4gMi4yMS4wDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0DQo+ID4gZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
