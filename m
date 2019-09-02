Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C47A5216
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 10:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPfIORudWFw5feBeQZvzOaatKUANneQycLUpRXziPb8=; b=lwO1EXclLPcCKC
	I817PT6PUJ0WrTKP89pqhBeKIeLlqJiVFEjVqY+1Ht5c2a97LazKtqQD+Z0N/DzBe1DC0U/LKN66E
	zSdnkSL5NDH5BRaRwciz25ZMu1NyjANY+BuY3TLPWQrT5QmCdC4Xhwsw0NKuZSiRMoAQZGswvxnG+
	nYaanLWJIKRdlWhzfm9WO4PE2cRdPcV9Q8+e9aQy2bcF3C6LDFM62ZSP1gxqqDL9Q7l+96JX8aUuP
	/x4On16cp4SJjVZlufiqb+PkQVcIlrw8RDl+xvI0yG6KbjrvptDxplsiY1bmXXOiuTvaNWZNSpg9Y
	ay2O+/KGjp2RtzFeJ82w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hy8-0007pq-GP; Mon, 02 Sep 2019 08:45:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hxv-0007pN-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 08:45:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x828f0wk004309; Mon, 2 Sep 2019 10:45:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=GS6p14phASWxCZ4PtGrDKAo6LRyf7Ljc9Xi7ApKfmMg=;
 b=CIM3oU33MmbYDaWi6BsVinIjyzgVO+pktbhR6/MQP88YQWV+BP4IHIldpKif6i47v0Yw
 tdfzE5ss4NObBkcafR88tYGO/KbeKj7DgzFyr5bpeE2O7YX5mpyJosPiZtfU8XIOV0PZ
 oLHZ1djsu9XcnFnxIejLmj/OdKaIakCoSPLt9y1wUlroStPWaUATBNw9t61nM6QZZLsv
 dSQimWmzWRGjYciu5+cDQtqSaI9KeMKVwl1+3Wzec/zxenjKgtbCHCu+6tvPDd/x86ws
 zn24DK+NxBJrBoDF1pSMqrAhLs90i4cow7ZYyBnOmRUKTg7DuqTSzT4T8K7GIb5Iya5v 7A== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uqenuudhf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 02 Sep 2019 10:45:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 7DB8955;
 Mon,  2 Sep 2019 08:45:19 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C232E2C38B9;
 Mon,  2 Sep 2019 10:45:18 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 2 Sep
 2019 10:45:18 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 2 Sep 2019 10:45:18 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "Rob Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>
Subject: Re: [PATCH] ARM: dts: stm32: move ltdc pinctrl on stm32mp157a dk1
 board
Thread-Topic: [PATCH] ARM: dts: stm32: move ltdc pinctrl on stm32mp157a dk1
 board
Thread-Index: AQHVSTvVGIXip1PqEkulX36vwruXGKcYIXgA
Date: Mon, 2 Sep 2019 08:45:18 +0000
Message-ID: <50695b37-df51-08d6-a11e-99f9349aa481@st.com>
References: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1564754931-13861-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <EEAD06A52162824F94647D53ADBE7BB7@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-02_03:2019-08-29,2019-09-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_014535_966309_0E78189A 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgWWFubmljaywNCg0KT24gOC8yLzE5IDQ6MDggUE0sIFlhbm5pY2sgRmVydHLDqSB3cm90ZToN
Cj4gVGhlIGx0ZGMgcGluY3RybCBtdXN0IGJlIGluIHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIgbm9k
ZSBhbmQNCj4gbm90IGluIHRoZSBwZXJpcGhlcmFsIG5vZGUgKGhkbWkgYnJpZGdlKS4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPg0K
PiAtLS0NCj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzIHwgNiArKyst
LS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRrMS5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1kazEuZHRzDQo+IGluZGV4IGYzZjBlMzcu
LjEyODVjZmMgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdhLWRr
MS5kdHMNCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2EtZGsxLmR0cw0KPiBA
QCAtOTksOSArOTksNiBAQA0KPiAgIAkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW9hIDEwIEdQSU9fQUNU
SVZFX0xPVz47DQo+ICAgCQlpbnRlcnJ1cHRzID0gPDEgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsN
Cj4gICAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW9nPjsNCj4gLQkJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IiwgInNsZWVwIjsNCj4gLQkJcGluY3RybC0wID0gPCZsdGRjX3BpbnNfYT47DQo+
IC0JCXBpbmN0cmwtMSA9IDwmbHRkY19waW5zX3NsZWVwX2E+Ow0KPiAgIAkJc3RhdHVzID0gIm9r
YXkiOw0KPiAgIA0KPiAgIAkJcG9ydHMgew0KPiBAQCAtMjc2LDYgKzI3Myw5IEBADQo+ICAgfTsN
Cj4gICANCj4gICAmbHRkYyB7DQo+ICsJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IiwgInNsZWVw
IjsNCj4gKwlwaW5jdHJsLTAgPSA8Jmx0ZGNfcGluc19hPjsNCj4gKwlwaW5jdHJsLTEgPSA8Jmx0
ZGNfcGluc19zbGVlcF9hPjsNCg0KUmV2aWV3ZWQtYnk6IFBoaWxpcHBlIENvcm51IDxwaGlsaXBw
ZS5jb3JudUBzdC5jb20+DQoNClRoYW5rcw0KUGhpbGlwcGUgOikNCg0KPiAgIAlzdGF0dXMgPSAi
b2theSI7DQo+ICAgDQo+ICAgCXBvcnQgew0KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
