Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E3DAE0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 15:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+XNcvWp3rX5PEsF8MDqVW/HKWTDSuileaNO+c1aMnQ=; b=E/fvxyqUIQumhk
	gYJzlGmheu12zZjPX3t+04EH/XUU7cj166YAf+tX3uzvwcvWBWYWMwmvKCUQGOl7c08Yyogniczuy
	DfQho8aFlRdCZ9CHJYQ3gzCzK95LzxnH2+igBPZaAsJvwsghvvG1RUVHwnsjvalWMTgVstaimfkl0
	p3mCqULKdkIuvg9yPo0bJPOglTGwIhqqtT0uYmSgufyfhfbybQbDmShh/ICG28C2qw4uE9MWt+/kU
	oTivl07sEUwPJlDwVXt/HhMKrTeUumUQO8vMmpfTytv2l8nQ2yBPDktjs/wn7COelUHdLgqE6VTv4
	igDFJGxCprGTFDnmT2jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5eY-0007qm-9K; Thu, 17 Oct 2019 13:17:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5eO-0007qI-K7
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 13:17:10 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9HD6CVj006967; Thu, 17 Oct 2019 15:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Ql0OujNdsh7HlNkPJdHPpQJsudIolEdcAzbL7K21tXw=;
 b=f+NFKXyMqlf+649eWBtvNE5+M9Uu+MHgYPyiNlyutsPnVJAqiWEfNhpuQBN3M2WK9EWH
 wxNt4AlwpEAsJdQdGj0+fNE4XwfpmOaQ2SMVFGpG9qx/td7Rfpfm44nvgR2ArbI2neXR
 23pZvduu4tzj/g/SDfjZR0X7OrmdGAH+eB8OsiO/XgbVpoHUFjTH+jGJJKSRILNpcYR/
 MROUQ49Zk+4lfe541cJzLR0qBQnDVI1k/kq0aqav2Hmoba/KLUHc1Xvb3JtxX+iX759Y
 g4jkK0VIoSpgXntDX+qQKDjwEAR6B0IPjyKvl4vSRY0MdA/S5zaYWmukm2oTxT3KHqX0 Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vk5qjm6ye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 17 Oct 2019 15:17:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EF498100038;
 Thu, 17 Oct 2019 15:17:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BD3C52B893F;
 Thu, 17 Oct 2019 15:17:01 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 17 Oct
 2019 15:17:01 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 17 Oct 2019 15:17:01 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>, "wim@linux-watchdog.org"
 <wim@linux-watchdog.org>, "linux@roeck-us.net" <linux@roeck-us.net>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>
Subject: Re: [PATCH] dt-bindings: watchdog: Convert stm32 watchdog bindings to
 json-schema
Thread-Topic: [PATCH] dt-bindings: watchdog: Convert stm32 watchdog bindings
 to json-schema
Thread-Index: AQHVhOhIJq1ztFHTN0Wx3cBVvo2/U6derAMAgAAC94A=
Date: Thu, 17 Oct 2019 13:17:01 +0000
Message-ID: <6597f899-f049-02dc-de59-07a0f23a88b8@st.com>
References: <20191017124159.13869-1-benjamin.gaignard@st.com>
 <63f96a2f-78c0-21ae-781b-e52068f57103@st.com>
In-Reply-To: <63f96a2f-78c0-21ae-781b-e52068f57103@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <70519150D11ACE47BE29734F40EF3BE2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-17_04:2019-10-17,2019-10-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_061708_954229_367BBD28 
X-CRM114-Status: GOOD (  20.51  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiAxMC8xNy8xOSAzOjA2IFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOg0KPiBIaSBCZW5q
YW1pbg0KPg0KPiBPbiAxMC8xNy8xOSAyOjQxIFBNLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToN
Cj4+IENvbnZlcnQgdGhlIFNUTTMyIHdhdGNoZG9nIGJpbmRpbmcgdG8gRFQgc2NoZW1hIGZvcm1h
dCB1c2luZyBqc29uLXNjaGVtYQ0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWdu
YXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+DQo+PiAtLS0NCj4+IMKgIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcudHh0IHwgMjYgLS0tLS0tLS0tLS0N
Cj4+IMKgIC4uLi9iaW5kaW5ncy93YXRjaGRvZy9zdCxzdG0zMi1pd2RnLnlhbWzCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8IDU0IA0KPj4gKysrKysrKysrKysrKysrKysrKysrKw0KPj4gwqAgMiBmaWxl
cyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkNCj4+IMKgIGRlbGV0
ZSBtb2RlIDEwMDY0NCANCj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRj
aGRvZy9zdCxzdG0zMi1pd2RnLnR4dA0KPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IA0KPj4gRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcueWFt
bA0KPj4NCj4+IGRpZmYgLS1naXQgDQo+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy93YXRjaGRvZy9zdCxzdG0zMi1pd2RnLnR4dCANCj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3N0LHN0bTMyLWl3ZGcudHh0DQo+PiBkZWxldGVkIGZp
bGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IGQ4ZjQ0MzBiMGExMy4uMDAwMDAwMDAwMDAwDQo+PiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzIt
aXdkZy50eHQNCj4+ICsrKyAvZGV2L251bGwNCj4+IEBAIC0xLDI2ICswLDAgQEANCj4+IC1TVE0z
MiBJbmRlcGVuZGVudCBXYXRjaERvRyAoSVdERykNCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4+IC0NCj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOg0KPj4gLS0gY29tcGF0
aWJsZTogU2hvdWxkIGJlIGVpdGhlcjoNCj4+IC3CoCAtICJzdCxzdG0zMi1pd2RnIg0KPj4gLcKg
IC0gInN0LHN0bTMybXAxLWl3ZGciDQo+PiAtLSByZWc6IFBoeXNpY2FsIGJhc2UgYWRkcmVzcyBh
bmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlcnMgc2V0IGZvciB0aGUgDQo+PiBkZXZpY2UNCj4+IC0t
IGNsb2NrczogUmVmZXJlbmNlIHRvIHRoZSBjbG9jayBlbnRyeSBsc2kuIEFkZGl0aW9uYWwgcGNs
ayBjbG9jayBlbnRyeQ0KPj4gLcKgIGlzIHJlcXVpcmVkIG9ubHkgZm9yIHN0LHN0bTMybXAxLWl3
ZGcuDQo+PiAtLSBjbG9jay1uYW1lczogTmFtZSBvZiB0aGUgY2xvY2tzIHVzZWQuDQo+PiAtwqAg
ImxzaSIgZm9yIHN0LHN0bTMyLWl3ZGcNCj4+IC3CoCAibHNpIiwgInBjbGsiIGZvciBzdCxzdG0z
Mm1wMS1pd2RnDQo+PiAtDQo+PiAtT3B0aW9uYWwgUHJvcGVydGllczoNCj4+IC0tIHRpbWVvdXQt
c2VjOiBXYXRjaGRvZyB0aW1lb3V0IHZhbHVlIGluIHNlY29uZHMuDQo+PiAtDQo+PiAtRXhhbXBs
ZToNCj4+IC0NCj4+IC1pd2RnOiB3YXRjaGRvZ0A0MDAwMzAwMCB7DQo+PiAtwqDCoMKgIGNvbXBh
dGlibGUgPSAic3Qsc3RtMzItaXdkZyI7DQo+PiAtwqDCoMKgIHJlZyA9IDwweDQwMDAzMDAwIDB4
NDAwPjsNCj4+IC3CoMKgwqAgY2xvY2tzID0gPCZjbGtfbHNpPjsNCj4+IC3CoMKgwqAgY2xvY2st
bmFtZXMgPSAibHNpIjsNCj4+IC3CoMKgwqAgdGltZW91dC1zZWMgPSA8MzI+Ow0KPj4gLX07DQo+
PiBkaWZmIC0tZ2l0IA0KPj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0
Y2hkb2cvc3Qsc3RtMzItaXdkZy55YW1sIA0KPj4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvd2F0Y2hkb2cvc3Qsc3RtMzItaXdkZy55YW1sDQo+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NA0KPj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lZGVjOTZkNTNlNmINCj4+IC0tLSAvZGV2L251
bGwNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93YXRjaGRvZy9z
dCxzdG0zMi1pd2RnLnlhbWwNCj4+IEBAIC0wLDAgKzEsNTQgQEANCj4+ICsjIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkNCj4+ICslWUFNTCAx
LjINCj4+ICstLS0NCj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3dhdGNo
ZG9nL3N0LHN0bTMyLWl3ZGcueWFtbCMNCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMNCj4+ICsNCj4+ICt0aXRsZTogU1RNaWNyb2VsZWN0
cm9uaWNzIFNUTTMyIEluZGVwZW5kZW50IFdhdGNoRG9HIChJV0RHKSBiaW5kaW5ncw0KPj4gKw0K
Pj4gK21haW50YWluZXJzOg0KPj4gK8KgIC0gWWFubmljayBGZXJ0cmUgPHlhbm5pY2suZmVydHJl
QHN0LmNvbT4NCj4NCj4gWWFubmljayBpcyBzdGlsbCB3b3JraW5nIG9uIHRoaXMgZHJpdmVyID8N
Cg0KVGhhdCBpcyBhIGdvb2QgcXVlc3Rpb24uDQoNClJvYiwgY2FuIHdlIHVzZSB0aGUgU1RNMzIg
ZGVkaWNhdGVkIG1haWxpbmcgbGlzdCBhZGRyZXNzIGZvciB0aGlzIA0KbWFpbnRlbmVycyBmaWVs
ZCA/DQoNCm1haW50YWluZXJzOg0KDQotIGxpbnV4IFNUTTMyIDxsaW51eC1zdG0zMkBzdC1tZC1t
YWlsbWFuLnN0b3JtcmVwbHkuY29tPg0KDQpSZWdhcmRzLA0KDQpCZW5qYW1pbg0KDQo+DQo+PiAr
DQo+PiArYWxsT2Y6DQo+PiArwqAgLSAkcmVmOiAid2F0Y2hkb2cueWFtbCMiDQo+PiArDQo+PiAr
cHJvcGVydGllczoNCj4+ICvCoCBjb21wYXRpYmxlOg0KPj4gK8KgwqDCoCBlbnVtOg0KPj4gK8Kg
wqDCoMKgwqAgLSBzdCxzdG0zMi1pd2RnDQo+PiArwqDCoMKgwqDCoCAtIHN0LHN0bTMybXAxLWl3
ZGcNCj4+ICsNCj4+ICvCoCByZWc6DQo+PiArwqDCoMKgIG1heEl0ZW1zOiAxDQo+PiArDQo+PiAr
wqAgY2xvY2tzOg0KPj4gK8KgwqDCoCBpdGVtczoNCj4+ICvCoMKgwqDCoMKgIC0gZGVzY3JpcHRp
b246IExvdyBzcGVlZCBjbG9jaw0KPj4gK8KgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogT3B0aW9u
YWwgcGVyaXBoZXJhbCBjbG9jaw0KPj4gK8KgwqDCoCBtaW5JdGVtczogMQ0KPj4gK8KgwqDCoCBt
YXhJdGVtczogMg0KPj4gKw0KPj4gK8KgIGNsb2NrLW5hbWVzOg0KPj4gK8KgwqDCoCBpdGVtczoN
Cj4+ICvCoMKgwqDCoMKgIGVudW1zOiBbIGxzaSwgcGNsayBdDQo+PiArwqDCoMKgIG1pbkl0ZW1z
OiAxDQo+PiArwqDCoMKgIG1heEl0ZW1zOiAyDQo+PiArDQo+PiArcmVxdWlyZWQ6DQo+PiArwqAg
LSBjb21wYXRpYmxlDQo+PiArwqAgLSByZWcNCj4+ICvCoCAtIGNsb2Nrcw0KPj4gK8KgIC0gY2xv
Y2stbmFtZXMNCj4+ICsNCj4+ICtleGFtcGxlczoNCj4+ICvCoCAtIHwNCj4+ICvCoMKgwqAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3N0bTMybXAxLWNsa3MuaD4NCj4+ICvCoMKgwqAgd2F0
Y2hkb2dANWEwMDIwMDAgew0KPj4gK8KgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJzdCxzdG0zMm1w
MS1pd2RnIjsNCj4+ICvCoMKgwqDCoMKgIHJlZyA9IDwweDVhMDAyMDAwIDB4NDAwPjsNCj4+ICvC
oMKgwqDCoMKgIGNsb2NrcyA9IDwmcmNjIElXREcyPiwgPCZyY2MgQ0tfTFNJPjsNCj4+ICvCoMKg
wqDCoMKgIGNsb2NrLW5hbWVzID0gInBjbGsiLCAibHNpIjsNCj4+ICvCoMKgwqDCoMKgIHRpbWVv
dXQtc2VjID0gPDMyPjsNCj4+ICvCoMKgwqAgfTsNCj4+ICsNCj4+ICsuLi4NCj4+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
