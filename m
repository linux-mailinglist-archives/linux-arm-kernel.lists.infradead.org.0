Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACBF1346D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 16:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=7dXKePHWNZRh+XmClp82Jx+xWs/GC3llIIWsjJF6kCM=; b=B72
	avIRXqUuighOJtsCEB5GVPVB6TZTrO9R+PqxNtf+CTHyfPVHX40Bs6RkKi2xsQd9RC5PTDwGyqI4F
	Bpj4nQTMNETEotl5Dij1/b9D8s2GLFzhkpWeatrkZaZZKM1utzwX082ZEVeQR92VaPugmYrBxmlOO
	AwlVT9mVndQ29jPE/rreiyJqOP1gGlYjDaruhQc+mNMuUs/1Era25KBFXHmy1WJUoqVcAfRSu7WrW
	OL3MtyTW9DYtgQoMEjwTzlCn18eW1AErXolALFhbrvy6FYp/aaBaPsKb7bfoNr3cv0tNxqD2LM7oU
	A6KxxtMf4cN9N0GxroCINFP2uEDDPng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipDjj-0005kt-LT; Wed, 08 Jan 2020 15:59:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipDjV-0005jX-OD; Wed, 08 Jan 2020 15:58:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B61B7106F;
 Wed,  8 Jan 2020 07:58:56 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F7A23F534;
 Wed,  8 Jan 2020 07:58:56 -0800 (PST)
Date: Wed, 08 Jan 2020 15:58:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Applied "regulator: mp8859: add config option and build entry" to the
 regulator tree
In-Reply-To: <20200106211633.2882-3-m.reichl@fivetechno.de>
Message-Id: <applied-20200106211633.2882-3-m.reichl@fivetechno.de>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_075857_843889_BC089C4A 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   regulator: mp8859: add config option and build entry

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From c66f1cbad53a61f00f8b6273e737d5e560b69ec7 Mon Sep 17 00:00:00 2001
From: Markus Reichl <m.reichl@fivetechno.de>
Date: Mon, 6 Jan 2020 22:16:25 +0100
Subject: [PATCH] regulator: mp8859: add config option and build entry

Add entries for the mp8859 regulator driver
to the build system.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
Link: https://lore.kernel.org/r/20200106211633.2882-3-m.reichl@fivetechno.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/Kconfig  | 11 +++++++++++
 drivers/regulator/Makefile |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/regulator/Kconfig b/drivers/regulator/Kconfig
index 56512748a47d..593733a88a61 100644
--- a/drivers/regulator/Kconfig
+++ b/drivers/regulator/Kconfig
@@ -612,6 +612,17 @@ config REGULATOR_MCP16502
 	  through the regulator interface. In addition it enables
 	  suspend-to-ram/standby transition.
 
+config REGULATOR_MP8859
+	tristate "MPS MP8859 regulator driver"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  Say y here to support the MP8859 voltage regulator. This driver
+	  supports basic operations (get/set voltage) through the regulator
+	  interface.
+	  Say M here if you want to include support for the regulator as a
+	  module. The module will be named "mp8859".
+
 config REGULATOR_MT6311
 	tristate "MediaTek MT6311 PMIC"
 	depends on I2C
diff --git a/drivers/regulator/Makefile b/drivers/regulator/Makefile
index 9eccf93bc3ab..8ba8e5deebbd 100644
--- a/drivers/regulator/Makefile
+++ b/drivers/regulator/Makefile
@@ -78,6 +78,7 @@ obj-$(CONFIG_REGULATOR_MC13783) += mc13783-regulator.o
 obj-$(CONFIG_REGULATOR_MC13892) += mc13892-regulator.o
 obj-$(CONFIG_REGULATOR_MC13XXX_CORE) +=  mc13xxx-regulator-core.o
 obj-$(CONFIG_REGULATOR_MCP16502) += mcp16502.o
+obj-$(CONFIG_REGULATOR_MP8859) += mp8859.o
 obj-$(CONFIG_REGULATOR_MT6311) += mt6311-regulator.o
 obj-$(CONFIG_REGULATOR_MT6323)	+= mt6323-regulator.o
 obj-$(CONFIG_REGULATOR_MT6358)	+= mt6358-regulator.o
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
