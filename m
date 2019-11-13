Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37526FB19C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0y0TNj7/EHJg/yqHC8LFNFTNEEQL3tul2uaUj/6Ghw=; b=c6UAE1vHwRbhWyPqTF2vl2+NKN
	wA0XPPowWHWLL2lOMKB2SLmQJbpgAiBHQXzyol+fqzPtiL7d6yYAhjvk9l9Ej9MQhhpNYWRHLbpV5
	Yv60NaTP0mg0l0QC+uZfCJuQuSisZ4r2U9gC97x3hlzu5LbGb0e4gt05DziAGyZ5R+hrJ0e/JQLOp
	4cpgD38KNQ1jVmVtgDEulb1T6XbdkAQ+fZ04SMsVkLlWskcr5bUFzW6OlZX7yyDjvXhuf/tWlveT5
	E5hPIB5gt0yGSkzNtMSFxHmriiRIlV9sfN605YWLgRIdiR9aFlIU+a8HEphAelrcUn5+SzKhzP5Rl
	bncx25uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsum-0002hg-Uj; Wed, 13 Nov 2019 13:42:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUstP-0001ll-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:41:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id n1so2390527wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g2lD/Zhk10aEU/jv34FPJDsmkoPVsN84DE48zUMY4rY=;
 b=k2HbZ4e6sjvmBWQoY2Pe+72IYXI7kCB4Ng+pgaB+8dz45evIo4X+tazizhpNaJicuW
 wu9Loy/C6H1KAVbNc1dLto3ukDp2xzZX4B3EGV98R90cxh9kbeQMVoxzdxrHqW5d4v7t
 pqMpeN9O3+vMMei7IBZPhCnFIOBDaseMyS88qexO5BFiBCJv58I3m+pE2LDSgYdqpDhg
 cJUcdMaSPXyKUistFyhvPH3Q1KR4xLKlsILfHVpzZnHkuZdVkXfIekr94tn+MGJSQ+cx
 vYUgLWa+Jn3+nnVHgUFc9vMpzUBIQKkyO5D6ND2TSYAqY2k2QhpGCWin2gw++AmJBQon
 NiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g2lD/Zhk10aEU/jv34FPJDsmkoPVsN84DE48zUMY4rY=;
 b=h1iENd682fnSngsn42OHTjpATQ1M7wwjKxWguKqgXE8nQKP+MzMz8SjgJ943k2gNTD
 vOSEHSsAKbOpFPGMOdhSCGg2/Y9bhc04XJoL4kXtnincyhQlaccD9Tvgj8O8Rm8l6fYP
 c+kTxzp7zvkOEDtSGYYmdjyYO6mSTqXgF2e7oyl3kAF+bA2OsPe7cl38GixqbkJSnDNU
 3wEAb/WAhK275KLTQXXntF3/qGy0xVR1rlLPY1XUVqcQ4R/lgH/+Px8dlsnbAr8dhnZV
 QwX/Xs3dU8A0oocImFnRICeBmFV4zxWcjc+6nF1lHiJuS4G8mRufFKXxQ90qVYm/Sup1
 nD6w==
X-Gm-Message-State: APjAAAWDfqtMG+mcOAS1mC+d3DnJQWD5shZqfQF32rZ9EJ8ci4Eoy/wd
 cqHZlTpe8Q52G173FHWXPpc=
X-Google-Smtp-Source: APXvYqycO5HiZc7MPLu7pM7pXGduRKfW/IStuxKimcQBGQLCOQcBh1dpMtENB6GL7jlCv07MW8MfXQ==
X-Received: by 2002:adf:e701:: with SMTP id c1mr2929025wrm.166.1573652466781; 
 Wed, 13 Nov 2019 05:41:06 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id r15sm4195831wrc.5.2019.11.13.05.41.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 13 Nov 2019 05:41:06 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Mark Brown <broonie@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Date: Wed, 13 Nov 2019 14:40:16 +0100
Message-Id: <1573652416-9848-5-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
References: <1573652416-9848-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054108_049996_5A96F813 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch sets initial buck regulator modes explicitly to a state this
hardware needs. So a wrong initial mode set by bootloader or pmic itself
does not interfere anymore.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 6486df3..644625d 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/dlg,da9063-regulator.h>
 
 / {
 	aliases {
@@ -109,6 +110,7 @@
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -116,6 +118,7 @@
 				regulator-name = "vdd_soc";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -123,6 +126,7 @@
 				regulator-name = "vdd_ddr3";
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1500000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -130,6 +134,7 @@
 				regulator-name = "vdd_eth";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
+				regulator-initial-mode = <DA9063_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
