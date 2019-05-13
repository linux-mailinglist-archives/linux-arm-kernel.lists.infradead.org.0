Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298A1B6D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 15:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyS6kBaLBMGs1jZ0fGsCpXo1IFltLjogQuRWiLnox8g=; b=ZR1fc9tZfp7lM6
	TUMIctrw9iHYqJf1f/+a8N4zdCJfhCJ+m8LjZZUtxWVvCeg2iISCNnO6Y+jWF2CWGwv2sMJjDU5RI
	zrc1yiAb/H7bUQhXJ7pRS5I3WC8IsUQ07hrY3KBllOfTPyTLpRVKOsUTnKQM4K0bORs8rVJdcspJJ
	f9+KKtufqC6xGn+jOc66ewVeAE4r2fHJU7u9tQAAa5rmoqs6ZTO9Z2QFiTK84/b4w2A2EVWJ9ZGYe
	w+zLntTX2b3EahGjvGo8GVxKK8GK224vlihXb7FEEd0NiXKRzsSN5vXFCogxL1uRB/LN1/gNKhOaP
	4z1Oy5evL96yd8v+HjGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQAlU-0005Jn-1H; Mon, 13 May 2019 13:13:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQAlN-0005JP-3Z
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 13:13:06 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DD7LSn015912; Mon, 13 May 2019 15:12:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=BVlpseAlnra93hK/F7xLbOTR3/j0/3f0pvw+YcKDzFQ=;
 b=bQ0ZgTSkLLpntTOhaKCIU336iPwLQQu5wTloSPjCuNt0J/KNjQDEs6sX5ZWVXx92HZ9Q
 gTQP3plLq6+ndleABUoI7tURni8lNLKBjdWa4LHFBGxI4jQnz4dbCCFTfTJ3ArTkHkIn
 CjFMkorBfzBqn9G1RbRCwxXA5RNq7DI8BWESCd8jfvxzg2kyo/eYWA7KmUpYyMlVugZq
 mmY6deavB0WUXYlG3T6PhOZwZaQzeq4rNfG0fi7i8uwWiI+yrGtJVf3cbbf0iLJxIqGJ
 N5znExn+gv5AfNodaua4YZrjZSCTjrEF5OfeYKIT7v0y1qe00OkdacuHZiOdPvPiJ16R uA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sdn9fk47v-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 15:12:57 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E66E131;
 Mon, 13 May 2019 13:12:56 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BC91C2724;
 Mon, 13 May 2019 13:12:56 +0000 (GMT)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 13 May
 2019 15:12:56 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1347.000; Mon, 13 May 2019 15:12:56 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Philippe CORNU <philippe.cornu@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/stm: ltdc: remove clk_round_rate comment
Thread-Topic: [PATCH] drm/stm: ltdc: remove clk_round_rate comment
Thread-Index: AQHVB0GDxA/7lA0P2UW6qyl6IvCmt6ZkbgCAgAR9HYA=
Date: Mon, 13 May 2019 13:12:56 +0000
Message-ID: <65e9219b-3f64-01bb-645c-d3746e2363e7@st.com>
References: <1557500600-19771-1-git-send-email-yannick.fertre@st.com>
 <c84e4be5-ec3d-aa6a-9571-4c6d2877fa5f@st.com>
In-Reply-To: <c84e4be5-ec3d-aa6a-9571-4c6d2877fa5f@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
Content-ID: <1B473D66FAD5024C838090D56C937A63@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_061305_607709_4479DF07 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBQaGlsaXBwZSwNCg0KeW91J3JlIHJpZ2h0LCBjbGtfZGlzYWJsZSgpICYgY2xrX2VuYWJs
ZSgpIGFyZSBuZWNlc3Nhcnkgd2l0aCBTVE0zMkY0IA0KU09DIChub3QgZm9yIFNUTTMyTVAxKS4N
Cg0KSSdsbCByZXZlcnQgdGhpcyBwYXJ0IG9mIHRoZSBwYXRjaC4NCg0KTWFueSB0aGFua3MNCg0K
DQotLSANCllhbm5pY2sgRmVydHLDqSB8IFRJTkE6IDE2NiA3MTUyIHwgVGVsOiArMzMgMjQ0MDI3
MTUyIHwgTW9iaWxlOiArMzMgNjIwNjAwMjcwDQpNaWNyb2NvbnRyb2xsZXJzIGFuZCBEaWdpdGFs
IElDcyBHcm91cCB8IE1pY3JvY29udHJvbGxldXJzIERpdmlzaW9uDQoNCk9uIDUvMTAvMTkgNjo0
MCBQTSwgUGhpbGlwcGUgQ09STlUgd3JvdGU6DQo+IERlYXIgWWFubmljaywNCj4gVGhhbmsgeW91
IGZvciB5b3VyIHBhdGNoLA0KPg0KPiBJbiB5b3VyIHBhdGNoLCB5b3UgaGF2ZSByZW1vdmVkIGNs
a19kaXNhYmxlKCkgJiBjbGtfZW5hYmxlKCkuDQo+IENvdWxkIHlvdSBwbGVhc2UgZG91YmxlIGNv
bmZpcm0gPw0KPg0KPiB0aGFua3MNCj4gUGhpbGlwcGUgOi0pDQo+DQo+DQo+IE9uIDUvMTAvMTkg
NTowMyBQTSwgWWFubmljayBGZXJ0csOpIHdyb3RlOg0KPj4gQ2xrX3JvdW5kX3JhdGUgcmV0dXJu
cyByb3VuZGVkIGNsb2NrIHdpdGhvdXQgY2hhbmdpbmcNCj4+IHRoZSBoYXJkd2FyZSBpbiBhbnkg
d2F5Lg0KPj4gVGhpcyBmdW5jdGlvbiBjb3VsZG4ndCByZXBsYWNlIHNldF9yYXRlL2dldF9yYXRl
IGNhbGxzLg0KPj4gVG9kbyBjb21tZW50IGhhcyBiZWVuIHJlbW92ZWQgJiBhIG5ldyBsb2cgaW5z
ZXJ0ZWQuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZl
cnRyZUBzdC5jb20+DQo+PiAtLS0NCj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jIHwg
MTAgKysrLS0tLS0tLQ0KPj4gICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0KPj4gaW5kZXggOTc5MTJlMi4uMmY4YWEy
ZSAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0KPj4gQEAgLTUwNywyMCArNTA3LDE2IEBAIHN0YXRp
YyBib29sIGx0ZGNfY3J0Y19tb2RlX2ZpeHVwKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywNCj4+ICAg
IAlzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBjcnRjX3RvX2x0ZGMoY3J0Yyk7DQo+PiAgICAJ
aW50IHJhdGUgPSBtb2RlLT5jbG9jayAqIDEwMDA7DQo+PiAgICANCj4+IC0JLyoNCj4+IC0JICog
VE9ETyBjbGtfcm91bmRfcmF0ZSgpIGRvZXMgbm90IHdvcmsgeWV0LiBXaGVuIHJlYWR5LCBpdCBj
YW4NCj4+IC0JICogYmUgdXNlZCBpbnN0ZWFkIG9mIGNsa19zZXRfcmF0ZSgpIHRoZW4gY2xrX2dl
dF9yYXRlKCkuDQo+PiAtCSAqLw0KPj4gLQ0KPj4gLQljbGtfZGlzYWJsZShsZGV2LT5waXhlbF9j
bGspOw0KPj4gICAgCWlmIChjbGtfc2V0X3JhdGUobGRldi0+cGl4ZWxfY2xrLCByYXRlKSA8IDAp
IHsNCj4+ICAgIAkJRFJNX0VSUk9SKCJDYW5ub3Qgc2V0IHJhdGUgKCVkSHopIGZvciBwaXhlbCBj
bGtcbiIsIHJhdGUpOw0KPj4gICAgCQlyZXR1cm4gZmFsc2U7DQo+PiAgICAJfQ0KPj4gLQljbGtf
ZW5hYmxlKGxkZXYtPnBpeGVsX2Nsayk7DQo+PiAgICANCj4+ICAgIAlhZGp1c3RlZF9tb2RlLT5j
bG9jayA9IGNsa19nZXRfcmF0ZShsZGV2LT5waXhlbF9jbGspIC8gMTAwMDsNCj4+ICAgIA0KPj4g
KwlEUk1fREVCVUdfRFJJVkVSKCJyZXF1ZXN0ZWQgY2xvY2sgJWRrSHosIGFkanVzdGVkIGNsb2Nr
ICVka0h6XG4iLA0KPj4gKwkJCSBtb2RlLT5jbG9jaywgYWRqdXN0ZWRfbW9kZS0+Y2xvY2spOw0K
Pj4gKw0KPj4gICAgCXJldHVybiB0cnVlOw0KPj4gICAgfQ0KPj4gICAgDQotLSANCllhbm5pY2sg
RmVydHLDqSB8IFRJTkE6IDE2NiA3MTUyIHwgVGVsOiArMzMgMjQ0MDI3MTUyIHwgTW9iaWxlOiAr
MzMgNjIwNjAwMjcwDQpNaWNyb2NvbnRyb2xsZXJzIGFuZCBEaWdpdGFsIElDcyBHcm91cCB8IE1p
Y3JvY29udHJvbGxldXJzIERpdmlzaW9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
