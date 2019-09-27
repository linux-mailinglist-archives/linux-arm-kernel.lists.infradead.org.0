Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF11AC0545
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1C7TJ0hD/3o1oMd5Ao2/2H/dwQSXhs8rSlJQFQLSJrQ=; b=I3AHOCW4fp2SQq
	oP3UMdnHdvIZ/r/oN8+yDxCpsd3oaHUOkuhs6QvWht6MBVWKKgYJQo48+644yBsF+w8FjBEFCGeNb
	XTxCA8JAXCLd/e0Uph5TIHybPB3uFigfrswqYoRXR2iXCb9l9OHzn0bR7b+1/fZTNtIPxx8Pr288Y
	uXMWW6XHvrxC39TJW2JglKXzFJYtlL++B7nmQc8xV3lq24M878Nxwr/Pcdu2uxw9I6+MXFlJYqeW6
	Q9JLn8nEYN/sNHRet4ylYcPGzZzKluYSAeSPIaEelJA636S9uqNa/bwi1WarrqPowEgB+VKAXfkL6
	LsSOVhmVXltN2Fju7dgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDpUH-0004hZ-Pn; Fri, 27 Sep 2019 12:36:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpU8-0004gc-JN
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:36:34 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8RCV2M9021935; Fri, 27 Sep 2019 14:36:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=M6/Rt2zJJu6bPQgzJKZTLTs88gSBQFbgXKdyp6w1t7k=;
 b=iH7YHSug7LB1II+w+n/trVShN6KbsRU8XlVxnly0JfwxfbRM+coXU86VD/+cALZv2HN4
 N8cgnn3PPPLs/OYlE/Y41B3ezWk3lxQIvzfh3NQaZRv2sY//OJxDq4svXV1f6PSo2kGL
 jhKhhuK1My/5a8GCcLTWekCqvXU9yFJV22JY56I8SUzcN9RZTKBkWDwyc9Hf+FrYCgfm
 QfBpkjHQnQiYqRbi+G/uu7tOzxeOZ5qpflMEgDv4d9a2SRI0/GDCj2ZTVJQp+ROet1EZ
 /2i7wbbfgGD6a9fdpDVjEcy6Fj4hZfVbvWJetou2WlNdWm6ZsqL351UZYgnYGXWjVMlG HQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v590bd5js-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 27 Sep 2019 14:36:25 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 37FC922;
 Fri, 27 Sep 2019 12:36:21 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 54D262BCB1C;
 Fri, 27 Sep 2019 14:36:21 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 27 Sep
 2019 14:36:20 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 27 Sep 2019 14:36:20 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Topic: [PATCH] ARM: dts: stm32: Enable high resolution timer
Thread-Index: AQHVdRBWUjMsQJUFmUWpOD9xBCdtcac/P/aAgAAUtIA=
Date: Fri, 27 Sep 2019 12:36:20 +0000
Message-ID: <341949c8-7864-5d65-2797-988022724a4c@st.com>
References: <20190927084819.645-1-benjamin.gaignard@st.com>
 <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
In-Reply-To: <da48ce9633441cd0186518fa7ce1d528@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <886CBEEE619ADF48BFF7435C2FD21580@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-09-27_06:2019-09-25,2019-09-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_053633_091133_8F4A3EB2 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiA5LzI3LzE5IDE6MjIgUE0sIE1hcmMgWnluZ2llciB3cm90ZToNCj4gT24gMjAxOS0wOS0y
NyAwOTo0OCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6DQo+PiBBZGRpbmcgYWx3YXlzLW9uIG1h
a2VzIGFybSBhcmNoX3RpbWVyIGNsYWltIHRvIGJlIGFuIGhpZ2ggcmVzb2x1dGlvbiANCj4+IHRp
bWVyLg0KPj4gVGhhdCBpcyBwb3NzaWJsZSBiZWNhdXNlIHBvd2VyIG1vZGUgd29uJ3Qgc3RvcCBj
bG9ja2luZyB0aGUgdGltZXIuDQo+DQo+IFRoZSAiYWx3YXlzLW9uIiBpcyBub3QgYWJvdXQgdGhl
IGNsb2NrLiBJdCBpcyBhYm91dCB0aGUgY29tcGFyYXRvci4NCj4gVGhlIGNsb2NrIGl0c2VsZiBp
cyAqZ3VhcmFudGVlZCogdG8gYWx3YXlzIHRpY2suIElmIGl0IGRpZG4ndCwgdGhhdCdkIGJlDQo+
IGFuIGludGVncmF0aW9uIGJ1ZywgYW5kIGEgcHJldHR5IGJhZCBvbmUuDQo+DQo+IFdoYXQgeW91
J3JlIGNsYWltaW5nIGhlcmUgaXMgdGhhdCB5b3VyIENQVSBuZXZlciBlbnRlcnMgYSBsb3ctcG93
ZXIgbW9kZT8NCj4gRXZlcj8gSSBmaW5kIHRoaXMgdmVyeSBoYXJkIHRvIGJlbGlldmUuDQo+DQo+
IEZ1cnRoZXJtb3JlLCBjbGFpbWluZyB0aGF0IGFsd2F5cy1vbiBpcyB0aGUgd2F5IHRvIGZvcmNl
IHRoZSBhcmNoLXRpbWVyDQo+IHRvIGJlIGFuIGhydGltZXIgaXMgZmFjdHVhbGx5IHdyb25nLiBU
aGlzIGlzIHdoYXQgaGFwcGVucyAqaWYqIHRoaXMgaXMNCj4gdGhlIG9ubHkgdGltZXIgaW4gdGhl
IHN5c3RlbS4gVGhlIG9ubHkgY2FzZSB0aGlzIGlzIHRydWUgaXMgZm9yIHZpcnR1YWwNCj4gbWFj
aGluZXMuIEFueXRoaW5nIGVsc2UgaGFzIGEgZ2xvYmFsIHRpbWVyIHNvbWV3aGVyZSB0aGF0IHdp
bGwgYWxsb3cNCj4gdGhlIGFyY2ggdGltZXJzIHRvIGJlIHVzZWQgYXMgYW4gaHJ0aW1lci4NCj4N
Cj4gSSdtIHByZXR0eSBzdXJlIHlvdSB0b28gaGF2ZSBhIGdsb2JhbCB0aW1lciBzb21ld2hlcmUg
aW4geW91ciBzeXN0ZW0uDQo+IEVuYWJsZSBpdCwgYW5kIGVuam95IGhydGltZXJzIHdpdGhvdXQg
aGF2aW5nIHRvIGxpZSBhYm91dCB0aGUgcHJvcGVydGllcw0KPiBvZiB5b3VyIHN5c3RlbSEgOy0p
DQoNCkhpIE1hcmMsDQoNClRoaXMgU29DIGRvZXNuJ3QgaGF2ZSBhbnkgb3RoZXIgZ2xvYmFsIHRp
bWVyLiBVc2UgYXJjaF90aW1lIGlzIHRoZSBvbmx5DQp3ZSBoYXZlIHRvIHByb3ZpZGUgaHJ0aW1l
ciBvbiB0aGlzIHN5c3RlbS4NCg0KQmVuamFtaW4NCg0KPg0KPiDCoMKgwqDCoMKgwqDCoCBNLg0K
Pg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBzdC5jb20+DQo+PiAtLS0NCj4+IMKgYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2Mu
ZHRzaSB8IDEgKw0KPj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4+DQo+PiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MuZHRzaQ0KPj4gYi9hcmNo
L2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpDQo+PiBpbmRleCA5YjExNjU0YTBhMzkuLjc0
ZjY0NzQ1ZDYwZCAxMDA2NDQNCj4+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdj
LmR0c2kNCj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLmR0c2kNCj4+IEBA
IC01MCw2ICs1MCw3IEBADQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxH
SUNfUFBJIDExIChHSUNfQ1BVX01BU0tfU0lNUExFKDQpIHwgDQo+PiBJUlFfVFlQRV9MRVZFTF9M
T1cpPiwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPEdJQ19QUEkgMTAg
KEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCANCj4+IElSUV9UWVBFX0xFVkVMX0xPVyk+Ow0KPj4g
wqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHQtcGFyZW50ID0gPCZpbnRjPjsNCj4+ICvCoMKgwqDC
oMKgwqDCoCBhbHdheXMtb247DQo+PiDCoMKgwqDCoCB9Ow0KPj4NCj4+IMKgwqDCoMKgIGNsb2Nr
cyB7DQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
