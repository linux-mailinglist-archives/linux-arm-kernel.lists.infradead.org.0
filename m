Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC0E2B5CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzsimGBWupItzw1SH/l+yE4zi5Z1nzJOnL7gS+E8G5Y=; b=iZ/uGzw5ANa0gE
	TQ3wUg1YcZKVDz/1Y/+oa7DmR/B5LoLrAQEUZiUxYUisMi5I/2L6FoCKz0jatnKwMf1/t2/pdJBGy
	k1OUn4OWwS9IUuB6mp2CuQnNsAfop3OT9OpZ4Hzm3XngNXfG4iOjZpVcl2Vn2AklzHXqBD+JCqxFt
	hj70cTi1jaY2UPT1A/O7H97vPEdXmRYBA6WXWMeQ7uE5Kqyj/JKHDIQT2RAU/5aw0yjphfj/9+wa2
	hNq5capAbFHFWSiBhWyi2ol2ebgxz+MyeODpM/k/y+trw4FeYbABkwx4YNgror1NteKvMY3LhFEgg
	GIo1WvUdGoYYuBjoQf1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF9W-00075i-Ev; Mon, 27 May 2019 12:54:58 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF9O-00073m-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:54:52 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RCkREG004574; Mon, 27 May 2019 14:54:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=sKrW0CioPqMIKO8cNXujdrTmMUPJlLJ5MTbTFhfNccQ=;
 b=nHYSdG55hwRAIl0JS0bL8PAPbQlQThN0XOM5pQzfYk61TA8xNH/voyoRIvkd9xhtwD/v
 /S1fAn93tpkCliT9se5ZYdLZafa9ckLQVpPIHaV02W5odIx8CY0CBCLe4tedvZzVFlwu
 lD64NAU0spMB4lwQaJilTyZ8hBlHAjxlcw+qAqZZJrTG1jJcViEQM6zeTwji7gQ3yikZ
 yqB8+Ab2UMWzBKPokDCOG+C8Pb69+iE8pp8vobsnR1lTqYZmUQO+JKBQH5uQQhzGAJFM
 9/tgJBnBYd7R+LMsRwiq3qpZUciYdbstWWkzs5UbFdKFiUnxBnbHau7VBp4qRtt5VdhV dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2spvkgtv5m-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 14:54:40 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 88A6238;
 Mon, 27 May 2019 12:54:37 +0000 (GMT)
Received: from Webmail-eu.st.com (gpxdag6node4.st.com [10.75.127.80])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 65A092ADC;
 Mon, 27 May 2019 12:54:37 +0000 (GMT)
Received: from GPXDAG6NODE6.st.com (10.75.127.82) by GPXDAG6NODE4.st.com
 (10.75.127.80) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 May
 2019 14:54:37 +0200
Received: from GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11]) by
 GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11%19]) with mapi id
 15.00.1473.003; Mon, 27 May 2019 14:54:37 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda
 <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, "Heiko
 Stuebner" <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>, Nickey Yang
 <nickey.yang@rock-chips.com>, Benjamin Gaignard
 <benjamin.gaignard@linaro.org>, Vincent ABRIOU <vincent.abriou@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 2/2] drm/stm: dsi: add power on/off phy ops
Thread-Topic: [PATCH v1 2/2] drm/stm: dsi: add power on/off phy ops
Thread-Index: AQHVFHX+VSs7HxnBmUmbgwP5oNYjkKZ+zDkA
Date: Mon, 27 May 2019 12:54:37 +0000
Message-ID: <24c1ee24-af80-8605-d042-76a43c985068@st.com>
References: <1558952499-15418-1-git-send-email-yannick.fertre@st.com>
 <1558952499-15418-3-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1558952499-15418-3-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <738E4C142AF00C40B55910A8F5EDC6C4@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_055450_825336_CDD246CF 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGkgWWFubmljaywNCmFuZCB0aGFuayB5b3UgZm9yIHlvdXIgcGF0Y2guDQoNClRlc3RlZCBzdWNj
ZXNzZnVsbHkgb24gc3RtMzJmIHRvby4NCg0KQWNrZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGls
aXBwZS5jb3JudUBzdC5jb20+DQpUZXN0ZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBwZS5j
b3JudUBzdC5jb20+DQoNClBoaWxpcHBlIDotKQ0KDQpPbiA1LzI3LzE5IDEyOjIxIFBNLCBZYW5u
aWNrIEZlcnRyw6kgd3JvdGU6DQo+IFRoZXNlIG5ldyBwaHlzaWNhbCBvcGVyYXRpb25zIGFyZSBo
ZWxwZnVsIHRvIHBvd2VyX29uL29mZiB0aGUgZHNpDQo+IHdyYXBwZXIuIElmIHRoZSBkc2kgd3Jh
cHBlciBpcyBwb3dlcmVkIGluIHZpZGVvIG1vZGUsIHRoZSBkaXNwbGF5DQo+IGNvbnRyb2xsZXIg
KGx0ZGMpIHJlZ2lzdGVyIGFjY2VzcyB3aWxsIGhhbmcgd2hlbiBEU0kgZmlmb3MgYXJlIGZ1bGwu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0
LmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYyB8
IDIxICsrKysrKysrKysrKysrKysrKysrLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3N0bS9kd19taXBpX2RzaS1zdG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vZHdfbWlwaV9kc2kt
c3RtLmMNCj4gaW5kZXggMDFkYjAyMC4uMGFiMzJmZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3Rt
L2R3X21pcGlfZHNpLXN0bS5jDQo+IEBAIC0yMTAsMTAgKzIxMCwyNyBAQCBzdGF0aWMgaW50IGR3
X21pcGlfZHNpX3BoeV9pbml0KHZvaWQgKnByaXZfZGF0YSkNCj4gICAJaWYgKHJldCkNCj4gICAJ
CURSTV9ERUJVR19EUklWRVIoIiFUSU1FT1VUISB3YWl0aW5nIFBMTCwgbGV0J3MgY29udGludWVc
biIpOw0KPiAgIA0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBkd19t
aXBpX2RzaV9waHlfcG93ZXJfb24odm9pZCAqcHJpdl9kYXRhKQ0KPiArew0KPiArCXN0cnVjdCBk
d19taXBpX2RzaV9zdG0gKmRzaSA9IHByaXZfZGF0YTsNCj4gKw0KPiArCURSTV9ERUJVR19EUklW
RVIoIlxuIik7DQo+ICsNCj4gICAJLyogRW5hYmxlIHRoZSBEU0kgd3JhcHBlciAqLw0KPiAgIAlk
c2lfc2V0KGRzaSwgRFNJX1dDUiwgV0NSX0RTSUVOKTsNCj4gK30NCj4gICANCj4gLQlyZXR1cm4g
MDsNCj4gK3N0YXRpYyB2b2lkIGR3X21pcGlfZHNpX3BoeV9wb3dlcl9vZmYodm9pZCAqcHJpdl9k
YXRhKQ0KPiArew0KPiArCXN0cnVjdCBkd19taXBpX2RzaV9zdG0gKmRzaSA9IHByaXZfZGF0YTsN
Cj4gKw0KPiArCURSTV9ERUJVR19EUklWRVIoIlxuIik7DQo+ICsNCj4gKwkvKiBEaXNhYmxlIHRo
ZSBEU0kgd3JhcHBlciAqLw0KPiArCWRzaV9jbGVhcihkc2ksIERTSV9XQ1IsIFdDUl9EU0lFTik7
DQo+ICAgfQ0KPiAgIA0KPiAgIHN0YXRpYyBpbnQNCj4gQEAgLTI4Nyw2ICszMDQsOCBAQCBkd19t
aXBpX2RzaV9nZXRfbGFuZV9tYnBzKHZvaWQgKnByaXZfZGF0YSwgY29uc3Qgc3RydWN0IGRybV9k
aXNwbGF5X21vZGUgKm1vZGUsDQo+ICAgDQo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkd19taXBp
X2RzaV9waHlfb3BzIGR3X21pcGlfZHNpX3N0bV9waHlfb3BzID0gew0KPiAgIAkuaW5pdCA9IGR3
X21pcGlfZHNpX3BoeV9pbml0LA0KPiArCS5wb3dlcl9vbiA9IGR3X21pcGlfZHNpX3BoeV9wb3dl
cl9vbiwNCj4gKwkucG93ZXJfb2ZmID0gZHdfbWlwaV9kc2lfcGh5X3Bvd2VyX29mZiwNCj4gICAJ
LmdldF9sYW5lX21icHMgPSBkd19taXBpX2RzaV9nZXRfbGFuZV9tYnBzLA0KPiAgIH07DQo+ICAg
DQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
