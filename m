Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240B27EFD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 11:04:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXsKYfulXbj1UvY25bcR2Goqd9FURaHh6wTYBEBZIKg=; b=MnGcLkF2Qadrx1
	z50nvXqxhNijwvqtY8vToBwYh7+HBrSZ2ZOc09ZXG1nF80oy9iE/2s5oLR80fKnpazPPPj+HzFGMC
	EmETPm6NGJGctR5bzvvsIcy+K1EOmp31hRnDZuOZlUyPmQVVdBNe5smAm/s0OE8RMEn0d5OVeGJb8
	4eCIk9YkjLDIJs9eqNwFDINGjYP/cmMZkVwP3bFSGa/S+v0v0jsMqS0+3O/fch3En0iHB+70eTwRV
	S3fX7eZK4ldHn15vJDW9zXdkBflnhi+LEXxVtrmUiIZ0rFhGrRRzksgJn7YdNFnfeTYg3qoMdwDly
	5jHi69nASo3OXxcQqf/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htTTc-00073c-3P; Fri, 02 Aug 2019 09:03:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htTTE-000715-GD
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 09:03:30 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x728vM31018928; Fri, 2 Aug 2019 11:03:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=/c6M4Kgy/OaOqm9ReDvI+RnQ7oRMLq+Kmwe2yWmkZJg=;
 b=ITrWI3qek5hq+brv3KNG3VOMe4Hv9411BngbttMG/nR0v1YAPQWifRZXdytC0ILTYdB1
 /EFF1bD/0BoVxGZagksetXHtYoGQGUrhHhDQuG4v1EaJLQ1clPbhCZTqqYzgnvAedQBz
 7dMRjSDB5AqZpd13DYLlG+k/rX3mTpjOMAyob9eRxM+e86K7anQIcWp13W1ETGrBg7rp
 FM5BP5gmkMoSY64Lxh7gld+AMA2fH/7ce+OzpfWuHzmgMox3lebz8U/8lStpf++Ytb5Z
 OlI5vZQ1gaDyBMN7MLVsqQE1KKmJ7OV3mCvnO5mfh4dnBCWqF2oy8SOJfXI/NT66D3GY AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u2jp4tg41-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 11:03:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AA0B72;
 Fri,  2 Aug 2019 09:02:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 249C6207590;
 Fri,  2 Aug 2019 11:02:15 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 2 Aug
 2019 11:02:14 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Fri, 2 Aug 2019 11:02:14 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Philippe CORNU <philippe.cornu@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/5] ARM: dts: stm32: move fixe regulators reg11 & reg18
Thread-Topic: [PATCH v2 4/5] ARM: dts: stm32: move fixe regulators reg11 &
 reg18
Thread-Index: AQHVBzuHVp0xADBqOUWv73kMsysPZqbn8fUA
Date: Fri, 2 Aug 2019 09:02:14 +0000
Message-ID: <298dc1b0-d694-1137-c0cc-7fc2058d38ac@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
 <1557498023-10766-5-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557498023-10766-5-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <B984DD66FFC40743A321A12B585C56AE@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_020328_841294_36F180D8 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

SGkgQWxleGFuZHJlLA0KDQp0aGlzIHBhdGNoIGNhbiBiZSBhYmFuZG9uZWQuDQoNCkJSDQoNCi0t
IA0KWWFubmljayBGZXJ0csOpIHwgVElOQTogMTY2IDcxNTIgfCBUZWw6ICszMyAyNDQwMjcxNTIg
fCBNb2JpbGU6ICszMyA2MjA2MDAyNzANCk1pY3JvY29udHJvbGxlcnMgYW5kIERpZ2l0YWwgSUNz
IEdyb3VwIHwgTWljcm9jb250cm9sbGV1cnMgRGl2aXNpb24NCg0KT24gNS8xMC8xOSA0OjIwIFBN
LCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6DQo+IE1vdmUgcmVndWxhdG9ycyByZWcxMSAmIHJlZzE4
IGZyb20gZGV2aWNlLXRyZWUgZmlsZXMgc3RtMzJtcDE1N2MtZWQxLmR0cw0KPiAmIHN0bTMybXAx
NTdjLWRrMi5kdHMgdG8gZmlsZSBzdG0zMm1wMTU3Yy5kdHNpLg0KPg0KPiBTaWduZWQtb2ZmLWJ5
OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4NCj4gLS0tDQo+ICAgYXJj
aC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cyB8ICA4IC0tLS0tLS0tDQo+ICAgYXJj
aC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZWQxLmR0cyB8IDE2IC0tLS0tLS0tLS0tLS0tLS0N
Cj4gICBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpICAgIHwgMTYgKysrKysrKysr
KysrKysrKw0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRp
b25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1k
azIuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZGsyLmR0cw0KPiBpbmRleCAy
MGVhNjAxLi4wMjBlYTBmIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3Yy1kazIuZHRzDQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5k
dHMNCj4gQEAgLTExLDE0ICsxMSw2IEBADQo+ICAgLyB7DQo+ICAgCW1vZGVsID0gIlNUTWljcm9l
bGVjdHJvbmljcyBTVE0zMk1QMTU3Qy1ESzIgRGlzY292ZXJ5IEJvYXJkIjsNCj4gICAJY29tcGF0
aWJsZSA9ICJzdCxzdG0zMm1wMTU3Yy1kazIiLCAic3Qsc3RtMzJtcDE1NyI7DQo+IC0NCj4gLQly
ZWcxODogcmVnMTggew0KPiAtCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7DQo+IC0J
CXJlZ3VsYXRvci1uYW1lID0gInJlZzE4IjsNCj4gLQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQg
PSA8MTgwMDAwMD47DQo+IC0JCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Ow0K
PiAtCQlyZWd1bGF0b3ItYWx3YXlzLW9uOw0KPiAtCX07DQo+ICAgfTsNCj4gICANCj4gICAmZHNp
IHsNCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVkMS5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1lZDEuZHRzDQo+IGluZGV4IDYyYThjNzgu
LmY0MTE4OWMgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWVk
MS5kdHMNCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZWQxLmR0cw0KPiBA
QCAtMjcsMjIgKzI3LDYgQEANCj4gICAJCXNlcmlhbDAgPSAmdWFydDQ7DQo+ICAgCX07DQo+ICAg
DQo+IC0JcmVnMTE6IHJlZzExIHsNCj4gLQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQi
Ow0KPiAtCQlyZWd1bGF0b3ItbmFtZSA9ICJyZWcxMSI7DQo+IC0JCXJlZ3VsYXRvci1taW4tbWlj
cm92b2x0ID0gPDExMDAwMDA+Ow0KPiAtCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMTAw
MDAwPjsNCj4gLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsNCj4gLQl9Ow0KPiAtDQo+IC0JcmVnMTg6
IHJlZzE4IHsNCj4gLQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOw0KPiAtCQlyZWd1
bGF0b3ItbmFtZSA9ICJyZWcxOCI7DQo+IC0JCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4
MDAwMDA+Ow0KPiAtCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsNCj4gLQkJ
cmVndWxhdG9yLWFsd2F5cy1vbjsNCj4gLQl9Ow0KPiAtDQo+ICAgCXNkX3N3aXRjaDogcmVndWxh
dG9yLXNkX3N3aXRjaCB7DQo+ICAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1ncGlvIjsNCj4g
ICAJCXJlZ3VsYXRvci1uYW1lID0gInNkX3N3aXRjaCI7DQo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9zdG0zMm1wMTU3Yy5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
N2MuZHRzaQ0KPiBpbmRleCA2YjE0ZjFlLi5hYWFjNTFjZCAxMDA2NDQNCj4gLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MuZHRzaQ0KPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3Yy5kdHNpDQo+IEBAIC0xMSw2ICsxMSwyMiBAQA0KPiAgIAkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsNCj4gICAJI3NpemUtY2VsbHMgPSA8MT47DQo+ICAgDQo+ICsJcmVnMTE6IHJlZzEx
IHsNCj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOw0KPiArCQlyZWd1bGF0b3It
bmFtZSA9ICJyZWcxMSI7DQo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDExMDAwMDA+
Ow0KPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMTAwMDAwPjsNCj4gKwkJcmVndWxh
dG9yLWFsd2F5cy1vbjsNCj4gKwl9Ow0KPiArDQo+ICsJcmVnMTg6IHJlZzE4IHsNCj4gKwkJY29t
cGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOw0KPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJyZWcx
OCI7DQo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+Ow0KPiArCQlyZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsNCj4gKwkJcmVndWxhdG9yLWFsd2F5cy1v
bjsNCj4gKwl9Ow0KPiArDQo+ICAgCWNwdXMgew0KPiAgIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47
DQo+ICAgCQkjc2l6ZS1jZWxscyA9IDwwPjsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
