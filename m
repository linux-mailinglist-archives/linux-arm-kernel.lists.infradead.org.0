Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DAFD68F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c7CWihe3+tCqV5QD2gMT6QqBHrBXW//nPtTqr+/c3WI=; b=DGU
	DBxwNXNOLgKwIMbCCMjOerghi4fGzy5Bd1U7bvqI5WzD1wu0GqjmhqkhXm0d0kSZRlbqjJH9SIvry
	QwZSZuL6MACJhW+7xBmhcn7E1sHvgdu1G6vywJWENybVfl9gpUzQlGdc2wpjah761K23AWgXBkrZ8
	fI+PS7NWxssEfzOhmauehD3CbT4s4LFELuoIWU2g4XbUC45oQ5g2CK/61BLYTQpte0TW9t28Atu+e
	IdnTCj1Rh7JFTPVeYt8NGCgz00wyqYGVdI+m7man4j+3v0wvNsHshgLCDR4Y4tnDNUx8burLp6Y9X
	MsGX8WsjFgtEeXQmwhPXaJB60gEnenQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4eZ-0002gs-9L; Mon, 14 Oct 2019 18:01:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4eR-0002fj-MF; Mon, 14 Oct 2019 18:01:01 +0000
Received: by mail-ed1-x541.google.com with SMTP id v38so15587157edm.7;
 Mon, 14 Oct 2019 11:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vQyWa6OC5nMW2WVQGplpiKZG6tNwtAjnKydlEJdldAw=;
 b=BTzV7avy5noZHilLMuFTcRNQXWljNOYgVVEISOo4CIuNeMPYmYvkmc+E/+sM0qFxob
 2QIZZ+7tVLh1r7eJeQbRJNqkJK677TXDLTAQ8JXVLoHJI60hxbKBPIe3xIlMDyvVKRTi
 ao9rFGkwYRWddLkWtMkRiySDsJZp30eWmE0MouGZLlTWvmM4fJvkngSBdta5iWlEFZlO
 Ibwi08nb8Y/qM0MVN3/V1CG9caENKLDQ/N4drou4MUkFEcI4kLq9o+GT+SP0iTtqOyU/
 w6DTx/Kz+JlmaP9wxMTkhBczLMeINCbO8r/Qkc/ZuXpmj/jNFcJHZ3DWOgycCA1Qn9IS
 r7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vQyWa6OC5nMW2WVQGplpiKZG6tNwtAjnKydlEJdldAw=;
 b=C6o6lk3HGkoImXgTbVH5ENlZy60s9ECRw3WDmD7w4+pZPAy4FipUc6vpWvstfs3SBX
 LRFRe0rWbbTiqOsRxD15DByyZuRtQ0qaCC5LtM5j5fp44yb3qu233BxRLRXPRhYdOEsM
 E5GjUsw8/FCie0l7I7KTExzoX87y2lxQFLfdcIYBNmXM1Bm0aqdwNNCp7dXSNypEyzb7
 ACVe7sY06xNacbD92FGTermDC+kF7XwaW+BRyi8OCjxeiYzms766mSFRFGnQvujqDGba
 d/csP3PnMBu3a9OchLW/J4XodY0TSWoBw1jA3kKxzOnmMktHO7ApoZIGhnauC/5p7/0/
 jjfA==
X-Gm-Message-State: APjAAAXhuBnXvhk5KNac3nnkmv+95NI+KY+BPFhDKRcWnv02Gu9TrsPO
 /iQgTmtwmiNvX756qwu85MQ=
X-Google-Smtp-Source: APXvYqykC7fDAqxl/5vUmUxhu3JBS7WBVVkSY/ZrTMq1S7z2QoVnj2FLqEDT+SMFdU7++K3zrHxhgQ==
X-Received: by 2002:aa7:ca52:: with SMTP id j18mr29318868edt.299.1571076056199; 
 Mon, 14 Oct 2019 11:00:56 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j9sm3255183edt.15.2019.10.14.11.00.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Oct 2019 11:00:55 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: remove some tabs and spaces from dtsi
 files
Date: Mon, 14 Oct 2019 20:00:45 +0200
Message-Id: <20191014180045.11804-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_110059_730393_65026580 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup the Rockchip dtsi files a little bit
by removing some tabs and spaces.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi           |  4 ++--
 arch/arm/boot/dts/rk3288-rock2-som.dtsi |  2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi    | 14 +++++---------
 3 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index c776321b2..c70182c5a 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -696,8 +696,8 @@
 
 		hdmi {
 			hdmi_ctl: hdmi-ctl {
-				rockchip,pins = <1 RK_PB0  1 &pcfg_pull_none>,
-						<1 RK_PB1  1 &pcfg_pull_none>,
+				rockchip,pins = <1 RK_PB0 1 &pcfg_pull_none>,
+						<1 RK_PB1 1 &pcfg_pull_none>,
 						<1 RK_PB2 1 &pcfg_pull_none>,
 						<1 RK_PB3 1 &pcfg_pull_none>;
 			};
diff --git a/arch/arm/boot/dts/rk3288-rock2-som.dtsi b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
index 9f9e2bfd1..14aebd447 100644
--- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
@@ -237,7 +237,7 @@
 
 	gmac {
 		phy_rst: phy-rst {
-			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO  &pcfg_output_high>;
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 81e4e953d..0aeef23ca 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -382,18 +382,15 @@
 
 	pmic {
 		pmic_int: pmic-int {
-			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO \
-					&pcfg_pull_up>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		dvs_1: dvs-1 {
-			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO \
-					&pcfg_pull_down>;
+			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
 		dvs_2: dvs-2 {
-			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO \
-					&pcfg_pull_down>;
+			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
@@ -406,8 +403,7 @@
 		};
 
 		sdmmc_clk: sdmmc-clk {
-			rockchip,pins = <6 RK_PC4 1 \
-					&pcfg_pull_none_drv_8ma>;
+			rockchip,pins = <6 RK_PC4 1 &pcfg_pull_none_drv_8ma>;
 		};
 
 		sdmmc_cmd: sdmmc-cmd {
@@ -432,7 +428,7 @@
 	sdio {
 		wifi_enable: wifi-enable {
 			rockchip,pins = <4 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>,
-				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+					<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
