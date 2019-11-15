Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62A6FD7D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gHzsDwHF4aky57fQoLxaTzvq++1j9A340FuBl6WuvNA=; b=HFj
	LgkMSjim1M2k2gM1hAcug7TzZAnuQ7uab9sW7hjdja3Z6ZBCxtMm5rdG6bCHY1KSdjzdLnhJY0Wej
	mzfHl5DlIF3CIZaZa/VE7Dc8OAtU/e80+gCLH9gAYU0yZkn7o8F2N6FljW36PpZcbFv79JY8h3Jx4
	CPbdpPu62YGKExAgY4PBEp1YKcmXhhbddi7vP5Gc6AmU+tUiGddwHGruw5PTc3HGI5NbVlxrzrjhI
	E0kSz8Yuf4M9A1BFkQOUStpozyGMPzv1EzoPyGpFATmH4ZT6CgoHIMwD7p5cQ8b+gfB1pBKqSxa1A
	GZt5CBQ5WkMRkJFEf/KqjwtVamhIHSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWq7-0007HO-7U; Fri, 15 Nov 2019 08:20:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWpz-0007Gn-3W
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:20:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D86501A0495;
 Fri, 15 Nov 2019 09:20:10 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CA1D31A04B6;
 Fri, 15 Nov 2019 09:20:07 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9C8FE40332;
 Fri, 15 Nov 2019 16:20:02 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: arnd@arndb.de,
	will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH 1/1] ARM64: defconfig: add some USB configurations
Date: Fri, 15 Nov 2019 16:18:16 +0800
Message-Id: <1573805896-23903-1-git-send-email-peter.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_002015_291906_0A075A0B 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Chen <peter.chen@nxp.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- CONFIG_SND_USB_AUDIO
Support USB audio card when boards are at host mode.

- CONFIG_USB_EHSET_TEST_FIXTURE
Triggering Embedded Host entering test mode for USB-IF electrical test.

- CONFIG_USB_TEST
Support USB host stress test in raw data mode

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 36446cfc6206..d996bc858918 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -647,6 +647,7 @@ CONFIG_SOUND=y
 CONFIG_SND=y
 CONFIG_SND_HDA_TEGRA=m
 CONFIG_SND_HDA_CODEC_HDMI=m
+CONFIG_SND_USB_AUDIO=m
 CONFIG_SND_SOC=y
 CONFIG_SND_BCM2835_SOC_I2S=m
 CONFIG_SND_SOC_FSL_EASRC=y
@@ -705,6 +706,8 @@ CONFIG_USB_CHIPIDEA=y
 CONFIG_USB_CHIPIDEA_UDC=y
 CONFIG_USB_CHIPIDEA_HOST=y
 CONFIG_USB_ISP1760=y
+CONFIG_USB_TEST=m
+CONFIG_USB_EHSET_TEST_FIXTURE=m
 CONFIG_USB_HSIC_USB3503=y
 CONFIG_NOP_USB_XCEIV=y
 CONFIG_USB_MXS_PHY=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
