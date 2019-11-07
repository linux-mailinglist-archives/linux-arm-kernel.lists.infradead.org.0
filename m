Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AF3F2BCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S0HzRrDR29mVTNZNh3gS3f+g6Iy8uJCIblsJVUTmfTg=; b=Tt/8Book9oGKDn2U5oeYZciYq4
	u6KuNbZp4q6rdJvVj+g9iMpshsPzRmhC893APR3iALIHiK8PZUtnjxmedTAln2Sw4yVfvFeUBOPWK
	r5wR9bbXOrAC9ALqvCSYda2868AaOFxJBt/urDQHOWyxsklGslD8jSBZjw7any4XP4MYpJ9Ss+B0n
	DEvZC6F4/Yj2jCWf8bvT339omu39vS9ChsaRbj11o/W2xfLlJDsgWElJcwSFUoGe7XKBBQvNWbcD0
	rkleTMdiFyN5MniI9YRAT+8qHJLlsPL/gi6RJFT13hwbvmaosHJtQhHEB9IEYeI3qFRDJ6Pbqtnp4
	f6gQFVcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSegA-0002Uv-8O; Thu, 07 Nov 2019 10:06:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSefK-0001l0-7U
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:05:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id z26so1772661wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 02:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=khWGTMFVP7NY2n7izmIV3AsvSBCLzkWeN571KxpueAg=;
 b=jCMF/kypuGb0DacQuf+2CljxzKCgbDWzLNbiBVTCopCRzkXljblxe8Dc7v37kL3uXA
 hIH/fJP2WsD+iAfIKobKl8qMwNq0xiK/V6+qAQf2wz8FUs6Eu9qxNP/FmteO4oMkF4mh
 b73z+L7fjSp4AJTQtbaOvk8+oMo6bCefgkzyvvCz1UgalH3bY0wF3SCM3J/IdyhJoygj
 SCuZNNRcNQEPxx391ziJLmVokG6VYNMYt+RsderKRorMxP6s0P79G/Qit1pWrlOF1Vo8
 iw/xsMGuK5swIT/ioTZFH+oqEQWzQnvAdNX4uEMeuOvPM13alnjEvbiw8WY9+2B+89Rh
 7jOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=khWGTMFVP7NY2n7izmIV3AsvSBCLzkWeN571KxpueAg=;
 b=Yoir1B0wFE92ujNQ5CI80PZyB7b73AoMGvERZKJzydCuUXaTqNjcxKyrhzsN31cwtq
 OOFqT1qUJXzlHSsz8l62MxpCU9Wj+cYAXfTTsdDUnzQC+ASEyyIeS4e57XcqWc3sdAds
 k6ER3fAC5Uy7ScJeBWpuh5x1kCiUDeV2vAFKEK4JUlMpNa3tKjDQ4+OGeIJEKRLrF7p7
 +tc6EvlRVwdLytzZ82hDij1ke8nUQM2r6PKD7eky5DhlrFzNFYlZLv8klt6t4lQsCFZ/
 BMbiVW1tF+FuGubM1GPrFQ7ssKsUGuJxDEdJ92/2jgss24LybQjFLM6do4/CZy4K+8BA
 29Xw==
X-Gm-Message-State: APjAAAWP89f6dr/WjC9DrqItzUn5jhXsLdI81uxqzpBAAGmfqyvP/V+k
 6WXqDZETuyriepJf480bwiw=
X-Google-Smtp-Source: APXvYqxK9N2z9ldVSRjttwUtDfr7ty7I992fBqsuEjVqQyS6ihq2UiTzHNOzguzrOJSon+I9EkogQA==
X-Received: by 2002:a1c:20ce:: with SMTP id g197mr1892493wmg.99.1573121120730; 
 Thu, 07 Nov 2019 02:05:20 -0800 (PST)
Received: from mars.home
 (HSI-KBW-109-192-080-035.hsi6.kabel-badenwuerttemberg.de. [109.192.80.35])
 by smtp.googlemail.com with ESMTPSA id v184sm2225860wme.31.2019.11.07.02.05.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 07 Nov 2019 02:05:20 -0800 (PST)
From: Christoph Fritz <chf.fritz@googlemail.com>
To: Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 4/4] ARM: dts: phycore-imx6: set buck regulator modes
 explicitly
Date: Thu,  7 Nov 2019 11:04:10 +0100
Message-Id: <1573121050-4728-5-git-send-email-chf.fritz@googlemail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020522_292366_C2C965A8 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chf.fritz[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch sets initial buck regulator modes explicitly to a state
this hardware needs.  So a wrong initial mode set by bootloader or
pmic itself does not interfere anymore.

Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 6486df3..e3f2181 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/regulator/dlg,da906x-regulator.h>
 
 / {
 	aliases {
@@ -109,6 +110,7 @@
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA906X_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -116,6 +118,7 @@
 				regulator-name = "vdd_soc";
 				regulator-min-microvolt = <730000>;
 				regulator-max-microvolt = <1380000>;
+				regulator-initial-mode = <DA906X_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -123,6 +126,7 @@
 				regulator-name = "vdd_ddr3";
 				regulator-min-microvolt = <1500000>;
 				regulator-max-microvolt = <1500000>;
+				regulator-initial-mode = <DA906X_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
@@ -130,6 +134,7 @@
 				regulator-name = "vdd_eth";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
+				regulator-initial-mode = <DA906X_BUCK_MODE_SYNC>;
 				regulator-always-on;
 			};
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
