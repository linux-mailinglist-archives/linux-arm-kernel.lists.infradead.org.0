Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B84002FBD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 14:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=us3pS2Yr/wh3H5EfR+jW0A72oBwx/ekP/pOddtarpNQ=; b=ZBClbjLpRDcvfj
	OPBNqkwCWltGaBukb0yQRUaI8pyCnh5KPFR4tdoAlNmbELQK4Ho63MLgfwVqhyOwoWfx/cfASRlRw
	jbeGZnLyI22Tiz0rqZqZB1d5/tv0lu970FsXLPvXj46fd0OXig1J4jGbhbxpEHtO8fVal05wuWvHX
	vpLQTu0AimLmNrrsBKrTCioARr+A/Bbb6a+QFU56K4pOK0sELY4mnBy/cdRdhFgjx542Y+mjwhpCt
	hIQ5aK7OkWabBAbNsTGNqSHe1L3h+FqQ3ECbEkFoU6Ny9GLuWOv18+9eovBbFoulg9VJJissmM2HP
	sBkb4pTM8tU/lMYOgMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWKeA-0002sY-Sg; Thu, 30 May 2019 12:59:06 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWKdq-0002dq-9v; Thu, 30 May 2019 12:58:47 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so3915083pfa.10;
 Thu, 30 May 2019 05:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GvIkFSS6zYb3I2dgFnSydPQ6jC4jn1KdG+v4VePYDQk=;
 b=gZ0kUco2TbQiQDQDexJBvPdg0HouSZLKePsOfYv6pLG+qWJ0GrIa4KS0xDHzq7Njp1
 JVX6Yd55JBSYaL22fwI4u7uzTEp4gJcZqLcB73bkSZlzEjKFp8dDB5P7Tk6X/kaB1YHn
 QfAC/0xUHvqisTK71ekwrUFYQyTNhCU6wOjlTvrB8tX7crU4DR8FV65k4FyheSikFYjv
 KJASKPKyS3NfhgHPlOcoDys4WcuH/Mm67Qie62B23Y+m20R7rZKGS5EALfq3AP2zT5HX
 5VC1IujrphDhnuTa9lxmASESCmScK/wXSsufBZX9TIBVC9ofCknRuN8wwtquBNt3PU71
 YTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GvIkFSS6zYb3I2dgFnSydPQ6jC4jn1KdG+v4VePYDQk=;
 b=jYole0hUprORkkheHvbEahpMQbHBAQ1Tc690+jqF3s0PH2v18bhl0HaJVLyMlz2LPq
 7TkQKt632MEeyerKB2AVXQ5UusRJTEjuF89cH9fXuyRTkYy9e6/G3DUx5GTAAi3Isvf7
 pzRZmrXJ3AdI0MWm7T2Gnb0jH+r93aSP5It/ycMtuY8vX1qrVY9NqW2VYpRVw8XapPHN
 X9B8Yj/h6GlW3cBKkjE0fyZ52llPtu63vYtyqm4CGDCCZTvGWc2AgHJfCIItp46oM3Xj
 vfhzZec2HfQK7DX3Uzu3dT9eamNEqeEwMHdCu52FGuZaFsq+zOuq+VaH+Y6Cu5+cj7XI
 X8kQ==
X-Gm-Message-State: APjAAAVked7A/ZvB6EybxPWGt/yDjqMZ6HKgzLZN5r+XyftuScT/SCYr
 ivIP5c40qzCWoCWE0lAmhCM=
X-Google-Smtp-Source: APXvYqzU0QjvBVCx0ssrUfq8kLh4g1PKTBBj2qaRjGJOAuYeog+j57yeoXYuz55utK4trv6oBJIKWw==
X-Received: by 2002:a63:8ac3:: with SMTP id y186mr3590817pgd.22.1559221124817; 
 Thu, 30 May 2019 05:58:44 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.35])
 by smtp.gmail.com with ESMTPSA id j13sm2928912pfh.13.2019.05.30.05.58.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 05:58:44 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: Add missing PCIe pwr amd rst
 configuration
Date: Thu, 30 May 2019 12:58:37 +0000
Message-Id: <20190530125837.730-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_055846_367584_DE0D8B09 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add missing PCIe gpio and pinctrl for power (#PCIE_PWR)
also add PCIe gpio and pinctrl for reset (#PCIE_PERST_L).

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Tested on Rock960 Model A
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index c7d48d41e184..f5bef6b0fe89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -55,9 +55,10 @@
 
 	vcc3v3_pcie: vcc3v3-pcie-regulator {
 		compatible = "regulator-fixed";
+		gpio = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pcie_drv>;
+		pinctrl-0 = <&pcie_drv &pcie_pwr>;
 		regulator-boot-on;
 		regulator-name = "vcc3v3_pcie";
 		regulator-min-microvolt = <3300000>;
@@ -381,9 +382,10 @@
 };
 
 &pcie0 {
+	ep-gpio = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie_clkreqn_cpm>;
+	pinctrl-0 = <&pcie_clkreqn_cpm &pcie_perst_l>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
@@ -408,6 +410,16 @@
 		};
 	};
 
+	pcie {
+		pcie_pwr: pcie-pwr {
+			rockchip,pins = <2 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_perst_l:pcie-perst-l {
+			rockchip,pins = <2 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sdmmc {
 		sdmmc_bus1: sdmmc-bus1 {
 			rockchip,pins =
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
