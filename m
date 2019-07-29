Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9644978DFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0fwWy1OCDOX2HtG1mGsHIeb4ouPhYHQJ+zuKOmGdm3E=; b=ayBpMFNmQKWqE8
	WlYy5gha7NnZs65iTH9on0tYA9SQEkGzodXL/3LDHOcoQZ5kJ8Z1Q9bsY7kdfRO6+6sfwCC0sBEQZ
	pmFlR8Wg6p2DuJ7DU8jrO1ESWgYY7fhxF4SnHeP6JD6PaIahHUdfBjHfvUtfWNaaG1MPofulV+PDC
	pFqcWNBFMBjH0AZ/KAoog2oCayLQTnqvJgbBeJ8Pfe5vA4vD2WxpvwdkXwfKz2Fr/USxsC5DpLsDI
	aocizERHKH8hIAomzppuzt2vuE0UJPf4jOYHMHG/N+KBSAy4lkjQP+L/DOWJ/4eTdzLzbLt4aVDJb
	MV9lip7SFsof52lhaw+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6eg-0006Rl-DL; Mon, 29 Jul 2019 14:29:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6eS-0006PR-Tj
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:29:26 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6TERLrM022428; Mon, 29 Jul 2019 16:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=/E0GksnkJiKefciHBvFyL+s1X3i9mUeBZFhV3J5bfCA=;
 b=MejLdAC5egEPFYo+PeRI2KZ59gQepBm4PjuE4dYHUmy2ipCTkYeM8cPmcIuSB5SWQNZc
 RWkDgdoUWvw3LPq0VRRbTRfja20BeoQ43YZJjo73gjX75besD6SIgzfQwDq3U6bS6jX4
 L9ELCvaiRoeRT73MTMLKzNRLuVenb8F1Kp+dQ3QMliTZWXCRQIjCAtmzQdq5k/AfDJSE
 Jcm28weMNsKgnLktPyiKeaCpGOtZrBUi0IA3MLu/DH7f+Jm0RWGCxy/j4HwaUzG1/tlU
 Sm0oYVM+dOOe63K/wy8W/kCEDgi0jnnm8h05EyWzJ4dJZfn1fAhTIaGveh3kVOEjKjcL +A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u0br9n7jv-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Jul 2019 16:29:17 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1F17F34;
 Mon, 29 Jul 2019 14:29:16 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D1D6B5A7C;
 Mon, 29 Jul 2019 14:29:15 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 16:29:15 +0200
Received: from localhost (10.201.23.97) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul 2019 16:29:15
 +0200
From: =?UTF-8?q?Yannick=20Fertr=C3=A9?= <yannick.fertre@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: [PATCH] ARM: dts: stm32: add phy-dsi-supply property on
 stm32mp157c-ev1
Date: Mon, 29 Jul 2019 16:29:08 +0200
Message-ID: <1564410548-20436-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.97]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-29_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072925_413680_B6C69817 
X-CRM114-Status: GOOD (  11.81  )
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

VGhlIGRzaSBwaHlzaWNhbCBsYXllciBpcyBwb3dlcmVkIGJ5IHRoZSAxdjggcG93ZXIgY29udHJv
bGxlciBzdXBwbHkuCgpTaWduZWQtb2ZmLWJ5OiBZYW5uaWNrIEZlcnRyw6kgPHlhbm5pY2suZmVy
dHJlQHN0LmNvbT4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJt
cDE1N2MtZXYxLmR0cwppbmRleCBmZWI4Zjc3Li4xOWQ2OWQwIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bS9ib290L2R0cy9zdG0zMm1wMTU3Yy1ldjEuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0
bTMybXAxNTdjLWV2MS5kdHMKQEAgLTEwMSw2ICsxMDEsNyBAQAogJmRzaSB7CiAJI2FkZHJlc3Mt
Y2VsbHMgPSA8MT47CiAJI3NpemUtY2VsbHMgPSA8MD47CisJcGh5LWRzaS1zdXBwbHkgPSA8JnJl
ZzE4PjsKIAlzdGF0dXMgPSAib2theSI7CiAKIAlwb3J0cyB7Ci0tIAoyLjcuNAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
