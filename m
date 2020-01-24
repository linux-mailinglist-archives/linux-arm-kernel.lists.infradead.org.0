Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3406A148C43
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:36:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGXEnPQKV9WA6BYYzFtxDSrThutppFbcAroW+5y7dOA=; b=nTV/wc95X0WzDqTC27uhAEXYGm
	SAQlioP/VVZNKpNSrdxI3Qz6Df/hsIouhOJy7B9iiT3INBH5TR+o/LNVS7V3ujn+KkakKaIkCehyy
	Qv36jf9wjTyyTSa2uqhjsNzp1gjiAP6QBStKxt/EQ6KebyIVf7DJBKQoeWduBMC8VwGYs8xTqze8U
	PMzYDngvMk9g23ZHvm5lQ4D7BgT/NFqzKS0GcCWFDb+rt+PfO5W9/wjcMM+uTKJdp3RZHIT+Wdwc5
	CBzA1MJqsxrhDusTmRGkSPSXYyMRc3PPeuZ8KCVui5lREu0RpUfMJ9gOdyFbEMHEz1yDKWS83E6xS
	eD73o78g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1w8-0000ID-MS; Fri, 24 Jan 2020 16:36:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qe-0002Wo-B9; Fri, 24 Jan 2020 16:30:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id q6so2688712wro.9;
 Fri, 24 Jan 2020 08:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/nBc1idIrTwhJFh2qLcvWt1ZlcdSJDY72KjH7Mzfc/k=;
 b=YSgXE3T8mt/EvF+QBdSHJ+8QtQoLULOKFX9+kmB/k0ZO+uQ/MQJA3Y7awKMrnSU+6g
 fXP9+FuM88lRM5LDGPsE2AKXP6TTCsFqyjIYaMcr4Q8MU2yoRHYmAvcBZHpysGBGHx7a
 SIN+WNlKdgHNe3yHHDaEfx8CWGTbwGE/Gz10Z0Gyfb73QarMhqMx3NBscurLgeF2J23y
 p52IG04Buf1H0FXxIDixiMQta4GxO7pKsKJhzl796RmlvED0xvx2kyRkB1SEVMBi+qnw
 aLiMFbYbNbhxe1bFQq05lTkhFp6ejMQT1xTGhdS1RCZ6384QMAfMNTDt6fNxVofcBu6I
 UzeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/nBc1idIrTwhJFh2qLcvWt1ZlcdSJDY72KjH7Mzfc/k=;
 b=PFypT9lzbua4Uq1Rlw0k5vWAEoj6SiXIsTSR5Q6UNxteftbVe+WrMnAwVObRiUvWVT
 y1XhFXrGZSUmN3JcxR4bv5Qicg2yNzLK9zRPVm7P6pFHWf+Vki/Daj9oUc0RMkSb4dE7
 K5RQEpmUcYA12KffUBXspIeCzlt8+PxHIn7tjpE/CiaeQ8ZZfUKbkm6MZBLEd2FF+m46
 erCU+CIvaaq0QsMzc/ETsO85B5ZlGKjjdZwv9MQZuR8cvcz6xd5zp1ILbxAzLtA38Vrm
 MT8vgoAsApIsUfN+tuNjqSyiE4g63itw5hC8cA7urXaOubdsMNnfuOAxaOVFTvrKVX/O
 shaA==
X-Gm-Message-State: APjAAAXmCMdR/3xO6ykPo98EDpEN4y1SiqLEDNL53ClHcuqF+a9PXMn4
 sGak0ndz/ng4VxoZuTOYBgc=
X-Google-Smtp-Source: APXvYqyl7Gc1UX6AHRXTGZ6is7tIQEw78voWTsF408bHyHQ4F4/LAx7SDI0+T/jobj0CLg/ilLdF3w==
X-Received: by 2002:adf:e887:: with SMTP id d7mr5105370wrm.162.1579883418665; 
 Fri, 24 Jan 2020 08:30:18 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 07/10] arm64: dts: rockchip: add nandc node for px30
Date: Fri, 24 Jan 2020 17:29:58 +0100
Message-Id: <20200124163001.28910-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083020_464437_EEBA7651 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dingqiang Lin <jon.lin@rock-chips.com>

Add nandc node for px30.

Signed-off-by: Dingqiang Lin <jon.lin@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 8812b70f3..5560e5b35 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -865,6 +865,18 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@ff3b0000 {
+		compatible = "rockchip,px30-nand-controller";
+		reg = <0x0 0xff3b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		assigned-clocks = <&cru SCLK_NANDC>;
+		assigned-clock-parents = <&cru SCLK_NANDC_DIV50>;
+		power-domains = <&power PX30_PD_MMC_NAND>;
+		status = "disabled";
+	};
+
 	vopb: vop@ff460000 {
 		compatible = "rockchip,px30-vop-big";
 		reg = <0x0 0xff460000 0x0 0xefc>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
