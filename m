Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA02388DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+BC4B7RiBeTHgDQzBUpEdjnTM+B2gGbAsGzpMkedKo=; b=tVnfXWFBynwgrb
	eMLxM5StEy5ES/8cfCUqKctM8jYUognLfF/faJtwnSj3NCASpR0K7b8MKbtsd0WvNl/ULNfsrKnsw
	2m6z6nIa6FCcft/c0lpzdwV3jELgs1TFV3WmeSoP6z5C2HPtKA0CI2/Je0Sc3HQH8o7bhiF7ZChqQ
	Cx0Uua/bV6uMsQ4wmay6hKUf0gsdoWD3pL38egZvzL//zKtSzaSnzIS+XLr+h0tIFzFqq+qPNabyV
	2Fr24Trhkd53ORi+GerWB7mN4E/e5apZo/MYRaZFI8VpDCD4AJqRkA/bQCNRij7ozA5c/Pd4FO+CD
	PBwfsFtRFlMtlfL6FQ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCuu-0004Jx-4T; Fri, 07 Jun 2019 11:20:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCuc-0004GG-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:20:01 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x57BHPmC009636; Fri, 7 Jun 2019 13:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=E7hqiyPGuhFD4EOtHrqlG3C3jcySjC2dnIpQ86aTUrk=;
 b=x78sMILkZxzqVtLZnlZKCwSX/vu4ib26otV+WK4uhQY2La1GZrs2JcMDfEylQjzYi24j
 KFRPmRgcj/y3X63wMzPCAV7+VNtUmjNkhoNCM0qwX+NEBx88zJx/5a2UPi9gI+TLLbWv
 1d/7a8wAkBEeZi9Sz+B2i6VmRl8iCTmhc3Y5T3W1lImh0TaOKYvaOL3GTKicsxaqt3jO
 i15NbBuy+MgJfG6yo8zWJmTX7ZrjdssSuiLv6xv78CBeyFPvL6yFG1UCryJZsl8WMASc
 5XG+2qUE3lz78XppQceQVlfCA/M3Z7zuL5tEgCjBfTw4Vkhr++PQ8B88Fx0T0K5ryhnk Vg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sxqxk0s30-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 07 Jun 2019 13:19:51 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AD45931;
 Fri,  7 Jun 2019 11:19:50 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0FC2D278B;
 Fri,  7 Jun 2019 11:19:50 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 7 Jun
 2019 13:19:49 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Fri, 7 Jun 2019 13:19:49 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, "David
 Airlie" <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/stm: support runtime power management
Thread-Topic: [PATCH] drm/stm: support runtime power management
Thread-Index: AQHVGebTKkQB+MP0uESmlxMNeSEmd6aP8IGA
Date: Fri, 7 Jun 2019 11:19:49 +0000
Message-ID: <abc976d8-9867-335c-1cb1-6f5c0dd1586c@st.com>
References: <1559550722-14091-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1559550722-14091-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <D493852A7DCA5E4687180F1DCA1A7C62@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-07_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_041959_277246_9885F54A 
X-CRM114-Status: GOOD (  27.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkgWWFubmljaywNCg0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoDQoNCkFja2VkLWJ5OiBQaGls
aXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPg0KDQpQaGlsaXBwZSA6LSkNCg0KT24g
Ni8zLzE5IDEwOjMyIEFNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6DQo+IFRoaXMgcGF0Y2ggZW5h
YmxlcyBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQgKHJ1bnRpbWUgUE0pIHN1cHBvcnQgZm9yDQo+
IHRoZSBkaXNwbGF5IGNvbnRyb2xsZXIuIHBtX3J1bnRpbWVfZW5hYmxlKCkgYW5kIHBtX3J1bnRp
bWVfZGlzYWJsZSgpDQo+IGFyZSBhZGRlZCBkdXJpbmcgbHRkYyBsb2FkIGFuZCB1bmxvYWQgcmVz
cGVjdGl2ZWx5Lg0KPiBwbV9ydW50aW1lX2dldF9zeW5jKCkgYW5kIHBtX3J1bnRpbWVfcHV0X3N5
bmMoKSBhcmUgYWRkZWQgZm9yIGx0ZGMNCj4gcmVnaXN0ZXIgYWNjZXNzLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+DQo+IC0tLQ0K
PiAgIGRyaXZlcnMvZ3B1L2RybS9zdG0vZHJ2LmMgIHwgNDMgKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8IDY3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gICAyIGZpbGVzIGNoYW5nZWQs
IDg2IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9zdG0vZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2Rydi5jDQo+IGlu
ZGV4IDU4MzRlZjUuLjU2NTk1NzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0v
ZHJ2LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0bS9kcnYuYw0KPiBAQCAtMTIsNiArMTIs
NyBAQA0KPiAgICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwcGluZy5oPg0KPiAgICNpbmNsdWRlIDxs
aW51eC9tb2R1bGUuaD4NCj4gICAjaW5jbHVkZSA8bGludXgvb2ZfcGxhdGZvcm0uaD4NCj4gKyNp
bmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+DQo+ICAgDQo+ICAgI2luY2x1ZGUgPGRybS9kcm1f
YXRvbWljLmg+DQo+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiBAQCAt
MTM1LDE0ICsxMzYsMTUgQEAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGludCBkcnZfc3VzcGVuZChz
dHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICAgCXN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGRkZXYt
PmRldl9wcml2YXRlOw0KPiAgIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGU7DQo+ICAg
DQo+IC0JZHJtX2ttc19oZWxwZXJfcG9sbF9kaXNhYmxlKGRkZXYpOw0KPiArCWlmIChXQVJOX09O
KCFsZGV2LT5zdXNwZW5kX3N0YXRlKSkNCj4gKwkJcmV0dXJuIC1FTk9FTlQ7DQo+ICsNCj4gICAJ
c3RhdGUgPSBkcm1fYXRvbWljX2hlbHBlcl9zdXNwZW5kKGRkZXYpOw0KPiAtCWlmIChJU19FUlIo
c3RhdGUpKSB7DQo+IC0JCWRybV9rbXNfaGVscGVyX3BvbGxfZW5hYmxlKGRkZXYpOw0KPiArCWlm
IChJU19FUlIoc3RhdGUpKQ0KPiAgIAkJcmV0dXJuIFBUUl9FUlIoc3RhdGUpOw0KPiAtCX0NCj4g
Kw0KPiAgIAlsZGV2LT5zdXNwZW5kX3N0YXRlID0gc3RhdGU7DQo+IC0JbHRkY19zdXNwZW5kKGRk
ZXYpOw0KPiArCXBtX3J1bnRpbWVfZm9yY2Vfc3VzcGVuZChkZXYpOw0KPiAgIA0KPiAgIAlyZXR1
cm4gMDsNCj4gICB9DQo+IEBAIC0xNTEsMTYgKzE1Myw0MSBAQCBzdGF0aWMgX19tYXliZV91bnVz
ZWQgaW50IGRydl9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsNCj4gICAJc3RydWN0
IGRybV9kZXZpY2UgKmRkZXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCj4gICAJc3RydWN0IGx0
ZGNfZGV2aWNlICpsZGV2ID0gZGRldi0+ZGV2X3ByaXZhdGU7DQo+ICsJaW50IHJldDsNCj4gICAN
Cj4gLQlsdGRjX3Jlc3VtZShkZGV2KTsNCj4gLQlkcm1fYXRvbWljX2hlbHBlcl9yZXN1bWUoZGRl
diwgbGRldi0+c3VzcGVuZF9zdGF0ZSk7DQo+IC0JZHJtX2ttc19oZWxwZXJfcG9sbF9lbmFibGUo
ZGRldik7DQo+ICsJcG1fcnVudGltZV9mb3JjZV9yZXN1bWUoZGV2KTsNCj4gKwlyZXQgPSBkcm1f
YXRvbWljX2hlbHBlcl9yZXN1bWUoZGRldiwgbGRldi0+c3VzcGVuZF9zdGF0ZSk7DQo+ICsJaWYg
KHJldCkgew0KPiArCQlwbV9ydW50aW1lX2ZvcmNlX3N1c3BlbmQoZGV2KTsNCj4gKwkJbGRldi0+
c3VzcGVuZF9zdGF0ZSA9IE5VTEw7DQo+ICsJCXJldHVybiByZXQ7DQo+ICsJfQ0KPiAgIA0KPiAg
IAlyZXR1cm4gMDsNCj4gICB9DQo+ICAgDQo+ICtzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRy
dl9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQ0KPiArew0KPiArCXN0cnVjdCBk
cm1fZGV2aWNlICpkZGV2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7DQo+ICsNCj4gKwlEUk1fREVC
VUdfRFJJVkVSKCJcbiIpOw0KPiArCWx0ZGNfc3VzcGVuZChkZGV2KTsNCj4gKw0KPiArCXJldHVy
biAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgX19tYXliZV91bnVzZWQgaW50IGRydl9ydW50aW1l
X3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9kZXZpY2Ug
KmRkZXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsNCj4gKw0KPiArCURSTV9ERUJVR19EUklWRVIo
IlxuIik7DQo+ICsJcmV0dXJuIGx0ZGNfcmVzdW1lKGRkZXYpOw0KPiArfQ0KPiArDQo+ICAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGRydl9wbV9vcHMgPSB7DQo+ICAgCVNFVF9TWVNU
RU1fU0xFRVBfUE1fT1BTKGRydl9zdXNwZW5kLCBkcnZfcmVzdW1lKQ0KPiArCVNFVF9SVU5USU1F
X1BNX09QUyhkcnZfcnVudGltZV9zdXNwZW5kLA0KPiArCQkJICAgZHJ2X3J1bnRpbWVfcmVzdW1l
LCBOVUxMKQ0KPiAgIH07DQo+ICAgDQo+ICAgc3RhdGljIGludCBzdG1fZHJtX3BsYXRmb3JtX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQo+IGluZGV4
IGFjMjk4OTAuLmE0MDg3MGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRk
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQo+IEBAIC0xNiw2ICsxNiw3
IEBADQo+ICAgI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4NCj4gICAjaW5jbHVkZSA8bGlu
dXgvb2ZfZ3JhcGguaD4NCj4gICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+DQo+
ICsjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPg0KPiAgICNpbmNsdWRlIDxsaW51eC9yZXNl
dC5oPg0KPiAgIA0KPiAgICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5oPg0KPiBAQCAtNDQ0LDYg
KzQ0NSw3IEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9taWNfZGlzYWJsZShzdHJ1Y3QgZHJt
X2NydGMgKmNydGMsDQo+ICAgCQkJCSAgICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpvbGRfc3Rh
dGUpDQo+ICAgew0KPiAgIAlzdHJ1Y3QgbHRkY19kZXZpY2UgKmxkZXYgPSBjcnRjX3RvX2x0ZGMo
Y3J0Yyk7DQo+ICsJc3RydWN0IGRybV9kZXZpY2UgKmRkZXYgPSBjcnRjLT5kZXY7DQo+ICAgDQo+
ICAgCURSTV9ERUJVR19EUklWRVIoIlxuIik7DQo+ICAgDQo+IEBAIC00NTcsNiArNDU5LDggQEAg
c3RhdGljIHZvaWQgbHRkY19jcnRjX2F0b21pY19kaXNhYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0
YywNCj4gICANCj4gICAJLyogaW1tZWRpYXRlbHkgY29tbWl0IGRpc2FibGUgb2YgbGF5ZXJzIGJl
Zm9yZSBzd2l0Y2hpbmcgb2ZmIExUREMgKi8NCj4gICAJcmVnX3NldChsZGV2LT5yZWdzLCBMVERD
X1NSQ1IsIFNSQ1JfSU1SKTsNCj4gKw0KPiArCXBtX3J1bnRpbWVfcHV0X3N5bmMoZGRldi0+ZGV2
KTsNCj4gICB9DQo+ICAgDQo+ICAgI2RlZmluZSBDTEtfVE9MRVJBTkNFX0haIDUwDQo+IEBAIC01
MDUsMTcgKzUwOSwzMSBAQCBzdGF0aWMgYm9vbCBsdGRjX2NydGNfbW9kZV9maXh1cChzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMsDQo+ICAgCQkJCSBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSkNCj4gICB7DQo+ICAgCXN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9f
bHRkYyhjcnRjKTsNCj4gKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGNydGMtPmRldjsNCj4g
ICAJaW50IHJhdGUgPSBtb2RlLT5jbG9jayAqIDEwMDA7DQo+ICsJYm9vbCBydW50aW1lX2FjdGl2
ZTsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJcnVudGltZV9hY3RpdmUgPSBwbV9ydW50aW1lX2Fj
dGl2ZShkZGV2LT5kZXYpOw0KPiArDQo+ICsJaWYgKHJ1bnRpbWVfYWN0aXZlKQ0KPiArCQlwbV9y
dW50aW1lX3B1dF9zeW5jKGRkZXYtPmRldik7DQo+ICAgDQo+IC0JY2xrX2Rpc2FibGUobGRldi0+
cGl4ZWxfY2xrKTsNCj4gICAJaWYgKGNsa19zZXRfcmF0ZShsZGV2LT5waXhlbF9jbGssIHJhdGUp
IDwgMCkgew0KPiAgIAkJRFJNX0VSUk9SKCJDYW5ub3Qgc2V0IHJhdGUgKCVkSHopIGZvciBwaXhl
bCBjbGtcbiIsIHJhdGUpOw0KPiAgIAkJcmV0dXJuIGZhbHNlOw0KPiAgIAl9DQo+IC0JY2xrX2Vu
YWJsZShsZGV2LT5waXhlbF9jbGspOw0KPiAgIA0KPiAgIAlhZGp1c3RlZF9tb2RlLT5jbG9jayA9
IGNsa19nZXRfcmF0ZShsZGV2LT5waXhlbF9jbGspIC8gMTAwMDsNCj4gICANCj4gKwlpZiAocnVu
dGltZV9hY3RpdmUpIHsNCj4gKwkJcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhkZGV2LT5kZXYp
Ow0KPiArCQlpZiAocmV0KSB7DQo+ICsJCQlEUk1fRVJST1IoIkZhaWxlZCB0byBmaXh1cCBtb2Rl
LCBjYW5ub3QgZ2V0IHN5bmNcbiIpOw0KPiArCQkJcmV0dXJuIGZhbHNlOw0KPiArCQl9DQo+ICsJ
fQ0KPiArDQo+ICAgCURSTV9ERUJVR19EUklWRVIoInJlcXVlc3RlZCBjbG9jayAlZGtIeiwgYWRq
dXN0ZWQgY2xvY2sgJWRrSHpcbiIsDQo+ICAgCQkJIG1vZGUtPmNsb2NrLCBhZGp1c3RlZF9tb2Rl
LT5jbG9jayk7DQo+ICAgDQo+IEBAIC01MjUsMTEgKzU0MywyMSBAQCBzdGF0aWMgYm9vbCBsdGRj
X2NydGNfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsDQo+ICAgc3RhdGljIHZvaWQg
bHRkY19jcnRjX21vZGVfc2V0X25vZmIoc3RydWN0IGRybV9jcnRjICpjcnRjKQ0KPiAgIHsNCj4g
ICAJc3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gY3J0Y190b19sdGRjKGNydGMpOw0KPiArCXN0
cnVjdCBkcm1fZGV2aWNlICpkZGV2ID0gY3J0Yy0+ZGV2Ow0KPiAgIAlzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqbW9kZSA9ICZjcnRjLT5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsNCj4gICAJc3RydWN0
IHZpZGVvbW9kZSB2bTsNCj4gICAJdTMyIGhzeW5jLCB2c3luYywgYWNjdW1faGJwLCBhY2N1bV92
YnAsIGFjY3VtX2FjdF93LCBhY2N1bV9hY3RfaDsNCj4gICAJdTMyIHRvdGFsX3dpZHRoLCB0b3Rh
bF9oZWlnaHQ7DQo+ICAgCXUzMiB2YWw7DQo+ICsJaW50IHJldDsNCj4gKw0KPiArCWlmICghcG1f
cnVudGltZV9hY3RpdmUoZGRldi0+ZGV2KSkgew0KPiArCQlyZXQgPSBwbV9ydW50aW1lX2dldF9z
eW5jKGRkZXYtPmRldik7DQo+ICsJCWlmIChyZXQpIHsNCj4gKwkJCURSTV9FUlJPUigiRmFpbGVk
IHRvIHNldCBtb2RlLCBjYW5ub3QgZ2V0IHN5bmNcbiIpOw0KPiArCQkJcmV0dXJuOw0KPiArCQl9
DQo+ICsJfQ0KPiAgIA0KPiAgIAlkcm1fZGlzcGxheV9tb2RlX3RvX3ZpZGVvbW9kZShtb2RlLCAm
dm0pOw0KPiAgIA0KPiBAQCAtNTkwLDYgKzYxOCw3IEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19h
dG9taWNfZmx1c2goc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiAgIAkJCQkgICBzdHJ1Y3QgZHJt
X2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQ0KPiAgIHsNCj4gICAJc3RydWN0IGx0ZGNfZGV2
aWNlICpsZGV2ID0gY3J0Y190b19sdGRjKGNydGMpOw0KPiArCXN0cnVjdCBkcm1fZGV2aWNlICpk
ZGV2ID0gY3J0Yy0+ZGV2Ow0KPiAgIAlzdHJ1Y3QgZHJtX3BlbmRpbmdfdmJsYW5rX2V2ZW50ICpl
dmVudCA9IGNydGMtPnN0YXRlLT5ldmVudDsNCj4gICANCj4gICAJRFJNX0RFQlVHX0FUT01JQygi
XG4iKTsNCj4gQEAgLTYwMiwxMiArNjMxLDEyIEBAIHN0YXRpYyB2b2lkIGx0ZGNfY3J0Y19hdG9t
aWNfZmx1c2goc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiAgIAlpZiAoZXZlbnQpIHsNCj4gICAJ
CWNydGMtPnN0YXRlLT5ldmVudCA9IE5VTEw7DQo+ICAgDQo+IC0JCXNwaW5fbG9ja19pcnEoJmNy
dGMtPmRldi0+ZXZlbnRfbG9jayk7DQo+ICsJCXNwaW5fbG9ja19pcnEoJmRkZXYtPmV2ZW50X2xv
Y2spOw0KPiAgIAkJaWYgKGRybV9jcnRjX3ZibGFua19nZXQoY3J0YykgPT0gMCkNCj4gICAJCQlk
cm1fY3J0Y19hcm1fdmJsYW5rX2V2ZW50KGNydGMsIGV2ZW50KTsNCj4gICAJCWVsc2UNCj4gICAJ
CQlkcm1fY3J0Y19zZW5kX3ZibGFua19ldmVudChjcnRjLCBldmVudCk7DQo+IC0JCXNwaW5fdW5s
b2NrX2lycSgmY3J0Yy0+ZGV2LT5ldmVudF9sb2NrKTsNCj4gKwkJc3Bpbl91bmxvY2tfaXJxKCZk
ZGV2LT5ldmVudF9sb2NrKTsNCj4gICAJfQ0KPiAgIH0NCj4gICANCj4gQEAgLTY2MywxNSArNjky
LDE5IEBAIGJvb2wgbHRkY19jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9kZXZpY2UgKmRkZXYs
IHVuc2lnbmVkIGludCBwaXBlLA0KPiAgIAkgKiBDb21wdXRhdGlvbiBmb3IgdGhlIHR3byBmaXJz
dCBjYXNlcyBhcmUgaWRlbnRpY2FsIHNvIHdlIGNhbg0KPiAgIAkgKiBzaW1wbGlmeSB0aGUgY29k
ZSBhbmQgb25seSB0ZXN0IGlmIGxpbmUgPiB2YWN0aXZlX2VuZA0KPiAgIAkgKi8NCj4gLQlsaW5l
ID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19DUFNSKSAmIENQU1JfQ1lQT1M7DQo+IC0JdmFj
dGl2ZV9zdGFydCA9IHJlZ19yZWFkKGxkZXYtPnJlZ3MsIExURENfQlBDUikgJiBCUENSX0FWQlA7
DQo+IC0JdmFjdGl2ZV9lbmQgPSByZWdfcmVhZChsZGV2LT5yZWdzLCBMVERDX0FXQ1IpICYgQVdD
Ul9BQUg7DQo+IC0JdnRvdGFsID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19UV0NSKSAmIFRX
Q1JfVE9UQUxIOw0KPiAtDQo+IC0JaWYgKGxpbmUgPiB2YWN0aXZlX2VuZCkNCj4gLQkJKnZwb3Mg
PSBsaW5lIC0gdnRvdGFsIC0gdmFjdGl2ZV9zdGFydDsNCj4gLQllbHNlDQo+IC0JCSp2cG9zID0g
bGluZSAtIHZhY3RpdmVfc3RhcnQ7DQo+ICsJaWYgKHBtX3J1bnRpbWVfYWN0aXZlKGRkZXYtPmRl
dikpIHsNCj4gKwkJbGluZSA9IHJlZ19yZWFkKGxkZXYtPnJlZ3MsIExURENfQ1BTUikgJiBDUFNS
X0NZUE9TOw0KPiArCQl2YWN0aXZlX3N0YXJ0ID0gcmVnX3JlYWQobGRldi0+cmVncywgTFREQ19C
UENSKSAmIEJQQ1JfQVZCUDsNCj4gKwkJdmFjdGl2ZV9lbmQgPSByZWdfcmVhZChsZGV2LT5yZWdz
LCBMVERDX0FXQ1IpICYgQVdDUl9BQUg7DQo+ICsJCXZ0b3RhbCA9IHJlZ19yZWFkKGxkZXYtPnJl
Z3MsIExURENfVFdDUikgJiBUV0NSX1RPVEFMSDsNCj4gKw0KPiArCQlpZiAobGluZSA+IHZhY3Rp
dmVfZW5kKQ0KPiArCQkJKnZwb3MgPSBsaW5lIC0gdnRvdGFsIC0gdmFjdGl2ZV9zdGFydDsNCj4g
KwkJZWxzZQ0KPiArCQkJKnZwb3MgPSBsaW5lIC0gdmFjdGl2ZV9zdGFydDsNCj4gKwl9IGVsc2Ug
ew0KPiArCQkqdnBvcyA9IDA7DQo+ICsJfQ0KPiAgIA0KPiAgIAkqaHBvcyA9IDA7DQo+ICAgDQo+
IEBAIC0xMjQzLDggKzEyNzYsMTEgQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGRldikNCj4gICAJLyogQWxsb3cgdXNhZ2Ugb2YgdmJsYW5rIHdpdGhvdXQgaGF2aW5nIHRvIGNh
bGwgZHJtX2lycV9pbnN0YWxsICovDQo+ICAgCWRkZXYtPmlycV9lbmFibGVkID0gMTsNCj4gICAN
Cj4gLQlyZXR1cm4gMDsNCj4gKwljbGtfZGlzYWJsZV91bnByZXBhcmUobGRldi0+cGl4ZWxfY2xr
KTsNCj4gKw0KPiArCXBtX3J1bnRpbWVfZW5hYmxlKGRkZXYtPmRldik7DQo+ICAgDQo+ICsJcmV0
dXJuIDA7DQo+ICAgZXJyOg0KPiAgIAlmb3IgKGkgPSAwOyBpIDwgTUFYX0VORFBPSU5UUzsgaSsr
KQ0KPiAgIAkJZHJtX3BhbmVsX2JyaWRnZV9yZW1vdmUoYnJpZGdlW2ldKTsNCj4gQEAgLTEyNTYs
NyArMTI5Miw2IEBAIGludCBsdGRjX2xvYWQoc3RydWN0IGRybV9kZXZpY2UgKmRkZXYpDQo+ICAg
DQo+ICAgdm9pZCBsdGRjX3VubG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikNCj4gICB7DQo+
IC0Jc3RydWN0IGx0ZGNfZGV2aWNlICpsZGV2ID0gZGRldi0+ZGV2X3ByaXZhdGU7DQo+ICAgCWlu
dCBpOw0KPiAgIA0KPiAgIAlEUk1fREVCVUdfRFJJVkVSKCJcbiIpOw0KPiBAQCAtMTI2NCw3ICsx
Mjk5LDcgQEAgdm9pZCBsdGRjX3VubG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikNCj4gICAJ
Zm9yIChpID0gMDsgaSA8IE1BWF9FTkRQT0lOVFM7IGkrKykNCj4gICAJCWRybV9vZl9wYW5lbF9i
cmlkZ2VfcmVtb3ZlKGRkZXYtPmRldi0+b2Zfbm9kZSwgMCwgaSk7DQo+ICAgDQo+IC0JY2xrX2Rp
c2FibGVfdW5wcmVwYXJlKGxkZXYtPnBpeGVsX2Nsayk7DQo+ICsJcG1fcnVudGltZV9kaXNhYmxl
KGRkZXYtPmRldik7DQo+ICAgfQ0KPiAgIA0KPiAgIE1PRFVMRV9BVVRIT1IoIlBoaWxpcHBlIENv
cm51IDxwaGlsaXBwZS5jb3JudUBzdC5jb20+Iik7DQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
