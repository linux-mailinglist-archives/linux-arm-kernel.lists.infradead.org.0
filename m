Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DBF1A0E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 18:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6L6xfdkQ9+mszEcCRh4gWHei4DYcf46XJ0L3bv7R5k=; b=GikG8IRfi2HFh0
	pAl6QQlz8TakWBZ5xBg00bSCNFGUq7SknxWD8MslxKTywI+K6IZEv0c/pN6zi1IyDIRrfX5MAvTjA
	YSXI3vMgL6pCb0GeByIx0fZaDz1MyNn9sh1T9OUUvmCb0x7SxJnecmyQGhH+78P5F++V1sSriW0cv
	LqpoFsM0widF/Y9SNg+aHADdhxt1hFix9U2X+LKA8hvWNdxlmo95lnfttrgj3sHJZUJUiXrXlKwPL
	8XaxCzmZTvIE+TdbDd7Z0Cl8FhG3fGUh5TyUAqRce+a+E2QLHfKpemRLypwTZJy2P533gB2nMU6nL
	eHLUw0J6jOqBziLzhyyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7wl-0003DV-4B; Fri, 10 May 2019 16:00:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7wT-0002bU-0H
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 16:00:14 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4AFuhES008206; Fri, 10 May 2019 18:00:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=ZmiWqi3VRYjxFBJXXYMyU0w/ZkHFGAKvuSRuq9pwhv4=;
 b=gt61CDietdxz9kd9zEFodPSYxuHdjr0bFywMo5ZgslzblZQkEqGi0dcPtU6CWmpMIT1D
 DwHtmKcUG+eaUrN7BJq1HbnwcvQF8PGbTIv91glzzSYTb4q+FeuKA+zvJdSPxG2QDZJq
 xSLDUNgFjk2O1H9vLubkC6HbPxT16GC8a2XP/UC6QB70LCzbvIbO2tz3BvCFu6uoBu36
 v5tQsRBoXKQl3JcXjHkp04ksp3LWueLLiDcBxdebOnue7SQA3QriFcbv8x0H/46L7aQF
 Tk/nNshG/oCX98XPdvXuaEfASKHtAijojPKq3l++VjzMZVsiXhEMdhlVB+8xqQHdR0ca pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scbkajhc4-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 18:00:00 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2E98131;
 Fri, 10 May 2019 16:00:00 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 025342BC7;
 Fri, 10 May 2019 16:00:00 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May
 2019 17:59:59 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Fri, 10 May 2019 17:59:59 +0200
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
Subject: Re: [PATCH v2 1/5] dt-bindings: display: stm32: add supply property
 to DSI controller
Thread-Topic: [PATCH v2 1/5] dt-bindings: display: stm32: add supply property
 to DSI controller
Thread-Index: AQHVBzuF9L+c6jD/yE6vZXdpGT1GuKZkYtcA
Date: Fri, 10 May 2019 15:59:59 +0000
Message-ID: <2a00b710-9c7d-bd87-5a33-a39d13d6f71a@st.com>
References: <1557498023-10766-1-git-send-email-yannick.fertre@st.com>
 <1557498023-10766-2-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1557498023-10766-2-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <6C07FBD58C6BDA4B933A6AEECCC7475C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_090013_403463_C5427E9E 
X-CRM114-Status: GOOD (  21.33  )
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

RGVhciBZYW5uaWNrLA0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLA0KDQooYWxyZWFkeSA7LSkN
ClJldmlld2VkLWJ5OiBQaGlsaXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPg0KDQpQ
aGlsaXBwZSA6KQ0KDQoNCk9uIDUvMTAvMTkgNDoyMCBQTSwgWWFubmljayBGZXJ0csOpIHdyb3Rl
Og0KPiBUaGlzIHBhdGNoIGFkZHMgZG9jdW1lbnRhdGlvbiBvZiBhIG5ldyBwcm9wZXJ0eSBwaHkt
ZHNpLXN1cHBseSB0byB0aGUNCj4gU1RNMzIgRFNJIGNvbnRyb2xsZXIuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4NCj4gLS0tDQo+
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvc3Qsc3RtMzItbHRk
Yy50eHQgfCAzICsrKw0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9z
dCxzdG0zMi1sdGRjLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L3N0LHN0bTMyLWx0ZGMudHh0DQo+IGluZGV4IDNlYjFiNDguLjYwYzU0ZGEgMTAwNjQ0DQo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3N0LHN0bTMy
LWx0ZGMudHh0DQo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNw
bGF5L3N0LHN0bTMyLWx0ZGMudHh0DQo+IEBAIC00MCw2ICs0MCw4IEBAIE1hbmRhdG9yeSBub2Rl
cyBzcGVjaWZpYyB0byBTVE0zMiBEU0k6DQo+ICAgLSBwYW5lbCBvciBicmlkZ2Ugbm9kZTogQSBu
b2RlIGNvbnRhaW5pbmcgdGhlIHBhbmVsIG9yIGJyaWRnZSBkZXNjcmlwdGlvbiBhcw0KPiAgICAg
ZG9jdW1lbnRlZCBpbiBbNl0uDQo+ICAgICAtIHBvcnQ6IHBhbmVsIG9yIGJyaWRnZSBwb3J0IG5v
ZGUsIGNvbm5lY3RlZCB0byB0aGUgRFNJIG91dHB1dCBwb3J0IChwb3J0QDEpLg0KPiArT3B0aW9u
YWwgcHJvcGVydGllczoNCj4gKy0gcGh5LWRzaS1zdXBwbHk6IHBoYW5kbGUgb2YgdGhlIHJlZ3Vs
YXRvciB0aGF0IHByb3ZpZGVzIHRoZSBzdXBwbHkgdm9sdGFnZS4NCj4gICANCj4gICBOb3RlOiBZ
b3UgY2FuIGZpbmQgbW9yZSBkb2N1bWVudGF0aW9uIGluIHRoZSBmb2xsb3dpbmcgcmVmZXJlbmNl
cw0KPiAgIFsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xvY2st
YmluZGluZ3MudHh0DQo+IEBAIC0xMDEsNiArMTAzLDcgQEAgRXhhbXBsZSAyOiBEU0kgcGFuZWwN
Cj4gICAJCQljbG9jay1uYW1lcyA9ICJwY2xrIiwgInJlZiI7DQo+ICAgCQkJcmVzZXRzID0gPCZy
Y2MgU1RNMzJGNF9BUEIyX1JFU0VUKERTSSk+Ow0KPiAgIAkJCXJlc2V0LW5hbWVzID0gImFwYiI7
DQo+ICsJCQlwaHktZHNpLXN1cHBseSA9IDwmcmVnMTg+Ow0KPiAgIA0KPiAgIAkJCXBvcnRzIHsN
Cj4gICAJCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
