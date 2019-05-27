Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CD62B575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nDBwKwlGf7EtkjCnCX5mFn7OAcjloGhN7WdnIxvIJW4=; b=FIBS1dKdkkk6K2
	tfL0PRzbqUm1CfW7kOXbLUUzhnqMunFsyAwD/YhFqJVaJi3dWu3MMakZdzZCMjie1QhM01hHRMITI
	BFbHLs3pRXLG+pGwzRekpUQsWvLHVaag/6AfwNqT+JmAgkTvWAXWm5nQt8/3hpI1p/VSXzsSih5T0
	rfedag2LAQJFB/OEQ5Qg4mmqL0jpHpEuNks3Ku25dKob12KpAWNKgE4IRkKTH63b71Nur7HF84ooE
	Rtgk2hb/jdvOAodX/fGDOh/0DaR1r0iFpYuByPdQBhn8a4ulHX9LoyckrxuYZoz9uGeUJn+kxEkC+
	5MRfzLRF7S/Go8W1nYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEqe-00065t-40; Mon, 27 May 2019 12:35:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEqX-00065Q-Q4
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:35:23 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4RCVt5j027663; Mon, 27 May 2019 14:35:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=fKfX2KVDIS1uJzzD4iw6of6U2XShNVpd8rTuvx0oIDA=;
 b=AsSRTuOs6JOiTMu+NPeqGAWQW13YPOk/Rpu26Ig6e71du8IaslChveCq0mwquvaDECV3
 LPJkgqpfBdqP4YTltsgsUrixL5V5+1vkVc/TaOo5dSeaK40pbkckpyruduLnWycHDHdi
 if3H/V9Dap/bVSb1myYsD30U1dIfo8OQtLUNlu04mEKgLZEfQDjvc/QYrnX5lrQ3QbdB
 Tk/QEG8dwb+wltOquxiPxhT9tb6amKO427itYpogiNrvaeuGW7rzv/s783geD57DrEFY
 KYyv4/faskRBulbvMFCeRCYJHJZnasdrWllxtBed0oQ/U8IkgfUl/cQKbtuAYn72xttL mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2spu602yxf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 27 May 2019 14:35:17 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F22063A;
 Mon, 27 May 2019 12:35:15 +0000 (GMT)
Received: from Webmail-eu.st.com (gpxdag3node4.st.com [10.75.127.71])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A83B7161E;
 Mon, 27 May 2019 12:35:15 +0000 (GMT)
Received: from GPXDAG6NODE6.st.com (10.75.127.82) by GPXDAG3NODE4.st.com
 (10.75.127.71) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 27 May
 2019 14:35:14 +0200
Received: from GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11]) by
 GPXDAG6NODE6.st.com ([fe80::57f:5f53:243f:cb11%19]) with mapi id
 15.00.1473.003; Mon, 27 May 2019 14:35:14 +0200
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
Subject: Re: [PATCH] drm/stm: ltdc: No message if probe
Thread-Topic: [PATCH] drm/stm: ltdc: No message if probe
Thread-Index: AQHVFHUOAd2ylTGCYUyXoJC5UGt+V6Z+xtGA
Date: Mon, 27 May 2019 12:35:14 +0000
Message-ID: <961fa8ce-8094-5a39-eab1-cdb46cf76b92@st.com>
References: <1558952075-14883-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1558952075-14883-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <D824B6F181B08846A8E655B1873E2A39@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-27_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053522_136781_8C937AF1 
X-CRM114-Status: GOOD (  17.33  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGkgWWFubmljaywNCg0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoDQoNCkFja2VkLWJ5OiBQaGls
aXBwZSBDb3JudSA8cGhpbGlwcGUuY29ybnVAc3QuY29tPg0KDQpQaGlsaXBwZSA6LSkNCg0KT24g
NS8yNy8xOSAxMjoxNCBQTSwgWWFubmljayBGZXJ0csOpIHdyb3RlOg0KPiBQcmludCBkaXNwbGF5
IGNvbnRyb2xsZXIgaGFyZHdhcmUgdmVyc2lvbiBpbiBkZWJ1ZyBtb2RlIG9ubHkuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4NCj4g
LS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgfCAyICstDQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3N0bS9sdGRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0K
PiBpbmRleCBkMjRmZmMyLi4xNmIxMTAzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
c3RtL2x0ZGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYw0KPiBAQCAtMTIx
MSw3ICsxMjExLDcgQEAgaW50IGx0ZGNfbG9hZChzdHJ1Y3QgZHJtX2RldmljZSAqZGRldikNCj4g
ICAJCWdvdG8gZXJyOw0KPiAgIAl9DQo+ICAgDQo+IC0JRFJNX0lORk8oImx0ZGMgaHcgdmVyc2lv
biAweCUwOHggLSByZWFkeVxuIiwgbGRldi0+Y2Fwcy5od192ZXJzaW9uKTsNCj4gKwlEUk1fREVC
VUdfRFJJVkVSKCJsdGRjIGh3IHZlcnNpb24gMHglMDh4XG4iLCBsZGV2LT5jYXBzLmh3X3ZlcnNp
b24pOw0KPiAgIA0KPiAgIAkvKiBBZGQgZW5kcG9pbnRzIHBhbmVscyBvciBicmlkZ2VzIGlmIGFu
eSAqLw0KPiAgIAlmb3IgKGkgPSAwOyBpIDwgTUFYX0VORFBPSU5UUzsgaSsrKSB7DQo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
