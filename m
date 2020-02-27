Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D451715A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 12:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ywEyZ3llSXA2nTOB3G87URmWORSBcUuTfYAUtrtLEMs=; b=unc30e4b8WBy/A
	6Z5AkdDp+7fzMM5H4TsYTaan2Q46iT6jvnjrpbUGljgGRs/gMLzmGspEoCzz+v8WVMj8SINAkYwq6
	cf0ToFVn4ccPTCPA5inFQjYceJ9csyy7J06QW56oMnwbzIZwLMMa6Ubv4BAJlYM8G+9H+09h5zZFS
	DSCEbKC3cjdvCqWrVAinLLvS5O1zHZ8id+VybUL8GVG7zA4wwRFaFTRw7fWqGV9382jUNRJDAWaBz
	pLol14jHcCmCJJ/Scmb2cXPNxW9HEpNRjHYhPj4aLXAqvxwPZdnQKnIQtYvauAdEfp22ZlaLMwSzh
	Lhwn7yUOMs9GBoYVDvZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7H04-000435-Rt; Thu, 27 Feb 2020 11:06:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Gzb-0003kA-Rh
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 11:06:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GzX-0006tb-Kj; Thu, 27 Feb 2020 12:06:07 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GzX-0005LQ-22; Thu, 27 Feb 2020 12:06:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, chf.fritz@googlemail.com,
 s.riedmueller@phytec.de, s.christ@phytec.de, c.hemp@phytec.de,
 contact@stefanchrist.eu
Subject: [PATCH 1/2] ARM: dts: imx6: phycore-som: explicit disable pmic
 watchdog during suspend
Date: Thu, 27 Feb 2020 12:06:04 +0100
Message-Id: <20200227110605.22144-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_030611_931530_539F293E 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

By default the phycore-som has support for two watchdog devices: 1st the
internal imx6 watchdog and 2nd the DA9062 PMIC watchdog. According [1]
the PMIC watchdog is used as boot watchdog. It is common to use this
watchdog during "system up" time too. Furthermore the PMIC watchdog can
be used to address ERR007117 since the phycore-som can be equipped with
NAND or eMMC storage.

The PMIC watchdog can be enabled/disabled by the PMIC itself if the PMIC
enters POWERDOWN mode or by the host. The PMIC powerdown mode can't be
used due to the PCB design. So the watchdog is still enabled during a
suspend which causes a system reset. We need to tell the driver to
disable the watchdog during a system suspend and to reenable it upon a
resume to fix this.

[1] https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi#n73

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I tested it on a with a phycore imx6q other testers are welcome =)
The binding landed in v5.6-rc1 and the driver handling in v5.6-rc3.

Regards,
  Marco

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 77d871340eb7..8b71bf33ba30 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -107,6 +107,7 @@
 
 		watchdog {
 			compatible = "dlg,da9062-watchdog";
+			dlg,use-sw-pm;
 		};
 
 		regulators {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
