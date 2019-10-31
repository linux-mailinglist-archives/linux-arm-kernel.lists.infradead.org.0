Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C9EAD9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 11:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YntZlIVWFA5kPnjx8AFNJ+178WNY8GlwdVtRR53MRek=; b=IDaneSaHYe7TJr
	+irHGCnrZ/ya5xqSv1LCtNUO8JiyVoDKHykyBJcZcKqUN00akfLJALEUuiQlrd8ZFpbAZb6uGHHHI
	zWimX1nK+9Xy2yiDrllqjVwszzVyMprvJgnr22GhJBtD4lpoYzLlI5lhib2G0iyzcuHG1UHhI6Blc
	0gt9WeLGwXJJ8avOs3UiqZcjqt4dbBIthCXRpXhsGhTapUl2SJ+XZmcyGK3EP51F3nw4EHc8jsYPg
	X5vYlqqdMhFpqbbswlphKAOzfcxbzokG/7/jB9M7vcvZhe/2kW4M2hfJVxSeuwO+RiFLcDrqODeBE
	zJtch5+8W+BLZJtmaFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7pK-00026i-RD; Thu, 31 Oct 2019 10:37:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7p5-00025T-7a
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 10:37:01 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9VAajqf017813; Thu, 31 Oct 2019 11:36:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=b6axHSgpzq8fY5zClLezQHCQq4zOsRkRLvmkAbFddwM=;
 b=OmAIxttpah75rFG4PtpVfgvILH7qRXpgMh2Ylk6gpPav8ckHnqCPzHblb5aJTAXTG0Y9
 gREoo6nMi2v0ZDI/b9dnLk7eteHRb93AKX75TWzbmJhz7Jl2GfArImutDHqEU9LKJUYi
 iOAWgccKwaZyCCOAzNsfdD8zGp1rriOR7ZuYK1f7CQGj5s5XN9CEvlJOg2BTNYhxLvar
 /sGQ6i27u0YFQ5bpXHwaSIfDOAFD0xd1ef6t5Tuujd1CkfDQTKUc/+PNVpllMUADhXoL
 GASvHu2aLxPXHN09qydmLi+8mCUqgA8e+FmkSJDESv7CyhmfoGWPt+4tTuYU/NEzmrf9 AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vxwhe93p7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Oct 2019 11:36:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1BB6C100034;
 Thu, 31 Oct 2019 11:36:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 062B02B437C;
 Thu, 31 Oct 2019 11:36:49 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 31 Oct
 2019 11:36:48 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 31 Oct 2019 11:36:48 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 "Philippe CORNU" <philippe.cornu@st.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>
Subject: Re: [PATCH v3] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
Thread-Topic: [PATCH v3] dt-bindings: media: Convert stm32 cec bindings to
 json-schema
Thread-Index: AQHVgnCcbwWsIXaqhkagOxlq+i04qadzBycAgAGRZYA=
Date: Thu, 31 Oct 2019 10:36:48 +0000
Message-ID: <fc769055-544c-f100-9770-e2fa7a583a76@st.com>
References: <20191014092021.24020-1-benjamin.gaignard@st.com>
 <e6655a20-5d87-7dc1-14e3-844f12096f0e@xs4all.nl>
In-Reply-To: <e6655a20-5d87-7dc1-14e3-844f12096f0e@xs4all.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <E12D28D980A003438A211EFEF0CBA07E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-31_04:2019-10-30,2019-10-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_033659_631063_EBB53294 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiAxMC8zMC8xOSAxMTo0MCBBTSwgSGFucyBWZXJrdWlsIHdyb3RlOg0KPiBPbiAxMC8xNC8x
OSAxMToyMCBBTSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6DQo+PiBDb252ZXJ0IHRoZSBTVE0z
MiBjZWMgYmluZGluZyB0byBEVCBzY2hlbWEgZm9ybWF0IHVzaW5nIGpzb24tc2NoZW1hDQo+Pg0K
Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQHN0
LmNvbT4NCj4NCj4gVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGEgTUFJTlRBSU5FUlMgZW50cnkg
Zm9yIHRoaXMgZHJpdmVyLiBDYW4geW91IGFkZA0KPiBvbmU/DQo+DQpIaSBIYW5zLA0KDQpJIGhh
dmVuJ3QgYWRkIGEgZGVkaWNhdGVkIGVudHJ5IGluIE1BSU5UQUlORVJTIGZpbGUgZm9yIHRoZXNl
IGRyaXZlcnMgDQpiZWNhdXNlDQoNCmdldF9tYWludGFpbmVyIHNjcmlwdCBpbmRpY2F0ZXMgdG8g
c2VuZCBtYWlsIHRvIHN0bTMyJ3MgbGludXggbWFpbGluZyBsaXN0Lg0KDQpUaGF0IHNvdW5kIGVu
b3VnaCBmb3IgbWUgYnV0IGlmIHlvdSByZWFsbHkgd2FudCBJIGNhbiBhZGQgZW50cmllcyBpbiAN
Ck1BSU5UQUlORVJTIGZpbGUuDQoNCkJlbmphbWluDQoNCj4gwqDCoMKgwqBIYW5zDQo+DQo+PiAt
LS0NCj4+IGNoYW5nZXMgaW4gdjM6DQo+PiAtIHVzZSAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNs
YXVzZSkgbGljZW5zZQ0KPj4NCj4+IGNoYW5nZXMgaW4gdjI6DQo+PiAtIHVzZSBCU0QtMi1DbGF1
c2UgbGljZW5zZQ0KPj4gLSBhZGQgYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+PiAtIHJl
bW92ZSBwaW5jdHJsLW5hbWVzIGFuZCBwaW5jdHJsLVswLTldDQo+Pg0KPj4gwqAgLi4uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzItY2VjLnR4dMKgwqDCoMKgIHwgMTkgLS0tLS0t
LS0NCj4+IMKgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0LHN0bTMyLWNlYy55YW1s
wqDCoMKgIHwgNTQgDQo+PiArKysrKysrKysrKysrKysrKysrKysrDQo+PiDCoCAyIGZpbGVzIGNo
YW5nZWQsIDU0IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPj4gwqAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IA0KPj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0
LHN0bTMyLWNlYy50eHQNCj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCANCj4+IERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMi1jZWMueWFtbA0KPj4NCj4+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3Rt
MzItY2VjLnR4dCANCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlh
L3N0LHN0bTMyLWNlYy50eHQNCj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXgg
NmJlMjM4MWMxODBkLi4wMDAwMDAwMDAwMDANCj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMi1jZWMudHh0DQo+PiArKysgL2Rldi9udWxsDQo+
PiBAQCAtMSwxOSArMCwwIEBADQo+PiAtU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyIENFQyBkcml2
ZXINCj4+IC0NCj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPj4gLSAtIGNvbXBhdGlibGUgOiB2
YWx1ZSBzaG91bGQgYmUgInN0LHN0bTMyLWNlYyINCj4+IC0gLSByZWcgOiBQaHlzaWNhbCBiYXNl
IGFkZHJlc3Mgb2YgdGhlIElQIHJlZ2lzdGVycyBhbmQgbGVuZ3RoIG9mIG1lbW9yeQ0KPj4gLcKg
wqDCoMKgIG1hcHBlZCByZWdpb24uDQo+PiAtIC0gY2xvY2tzIDogZnJvbSBjb21tb24gY2xvY2sg
YmluZGluZzogaGFuZGxlIHRvIENFQyBjbG9ja3MNCj4+IC0gLSBjbG9jay1uYW1lcyA6IGZyb20g
Y29tbW9uIGNsb2NrIGJpbmRpbmc6IG11c3QgYmUgImNlYyIgYW5kIA0KPj4gImhkbWktY2VjIi4N
Cj4+IC0gLSBpbnRlcnJ1cHRzIDogQ0VDIGludGVycnVwdCBudW1iZXIgdG8gdGhlIENQVS4NCj4+
IC0NCj4+IC1FeGFtcGxlIGZvciBzdG0zMmY3NDY6DQo+PiAtDQo+PiAtY2VjOiBjZWNANDAwMDZj
MDAgew0KPj4gLcKgwqDCoCBjb21wYXRpYmxlID0gInN0LHN0bTMyLWNlYyI7DQo+PiAtwqDCoMKg
IHJlZyA9IDwweDQwMDA2QzAwIDB4NDAwPjsNCj4+IC3CoMKgwqAgaW50ZXJydXB0cyA9IDw5ND47
DQo+PiAtwqDCoMKgIGNsb2NrcyA9IDwmcmNjIDAgU1RNMzJGN19BUEIxX0NMT0NLKENFQyk+LCA8
JnJjYyAxIENMS19IRE1JX0NFQz47DQo+PiAtwqDCoMKgIGNsb2NrLW5hbWVzID0gImNlYyIsICJo
ZG1pLWNlYyI7DQo+PiAtfTsNCj4+IGRpZmYgLS1naXQgDQo+PiBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMi1jZWMueWFtbCANCj4+IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N0LHN0bTMyLWNlYy55YW1sDQo+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kNzUwMTljMDkzYTQNCj4+
IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9zdCxzdG0zMi1jZWMueWFtbA0KPj4gQEAgLTAsMCArMSw1NCBAQA0KPj4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQ0KPj4g
KyVZQU1MIDEuMg0KPj4gKy0tLQ0KPj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVt
YXMvbWVkaWEvc3Qsc3RtMzItY2VjLnlhbWwjDQo+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjDQo+PiArDQo+PiArdGl0bGU6IFNUTWljcm9l
bGVjdHJvbmljcyBTVE0zMiBDRUMgYmluZGluZ3MNCj4+ICsNCj4+ICttYWludGFpbmVyczoNCj4+
ICvCoCAtIEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+DQo+PiAr
wqAgLSBZYW5uaWNrIEZlcnRyZSA8eWFubmljay5mZXJ0cmVAc3QuY29tPg0KPj4gKw0KPj4gK3By
b3BlcnRpZXM6DQo+PiArwqAgY29tcGF0aWJsZToNCj4+ICvCoMKgwqAgY29uc3Q6IHN0LHN0bTMy
LWNlYw0KPj4gKw0KPj4gK8KgIHJlZzoNCj4+ICvCoMKgwqAgbWF4SXRlbXM6IDENCj4+ICsNCj4+
ICvCoCBpbnRlcnJ1cHRzOg0KPj4gK8KgwqDCoCBtYXhJdGVtczogMQ0KPj4gKw0KPj4gK8KgIGNs
b2NrczoNCj4+ICvCoMKgwqAgaXRlbXM6DQo+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBN
b2R1bGUgQ2xvY2sNCj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IEJ1cyBDbG9jaw0KPj4g
Kw0KPj4gK8KgIGNsb2NrLW5hbWVzOg0KPj4gK8KgwqDCoCBpdGVtczoNCj4+ICvCoMKgwqDCoMKg
IC0gY29uc3Q6IGNlYw0KPj4gK8KgwqDCoMKgwqAgLSBjb25zdDogaGRtaS1jZWMNCj4+ICsNCj4+
ICtyZXF1aXJlZDoNCj4+ICvCoCAtIGNvbXBhdGlibGUNCj4+ICvCoCAtIHJlZw0KPj4gK8KgIC0g
aW50ZXJydXB0cw0KPj4gK8KgIC0gY2xvY2tzDQo+PiArwqAgLSBjbG9jay1uYW1lcw0KPj4gKw0K
Pj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQ0KPj4gKw0KPj4gK2V4YW1wbGVzOg0KPj4g
K8KgIC0gfA0KPj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRy
b2xsZXIvYXJtLWdpYy5oPg0KPj4gK8KgwqDCoCAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2sv
c3RtMzJtcDEtY2xrcy5oPg0KPj4gK8KgwqDCoCBjZWM6IGNlY0A0MDAwNmMwMCB7DQo+PiArwqDC
oMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMi1jZWMiOw0KPj4gK8KgwqDCoMKgwqDC
oMKgIHJlZyA9IDwweDQwMDA2YzAwIDB4NDAwPjsNCj4+ICvCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgOTQgSVJRX1RZUEVfTEVWRUxfSElHSD47DQo+PiArwqDCoMKgwqDCoMKg
wqAgY2xvY2tzID0gPCZyY2MgQ0VDX0s+LCA8JmNsa19sc2U+Ow0KPj4gK8KgwqDCoMKgwqDCoMKg
IGNsb2NrLW5hbWVzID0gImNlYyIsICJoZG1pLWNlYyI7DQo+PiArwqDCoMKgIH07DQo+PiArDQo+
PiArLi4uDQo+Pg0KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
