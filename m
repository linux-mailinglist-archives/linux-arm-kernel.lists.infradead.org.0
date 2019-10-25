Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1224E4BA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0zq9tHVep9gcKAhpfjLuEl9314BPhVwQRJspjcm9Bao=; b=daSTu5OFKd8ush
	dgnRJZDqDItm7JLNdPcek0y1UOozZRwAQldMx+ejOxrSJ2g04hPsMTq0l2wBXSYNhAqgCfZftyQbp
	HuKMkrcjaVrw9bTFbzEG5hA5O4BG1Hy78rO5t43SAlYRkrH03GgSXMdZmcA1UeJbC9GKEvwzY6VFH
	WhYq7zumO0t/GRiTH641M1NbfN1MRsoyFfOdCbBmTYqprFodu0mJ4kFBWBSkRcgbVWdmDJLngM4ri
	05lfbmFbpyJh3c+qzcW5G/ROTSaLEPj9GpE90C/R81RI/oINVDgssG1IKRz3fn6qQPXch1zBnLYcx
	vO813gzB24yA7AfaEAtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNz9A-0000sO-06; Fri, 25 Oct 2019 12:56:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNz8x-0000s2-LZ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:56:41 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9PCpq7b020613; Fri, 25 Oct 2019 14:56:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=qQo1qYvTQ8/a9TWLvq7bVKxtnPrxXOcyrJ1EJC4Avuk=;
 b=qZAouLrsMlweDrPrAASQtQF7voDX2b0tWesIC+4tB6q2orsc5Xc00hDSkaxHxZ38kXX3
 CiSuy1TjRxE4au2Wpkm9ofObFBKAY5KNh1sGepQ3a0s3snHuHWUWoH761JkcipSgAzMy
 YRlfpXKMbMCBAFviFc9Rh9dmuRYUf/tVecC3GAPKxVtZ7+RLyKQDuLHxUzScU0kHSI+t
 alpAUF282t89qMZXD67UBNFn0uIEvtSIBv0S8H8ANGEkUi015UZNfNF1kWi9zAHT0LwU
 qCePdYPw6Ac++sIaM+xML8lsrwsd5GbQmllzK0X+Aht0SUZQQxZWpvpMyiw/Agnqkv2u 9A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vt9s4fu70-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 14:56:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D708A100039;
 Fri, 25 Oct 2019 14:56:32 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C7F532FF5EB;
 Fri, 25 Oct 2019 14:56:32 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct 2019 14:56:32
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin
 Hilman <khilman@baylibre.com>,
 <linux-arm-kernel@lists.infradead.org>, <soc@kernel.org>, <arm@kernel.org>
Subject: [PATCH] ARM: multi_v7_defconfig: Enable audio support for stm32mp157
Date: Fri, 25 Oct 2019 14:56:32 +0200
Message-ID: <20191025125632.11057-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_07:2019-10-25,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_055640_008707_8AF0C176 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Olivier Moysan <olivier.moysan@st.com>

This commits enable (as module):
- STM32 SAI and I2S configs used on stm32mp157.
- Cirrus CS42L51 audio codec for stm32mp157a-dk1 board.
- Audio graph card support for stm32mp157a-dk1 board.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

---

Hi Arnd, Olof and Kevin,

I only have this patch for STM32 configs part. So please consider it
as my pull request for v5.5.

Thanks

Alex


diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 13ba53286901..dd3c717432ea 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -714,6 +714,8 @@ CONFIG_SND_SOC_ODROID=m
 CONFIG_SND_SOC_SH4_FSI=m
 CONFIG_SND_SOC_RCAR=m
 CONFIG_SND_SOC_STI=m
+CONFIG_SND_SOC_STM32_SAI=m
+CONFIG_SND_SOC_STM32_I2S=m
 CONFIG_SND_SUN4I_CODEC=m
 CONFIG_SND_SOC_TEGRA=m
 CONFIG_SND_SOC_TEGRA20_I2S=m
@@ -727,10 +729,12 @@ CONFIG_SND_SOC_TEGRA_ALC5632=m
 CONFIG_SND_SOC_TEGRA_MAX98090=m
 CONFIG_SND_SOC_AK4642=m
 CONFIG_SND_SOC_CPCAP=m
+CONFIG_SND_SOC_CS42L51_I2C=m
 CONFIG_SND_SOC_SGTL5000=m
 CONFIG_SND_SOC_SPDIF=m
 CONFIG_SND_SOC_STI_SAS=m
 CONFIG_SND_SOC_WM8978=m
+CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_USB=y
 CONFIG_USB_OTG=y
 CONFIG_USB_XHCI_HCD=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
