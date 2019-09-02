Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A17CA5B06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 18:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THMEQRPRW3DSdgeIuQUL86gKoS3K+Sh99oF24ZNW+n8=; b=mC4ZxNI3pbnuPW
	Z3tBE3r5D9QNuXukzO6f2MoLhr6JImmJtAvV54WovZckx870a1Cmpe18NX0iu3AHkJwMQEPhA31Yn
	DAuZFFFhA48t+bkHGpMDpNxTqXGhUb++3FWIBccckFGqjHU1Wb2TlE1LBOeIs0LC/+hvEpWviJLR5
	p3Fk9u0nXGDXKOuHaxT2wieeY2vwGNlWY2jl/LvgezbLPAOM311au9eIia/JX9j5Sykf9MGMnxbYD
	AzFABQHsCw0/VbFwds2t1YOU9fsB4naThwY63qskY1AfxAKUFUkIrSq462O3lKTdrGHZn/2Vd2+Kq
	trFt9hxLhYKisH+rAVtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4omU-0004x8-Bk; Mon, 02 Sep 2019 16:02:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oll-00048z-J8
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 16:01:31 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x82G1NEh013661; Mon, 2 Sep 2019 18:01:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=n/9J04bMASd91Yvy3ukzh2dvhlV4FPmYy3RQUpNIw6g=;
 b=tc8HivKwomhriFxrWx2/yMRi933JjZQRofezTwsFF4HKT3Q2Y/yXzPc/RaBolmt3R+20
 UeWPxSHZH9Yh91ix/A6VJZAIMleeIMHsoKskMMxvC7lMomfYOGuNgg182Te/KrdODZ8u
 +dN2oSp7/v8a8oWE2ee6D36KS2ND2jFgCbwayyO7XaCciLzmxwykMF+WNWHZwNyuMz3R
 fL1T8+eOSm3VHwI3Ay/Vg8lSMvKrCoaERHa2JAw045lZg/cGhpZIwrBIaxI7xX1xy5/G
 NhXyiV+0nHPezHDP+ViJChofBt/w3JQ+shRWqw8FRSG8DKFajBGrxiJ72zk3v9l21s66 mA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2uqec2ngs8-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 02 Sep 2019 18:01:24 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3784F23;
 Mon,  2 Sep 2019 16:01:11 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9596C2CF15F;
 Mon,  2 Sep 2019 18:01:10 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019
 18:01:04 +0200
Received: from localhost (10.201.23.16) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019 18:01:04
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <alexandre.torgue@st.com>, <olof@lixom.net>, <horms+renesas@verge.net.au>, 
 <arnd@arndb.de>, <krzk@kernel.org>, <yannick.fertre@st.com>,
 <tony@atomide.com>, <m.szyprowski@samsung.com>,
 <fabrice.gasnier@st.com>, <enric.balletbo@collabora.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 4/4] ARM: multi_v7_defconfig: enable audio graph card support
Date: Mon, 2 Sep 2019 18:00:41 +0200
Message-ID: <1567440041-19220-5-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
References: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-02_06:2019-08-29,2019-09-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090129_943229_02266428 
X-CRM114-Status: GOOD (  11.71  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: olivier.moysan@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable audio graph card support for stm32mp157a-dk1 board.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 03a4d93df8c4..c7104a1c1687 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -719,6 +719,7 @@ CONFIG_SND_SOC_SGTL5000=m
 CONFIG_SND_SOC_SPDIF=m
 CONFIG_SND_SOC_STI_SAS=m
 CONFIG_SND_SOC_WM8978=m
+CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_USB=y
 CONFIG_USB_OTG=y
 CONFIG_USB_XHCI_HCD=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
