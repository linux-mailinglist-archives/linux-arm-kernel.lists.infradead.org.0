Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5EB13247F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMx21Gm76hxJDvIdCrzgOYM4cpKOTbm8KAEhPIIdLAs=; b=hJKScj9sbC+0tw
	4oDbJPc5jCxvf+wyoqbHykLhkTTvp0jA/zDfBLgmeR9qM8ymTnSiDjRReke11qUix7zkOo3BIkGiu
	ijeb7bFFzPZbTDHxr8IBuPilvt1kgiDXKcuAn93043YBWj1SSZpvItCWzlc4hpthdXJvzS8DMldD8
	mZRHfVdxVjgP+NwSdD4hcCtlaaKnnMGMpkaCbhfbfk3ToHJtLU2y+6L8db2p93WrTD5FTc2i9OREo
	8oJAdqvxtfW9HA2ZR1bp2OLssMxb84t46UOA+6S7RLCK3Embb/6XD3WiW8vYnLBXzR7nKaCGVToji
	Q7Icpcq1SJ7mdw9Nr/2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomiv-0004Fy-Lg; Tue, 07 Jan 2020 11:08:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomim-0004FE-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:08:26 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007B3IUb023698; Tue, 7 Jan 2020 12:08:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=bcOl+diqBkub1fR7JXJV5xxGqIigy+82SZC3ucHHtRw=;
 b=UzP5+tsDlJT9swSnog215u+d82BohI9PakrfUvbqGOoMHwEXSyjaqEPLuuLGYtbEXmjV
 gGJeeFklL9ESwRR9A4/z+JSTbMlEaPvHvLJb2JwykUowJ8/25oG4E7OikMCit9icB21i
 C2Mig21cSH7b37+Z7C9JwstzhmKcfRnaGcAXrced/XFpw09JR+C2NSdoGWU6CmZ/Qn8A
 hYBoha5psVIgPY4XvaO0SrZK99ceir0r/JOoqY5aTZ36pr9J0RFN+aA1SgMpLwFrdJD4
 dgSAC3t0kIPtPtdjFQW3RZ/5EXo7YFMwnQ9bSHqf9jRuW/03oIEaU2v/mszhrN8IPpun jQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xakvb5mr9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 12:08:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D9107100034;
 Tue,  7 Jan 2020 12:08:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C880A2AD2C6;
 Tue,  7 Jan 2020 12:08:17 +0100 (CET)
Received: from SFHDAG5NODE2.st.com (10.75.127.14) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 7 Jan
 2020 12:08:17 +0100
Received: from SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0]) by
 SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0%20]) with mapi id
 15.00.1473.003; Tue, 7 Jan 2020 12:08:17 +0100
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
Subject: Re: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Topic: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Index: AQHVtMaOm1nAskP+t06Lg3ivGfEhOKe/qEeAgB9cIQCAAA6aAIAACDIA
Date: Tue, 7 Jan 2020 11:08:17 +0000
Message-ID: <2434a772-f8b2-a954-e370-2d8dff60ade2@st.com>
References: <20191217104135.23554-1-peter.ujfalusi@ti.com>
 <84946ffd-8e90-7b6a-6667-a10e27d31655@st.com>
 <8229c7ed-b513-6bf8-5684-60d87a92d41f@st.com>
 <a4682783-e966-6176-4ab5-cc9345e3508f@ti.com>
In-Reply-To: <a4682783-e966-6176-4ab5-cc9345e3508f@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <E9C91709F28397428249F3F07FE00FC3@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_02:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_030824_572794_88EF3862 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

WSdyZSB3ZWxjb21lLg0KDQpPbiAxLzcvMjAgMTE6MzggQU0sIFBldGVyIFVqZmFsdXNpIHdyb3Rl
Og0KPiBIaSBIdWd1ZXMsDQo+IA0KPiBPbiAwNy8wMS8yMDIwIDExLjQ2LCBIdWd1ZXMgRlJVQ0hF
VCB3cm90ZToNCj4+IEhpIFBldGVyLA0KPj4NCj4+IElmIG5vdCB0b28gbGF0ZSwgY291bGQgeW91
IGNoYW5nZSB0cmFjZSB0byBvbmx5IHRyaWcgZXJyb3IgdHJhY2Ugd2hlbg0KPj4gZXJyb3IgaXMg
bm90ICJwcm9iZSBkZWZlcmVkIiA/IFNlZSBiZWxvdzoNCj4+DQo+PiAtCWNoYW4gPSBkbWFfcmVx
dWVzdF9zbGF2ZV9jaGFubmVsKCZwZGV2LT5kZXYsICJ0eCIpOw0KPj4gLQlpZiAoIWNoYW4pIHsN
Cj4+IC0JCWRldl9pbmZvKCZwZGV2LT5kZXYsICJVbmFibGUgdG8gcmVxdWVzdCBETUEgY2hhbm5l
bCwgZGVmZXIgcHJvYmluZ1xuIik7DQo+PiAtCQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsNCj4+ICsJ
Y2hhbiA9IGRtYV9yZXF1ZXN0X2NoYW4oJnBkZXYtPmRldiwgInR4Iik7DQo+PiArCWlmIChJU19F
UlIoY2hhbikpIHsNCj4+ICsJCWlmIChQVFJfRVJSKGNoYW4pICE9IC1FUFJPQkVfREVGRVIpDQo+
PiArCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiVW5hYmxlIHRvIHJlcXVlc3QgRE1BIGNoYW5uZWxc
biIpOw0KPj4gKwkJcmV0dXJuIFBUUl9FUlIoY2hhbik7DQo+IA0KPiBTdXJlLCBJIGRvbid0IGtu
b3cgaG93IEkgbWlzc2VkIGl0Lg0KPiANCj4gUmVnYXJkcywNCj4gLSBQw6l0ZXINCj4gDQo+Pg0K
Pj4gQmVzdCByZWdhcmRzLA0KPj4gSHVndWVzLg0KPj4NCj4+IE9uIDEyLzE4LzE5IDExOjUyIEFN
LCBIdWd1ZXMgRlJVQ0hFVCB3cm90ZToNCj4+PiBUaGFua3MgZm9yIHBhdGNoaW5nIFBldGVyLA0K
Pj4+DQo+Pj4gTm8gcmVncmVzc2lvbiBvYnNlcnZlZCBvbiBteSBzaWRlLg0KPj4+DQo+Pj4gQWNr
ZWQtYnk6IEh1Z3VlcyBGcnVjaGV0IDxodWd1ZXMuZnJ1Y2hldEBzdC5jb20+DQo+Pj4NCj4+PiBC
ZXN0IHJlZ2FyZHMsDQo+Pj4gSHVndWVzLg0KPj4+DQo+Pj4gT24gMTIvMTcvMTkgMTE6NDEgQU0s
IFBldGVyIFVqZmFsdXNpIHdyb3RlOg0KPj4+PiBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCkg
aXMgYSB3cmFwcGVyIG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkNCj4+Pj4gZWF0aW5nIHVw
IHRoZSBlcnJvciBjb2RlLg0KPj4+Pg0KPj4+PiBCeSB1c2luZyBkbWFfcmVxdWVzdF9jaGFuKCkg
ZGlyZWN0bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZA0KPj4+PiBwcm9iaW5nIGFn
YWluc3QgRE1BLg0KPj4+Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0
ZXIudWpmYWx1c2lAdGkuY29tPg0KPj4+PiAtLS0NCj4+Pj4gIMKgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jIHwgNiArKystLS0NCj4+Pj4gIMKgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+Pj4+DQo+Pj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYw0KPj4+PiBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jDQo+Pj4+IGluZGV4IDkzOTJl
MzQwOWZiYS4uNTUzNTE4NzJiMGM3IDEwMDY0NA0KPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYw0KPj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3N0bTMyL3N0bTMyLWRjbWkuYw0KPj4+PiBAQCAtMTkxMCwxMCArMTkxMCwxMCBAQCBzdGF0
aWMgaW50IGRjbWlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQ0KPj4+PiAqcGRldikNCj4+
Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihtY2xrKTsNCj4+Pj4gIMKgwqDC
oMKgwqAgfQ0KPj4+PiAtwqDCoMKgIGNoYW4gPSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCZw
ZGV2LT5kZXYsICJ0eCIpOw0KPj4+PiAtwqDCoMKgIGlmICghY2hhbikgew0KPj4+PiArwqDCoMKg
IGNoYW4gPSBkbWFfcmVxdWVzdF9jaGFuKCZwZGV2LT5kZXYsICJ0eCIpOw0KPj4+PiArwqDCoMKg
IGlmIChJU19FUlIoY2hhbikpIHsNCj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfaW5mbygm
cGRldi0+ZGV2LCAiVW5hYmxlIHRvIHJlcXVlc3QgRE1BIGNoYW5uZWwsIGRlZmVyDQo+Pj4+IHBy
b2JpbmdcbiIpOw0KPj4+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FUFJPQkVfREVGRVI7DQo+
Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihjaGFuKTsNCj4+Pj4gIMKgwqDCoMKg
wqAgfQ0KPj4+PiAgwqDCoMKgwqDCoCBzcGluX2xvY2tfaW5pdCgmZGNtaS0+aXJxbG9jayk7DQo+
Pj4+DQo+IA0KPiANCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0
dSAyMiwgMDAxODAgSGVsc2lua2kuDQo+IFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQu
IEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpDQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
