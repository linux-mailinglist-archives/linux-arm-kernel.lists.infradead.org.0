Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628F4FDD77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=xOWMCkQXjGa1YKEGnF5CU3a5ZOmP2fPUxM8fB2h6PVA=; b=E4y
	aoM/7W5dZYWCYRAQvJiolnfQp+XMHJdE8wpaD1YfvMoB0XFlAPTfzgpMI+x6t2UcRup/GiA5kgUV5
	9TdpvUCdjAcUE5piQL2JhNPTvi2bBXkjLN9pZJFujUyWA959YxH6CVmsvuKFiiprI+IsQhgBPghPm
	zoYfAEV1SoYcXZ2qifjFP+BJFYQRWI0MLEZEEBuOkrnGWlEOy2Z4yX0nlsW3F9apCorrQ/ps2pYEB
	poinBb+6BqU0xnnQUeN7oi4m5BE/O2CgHn5Tju0mXjqx836N7qvgKRsWCNFTlxwc0mo2t2pCL2tun
	TDwYbBT34we+VbaFn22k9fIKuoDSisw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVafL-0002Y1-3R; Fri, 15 Nov 2019 12:25:31 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVaf5-0002Vy-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=4AGPkKPSVyOTs5n0W0mJVA5CUUCsjeEv/AClqhuZzv4=; b=qzFKtRmxYbbx
 bGe9vsc580IghowflZsvWJTvC4y/mPeSs+UAZrMoT0TpI0kL1zEYB+R3i2fIbx1d5k1c+1sve/Pnn
 DMdcbZjd6l8oxtpDgVH3StavMUHRPNTEkuePI7ANTtBJjLR9y2uFYAyEiteMXaTQsWF6yDDDdoeUV
 153rk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iVaex-0000Kk-OA; Fri, 15 Nov 2019 12:25:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3CFBC27415A7; Fri, 15 Nov 2019 12:25:07 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Applied "dt-bindings: mfd: da9062: describe buck modes" to the
 regulator tree
In-Reply-To: <1573652416-9848-4-git-send-email-chf.fritz@googlemail.com>
X-Patchwork-Hint: ignore
Message-Id: <20191115122507.3CFBC27415A7@ypsilon.sirena.org.uk>
Date: Fri, 15 Nov 2019 12:25:07 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042515_048538_0B1F3E25 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: mfd: da9062: describe buck modes

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.5

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

From a4bb429811bd4a5be94873ae218062c83c476ed9 Mon Sep 17 00:00:00 2001
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Wed, 13 Nov 2019 14:40:15 +0100
Subject: [PATCH] dt-bindings: mfd: da9062: describe buck modes

This patch adds DT description of da9062 buck regulator modes.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
Link: https://lore.kernel.org/r/1573652416-9848-4-git-send-email-chf.fritz@googlemail.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/da9062.txt b/Documentation/devicetree/bindings/mfd/da9062.txt
index edca653a5777..bc4b59de6a55 100644
--- a/Documentation/devicetree/bindings/mfd/da9062.txt
+++ b/Documentation/devicetree/bindings/mfd/da9062.txt
@@ -66,6 +66,9 @@ Sub-nodes:
   details of individual regulator device can be found in:
   Documentation/devicetree/bindings/regulator/regulator.txt
 
+  regulator-initial-mode may be specified for buck regulators using mode values
+  from include/dt-bindings/regulator/dlg,da9063-regulator.h.
+
 - rtc : This node defines settings required for the Real-Time Clock associated
   with the DA9062. There are currently no entries in this binding, however
   compatible = "dlg,da9062-rtc" should be added if a node is created.
@@ -96,6 +99,7 @@ Example:
 				regulator-max-microvolt = <1570000>;
 				regulator-min-microamp = <500000>;
 				regulator-max-microamp = <2000000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-boot-on;
 			};
 			DA9062_LDO1: ldo1 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
