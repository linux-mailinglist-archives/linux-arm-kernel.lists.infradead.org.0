Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6A1322CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBypGZPUs8UMHOrMCLBcPJY4TEpGCTi0jr9CeUZP1fo=; b=M1b0oxiHvp76ZQ
	WEuAw6NR8yF680qDr5VucZ+7J52jYSiQn7KZ4YYGj7Ej7lUAsAjtIY+rgTeY0DgfSnhyR9Bk1kPOK
	A6XKjsdyHwCWsRKh4Aniz/MpGf3nINTgd6yQ+w19TTkWHyu0GwFRhZ0JuYvPWNXLg1u5/MOWTvvvO
	QB8ficzsRVZXxvd3lkfvB4JTwmPkocnwGr89flIiOktCX1nQkm+0ZwW02E8vyors5xRMqYAYmuGjO
	O5QA0pRAkvJUaK74Wsd/PnMbvGVfav5VJ2ULd4wupMexByXiiARAkOT5n4D26bm6d8Umw4cUO5Ulp
	MZPdDiU+zw8CDiy8AEUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolRv-0000WQ-9I; Tue, 07 Jan 2020 09:46:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolRo-0000VY-GE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:46:50 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0079hXZE002027; Tue, 7 Jan 2020 10:46:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=PbJCZFncQBZH/BlAK8ELONqW5LqwKaEvIZc7w5b0OYI=;
 b=RCbEkKpltn980AU8jCPraagLch9+XkO2So8RCosC4vLxjWoswqVX78LebnrISoiwapKm
 JuZlqJt+r+uy7BJtymA2T/56uij5CmU6ncVS9S/AYkKDPl2jNyhfVpNZ9bTfLHRHzQAW
 lUFlxbq8pQ/dpU4/9thGZxZPcOS68rSnmiE84fhiEIQjrSahRsjx/3UuTOr0GXrRuDnp
 bTT+gCrwIaQWjK+Iby3JMHagMY24XdafhZ5eVOcMVpaBRGWXTKagH1N1zBdnwHScu535
 Z28CSxglPzWQqcYFDBXwn8GcStcvYEb4QnMNo61rGubr5/LfAr5SmLb3BUhrWSjGuphW JQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5d5km-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 10:46:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 414D0100034;
 Tue,  7 Jan 2020 10:46:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2EE722A8204;
 Tue,  7 Jan 2020 10:46:41 +0100 (CET)
Received: from SFHDAG5NODE2.st.com (10.75.127.14) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 7 Jan
 2020 10:46:40 +0100
Received: from SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0]) by
 SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0%20]) with mapi id
 15.00.1473.003; Tue, 7 Jan 2020 10:46:40 +0100
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Topic: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Index: AQHVtMaOm1nAskP+t06Lg3ivGfEhOKe/qEeAgB9cIQA=
Date: Tue, 7 Jan 2020 09:46:40 +0000
Message-ID: <8229c7ed-b513-6bf8-5684-60d87a92d41f@st.com>
References: <20191217104135.23554-1-peter.ujfalusi@ti.com>
 <84946ffd-8e90-7b6a-6667-a10e27d31655@st.com>
In-Reply-To: <84946ffd-8e90-7b6a-6667-a10e27d31655@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <7CF506707FC8704EA5378A1A551351F2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_02:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_014648_909445_91896634 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsDQoNCklmIG5vdCB0b28gbGF0ZSwgY291bGQgeW91IGNoYW5nZSB0cmFjZSB0byBv
bmx5IHRyaWcgZXJyb3IgdHJhY2Ugd2hlbg0KZXJyb3IgaXMgbm90ICJwcm9iZSBkZWZlcmVkIiA/
IFNlZSBiZWxvdzoNCg0KLQljaGFuID0gZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCgmcGRldi0+
ZGV2LCAidHgiKTsNCi0JaWYgKCFjaGFuKSB7DQotCQlkZXZfaW5mbygmcGRldi0+ZGV2LCAiVW5h
YmxlIHRvIHJlcXVlc3QgRE1BIGNoYW5uZWwsIGRlZmVyIHByb2JpbmdcbiIpOw0KLQkJcmV0dXJu
IC1FUFJPQkVfREVGRVI7DQorCWNoYW4gPSBkbWFfcmVxdWVzdF9jaGFuKCZwZGV2LT5kZXYsICJ0
eCIpOw0KKwlpZiAoSVNfRVJSKGNoYW4pKSB7DQorCQlpZiAoUFRSX0VSUihjaGFuKSAhPSAtRVBS
T0JFX0RFRkVSKQ0KKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgIlVuYWJsZSB0byByZXF1ZXN0IERN
QSBjaGFubmVsXG4iKTsNCisJCXJldHVybiBQVFJfRVJSKGNoYW4pOw0KDQoNCkJlc3QgcmVnYXJk
cywNCkh1Z3Vlcy4NCg0KT24gMTIvMTgvMTkgMTE6NTIgQU0sIEh1Z3VlcyBGUlVDSEVUIHdyb3Rl
Og0KPiBUaGFua3MgZm9yIHBhdGNoaW5nIFBldGVyLA0KPiANCj4gTm8gcmVncmVzc2lvbiBvYnNl
cnZlZCBvbiBteSBzaWRlLg0KPiANCj4gQWNrZWQtYnk6IEh1Z3VlcyBGcnVjaGV0IDxodWd1ZXMu
ZnJ1Y2hldEBzdC5jb20+DQo+IA0KPiBCZXN0IHJlZ2FyZHMsDQo+IEh1Z3Vlcy4NCj4gDQo+IE9u
IDEyLzE3LzE5IDExOjQxIEFNLCBQZXRlciBVamZhbHVzaSB3cm90ZToNCj4+IGRtYV9yZXF1ZXN0
X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIgb24gdG9wIG9mIGRtYV9yZXF1ZXN0X2NoYW4o
KQ0KPj4gZWF0aW5nIHVwIHRoZSBlcnJvciBjb2RlLg0KPj4NCj4+IEJ5IHVzaW5nIGRtYV9yZXF1
ZXN0X2NoYW4oKSBkaXJlY3RseSB0aGUgZHJpdmVyIGNhbiBzdXBwb3J0IGRlZmVycmVkDQo+PiBw
cm9iaW5nIGFnYWluc3QgRE1BLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNp
IDxwZXRlci51amZhbHVzaUB0aS5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jIHwgNiArKystLS0NCj4+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jIA0KPj4gYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYw0KPj4gaW5kZXggOTM5MmUzNDA5ZmJhLi41
NTM1MTg3MmIwYzcgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMy
L3N0bTMyLWRjbWkuYw0KPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdG0zMi9zdG0z
Mi1kY21pLmMNCj4+IEBAIC0xOTEwLDEwICsxOTEwLDEwIEBAIHN0YXRpYyBpbnQgZGNtaV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlIA0KPj4gKnBkZXYpDQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIFBUUl9FUlIobWNsayk7DQo+PiDCoMKgwqDCoMKgIH0NCj4+IC3CoMKgwqAgY2hh
biA9IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoJnBkZXYtPmRldiwgInR4Iik7DQo+PiAtwqDC
oMKgIGlmICghY2hhbikgew0KPj4gK8KgwqDCoCBjaGFuID0gZG1hX3JlcXVlc3RfY2hhbigmcGRl
di0+ZGV2LCAidHgiKTsNCj4+ICvCoMKgwqAgaWYgKElTX0VSUihjaGFuKSkgew0KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJVbmFibGUgdG8gcmVxdWVzdCBETUEg
Y2hhbm5lbCwgZGVmZXIgDQo+PiBwcm9iaW5nXG4iKTsNCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1
cm4gLUVQUk9CRV9ERUZFUjsNCj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihjaGFu
KTsNCj4+IMKgwqDCoMKgwqAgfQ0KPj4gwqDCoMKgwqDCoCBzcGluX2xvY2tfaW5pdCgmZGNtaS0+
aXJxbG9jayk7DQo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
