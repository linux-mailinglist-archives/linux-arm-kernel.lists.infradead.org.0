Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286B2192B3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 15:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwmuEnxHuSAOAHULkdE2Pl0UJFtxDHpEiwwsYuvP+fQ=; b=tnk32fVMUogqdc
	BpPqMFyacrhXDslLxR2XeGYOHZcv7PTpoNQcNyT1umMqPel68rjgQg30vymughSy8UHpEifC47EvD
	7Bpg46Ol6MMIHkee6q3pYvz1j+kKE5W3JuX/GSp8VCUsbbDzQ6nE8+hRxgt4bFrsDE7Wq+t04nbL+
	6Uw2RcKY7JPf5pntXEJHzHzxCOEpWy04mp+m5aGkowQ33U29TFvREC/j8BgdMncMbAcUxxb+0fx89
	o+3w2Q4wy9REpAQ+SJF1IwpFr5qfE9QzLrPVdXlEamPMB4cgJaHj0YcHvTEaxSBau7ueCpn/d+WxG
	ByZOK6xhqgI0vYPxHeJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH77A-0006Yn-0y; Wed, 25 Mar 2020 14:34:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH771-0006XZ-AW
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 14:34:32 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02PEWvHx012902; Wed, 25 Mar 2020 15:34:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=tdaK4kNuJv1E9o/omGzEOLv3OEUVPQ8rJCVCtHHOQ7E=;
 b=RpqWsxtL8DoKhjuaok0OltLjnuzvXX+Md6Vy/dXbOOwA0IbOjluaMj3zIolvxrSvPUqv
 NLZoeZzv88UrVpgnyVRIOTi1gDaObX0YlI7RepoCemCnuEHEunrUJw8jH03xbO6hGFy0
 hEdCXAUm7vdPLvmJQ8V251btNF1v1uGmRxvKE2b2+yY3VwT+usuz+Mh701pWGlG0aEPm
 FrbdBkS7iE++6PgWuxyxdTBbcKOtXYigze2eKqhX9YFlq6HZQQlHKvdMPhll90y1370g
 RQJdYX/VTGHyXOOjIqnliKT0TXakaCKt+hPETi+mjQgn9gfssRvjOnlWewgnJX/3zdss qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw9k066um-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 25 Mar 2020 15:34:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50D32100034;
 Wed, 25 Mar 2020 15:34:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3AE022B2527;
 Wed, 25 Mar 2020 15:34:20 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 25 Mar 2020 15:34:19 +0100
From: Ludovic Barre <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH V2 1/2] mmc: mmci_sdmmc: fix clear busyd0end irq flag
Date: Wed, 25 Mar 2020 15:34:08 +0100
Message-ID: <20200325143409.13005-2-ludovic.barre@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325143409.13005-1-ludovic.barre@st.com>
References: <20200325143409.13005-1-ludovic.barre@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_07:2020-03-24,
 2020-03-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_073431_723065_E4325868 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 srinivas.kandagatla@linaro.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The busyd0 line transition can be very fast. The busy request
may be completed by busy_d0end without wait the busy_d0 steps.
The busyd0end irq flag must be cleared even if no busy_status.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 drivers/mmc/host/mmci_stm32_sdmmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
index f76e82f8f12f..d33e62bd6153 100644
--- a/drivers/mmc/host/mmci_stm32_sdmmc.c
+++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
@@ -358,11 +358,11 @@ static bool sdmmc_busy_complete(struct mmci_host *host, u32 status, u32 err_msk)
 	if (host->busy_status) {
 		writel_relaxed(mask & ~host->variant->busy_detect_mask,
 			       base + MMCIMASK0);
-		writel_relaxed(host->variant->busy_detect_mask,
-			       base + MMCICLEAR);
 		host->busy_status = 0;
 	}
 
+	writel_relaxed(host->variant->busy_detect_mask, base + MMCICLEAR);
+
 	return true;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
