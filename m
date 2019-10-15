Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EFDD7DD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H8LXRPA9shOjH7YskjQ3TI1DSbL8uvCj15gfloOns1w=; b=JEX7ixU6ZxNodGLBHuh5A9C/sn
	aeN6/fg/y/0xUPQcDa1qlXXsSQz+8LSFRJjHXUCpcippwPrM48BxnNWyUwji72wqQh0o8r+GBCjhC
	Sz/XTFuYeMf6R2L4J/l6KBT5FsxG1wqNTHLsV76J/pSvACvkHUsglkEpLlN5eX3v6QCV4M47qbIoN
	lGW3xgFi30xBt7s47GAodpbJVubd/zoOMhfmFnAPbR2dhCI96uunS5KeREf+FNHGS4tY8Ccrnptw1
	GpgRXycy5fR4b/yjwRihe8whUYnbxW9LeHf/bXFeOBJ4uRvRAZF+uJbHydGyLLb5rqr4Uo33Cp0Ud
	aFPKwooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQfv-0006sk-CQ; Tue, 15 Oct 2019 17:31:59 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQeo-0006DJ-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:30:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id t10so9911741plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y09+A5UHDqq1M123Rs3HINM2fRslFLIQNP0UXzIqt20=;
 b=eZ82YhwtUAOVg9G2zs0bTyLwRz0ch+7l+1a7/7Qr+2qWB2PvexBHVq2rpE2mMUHlE8
 69cksLWwsICq8VYOOQVEcdkVSUZEj4lz/IJvdKN457KBXh3QXdfO3GrvWb1TJLALJOr7
 Ti6ewei0hf0hy8j0YxESEUn/79rKNQhTOW3CIQqgecONAFnQi8Ca93kMujRzNa5FRabu
 VmGvXYPdukV8FLvCNlhMf6xWyncyMH3VzgfomB4vjvpoljfVhoaKenw9WH6NVry7t6gv
 11DUYl30BqMBJnyqE933rTCr2o40uTZdERufP80A3wjxXssozn3ngkvUuHnXlmWDteTd
 bqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y09+A5UHDqq1M123Rs3HINM2fRslFLIQNP0UXzIqt20=;
 b=CnhNng1E4Cfb0TvzyAcFGwBvol9nD6MJuv4s+FTOrR5ZPzMNvhaL1ylOgBqiBYy1fM
 ICuJCAVwCcfJy+ey8f/I8zWkmwA32Cist+5uhqmuizyobiqbxKYlJ4CeUcKP1eH8KYjD
 ZlXyGnUDj8b6GWgsI4QG4UPAwT5/nINGuTWtbXs6yXPuIc7X/dIbt4rtZ9Pww2PiFWuo
 t1Fde5seBfzqXjLnIUQyrAUOCYs6oJRrerQGWNwIww3ocKPo0BDx81XzOFjAb9AIymU4
 srT00a8U22OKuQbVPfPJjoBEXUj1AFMy6wcTIXIa2yd3l2CH6BcPZySWU/6OO5jo5T7J
 +BXg==
X-Gm-Message-State: APjAAAWEAcJdqol8QTb/447tuzJj7pEt2ki0KiB447ujb7itXBeIavWw
 B8AnEw2tziRcA64jlfwNyu7F
X-Google-Smtp-Source: APXvYqyj7mfRTh0xkfAngm7OG4b0vGrpS0e0L3DDC4u4rStgGqFdkBEqt48b4cgFsQSkTewOxbjULA==
X-Received: by 2002:a17:902:d698:: with SMTP id
 v24mr36554507ply.89.1571160649769; 
 Tue, 15 Oct 2019 10:30:49 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:6003:7cb8:25e8:2c45:fab2:b0c7])
 by smtp.gmail.com with ESMTPSA id w11sm28033563pfd.116.2019.10.15.10.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:30:49 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH v2 2/4] ARM: dts: Add RDA8810PL GPIO controllers
Date: Tue, 15 Oct 2019 23:00:24 +0530
Message-Id: <20191015173026.9962-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
References: <20191015173026.9962-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103050_899974_F5C700A8 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add GPIO controllers for RDA8810PL SoC. There are 4 GPIO controllers
in this SoC with maximum of 32 gpios. Except GPIOC, all controllers
are capable of generating edge/level interrupts from first 8 lines.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/rda8810pl.dtsi | 48 ++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/boot/dts/rda8810pl.dtsi b/arch/arm/boot/dts/rda8810pl.dtsi
index 19cde895bf65..f30d6ece49fb 100644
--- a/arch/arm/boot/dts/rda8810pl.dtsi
+++ b/arch/arm/boot/dts/rda8810pl.dtsi
@@ -33,6 +33,21 @@
 		ranges;
 	};
 
+	modem@10000000 {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x10000000 0xfffffff>;
+
+		gpioc@1a08000 {
+			compatible = "rda,8810pl-gpio";
+			reg = <0x1a08000 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <32>;
+		};
+	};
+
 	apb@20800000 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -60,6 +75,39 @@
 				     <17 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "hwtimer", "ostimer";
 		};
+
+		gpioa@30000 {
+			compatible = "rda,8810pl-gpio";
+			reg = <0x30000 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <12 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		gpiob@31000 {
+			compatible = "rda,8810pl-gpio";
+			reg = <0x31000 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		gpiod@32000 {
+			compatible = "rda,8810pl-gpio";
+			reg = <0x32000 0x1000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			ngpios = <32>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			interrupts = <14 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	apb@20a00000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
