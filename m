Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FA2F4CF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yjCLJAjlD3IuKY5XAAmYdS6v/xeeyjgrlpyFU8spJHk=; b=aJeGlPvwxkL9nj
	dRG6VzjEF4mJFUkbfAIkhA0LaBsXgI14rITnh+/uGHApgwmNQqt2NxV2leRL/LKPlz1OBN95UR54C
	Wlt4cLk/X3AVRyvqVKrbJypa/MP9iKsLTlt4kjgCrpMPyGFM5/E9kSH1XTdajcQpJkxzr08xPX9/l
	QR5NmhBcsBSTrRObAHuieHvlYD9yjUCSD+xj+NOJmy3krbihNVX3ocjXEdT0yXXDNgum6n0U3F3t3
	KY6QKdplCSIo49+h02g3frZDMxFdvEUAZcudYxSKIjYkqBU0Dj5S2WDlpwm3K4rJ8KrF4wwaNb3s+
	w7EVyCfuMz6bXwJ4sZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT48J-0003xr-0k; Fri, 08 Nov 2019 13:16:59 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3uT-00058O-Cv
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:02:43 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id CD6587B9FF91A25B08F4;
 Fri,  8 Nov 2019 21:02:33 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Fri, 8 Nov 2019
 21:02:25 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <leoyang.li@nxp.com>, <alexandre.belloni@bootlin.com>
Subject: [PATCH -next] soc: fsl: Enable COMPILE_TEST
Date: Fri, 8 Nov 2019 21:02:13 +0800
Message-ID: <20191108130213.23684-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050241_638587_2800FB09 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When do COMPILE_TEST buiding for RTC_DRV_FSL_FTM_ALARM,
we get this warning:

WARNING: unmet direct dependencies detected for FSL_RCPM
  Depends on [n]: PM_SLEEP [=y] && (ARM || ARM64)
  Selected by [m]:
  - RTC_DRV_FSL_FTM_ALARM [=m] && RTC_CLASS [=y] && (ARCH_LAYERSCAPE || SOC_LS1021A || COMPILE_TEST [=y])

This enable COMPILE_TEST for FSL_RCPM to fix the issue.

Fixes: e1c2feb1efa2 ("rtc: fsl-ftm-alarm: allow COMPILE_TEST")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
In commit c6c2d36bc46f ("rtc: fsl-ftm-alarm: Fix build error without PM_SLEEP")
I posted a wrong kconfig warning(which PM_SLEEP is n), sorry for confusion.
---
 drivers/soc/fsl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/Kconfig b/drivers/soc/fsl/Kconfig
index 4df32bc..e142662 100644
--- a/drivers/soc/fsl/Kconfig
+++ b/drivers/soc/fsl/Kconfig
@@ -43,7 +43,7 @@ config DPAA2_CONSOLE
 
 config FSL_RCPM
 	bool "Freescale RCPM support"
-	depends on PM_SLEEP && (ARM || ARM64)
+	depends on PM_SLEEP && (ARM || ARM64 || COMPILE_TEST)
 	help
 	  The NXP QorIQ Processors based on ARM Core have RCPM module
 	  (Run Control and Power Management), which performs all device-level
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
