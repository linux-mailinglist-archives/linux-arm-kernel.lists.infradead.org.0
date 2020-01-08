Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7657E134E34
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:58:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RxuvuB/EeJc1dlTrY4MkRbxXfQCUY9GuEJNiIG+ck6U=; b=E71LhXUSJ4VuunBAAQccyPePMO
	JAdW2bKz3n2xRdQDA3IeB9a8PQd7q2leN4kA4fbS1tciCk3XnOEkDN76Wlz2akuG33BdxbAG+U/ot
	YvGV67Aop0DTvGDf9XRTPIy+LSEpjJL84rurg0AhDmnwj2aY6jzqcv4Vmxu40MF6Y8Px5pZqdjebk
	EIU4qIxQW2mbnSRaEZIhYmTZ12euDOHbYytWTDHkqOSTB17kSGee8Dq9KQdEJclMkoLbjwGLhuxwg
	E5WmnTJU2uHLugGV0+MGhH/IWFZ3QZTihelkqTiBa75hMMVBwTmy58WUNeswJff9cnGXQsn2b+QtS
	/IqUo4fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIPd-0002ty-NV; Wed, 08 Jan 2020 20:58:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIL0-0006Ru-P5; Wed, 08 Jan 2020 20:54:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so412220wmc.3;
 Wed, 08 Jan 2020 12:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FkAincxU/WJ7jOpQKMPlD5I4b01ffq84HO5Ml3sTj2c=;
 b=j2Wyve+5xk5Ov/0MKJBp0yTzWvnwBPmz5aL4zgsz/toTWaQE4FmCBO5aOE75VekrVx
 Krl0GTcgGv3bTnu91YJEmyZJkwfLcrKKuYI3UC2hEN5Liym58QmqPpOO5HDf6oHQgcXu
 D8iHhi0G7sQPBZjcqsYfsdWJAqsT42T08eZCqm1JTzvcE8IjzFs/iDYDCn91TyBzKfTf
 8mu6luihXQekKd4jzRESrQhX+TfEl+UeYXdYX6P52L7M+G/RThnjRfWY6X5Bwi36hfQ+
 FneyV4NFNDGH3lF9nw81DEK7+wsuF96u6+/VK/2aFwRQcGXaCQ0cnJSU6iHw9uBtoEOd
 H62w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FkAincxU/WJ7jOpQKMPlD5I4b01ffq84HO5Ml3sTj2c=;
 b=ocWIREM799LMcI/pZdggvRxlPpqBEvl97PMdJ5ymGWHUsRIU1uecVOO+EmO3BinHo5
 lM1yG5k73ggyR4GE6jXUx+wfeYRtLct7SYhiBN8M7hiZ7ET/fADN6g630jENaFuZjshs
 uaUDGc4tI5pLkStR6YVEjhow6/fny0KtEvAwL7T0EizEJbf63YfbahXZ9xQwpdqPHqzX
 1zuV3Zxc2WqapZTl5ccvN+GiUPeCxSR7xPA1KMAhyozL7pmnUxdPN+6BEeOF9aE0wNI/
 DW4BfgEXMzizzXziEecjazqWx/ASVKJrna1eP3BnT6B79a+v578CmrZXgJpsFjAmDUR8
 LJkg==
X-Gm-Message-State: APjAAAW0e8j0IU/Rvd9AL1Ga9QqYtd3LQ0PvQzouLKVi1N2hNpxhIYNu
 qLA0uNN/9Lrw2iRgunH+Oz1RkTLU
X-Google-Smtp-Source: APXvYqzVU6rte1v9V8nFFsc12GcEZAAxNc/vdUN0yEHJsTOtUlwZm6CkSPoIPzCh5PnqJKcAUpyCoQ==
X-Received: by 2002:a05:600c:244:: with SMTP id 4mr580221wmj.40.1578516835928; 
 Wed, 08 Jan 2020 12:53:55 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id c5sm311835wmd.42.2020.01.08.12.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:53:55 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v1 09/10] arm64: dts: rockchip: add nandc node for rk3368
Date: Wed,  8 Jan 2020 21:53:37 +0100
Message-Id: <20200108205338.11369-10-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108205338.11369-1-jbx6244@gmail.com>
References: <20200108205338.11369-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_125358_861244_150FEA7D 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zhaoyifeng <zyf@rock-chips.com>

Add nandc node for rk3368.

Signed-off-by: Zhaoyifeng <zyf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index fd8618801..7dff2e221 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -25,6 +25,7 @@
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
+		nandc0 = &nandc0;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
@@ -508,6 +509,17 @@
 		status = "disabled";
 	};
 
+	nandc0: nand-controller@ff400000 {
+		compatible = "rockchip,nandc-v6";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_NANDC0>, <&cru HCLK_NANDC0>;
+		clock-names = "clk_nandc", "hclk_nandc";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	usb_host0_ehci: usb@ff500000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0xff500000 0x0 0x100>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
