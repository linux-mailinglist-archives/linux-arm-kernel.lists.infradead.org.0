Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92644325E4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 03:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw1DccbqvALxPSAtUdHiVITytFsewV/W1A6N6cGrFT8=; b=nlVJGtjnUBIPY6
	3eWRaBuKqGnsMl6gdbcIDLeP1w+9u8JqryVerh3TU1ji6N7qkNGmIGSqe9hxdmEf4XTH08Vs1lfeL
	sk0XQuGH6cwhsgrhoCqdTdmLuO54i1NHCxNYLniAf6nzpuVMrWEh4lYFt3rio9ERTTqMPC7kXayIV
	fe1cixRwzQE0jrgZs8uR7ph1wEbPHzik1SDAlFZAgqam4csB7u0DFca4H2+X5w7lOm2jTWE+s0yjJ
	RVXONsminWpbvw7REf1EHcjPxl1I1lwQQq1STpbpdyDfqtXNhRGcHdEJqspxi6P6aPlfiY4XcTwPU
	DeTGmdhfIt8gdMbs+YoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXbPZ-0003WA-FK; Mon, 03 Jun 2019 01:05:17 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXbPR-0002ws-9r
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 01:05:11 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 28C293E917;
 Mon,  3 Jun 2019 01:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1559523906;
 bh=f5ufiraj1tVlQYSRkabyq0re0Yb8FrTeaMF6chCEqeA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WcIvSSlmboU/L5lvCKn6rtjeztsqP8arSNxATzuL54sVPjo5oME5Lcm1ui2a0brdW
 2nxEUDH3H4pFjQcP+VrESWySa0ENV4LpgBMFDscXIsHdRp2PHQSqaU2PQiS7R4vb8e
 pui51mH6Z4wlP/bWbcPha0dgthbIXr1YnlKih/ZY=
From: Brian Masney <masneyb@onstation.org>
To: agross@kernel.org
Subject: [PATCH 2/2] ARM: qcom_defconfig: add support for USB networking
Date: Sun,  2 Jun 2019 21:04:55 -0400
Message-Id: <20190603010455.17060-2-masneyb@onstation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603010455.17060-1-masneyb@onstation.org>
References: <20190603010455.17060-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_180509_454202_35B1B419 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux@armlinux.org.uk, bjorn.andersson@linaro.org,
 david.brown@linaro.org, absahu@codeaurora.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com,
 frank.rowand@sony.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for USB networking as a module to qcom_defconfig since its
a useful feature to have for development purposes.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
This is to be applied on top of the display patch series:
https://lore.kernel.org/lkml/20190531094619.31704-1-masneyb@onstation.org/

 arch/arm/configs/qcom_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
index 4f02636f832e..f26103eae564 100644
--- a/arch/arm/configs/qcom_defconfig
+++ b/arch/arm/configs/qcom_defconfig
@@ -186,6 +186,7 @@ CONFIG_USB_CONFIGFS_NCM=y
 CONFIG_USB_CONFIGFS_ECM=y
 CONFIG_USB_CONFIGFS_F_FS=y
 CONFIG_USB_ULPI_BUS=y
+CONFIG_USB_ETH=m
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK_MINORS=32
 CONFIG_MMC_ARMMMCI=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
