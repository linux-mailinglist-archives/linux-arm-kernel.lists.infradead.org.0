Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0EBD6B10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 23:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AM/xWOTLSmNTs8mktYiIJwmj+oglDBrHKTsxBuZ23Ug=; b=b6TELCdVYEBaCGJ7aEbsVe/SMv
	Iz+/h4HM5jpdDQ2Dvc8ss63qo1YRqpqBAsbaIvqYeMj4Dt6aUX0I14WepJjhjoCs4/cLKd9IBOkEv
	cn/gu2MdVmMaxXHoqe29L0bQQrGw+w2SybIW7/IIa2Q0EhDr+0BzzfEYdcWS3cITviHFyCk68k+5W
	JiRbs5oZm62dVqlMhIIecDU3tM2RZk7eIHGogWvyRpu3uQF8gY7jWINhaHGNfbClgh7n+Sln6RTQ4
	coCPcJjeHRDn5aPDn557LK250dHO1FXQ43vQZbSYWeWLmDJcxdCQ6/PkP62zNRRHFD8VMaiVfCUFc
	eBi9SA+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK7Y7-0005qv-Eo; Mon, 14 Oct 2019 21:06:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK7Xz-0005qL-IL; Mon, 14 Oct 2019 21:06:32 +0000
Received: by mail-ed1-x542.google.com with SMTP id y91so15981910ede.9;
 Mon, 14 Oct 2019 14:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x9ockYP1+BmQj621KtYqZs8B3/GWqAGczAzI5iUAWRw=;
 b=OEO9wXFnCJwat3sRy/K8V5vm/cPyvPBdevw/VU7ygiCSQzFodpMz0uiBqeZ3v/Wnrz
 egb+i1v75SC/vErryPQ6upIFeR8Wviucv2h05Yu2WoVQxrXtTD+pPd9s70F207XrC2em
 DzXSxRMgfwwv3urvWsyE8Rhd3Am0LNbYf+mL8UDC6p9O0NoYTbBzcX2A2PGN4bBuMAsh
 Y+q3BgdLUI0crxlFo0183TNmH0oFRfh9pYOKioMRNJ7t35hkF3FZmk8jMJrh5Mfg/lj/
 EJ3cSdWcGPzVRAxCMpqsERUAmrwRbrex1FkTxQsdv/oaykbZ8NOr30S4Tp93trMXfx8U
 KYLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x9ockYP1+BmQj621KtYqZs8B3/GWqAGczAzI5iUAWRw=;
 b=gJuooEadx8P14LXpyeHXlh8X57QCfKqkhcZz7pwmb9W6/JyzC99OfNiXRExPMoetss
 fCVKSFuurkgtVS5K0HpHeq5WB7lNTLcUP6VVp9znzeHXy49BVW3Zc5KSlucDAt/WPsOl
 CoJQvNafRuMUJgDHllWX3aYAup7U7vcVJIcxurBd6Jnyhiq/8PyBe7FdR0xUXHTqaDOB
 obbPBkcQxupPea/cCMFQCjFOzDZNIfsneoonosY/05n057kVjLorSzuITKiu0PfwZL5D
 5iatv66Gd4BlBW/hMYBINNI6r/gzJwAr4rykHC0E9X41rfuZTefoil4pJVLQAaUI3TzG
 PnFA==
X-Gm-Message-State: APjAAAXDi1tWHxH2NohTNhj/b7z2GH2w31OMxUGqKResSJWGDE0qbPMr
 A/EVr6kxY3z1gUSufGiJQun1lbmw
X-Google-Smtp-Source: APXvYqy0OUC8jXYlII8DhITV2pund1WqtG58pZL6x+LXKrLsB325rkU4DCULRlppkR3UWN6HWRqqCQ==
X-Received: by 2002:aa7:d5d3:: with SMTP id d19mr29637012eds.213.1571087189200; 
 Mon, 14 Oct 2019 14:06:29 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y29sm3366939edd.7.2019.10.14.14.06.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Oct 2019 14:06:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2] ARM: dts: rockchip: remove some tabs and spaces from dtsi
 files
Date: Mon, 14 Oct 2019 23:06:19 +0200
Message-Id: <20191014210619.12778-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191014174521.11611-1-jbx6244@gmail.com>
References: <20191014174521.11611-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_140631_635843_15AA43EA 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
 arch/arm/boot/dts/rk3288-rock2-som.dtsi |  8 ++++----
 arch/arm/boot/dts/rk3288-tinker.dtsi    | 14 +++++---------
 3 files changed, 11 insertions(+), 15 deletions(-)

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
index 9f9e2bfd1..44bb5e6f8 100644
--- a/arch/arm/boot/dts/rk3288-rock2-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-rock2-som.dtsi
@@ -230,14 +230,14 @@
 	};
 
 	emmc {
-			emmc_reset: emmc-reset {
-				rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
-			};
+		emmc_reset: emmc-reset {
+			rockchip,pins = <3 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
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
