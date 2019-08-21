Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8378E96F7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/FLxHYLnirS2yeSjbK1d+y7TbugTOQfOoJb5x8qQIMI=; b=LqYih6l9/PRv7y5QXfJ1IxOluN
	oxZOZ/mTXdIJ4ePY/TtlhNpTWZbqxdwMRO5kkJsmVeR943EP/p5pHaSSHwmXS+HtNCC1BOIeGVzqE
	NxWZm9HQKOkFaVcm72SUlg1YCDaf5Saodalgbljp0q6KODRa2MT23VI2TJ5uZfsiLuvmCr3w0UMTh
	rXAKiaiCE7fC7NPEZXncfxsugUzCVSJv3MOZH753PeN7jJ5Z60p1Qo6L+cjg838cPNGruSCbW/vob
	ij0dNCil1jXT/siDcVeThcCfR+Ge0ydB+Nwf+NSQHV90RWjuTAgqOakmdRs7aAx0BKW1lwEDgI8UM
	j5Pk+XAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GLB-0006xF-TD; Wed, 21 Aug 2019 02:27:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GKs-0006m8-NR
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:26:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7BD4A1A00DD;
 Wed, 21 Aug 2019 04:26:53 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 334771A04CC;
 Wed, 21 Aug 2019 04:26:45 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 992AA40318;
 Wed, 21 Aug 2019 10:26:34 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux@armlinux.org.uk,
 otavio@ossystems.com.br, leonard.crestez@nxp.com, schnitzeltony@gmail.com,
 u.kleine-koenig@pengutronix.de, jan.tuerk@emtrion.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3 3/4] ARM: imx_v6_v7_defconfig: Enable CONFIG_IMX7ULP_WDT by
 default
Date: Tue, 20 Aug 2019 22:07:57 -0400
Message-Id: <1566353278-1884-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566353278-1884-1-git-send-email-Anson.Huang@nxp.com>
References: <1566353278-1884-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_192654_900763_12B3DBEC 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Select CONFIG_IMX7ULP_WDT by default to support i.MX7ULP watchdog.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 arch/arm/configs/imx_v6_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index 9bfffbe..be2a694 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -236,6 +236,7 @@ CONFIG_DA9062_WATCHDOG=y
 CONFIG_DA9063_WATCHDOG=m
 CONFIG_RN5T618_WATCHDOG=y
 CONFIG_IMX2_WDT=y
+CONFIG_IMX7ULP_WDT=y
 CONFIG_MFD_DA9052_I2C=y
 CONFIG_MFD_DA9062=y
 CONFIG_MFD_DA9063=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
