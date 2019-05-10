Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DD21A11E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 18:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4R4ui8bHBJjSLfXD85c2DJbhpsRRZB5VC346sbBmbs=; b=HiVgl9rkPaSa1I
	CznITxxWsEkHJuYjniKLd/QMUY0dR2ydjSf5lbLNTg0qX6M4y2HcumZC2fEqJ4VBq560SzXbcGiZo
	N9bC7lNc0qAZwoYAvN77ccWSuXcogxD1vF/nuGEZaTP19Qn1Lt7ouHENBN5072/2nLTVLxFF/3zA0
	ApEzbcFqhqWJoaAPIXv+cNjKfmJEf+FakSA7d0XOT3z0LBxZXvkfMooUiLXzEb5twsKRD0smi6L+L
	g3zR1oDb1C7HKT1ccMdUoHDtHeQMBB18ALxcpJg8hM75rz+ftb8R+Hl1e/7JQwP4HkNuG3OWQyFA9
	a+xze/MTjIBSJPP2I99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP8C4-0000Ng-Gg; Fri, 10 May 2019 16:16:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP8Bw-0000NB-L1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 16:16:14 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AGG1vF013669; Fri, 10 May 2019 18:16:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=VgtnuczJ1VmEjL9KLhjBtAnoPvF5YkL+okHlKHHm4to=;
 b=MGfhAQOV2XXPRgLMuLH/RPOFmgOifRmtDA4T9In4bAMbSqfzChq06IDno6qhwPDW6yQX
 zC1AowlCXz6I/k7jlnSiWsY92OIZU7POUB5whJf+Sl4JoEnStdmNOY/dmzZKd+4JvdWr
 I2eSU7zrvnRe5RLq9p6VgE1L6GgI1SzCE7vCMwGQEr0CuYAhFzJdm/9/YNswsoJQwAV5
 y9YwRlo+CQt1ZfLU5URQM1BYn5vuE96OgOMSZ5YE61PIPxVcHXkDHGyJ0j4LWKhE3hNx
 R18OMgZ020HEzQ7ldhkEHlUmO+mdeWrkmN52B+E/kibgEQ+hjMRrFqIfPjnbkkbnU8X8 xA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scdjpa383-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 18:16:04 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 778EF31;
 Fri, 10 May 2019 16:16:03 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4753B2BF8;
 Fri, 10 May 2019 16:16:03 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May
 2019 18:16:02 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Fri, 10 May 2019 18:16:02 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Benjamin GAIGNARD
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
Subject: Re: [PATCH v2 2/3] drm/stm: dsi: add support of an optional regulator
Thread-Topic: [PATCH v2 2/3] drm/stm: dsi: add support of an optional regulator
Thread-Index: AQHVBzuGk3zmpKD8A0icC0w7qYlN5KZkZ1OA
Date: Fri, 10 May 2019 16:16:02 +0000
Message-ID: <c1a7f401-a736-8145-2732-c7eea881ba37@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
 <1557498023-10766-3-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557498023-10766-3-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <6368CA83FD8CB247814CFB2B3460EB0C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_091613_022464_3A0A741D 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

RGVhciBZYW5uaWNrLA0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLA0KDQpJIGxpa2UgYmV0dGVy
IHRoZSBuZXcgc2hvcnRlciBjb21taXQgaGVhZGluZywgdGhhbmsgeW91Lg0KDQoNCk9uIDUvMTAv
MTkgNDoyMCBQTSwgWWFubmljayBGZXJ0csOpIHdyb3RlOg0KPiBBZGQgc3VwcG9ydCBvZiBhbiBv
cHRpb25hbCByZWd1bGF0b3IgZm9yIHRoZSBwaHkgcGFydCBvZiB0aGUgRFNJDQo+IGNvbnRyb2xs
ZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJl
QHN0LmNvbT4NCj4gLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0u
YyB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tDQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9zdG0vZHdfbWlwaV9kc2ktc3RtLmMNCj4gaW5kZXggMWJlZjczZS4uMjJiZDA5NSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0bS9kd19taXBpX2RzaS1zdG0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vc3RtL2R3X21pcGlfZHNpLXN0bS5jDQo+IEBAIC05LDYgKzksNyBAQA0K
PiAgICNpbmNsdWRlIDxsaW51eC9jbGsuaD4NCj4gICAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+
DQo+ICAgI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPg0KPiArI2luY2x1ZGUgPGxpbnV4L3JlZ3Vs
YXRvci9jb25zdW1lci5oPg0KPiAgICNpbmNsdWRlIDxkcm0vZHJtUC5oPg0KPiAgICNpbmNsdWRl
IDxkcm0vZHJtX21pcGlfZHNpLmg+DQo+ICAgI2luY2x1ZGUgPGRybS9icmlkZ2UvZHdfbWlwaV9k
c2kuaD4NCj4gQEAgLTc2LDYgKzc3LDcgQEAgc3RydWN0IGR3X21pcGlfZHNpX3N0bSB7DQo+ICAg
CXUzMiBod192ZXJzaW9uOw0KPiAgIAlpbnQgbGFuZV9taW5fa2JwczsNCj4gICAJaW50IGxhbmVf
bWF4X2ticHM7DQo+ICsJc3RydWN0IHJlZ3VsYXRvciAqdmRkX3N1cHBseTsNCj4gICB9Ow0KPiAg
IA0KPiAgIHN0YXRpYyBpbmxpbmUgdm9pZCBkc2lfd3JpdGUoc3RydWN0IGR3X21pcGlfZHNpX3N0
bSAqZHNpLCB1MzIgcmVnLCB1MzIgdmFsKQ0KPiBAQCAtMzE4LDE3ICszMjAsMzEgQEAgc3RhdGlj
IGludCBkd19taXBpX2RzaV9zdG1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikN
Cj4gICAJCXJldHVybiBQVFJfRVJSKGRzaS0+YmFzZSk7DQo+ICAgCX0NCj4gICANCj4gKwlkc2kt
PnZkZF9zdXBwbHkgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAicGh5LWRzaSIp
Ow0KPiArCWlmIChJU19FUlIoZHNpLT52ZGRfc3VwcGx5KSkgew0KPiArCQlyZXQgPSBQVFJfRVJS
KGRzaS0+dmRkX3N1cHBseSk7DQo+ICsJCWlmIChyZXQgIT0gLUVQUk9CRV9ERUZFUikNCj4gKwkJ
CURSTV9FUlJPUigiZmFpbGVkIHRvIHJlcXVlc3QgcmVndWxhdG9yOiAlZFxuIiwgcmV0KTsNCj4g
KwkJcmV0dXJuIHJldDsNCj4gKwl9DQo+ICsNCj4gKwlyZXQgPSByZWd1bGF0b3JfZW5hYmxlKGRz
aS0+dmRkX3N1cHBseSk7DQo+ICsJaWYgKHJldCkgew0KPiArCQlEUk1fRVJST1IoImZhaWxlZCB0
byBlbmFibGUgcmVndWxhdG9yOiAlZFxuIiwgcmV0KTsNCj4gKwkJcmV0dXJuIHJldDsNCj4gKwl9
DQo+ICsNCj4gICAJZHNpLT5wbGxyZWZfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgInJlZiIpOw0K
PiAgIAlpZiAoSVNfRVJSKGRzaS0+cGxscmVmX2NsaykpIHsNCj4gICAJCXJldCA9IFBUUl9FUlIo
ZHNpLT5wbGxyZWZfY2xrKTsNCj4gLQkJZGV2X2VycihkZXYsICJVbmFibGUgdG8gZ2V0IHBsbCBy
ZWZlcmVuY2UgY2xvY2s6ICVkXG4iLCByZXQpOw0KPiAtCQlyZXR1cm4gcmV0Ow0KPiArCQlEUk1f
RVJST1IoIlVuYWJsZSB0byBnZXQgcGxsIHJlZmVyZW5jZSBjbG9jazogJWRcbiIsIHJldCk7DQo+
ICsJCWdvdG8gZXJyX2Nsa19nZXQ7DQo+ICAgCX0NCj4gICANCj4gICAJcmV0ID0gY2xrX3ByZXBh
cmVfZW5hYmxlKGRzaS0+cGxscmVmX2Nsayk7DQo+ICAgCWlmIChyZXQpIHsNCj4gLQkJZGV2X2Vy
cihkZXYsICIlczogRmFpbGVkIHRvIGVuYWJsZSBwbGxyZWZfY2xrXG4iLCBfX2Z1bmNfXyk7DQo+
IC0JCXJldHVybiByZXQ7DQo+ICsJCURSTV9FUlJPUigiJXM6IEZhaWxlZCB0byBlbmFibGUgcGxs
cmVmX2Nsa1xuIiwgX19mdW5jX18pOw0KPiArCQlnb3RvIGVycl9jbGtfZ2V0Ow0KPiAgIAl9DQo+
ICAgDQo+ICAgCWR3X21pcGlfZHNpX3N0bV9wbGF0X2RhdGEuYmFzZSA9IGRzaS0+YmFzZTsNCj4g
QEAgLTMzOSwxMSArMzU1LDE5IEBAIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfc3RtX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+ICAgCWRzaS0+ZHNpID0gZHdfbWlwaV9kc2lf
cHJvYmUocGRldiwgJmR3X21pcGlfZHNpX3N0bV9wbGF0X2RhdGEpOw0KPiAgIAlpZiAoSVNfRVJS
KGRzaS0+ZHNpKSkgew0KPiAgIAkJRFJNX0VSUk9SKCJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBtaXBp
IGRzaSBob3N0XG4iKTsNCj4gLQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Ns
ayk7DQo+IC0JCXJldHVybiBQVFJfRVJSKGRzaS0+ZHNpKTsNCj4gKwkJcmV0ID0gUFRSX0VSUihk
c2ktPmRzaSk7DQo+ICsJCWdvdG8gZXJyX2RzaV9wcm9iZTsNCj4gICAJfQ0KPiAgIA0KPiAgIAly
ZXR1cm4gMDsNCj4gKw0KPiArZXJyX2RzaV9wcm9iZToNCj4gKwljbGtfZGlzYWJsZV91bnByZXBh
cmUoZHNpLT5wbGxyZWZfY2xrKTsNCj4gK2Vycl9jbGtfZ2V0Og0KPiArCXJlZ3VsYXRvcl9kaXNh
YmxlKGRzaS0+dmRkX3N1cHBseSk7DQo+ICsNCj4gKwlyZXR1cm4gcmV0Ow0KPiArDQo+ICAgfQ0K
PiAgIA0KPiAgIHN0YXRpYyBpbnQgZHdfbWlwaV9kc2lfc3RtX3JlbW92ZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQ0KPiBAQCAtMzUxLDYgKzM3NSw3IEBAIHN0YXRpYyBpbnQgZHdfbWlw
aV9kc2lfc3RtX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQ0KPiAgIAlzdHJ1
Y3QgZHdfbWlwaV9kc2lfc3RtICpkc2kgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsNCj4g
ICANCj4gICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+cGxscmVmX2Nsayk7DQo+ICsJcmVn
dWxhdG9yX2Rpc2FibGUoZHNpLT52ZGRfc3VwcGx5KTsNCj4gICAJZHdfbWlwaV9kc2lfcmVtb3Zl
KGRzaS0+ZHNpKTsNCg0KZm9yIGEgZnV0dXJlIHBhdGNoOiB3ZSBtYXkgaGF2ZSBhIGRpZmZlcmVu
dCBvcmRlcg0KCWR3X21pcGlfZHNpX3JlbW92ZShkc2ktPmRzaSk7ICAgCQ0KCWNsa19kaXNhYmxl
X3VucHJlcGFyZShkc2ktPnBsbHJlZl9jbGspOw0KCXJlZ3VsYXRvcl9kaXNhYmxlKGRzaS0+dmRk
X3N1cHBseSk7DQoNCj4gICANCj4gICAJcmV0dXJuIDA7DQo+IEBAIC0zNjMsNiArMzg4LDcgQEAg
c3RhdGljIGludCBfX21heWJlX3VudXNlZCBkd19taXBpX2RzaV9zdG1fc3VzcGVuZChzdHJ1Y3Qg
ZGV2aWNlICpkZXYpDQo+ICAgCURSTV9ERUJVR19EUklWRVIoIlxuIik7DQo+ICAgDQo+ICAgCWNs
a19kaXNhYmxlX3VucHJlcGFyZShkc2ktPnBsbHJlZl9jbGspOw0KPiArCXJlZ3VsYXRvcl9kaXNh
YmxlKGRzaS0+dmRkX3N1cHBseSk7DQo+ICAgDQo+ICAgCXJldHVybiAwOw0KPiAgIH0NCj4gQEAg
LTM3MCw5ICszOTYsMTYgQEAgc3RhdGljIGludCBfX21heWJlX3VudXNlZCBkd19taXBpX2RzaV9z
dG1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICAgc3RhdGljIGludCBfX21heWJlX3Vu
dWR3X21pcGlfZHNpX3JlbW92ZShkc2ktPmRzaSk7c2VkIGR3X21pcGlfZHNpX3N0bV9yZXN1bWUo
c3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsNCj4gICAJc3RydWN0IGR3X21pcGlfZHNpX3N0bSAq
ZHNpID0gZHdfbWlwaV9kc2lfc3RtX3BsYXRfZGF0YS5wcml2X2RhdGE7DQo+ICsJaW50IHJldDsN
Cj4gICANCj4gICAJRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsNCj4gICANCj4gKwlyZXQgPSByZWd1
bGF0b3JfZW5hYmxlKGRzaS0+dmRkX3N1cHBseSk7DQo+ICsJaWYgKHJldCkgew0KPiArCQlEUk1f
RVJST1IoImZhaWxlZCB0byBlbmFibGUgcmVndWxhdG9yOiAlZFxuIiwgcmV0KTsNCj4gKwkJcmV0
dXJuIHJldDsNCj4gKwl9DQo+ICsNCj4gICAJY2xrX3ByZXBhcmVfZW5hYmxlKGRzaS0+cGxscmVm
X2Nsayk7DQoNCmZvciBhIGZ1dHVyZSBwYXRjaDogd2UgbWF5IGNoZWNrIGNsa19wcmVwYXJlX2Vu
YWJsZSByZXR1cm4gdmFsdWUuDQoNCj4gICANCj4gICAJcmV0dXJuIDA7DQo+IA0KDQoNCkFja2Vk
LWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPg0KDQpQaGlsaXBwZSA6
KQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
