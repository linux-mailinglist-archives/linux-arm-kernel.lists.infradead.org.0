Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057E97EE3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 10:02:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9gNRaNyVXOAxKIa09RxxPVnuZBagBdRdBgSPdTjkOs=; b=MLKE2FxL1hxrWz
	phy0FyXpt7D1yatQNDb9udhcUkHB9XZRFXh8woTbzRyHU/dIGEBgF4syg+JWETzyXzk5hCxXscpkM
	sZcifW8z8gp92qlOR6L/gEcYiks9mzJPelACYAuTCPlvlgSKSqawf7Izz7PdKf4OxlhRVblPzDD9k
	Fz2SKYIrUSAdMQp1UmDkng5+eHiYkLaJ+KV6Gt4rd07Yj1ysG7o1uU28lA1LweWwi5vEOgp/X4gHw
	+XN/mnudT47JcXHggGiXkPuZ9gmeTovotgAG5T+gaCGeo/YecQ5BWCtDEaUAcpSrZGzUvbm+gWgnh
	qCJRZhG+LT+rB+SMBf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSVp-0000Ed-Es; Fri, 02 Aug 2019 08:02:05 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSVb-0000ED-GO
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 08:01:53 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x727l47J024706; Fri, 2 Aug 2019 10:01:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=80WZ1+E55pChQRiPbqt3WX05FkkFhBCqjh5SB5ZS5fU=;
 b=Tdcdoko4/Ul2MgZc8VNexIOx7Y7AdHu0tU6ZmZO1RCcaDlQ4Mm6S8BAXI/d0Bf4w/x5L
 PAtYTxeQa+6OXF+NzoIZ0+eVWgGSasfPZguOPE3Rnl8yMPv2XXu7Q3aI37WdCCklP8by
 IXuDY+jcWMyaFmqJmTXT9GOzAjAexdHNR+CLIEChJXig3RgwC5XozwV61XbIyhVM7q0t
 cbah+wX39NhXVPHhzInc/ICWKjTihpL8QFcOrmXOF9tlSFh1SsaTJCTeP6KTOHhc7qYW
 qv9IcqYepZqae+BM6Ztto0C1didEPB6CzEXuGish6odXbSUZVoV/WDD+VVN/YvNLMrH3 Zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u2jp4t4w2-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 02 Aug 2019 10:01:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1CA646;
 Fri,  2 Aug 2019 08:01:41 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ACC2F207407;
 Fri,  2 Aug 2019 10:01:41 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 2 Aug
 2019 10:01:41 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Fri, 2 Aug 2019 10:01:41 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Philippe CORNU <philippe.cornu@st.com>, Fabrice GASNIER
 <fabrice.gasnier@st.com>
Subject: Re: [PATCH] ARM: dts: stm32: add phy-dsi-supply property on
 stm32mp157c-ev1
Thread-Topic: [PATCH] ARM: dts: stm32: add phy-dsi-supply property on
 stm32mp157c-ev1
Thread-Index: AQHVRhn/pZrojeZIhUaYEdH8ko+CKKbnXDWAgAAHFwA=
Date: Fri, 2 Aug 2019 08:01:40 +0000
Message-ID: <4e53ec28-0368-7ad8-1397-4d3d3172f02e@st.com>
References: <1564410548-20436-1-git-send-email-yannick.fertre@st.com>
 <346d04ad-17ed-40c8-f10a-b13a2ea79d92@st.com>
In-Reply-To: <346d04ad-17ed-40c8-f10a-b13a2ea79d92@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <DDDF93E406C16842AF9F6D3FE37A2808@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-02_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_010151_916253_5A97BC25 
X-CRM114-Status: GOOD (  18.28  )
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

TWFueSB0aGFua3MgQWxleC4NCg0KT24gOC8yLzE5IDk6MzYgQU0sIEFsZXhhbmRyZSBUb3JndWUg
d3JvdGU6DQo+IEhpIFlhbm5pY2sNCj4NCj4gT24gNy8yOS8xOSA0OjI5IFBNLCBZYW5uaWNrIEZl
cnRyw6kgd3JvdGU6DQo+PiBUaGUgZHNpIHBoeXNpY2FsIGxheWVyIGlzIHBvd2VyZWQgYnkgdGhl
IDF2OCBwb3dlciBjb250cm9sbGVyIHN1cHBseS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBZYW5u
aWNrIEZlcnRyw6kgPHlhbm5pY2suZmVydHJlQHN0LmNvbT4NCj4+IC0tLQ0KPj4gwqAgYXJjaC9h
cm0vYm9vdC9kdHMvc3RtMzJtcDE1N2MtZXYxLmR0cyB8IDEgKw0KPj4gwqAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3N0bTMybXAxNTdjLWV2MS5kdHMgDQo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdj
LWV2MS5kdHMNCj4+IGluZGV4IGZlYjhmNzcuLjE5ZDY5ZDAgMTAwNjQ0DQo+PiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzDQo+PiArKysgYi9hcmNoL2FybS9ib290
L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzDQo+PiBAQCAtMTAxLDYgKzEwMSw3IEBADQo+PiDCoCAm
ZHNpIHsNCj4+IMKgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+PiDCoMKgwqDCoMKg
ICNzaXplLWNlbGxzID0gPDA+Ow0KPj4gK8KgwqDCoCBwaHktZHNpLXN1cHBseSA9IDwmcmVnMTg+
Ow0KPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7DQo+PiDCoCDCoMKgwqDCoMKgIHBvcnRz
IHsNCj4+DQo+DQo+IEFwcGxpZWQgb24gc3RtMzItbmV4dC4NCj4NCj4gVGhhbmtzLg0KPiBBbGV4
DQotLSANCllhbm5pY2sgRmVydHLDqSB8IFRJTkE6IDE2NiA3MTUyIHwgVGVsOiArMzMgMjQ0MDI3
MTUyIHwgTW9iaWxlOiArMzMgNjIwNjAwMjcwDQpNaWNyb2NvbnRyb2xsZXJzIGFuZCBEaWdpdGFs
IElDcyBHcm91cCB8IE1pY3JvY29udHJvbGxldXJzIERpdmlzaW9uCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
