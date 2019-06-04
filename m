Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9BE33CF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 03:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kgOeOf3/1/bNe0YExwuTl+q/9WWMVAINa/oCYItbQrA=; b=JKKR/3W4BRPmt3gDe5NrH41klU
	TR7viLmOd03MDnwCST5mPwDT2E2lOsi3yvz5YhcdD7Z+VCjwnm4F5pm1q31ZcBXh8n3pZpqGpLnRR
	zC0bfw/9kotHhz//uqNw0C1MbgNV1W5mfJWFDTlSMOVEpCKC2RHqwk7xi6wHFI0ZDR1Cw85Qukc/i
	u3iCXejgwxx37UbAIXyEvzgOSxguq3+RuSzBnY3K/UxC1yynrdsWa+o8Gpkg5AL1uOm5NIy5SLdvp
	8VF3MvybPLAX4M5vztPkEeqgUXxS6MMhuFv7uhSMe+7DlYflGF+6nYVm6lZ1TvKsWWuqhx9bE4a6p
	NN65+jrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXyic-0006EW-6H; Tue, 04 Jun 2019 01:58:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXyiE-0005s3-5V
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 01:58:08 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E6F06200568;
 Tue,  4 Jun 2019 03:58:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3502B20056E;
 Tue,  4 Jun 2019 03:57:53 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 70C96402DD;
 Tue,  4 Jun 2019 09:57:39 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, maxime.ripard@bootlin.com, olof@lixom.net,
 horms+renesas@verge.net.au, jagan@amarulasolutions.com,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, dinguyen@kernel.org,
 enric.balletbo@collabora.com, aisheng.dong@nxp.com, ping.bai@nxp.com,
 abel.vesa@nxp.com, l.stach@pengutronix.de, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 4/4] arm64: defconfig: Select CONFIG_CLK_IMX8MN by default
Date: Tue,  4 Jun 2019 09:59:28 +0800
Message-Id: <20190604015928.23157-4-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604015928.23157-1-Anson.Huang@nxp.com>
References: <20190604015928.23157-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_185806_616695_0723FE6E 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Enable CONFIG_CLK_IMX8MN to support i.MX8MN clock driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- follow alphabet sequence.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8d4f25c..ae17f45 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -655,6 +655,7 @@ CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_CLK_QORIQ=y
 CONFIG_COMMON_CLK_PWM=y
 CONFIG_CLK_IMX8MM=y
+CONFIG_CLK_IMX8MN=y
 CONFIG_CLK_IMX8MQ=y
 CONFIG_CLK_IMX8QXP=y
 CONFIG_TI_SCI_CLK=y
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
