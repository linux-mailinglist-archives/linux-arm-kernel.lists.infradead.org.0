Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D31C9CA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LzFwrINY+n/W+oISJfwDQLX72MZ7XLwPgNT2zUFojxw=; b=Rc6Lx6rEDAtK6g
	uS6fY1QYIQ3PHJAG321Yqv/eN4sq6WJYQUCdCF0Cztwm9c10/6ErNCLunso2dAjdVszECFLdLEUw4
	nMMEuXrfIsV+BLqyr6c/U+fGoj2rvb1O0Jmy6nj2H9zpzlPHYmax2OAOxfApJKvDuY7EZ7U59sWsK
	PkZ3fgPTnzh4P60jJ2vgFLEjuEWllulHcWVRw8iv/zOVy7XIPJGz3bcTnScSqVeA8a4eGKk0ApzZl
	8/1hIu5zOBYBW+D9fwW6HOuCl7ty92nojMkPdmT8CwL1cer/ju8jdwG2R+j6/76MGmyHMIYcGLdUJ
	idj5PxLZrV2q6/3qsJAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnQA-00055W-IS; Thu, 07 May 2020 20:47:06 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnQ3-00054v-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BOPvhULF3Vi20Px15Vghj/sDxm5k9HzIyVTMiezd0g8=; b=fJZJ0A0UmxWMdezzeGRRELCqNp
 mssH61P0EAUiest7OITWPVbrCnw1BdFHg0O9E3SyVnNbnRIq/SQ3bzSP+4mex0MdhmtiSJeqV5F3P
 U1FJP/TgcpoaoqHdYsmFQEKuHJDQEH0Rcdc2bMsAPBgwTCbLDMdks/5wFtWZ8V+CDb/c=;
Received: from p200300ccff2da2001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff2d:a200:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1jWnPl-0001ss-O3; Thu, 07 May 2020 22:46:42 +0200
Received: from andi by aktux with local (Exim 4.92)
 (envelope-from <andreas@kemnade.info>)
 id 1jWnPk-00089w-ML; Thu, 07 May 2020 22:46:40 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, Anson.Huang@nxp.com,
 aford173@gmail.com, oleksandr.suvorov@toradex.com,
 u.kleine-koenig@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx_v6_v7_defconfig: extend RN5T618 PMIC family support
Date: Thu,  7 May 2020 22:43:39 +0200
Message-Id: <20200507204339.31253-1-andreas@kemnade.info>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_134700_088715_121FE942 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Kemnade <andreas@kemnade.info>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are new drivers for functionality of that family
(RTC and ADC), so enable them, since they are used by
various i.MX6 boards.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
 arch/arm/configs/imx_v6_v7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 5a20d12d62bd..87e6400c436b 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -395,6 +395,7 @@ CONFIG_RTC_DRV_DA9063=y
 CONFIG_RTC_DRV_MC13XXX=y
 CONFIG_RTC_DRV_MXC=y
 CONFIG_RTC_DRV_MXC_V2=y
+CONFIG_RTC_DRV_RC5T619=y
 CONFIG_RTC_DRV_SNVS=y
 CONFIG_DMADEVICES=y
 CONFIG_FSL_EDMA=y
@@ -408,6 +409,7 @@ CONFIG_COMMON_CLK_PWM=y
 CONFIG_IIO=y
 CONFIG_MMA8452=y
 CONFIG_IMX7D_ADC=y
+CONFIG_RN5T618_ADC=y
 CONFIG_VF610_ADC=y
 CONFIG_SENSORS_ISL29018=y
 CONFIG_MAG3110=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
