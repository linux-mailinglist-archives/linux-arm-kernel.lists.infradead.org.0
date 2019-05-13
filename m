Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF501B8EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tlOKrrZ5ZAXXokjAMslBqXW35hHXOZS0O258rW371E=; b=AtCkvBmhDu5zdy
	agRttkHdjnSpVK27X1Y2gWf8U6eIyBkWkrD7XszgllETJN8CTjsGvl+Zzz3Kk8lr+bGcGJBlIh400
	CNlOdNl4VgKlhXurEqZ80Ot+Ef2F/PKdi4TfePEgi34vKi7jtTgbCumLgzNRc/bJ7wy+OP+o3j0F3
	/fgUc+gRrVMrvojmHuMec951gXgCN+hIgU9d/+aVBdAW88RezDS7vOwivghRj9UPYGZYE5Cfg5Xaa
	ssljksAr9XsQnkvnC66dFB6XnqGdY1GjrKla/91earRpWwu3R+35DQLr6Qcfpuay8EIXtrwDyRxAh
	a9namNf1R0LAev2/NyHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCDU-00015Z-MH; Mon, 13 May 2019 14:46:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCDM-00015B-Sp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:46:06 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4DEaYv6023224; Mon, 13 May 2019 16:46:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=4RLw9OtwLPiC58gpakKeZWkMrIYxXGSjksr4AaKMiTI=;
 b=gh+JW4EHKwNxad8e0fF2rwRstYh+CMk6nPtvdlw8VT9lfAmdCE6Gm9ZvdLSF1IPuDPI/
 3fBVEn0REdHW0hCxOZR2vfzOpBlNLQhnt2td7C6J+fBqCf+4BWnWhI57SgouZY6CDzgA
 6U0ddKwjTy3zLxgX7iU7fGGq3Rs/F105blEgcFV0OERhxygCCWYfOTpgm7eT8P+7NeCj
 BG0vFm6qgCEM2bY+zPIwIlZXPNU/nVMlC8d+E+gVcKoRJ6SLZM9JfrWQCKLG05/c402B
 OPMCiTziQSR3oJRBpGOUw5U9uoiJvh00L4o0W2x/zZTX0UUoPL7TgF3bc1K4l1OrKnZL Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sek5a5j11-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 13 May 2019 16:46:00 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 86AEA34;
 Mon, 13 May 2019 14:45:59 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6C944287B;
 Mon, 13 May 2019 14:45:59 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 13 May
 2019 16:45:58 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Mon, 13 May 2019 16:45:58 +0200
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
Subject: Re: [PATCH v2] drm/stm: ltdc: remove clk_round_rate comment
Thread-Topic: [PATCH v2] drm/stm: ltdc: remove clk_round_rate comment
Thread-Index: AQHVCY3rREh+NHqJykqFxhbYBvyWoKZpAIMA
Date: Mon, 13 May 2019 14:45:58 +0000
Message-ID: <317f94d6-846f-92e2-bd0f-b44377ea7845@st.com>
References: <1557753318-11218-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557753318-11218-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <98ED9AB3A1602942B2A3C068394174FC@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-13_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_074605_221848_C20AEA63 
X-CRM114-Status: GOOD (  22.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

RGVhciBZYW5uaWNrLA0KDQpBY2tlZC1ieTogUGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51
QHN0LmNvbT4NCg0KVGhhbmsgeW91LA0KDQpQaGlsaXBwZSA6LSkNCg0KT24gNS8xMy8xOSAzOjE1
IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6DQo+IENsa19yb3VuZF9yYXRlIHJldHVybnMgcm91
bmRlZCBjbG9jayB3aXRob3V0IGNoYW5naW5nDQo+IHRoZSBoYXJkd2FyZSBpbiBhbnkgd2F5Lg0K
PiBUaGlzIGZ1bmN0aW9uIGNvdWxkbid0IHJlcGxhY2Ugc2V0X3JhdGUvZ2V0X3JhdGUgY2FsbHMu
DQo+IFRvZG8gY29tbWVudCBoYXMgYmVlbiByZW1vdmVkICYgYSBuZXcgbG9nIGluc2VydGVkLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5j
b20+DQo+IC0tLQ0KPiBDaGFuZ2VzIGluIHYyOg0KPiAJLSBDbGtfZW5hYmxlICYgY2xrX2Rpc2Fi
bGUgYXJlIG5lZWRlZCBmb3IgdGhlIFNPQyBTVE0zMkY3DQo+IAkgKG5vdCBmb3IgU1RNMzJNUDEp
LiBJIHJldHVybiB0aGlzIHBhcnQgb2YgdGhlIHBhdGNoIHRvIG1ha2Ugc3VyZSB0aGUNCj4gCSBk
cml2ZXIgaXMgY29tcGF0aWJsZSB3aXRoIGFsbCBTT0MgU1RNMzIuDQo+IA0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9zdG0vbHRkYy5jIHwgOCArKystLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3N0bS9sdGRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0KPiBpbmRleCA5
NzkxMmUyLi4xMTA0ZTc4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0KPiBAQCAtNTA3LDExICs1MDcs
NiBAQCBzdGF0aWMgYm9vbCBsdGRjX2NydGNfbW9kZV9maXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNy
dGMsDQo+ICAgCXN0cnVjdCBsdGRjX2RldmljZSAqbGRldiA9IGNydGNfdG9fbHRkYyhjcnRjKTsN
Cj4gICAJaW50IHJhdGUgPSBtb2RlLT5jbG9jayAqIDEwMDA7DQo+IA0KPiAtCS8qDQo+IC0JICog
VE9ETyBjbGtfcm91bmRfcmF0ZSgpIGRvZXMgbm90IHdvcmsgeWV0LiBXaGVuIHJlYWR5LCBpdCBj
YW4NCj4gLQkgKiBiZSB1c2VkIGluc3RlYWQgb2YgY2xrX3NldF9yYXRlKCkgdGhlbiBjbGtfZ2V0
X3JhdGUoKS4NCj4gLQkgKi8NCj4gLQ0KPiAgIAljbGtfZGlzYWJsZShsZGV2LT5waXhlbF9jbGsp
Ow0KPiAgIAlpZiAoY2xrX3NldF9yYXRlKGxkZXYtPnBpeGVsX2NsaywgcmF0ZSkgPCAwKSB7DQo+
ICAgCQlEUk1fRVJST1IoIkNhbm5vdCBzZXQgcmF0ZSAoJWRIeikgZm9yIHBpeGVsIGNsa1xuIiwg
cmF0ZSk7DQo+IEBAIC01MjEsNiArNTE2LDkgQEAgc3RhdGljIGJvb2wgbHRkY19jcnRjX21vZGVf
Zml4dXAoc3RydWN0IGRybV9jcnRjICpjcnRjLA0KPiANCj4gICAJYWRqdXN0ZWRfbW9kZS0+Y2xv
Y2sgPSBjbGtfZ2V0X3JhdGUobGRldi0+cGl4ZWxfY2xrKSAvIDEwMDA7DQo+IA0KPiArCURSTV9E
RUJVR19EUklWRVIoInJlcXVlc3RlZCBjbG9jayAlZGtIeiwgYWRqdXN0ZWQgY2xvY2sgJWRrSHpc
biIsDQo+ICsJCQkgbW9kZS0+Y2xvY2ssIGFkanVzdGVkX21vZGUtPmNsb2NrKTsNCj4gKw0KPiAg
IAlyZXR1cm4gdHJ1ZTsNCj4gICB9DQo+IA0KPiAtLQ0KPiAyLjcuNA0KPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
