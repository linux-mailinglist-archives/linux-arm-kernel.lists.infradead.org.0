Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F235D018
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=FXSZIViEacIghQoAUFAhJ7UgWNolKVpae2UohxfWsa0=; b=Ygb
	eeTyEDChMpUXJbu3OYKNBuKWjqzEM+mrBSeTzvnXbiJbdklFR1BVDAmxm/EB1dS5M+AwQXaoMVgzI
	BVxovSRiTXS49hBjTYdTRCxTTtIsKCNY/08nwgvmNZDh628bJL/GEg2P+Su9wkjgWbez5C2lswWDm
	uwzmqaAZsLAzJ1CW99i1HaQPH4ryBUA7n9g4rc9Ar9wwym/1jG4s83aPq3GWdURaWZWHbiKOIpvxV
	GtwcqEphXDIfrRJGcjbYs5Y9seYVzrZ5s+wt6SHZg/ZJ0Qly8uplZijpJKV1I3/vaYngLgp/pAHE7
	41tp9dBXIKmd0iphs0YoUSGHws+JnUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiITP-000351-V7; Tue, 02 Jul 2019 13:05:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiISv-00033A-E2
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=JZq94gVIt9OPiVxwVhfvMyRq1d3OQdO0lv56n1fIsjc=; b=EMBcbEPBSq8o
 hdUjNnoxW33yRHf9zmJfoX3ct4oTDoxdyITuD0Clwqjf8jaRnpJZ3BJHETs9KXk/fW8HR+Q54S8AI
 r8azab9HKgiC08jnSKKRLFvI4MV9QB4RJJ0NnZPRBDNRthSQ6SQJ2IGtJKuwl58ybyGlPklM/bY2a
 iy0G8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hiISm-0002O1-Ii; Tue, 02 Jul 2019 13:04:48 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 1B37D440046; Tue,  2 Jul 2019 14:04:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Applied "dt-bindings: regulator: add support for the stm32-booster"
 to the regulator tree
In-Reply-To: <1561968865-22037-2-git-send-email-fabrice.gasnier@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190702130448.1B37D440046@finisterre.sirena.org.uk>
Date: Tue,  2 Jul 2019 14:04:48 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060457_618611_7A2A9997 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com, lgirdwood@gmail.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: regulator: add support for the stm32-booster

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.3

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

From d6d02bc6e80453ca004e101eae28d741bde54426 Mon Sep 17 00:00:00 2001
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Date: Mon, 1 Jul 2019 10:14:22 +0200
Subject: [PATCH] dt-bindings: regulator: add support for the stm32-booster

Document the 3.3V booster regulator embedded in stm32h7 and stm32mp1
devices, that can be used to supply ADC analog input switches.
It's controlled by using system configuration registers (SYSCFG).
Introduce two compatibles as the booster regulator is controlled by:
- a unique register/bit in STM32H7
- a set/clear register pair in STM32MP1

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../bindings/regulator/st,stm32-booster.txt    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.txt

diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt b/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
new file mode 100644
index 000000000000..479ad4c8758e
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
@@ -0,0 +1,18 @@
+STM32 BOOSTER - Booster for ADC analog input switches
+
+Some STM32 devices embed a 3.3V booster supplied by Vdda, that can be used
+to supply ADC analog input switches.
+
+Required properties:
+- compatible: Should be one of:
+  "st,stm32h7-booster"
+  "st,stm32mp1-booster"
+- st,syscfg: Phandle to system configuration controller.
+- vdda-supply: Phandle to the vdda input analog voltage.
+
+Example:
+	booster: regulator-booster {
+		compatible = "st,stm32mp1-booster";
+		st,syscfg = <&syscfg>;
+		vdda-supply = <&vdda>;
+	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
