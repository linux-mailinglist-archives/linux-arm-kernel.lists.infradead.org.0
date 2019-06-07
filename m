Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424DE3868B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 10:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63VtZYyaLxBzr4XU8DcMl5+1fL0t+sizMage1S8wwBk=; b=P0P1eN+Hk2w0Xw
	vqM3v1TYp0H3MhkWykWR8AjWgHwCWZx0ApazU7dhn4RmbAqN9JxBknPUsVhYkM2EM5WDT4l5E4cMS
	27VbBrtv3PLKxg7vkft20s+Gd6T9cLXI67oLvkdemqufDBe/svHzk/M+25AMm2eNKgmbpmrQ4/Fnc
	ufHOF+6pEKh06dzpIfZKFv+SF90DCLj3PFciznnMgm+3LYfJKatRcH2HUgbiddF9n5wdU8yymcbhY
	CDv/DP2kmVAONbsbhDAtXeIXvenF9u4K2QOkF6Pc59mpeUof3BoGUvwL/n5HXh/V0m5oXHGXKQsa9
	rVXoYwLYNjEDUVv+YKmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAbp-00017r-Gi; Fri, 07 Jun 2019 08:52:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAbM-0000sN-FL
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 08:51:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x578lkLW020863; Fri, 7 Jun 2019 10:51:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=289jIq72HReUea+FJ6403zWGNXEwuJ8Avm9se1eRFVs=;
 b=bZMIS76bzCEimOuzXsuwDBL0euXeiX+OBUVUOd5Ebyd+ng9zQBLaAbMIjGQld/J10TJV
 pOrSSJQzh9IpsrACyKc+FXSxyYEyT8l1eckxQ7zXW7weVyysLiE5GNtU6LRkqmGEkzGX
 qXYGxj3Bnx28NG78BdGiO+3ZeP/Jd7PzjEnrlM7kgZdRb0l41uJMECiRA3+1MMhvNa+R
 fXtBnQ9qYu0bzkGYyPaHHzH4qOu39N+GUm7o4wvlio+feXH26jCAO1wHW8kAy9yukqvv
 1geBMYSzZWtxHT63GmDdP1HgbyyI6yDOzzc5Z7JNV22UaoqbjIJe3iNRRq9KLRLKLcZt BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sxqyag6ke-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 07 Jun 2019 10:51:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 838C631;
 Fri,  7 Jun 2019 08:51:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 392C92418;
 Fri,  7 Jun 2019 08:51:47 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 7 Jun
 2019 10:51:46 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1347.000; Fri, 7 Jun 2019 10:51:46 +0200
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
Thread-Index: AQHVGebHlINPLriVvEmsaJiAOSjopaaPxxgA
Date: Fri, 7 Jun 2019 08:51:46 +0000
Message-ID: <ca5d4bcf-6020-e924-5577-d7cf9134958b@st.com>
References: <1559550694-14042-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1559550694-14042-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <7B55EC5FADFCC44EAE136C92B3552228@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-07_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_015157_064887_2BCD4363 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Ni8zLzE5IDEwOjMxIEFNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6DQo+IFByaW50IGRpc3BsYXkg
Y29udHJvbGxlciBoYXJkd2FyZSB2ZXJzaW9uIGluIGRlYnVnIG1vZGUgb25seS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPg0KPiAt
LS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyB8IDIgKy0NCj4gICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vc3RtL2x0ZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQo+
IGluZGV4IGE0MDg3MGIuLjJmZTZjNGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9z
dG0vbHRkYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQo+IEBAIC0xMjI5
LDcgKzEyMjksNyBAQCBpbnQgbHRkY19sb2FkKHN0cnVjdCBkcm1fZGV2aWNlICpkZGV2KQ0KPiAg
IAkJZ290byBlcnI7DQo+ICAgCX0NCj4gICANCj4gLQlEUk1fSU5GTygibHRkYyBodyB2ZXJzaW9u
IDB4JTA4eCAtIHJlYWR5XG4iLCBsZGV2LT5jYXBzLmh3X3ZlcnNpb24pOw0KPiArCURSTV9ERUJV
R19EUklWRVIoImx0ZGMgaHcgdmVyc2lvbiAweCUwOHhcbiIsIGxkZXYtPmNhcHMuaHdfdmVyc2lv
bik7DQo+ICAgDQo+ICAgCS8qIEFkZCBlbmRwb2ludHMgcGFuZWxzIG9yIGJyaWRnZXMgaWYgYW55
ICovDQo+ICAgCWZvciAoaSA9IDA7IGkgPCBNQVhfRU5EUE9JTlRTOyBpKyspIHsNCj4gCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
