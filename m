Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A5C146532
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:56:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFC2bAMLDRdp5JhKCL6Tu+iGMzyNKSGR23ljvAw57LU=; b=NuGnhWrl0PWjxM
	+KE6yPkrEhV8YLwhNhr2Yd0ipByNSS9YhTakt3hWP/MKl1vM7U3CKkHhwx/MuPHhjninZy6StSKQe
	A+yCpwFbzAOhLXyI4zDlASUt7V6Jbn8JC0J5fHxOyVRwcBSjo7+3g034CX9AKCXKpUbi/5B3thR5k
	HkfgWVNrVyvQR4/t9rnSjX2RWirbA4mwhH2oCL9tHBQaXZIsg0lIaUG79NHDvdoVVV0mn4bI2SpKo
	IlxklufEtEiePAogu5PKBI0EAjEEWFifNu1gxevCw+s5OmuVAQ0X0LPsn0JCyRoYj1pV72REsdq1V
	G96LxsQn+XaQtPmE06Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZDP-0004Dv-4Z; Thu, 23 Jan 2020 09:55:55 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZDF-0004DC-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:55:47 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00N9qXbi031077; Thu, 23 Jan 2020 10:55:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=8LaG/1fNvR/SDka0zlIvY8T8Nf7NU3M6GJ1TJ1wJF/w=;
 b=oNMMVrfqy6wcfIg2N7AFwlkNpdRP1xKhr1GsjnpoE1/k0+5iL7JDB0swwVWMxKq1piI7
 KKY0xj8YQN3xwhL8OCfsLYqe37PLbnBl5IDxT6n79gl4pTSw9YjfLq1Eo6MNdQxfp3K3
 vhcLwJMh7yRypWXrwyLwUmkmWd/Mp0QOlW9luMYSxN+dIygxgjrpMbkmUGiDHmtpX69E
 F8bLiZKBvvyYC9Qk1Wnwd4r2OJ1gPbxeCdbP1sqJ16Cjux1y+FXWl+or98yty4bnrkLX
 0fs1zpypcnPyHeZQr7/vWSiv0Y8JHI8d20ddvJprS6eIA50sXaLXgqRn2kJMd3qtxNXE pQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkrp2hf1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 10:55:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 29CF810002A;
 Thu, 23 Jan 2020 10:55:41 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1910D220308;
 Thu, 23 Jan 2020 10:55:41 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan
 2020 10:55:40 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Thu, 23 Jan 2020 10:55:40 +0100
From: Philippe CORNU <philippe.cornu@st.com>
To: Yannick FERTRE <yannick.fertre@st.com>, Benjamin GAIGNARD
 <benjamin.gaignard@st.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 TORGUE" <alexandre.torgue@st.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: missing post disable
Thread-Topic: [PATCH] drm/bridge/synopsys: dsi: missing post disable
Thread-Index: AQHV0EUIPo4ZhmMZfUasUYZhQS9gRqf39TwA
Date: Thu, 23 Jan 2020 09:55:40 +0000
Message-ID: <c817740e-4d44-c3a2-0229-06c653a8d8d9@st.com>
References: <1579602296-7683-1-git-send-email-yannick.fertre@st.com>
In-Reply-To: <1579602296-7683-1-git-send-email-yannick.fertre@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <B1DCD6E889303F4CA55F3B1DA98A9478@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_01:2020-01-23,
 2020-01-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_015545_961596_F2501665 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

RGVhciBZYW5uaWNrLA0KVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLA0KDQpSZXZpZXdlZC1ieTog
UGhpbGlwcGUgQ29ybnUgPHBoaWxpcHBlLmNvcm51QHN0LmNvbT4NCg0KUGhpbGlwcGUgOi0pDQoN
Ck9uIDEvMjEvMjAgMTE6MjQgQU0sIFlhbm5pY2sgRmVydHJlIHdyb3RlOg0KPiBGcm9tOiBZYW5u
aWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4NCj4gDQo+IFNvbWV0aW1lIHRoZSBw
b3N0X2Rpc2FibGUgZnVuY3Rpb24gaXMgbWlzc2luZyAobm90IHJlZ2lzdGVyZWQpLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogWWFubmljayBGZXJ0csOpIDx5YW5uaWNrLmZlcnRyZUBzdC5jb20+DQo+
IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2kuYyB8
IDMgKystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
bWlwaS1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctbWlwaS1kc2ku
Yw0KPiBpbmRleCBiMTgzNTFiLi4xMjgyM2FlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL3N5bm9wc3lzL2R3LW1pcGktZHNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1taXBpLWRzaS5jDQo+IEBAIC04MjQsNyArODI0LDggQEAgc3Rh
dGljIHZvaWQgZHdfbWlwaV9kc2lfYnJpZGdlX3Bvc3RfZGlzYWJsZShzdHJ1Y3QgZHJtX2JyaWRn
ZSAqYnJpZGdlKQ0KPiAgIAkgKiBUaGlzIG5lZWRzIHRvIGJlIGZpeGVkIGluIHRoZSBkcm1fYnJp
ZGdlIGZyYW1ld29yayBhbmQgdGhlIEFQSQ0KPiAgIAkgKiBuZWVkcyB0byBiZSB1cGRhdGVkIHRv
IG1hbmFnZSBvdXIgb3duIGNhbGwgY2hhaW5zLi4uDQo+ICAgCSAqLw0KPiAtCWRzaS0+cGFuZWxf
YnJpZGdlLT5mdW5jcy0+cG9zdF9kaXNhYmxlKGRzaS0+cGFuZWxfYnJpZGdlKTsNCj4gKwlpZiAo
ZHNpLT5wYW5lbF9icmlkZ2UtPmZ1bmNzLT5wb3N0X2Rpc2FibGUpDQo+ICsJCWRzaS0+cGFuZWxf
YnJpZGdlLT5mdW5jcy0+cG9zdF9kaXNhYmxlKGRzaS0+cGFuZWxfYnJpZGdlKTsNCj4gICANCj4g
ICAJaWYgKHBoeV9vcHMtPnBvd2VyX29mZikNCj4gICAJCXBoeV9vcHMtPnBvd2VyX29mZihkc2kt
PnBsYXRfZGF0YS0+cHJpdl9kYXRhKTsNCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
