Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E68716A01E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 09:35:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxPnbU4EKleW2E8TdHTSY+nQkQWvOyiBrfef+YTkNu8=; b=O3qsj6TVXTlkby
	mCJrKKrpVjiIsrgq+c36K0dQXmqaiymxJrT2ZuaQRppJVplVaMxFrbWTVRQsr8PWZFmho+rFpzHzF
	lKB2lI+xURXStBk4Zux8y7833JasiZwQMAv+PQ48n9wkegI5Yyl/UhMZTZorgTg1Hs98FKhClAv21
	pmgHsbpozRVzNT1Qx+kWxXdh3RJJb2U+lEW9XoQ7mAnMtQAfVSyosaGILv9XvLMFLJCciJzMpdNpg
	zPymMeetrVx7QjcMFoa6NCw7Ekei2amyNYiCITUGCSwg+W/l9pW3gFhq89BSAfGFdslm4WvoQZWND
	o9RrX+j/pdlz+d0iXtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69DN-000861-C5; Mon, 24 Feb 2020 08:35:45 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69DB-00085N-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 08:35:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01O8STP6003173; Mon, 24 Feb 2020 09:35:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=7PELC+vweWKrffU05WDizALZGrVFR9H5KIm3RrEooxQ=;
 b=wRAQs8o8BEZqlLbBZ1wvX6wvXH7UNrKHG13FBW/Ti8d6aGeSSshAVDNMLH31SKfZOarv
 Xmbxj/bSW5C2YMf334oQCkox5EKvCAEjEJbiBuY9qBXHPmc1SoTCggIuY5cy2+iRYX8n
 FS+AMngbggT+7rFUIkIke3J0xn88p64gk9KzemQkv/FyUfXOGXEDPclKIVs0D26uiL/D
 kAFmKfeevfCJ49NejpLt0XCrLkm8jwWVvwylhRGBFkyGVGVysQ3PJgeu4h0DS+/CPqy9
 8YoHhlN/0vd4ZVU5uT8edVZBXExC+zKTecm0xbrG7rQlFhOEchteElHK3V7VwFkE8D3x xQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yatn5rnad-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 24 Feb 2020 09:35:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 14F5110002A;
 Mon, 24 Feb 2020 09:35:23 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F305D2B0958;
 Mon, 24 Feb 2020 09:35:22 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 24 Feb
 2020 09:35:22 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 24 Feb 2020 09:35:22 +0100
From: Patrick DELAUNAY <patrick.delaunay@st.com>
To: Marek Vasut <marex@denx.de>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
Thread-Topic: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM
 STM32MP1 SoM and PDK2 board
Thread-Index: AQHVzvxWZmvQfipRJEWVD8cExEN3RagUsYEAgBRNboCAATz3oA==
Date: Mon, 24 Feb 2020 08:35:22 +0000
Message-ID: <5efd7978050e48d783d10c989b5e78f5@SFHDAG6NODE3.st.com>
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
 <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
 <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
In-Reply-To: <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-24_02:2020-02-21,
 2020-02-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_003533_935160_C4CD8714 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssDQoNCj4gRnJvbTogTWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+DQo+IFNlbnQ6
IGRpbWFuY2hlIDIzIGbDqXZyaWVyIDIwMjAgMTU6MzgNCj4gDQo+IE9uIDIvMTAvMjAgNTozNSBQ
TSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToNCj4gPiBIaSBNYXJlaw0KPiANCj4gSGksDQo+IA0K
PiA+IE9uIDEvMTkvMjAgODoxMSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6DQo+ID4+IEFkZCBzdXBw
b3J0IGZvciBESCBFbGVjdHJvbmljcyBESENPTSBTb00gYW5kIFBESzIgcmV2LiA0MDAgY2Fycmll
cg0KPiA+PiBib2FyZC4gVGhpcyBpcyBhbiBTb00gd2l0aCBTVE0zMk1QMTU3QyBhbmQgYW4gZXZh
bHVhdGlvbiBraXQuIFRoZQ0KPiA+PiBiYXNlYm9hcmQgcHJvdmlkZXMgRXRoZXJuZXQsIFVBUlQs
IFVTQiwgQ0FOIGFuZCBvcHRpb25hbCBkaXNwbGF5Lg0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4NCj4gPj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUg
PGFsZXhhbmRyZS50b3JndWVAc3QuY29tPg0KPiA+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29x
dWVsaW4uc3RtMzJAZ21haWwuY29tPg0KPiA+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNl
LmNob3RhcmRAc3QuY29tPg0KPiA+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxh
dW5heUBzdC5jb20+DQo+ID4+IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVw
bHkuY29tDQo+ID4+IFRvOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcNCj4g
Pj4gLS0tDQo+ID4+IFYyOiAtIEFkZCBzdG0zMm1wMSBpbnRvIHRoZSBzdWJqZWN0IGFuZCBjb21t
aXQgbWVzc2FnZQ0KPiA+PiDCoMKgwqDCoCAtIFNvcnQgRFQgYWxwaGFudW1lcmljYWxseQ0KPiA+
PiDCoMKgwqDCoCAtIE1vdmUgYWxsIHBpbmNvbnRyb2wgZW50cmllcyBpbnRvIHN0bTMybXAxNS1w
aW5jdHJsLmR0c2kNCj4gPj4gLS0tDQo+ID4NCj4gPiBUaGFua3MgdG8gYWRkIGEgbmV3IFNUTTMy
IGJvYXJkLg0KPiA+DQo+ID4gU2VyaWVzIGFwcGxpZWQgb24gc3RtMzItbmV4dC4NCj4gDQo+IEhv
dyBjb21lIHRoZXNlIGFyZSBub3QgaW4gbmV4dC9tYXN0ZXIgeWV0LCBpcyB0aGUgYnJhbmNoIG5v
dCBiZWluZyBtZXJnZWQgaW50bw0KPiBuZXh0IHJlZ3VsYXJseSA/DQoNClRoaXMgYWNjZXB0ZWQg
cGF0Y2ggaXMgYWxyZWFkeSBpbiBzdG0zMi1tYXN0ZXIsIGluY2x1ZGVkIGluIGxhc3RlZCBwdWxs
IHJlcXVlc3QgdS1ib290LXN0bTMyLTIwMjAwMjE0DQoNClNIQTEgPSAxOTk1MzczMDliYTUzZDI5
NGMzMTI4MzA2NGQ2M2RhZmM5OTVmYmVkDQoNCk1lcmdlZCBpbiB1LWJvb3QvbWFzdGVyIGp1c3Rl
IGFmdGVyIHYyMDIwLjA0LXJjMg0KDQpSZWdhcmRzLA0KDQpQYXRyaWNrDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
