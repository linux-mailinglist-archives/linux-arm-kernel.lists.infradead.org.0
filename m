Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB019148C3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ts6oFnkjpctoahFpzSCLU9neOoxl1zed18qD8h08DZ0=; b=XkCp2PgOwCZxMACNEM+Lp/KmlF
	y7hambqKj3AzWHJ8+89CwW3ndFH5URl12HKSgzZPs5yXYEPiGCZMKHPUoQm3nW90KbusdaJIknLB4
	4jT3I7LjZyigyv5szht1S8FS8gcg8AXnxrmm2V6hJVP+x5HZzajT4E/jWDUHFHVYTxE3mXtcughGd
	7i9h6iiGVHq5Jvh+3js+c+GynP+dQrnZtU0UrrNOL0C7md80QurzBcyEjxF39Cf1IV10XLeTlm214
	tNDDxLDBVaA6JwsK4KESS+JtocbJdfu0u7JojenBzmNUcAcajZg0rgkvLH7nZQaMdXEhwE6umsx+U
	5GIvyB6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1vR-0006w4-AE; Fri, 24 Jan 2020 16:35:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qc-0002W9-UG; Fri, 24 Jan 2020 16:30:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id y11so2714030wrt.6;
 Fri, 24 Jan 2020 08:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QIn/ekjPN/8iXXGp7E1y+nPWPExusw+RM1dMcjlqWMY=;
 b=klhHUcz554C1wRT2sjn4IaqxVA4Patl8xOwKsmIyZKZJjc29Itt9BaTsyYMCZHIZIH
 egX0JlOPfx0qQIIQuYj2weYwn/Hl3ydE3GuWJ6Gx448DmZR2tj2DRrRQeSxrs21driLX
 n7hPjtACFDRGmlZTrl5PiTIzkpbE4NZ0xY4tWQ6n7hfuqnR/8us/5Mst/ifE85pb9aty
 iNK2bHIbfg+vd3Cu0B/zjLSLagz+Fsmv9w4q28iBGs+pEX1MnI8Wu0ro6C2xD92xlXMB
 aM/FJ00Io64zkp7TvJHNBpgjt97cOj6sijDt81O7HknYSrwRbH+DfejEcMKUUzioo6wd
 bZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QIn/ekjPN/8iXXGp7E1y+nPWPExusw+RM1dMcjlqWMY=;
 b=B+MvbR26pPH4qT8CWEQifkbvgtd0IsWfV4OEqiPy0shD6faAkojLvIxpO2EL65QqDQ
 sZuS7uRkiqZ1/q1lYMsYBU6FTFngjJwco6fJX6tyDy9IXBm+R/GYHXv/Rw260tp4EFL8
 6M/ECoQLB0bnSFjvZrpJ6SVurvd3LaE5K8urRXatZYlo7wK4ppsv8IXREL48W6IIkrFZ
 vY+FFrG3+sJoIhXXI9TXqJMb4WA9/t3O3yLkeOttn65uW+4r1i9y0W0BKh2mAVL/NQU9
 mqu6gLo/oqmhvV5ETOg7NxUzlPDu0/xQN6isyLhOyq/Wob+QeJ2peejIgsua0TYTeUvd
 K0gg==
X-Gm-Message-State: APjAAAXKUTc8Ne+hzu+Y7sf13hGFLkwjCp+lHzDTYUnF+dorgiWyiyGJ
 cRlIDQefbw5if6y4Baj0zKo=
X-Google-Smtp-Source: APXvYqw7CIGAG3ZFB6XdbEJQoiV5N2eZpSn9bhSYo9ISaZGS3uiIABvz3px+HqgatIrQN/6z9wwJ6A==
X-Received: by 2002:adf:f606:: with SMTP id t6mr4960508wrp.85.1579883417532;
 Fri, 24 Jan 2020 08:30:17 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 06/10] ARM: dts: rockchip: add nandc node for rv1108
Date: Fri, 24 Jan 2020 17:29:57 +0100
Message-Id: <20200124163001.28910-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083019_030075_63C58465 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

From: Jon Lin <jon.lin@rock-chips.com>

Add nandc node for rv1108.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 5876690ee..d7b9aadbd 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -456,6 +456,15 @@
 		#reset-cells = <1>;
 	};
 
+	nandc: nand-controller@30100000 {
+		compatible = "rockchip,rv1108-nand-controller";
+		reg = <0x30100000 0x1000>;
+		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
 	emmc: dwmmc@30110000 {
 		compatible = "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x30110000 0x4000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
