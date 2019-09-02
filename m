Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8BAA5AFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 18:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOjHvy5ril7iD/ElVOXaMzcNfTzhCS+IoMdvnaO9s/4=; b=r/HFTCJSnhHn1A
	d7ceMIOiJQDkoTU2m/+eGctfVDPhwDUNUg9zR3y896OyxCA+gaz2YTd9qh/UE2HwUm9I5mWGKj+R1
	weMM5rDT+Y/TcDQDu0tu36oIcXlDqFhyNl7NXhcMwOtGs0HxzpELB2/Ki1vJVlTN1zgb//QXaiUGR
	CmWdCX0zr8vwRJJYRq8ksHLQ2fRs+iD9HJ8czhAqphl9pIH4iczDm495UqRYLC+GaYX3JcbzUhKJZ
	v6XgRYGQWnS1gLXpDHYuCIFKDJrn88KSJjwj067qs7jcWoz4ikc/U1qCeaSvPU1HmPLjK2AYp3lt/
	y41b81iKzhS54Wq2BEmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4olt-00045c-20; Mon, 02 Sep 2019 16:01:37 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4olY-0003tk-Pe
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 16:01:18 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x82FugXs018639; Mon, 2 Sep 2019 18:01:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=/aa56M5YSWRpVt8Ft9iZEe2M6R3uFp9aD8gFFWVnG8o=;
 b=W0T3hZatOv0zWlkmehLF2oiCW7ELayPNixLUx/TaLDxe2BbiTX6o0aFox4GLzIVpcvpi
 wXvJzYHojMbVNGbZ2wwty4a0W2pi4VszwBn8vux0V8C6c9RXh4lrszMIghrAhgcHevz7
 6zWVj5w9QI5ubr/HNzWHnt6qD/Mteo8fpkGtE4O78rjStRoFWFKIMhNiAVEplmRF9U/c
 osBBcRHeGADMRYyEX/agLuVI+lDW2av1ogCSCRHAbiunmIqentX+nMOtdBHvmLpv9v9U
 U+d3hnqFcNlx8Y/dxernxysFPH+PxH+sTSgGmRwBYbP3armE2unZuDrVazLTLNSnA8N+ kg== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2uqe19dt3w-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 02 Sep 2019 18:01:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C359224;
 Mon,  2 Sep 2019 16:01:02 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7608B2CF15E;
 Mon,  2 Sep 2019 18:01:02 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019
 18:01:02 +0200
Received: from localhost (10.201.23.16) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 2 Sep 2019 18:01:01
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <alexandre.torgue@st.com>, <olof@lixom.net>, <horms+renesas@verge.net.au>, 
 <arnd@arndb.de>, <krzk@kernel.org>, <yannick.fertre@st.com>,
 <tony@atomide.com>, <m.szyprowski@samsung.com>,
 <fabrice.gasnier@st.com>, <enric.balletbo@collabora.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH 2/4] ARM: multi_v7_defconfig: enable stm32 i2s support
Date: Mon, 2 Sep 2019 18:00:39 +0200
Message-ID: <1567440041-19220-3-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
References: <1567440041-19220-1-git-send-email-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-02_06:2019-08-29,2019-09-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_090117_190809_2D639706 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

Enable support for I2S on STM32MP1.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 929d13842171..02265e195e50 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -700,6 +700,7 @@ CONFIG_SND_SOC_SH4_FSI=m
 CONFIG_SND_SOC_RCAR=m
 CONFIG_SND_SOC_STI=m
 CONFIG_SND_SOC_STM32_SAI=m
+CONFIG_SND_SOC_STM32_I2S=m
 CONFIG_SND_SUN4I_CODEC=m
 CONFIG_SND_SOC_TEGRA=m
 CONFIG_SND_SOC_TEGRA20_I2S=m
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
