Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E270696FED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3Ur/volLeiqVi7nSujA+kBI02brchL9pCLsFjKYhTU=; b=rH2Ylarg/wQunOFZdfOWCJk8IM
	jNSM00W1OvfO2M6HmR7/YJsviBP0xbkJ1XzU1/Gwf7zAGCz1/KECDU7vMMYqkoiyL3L2or/3eSgwh
	lzqTU+Dq4f1ymHMm/QpwSijR5XR7KlUKNUu2jNNvPiLwLQeLGrqhC8QGU+pOKBog3coYk1mk0A2Mn
	ppHJzQmSlj9l1sUuKPYA9m+/QcaBUhqdBG4l4ALd7MblGfLKiEBfDEJNUdXkKmQ3riR/SLQpgPeMi
	d1iq3qxoJYktsuufaWyJ4DaSZUN+QdyJwlgybk35kG8t/YZ3t+3jyI1dlWrxkMukvLXHMUmnO15+W
	m2G8Lfkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Gog-00057z-62; Wed, 21 Aug 2019 02:57:42 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Go6-0004eG-J4
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:57:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id n4so447572pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=mgdjrGiz62SCcRImp4lqZD+9mH5SwVkqQCSliznjEvV9q9/Er6oVHnaigYH4FDlvZX
 U7MdbJUMTC5pkc/5ZS1tm2xCzCCvH9ULdqQ5hRXwncNHEI2F45qVGgrjtH4bXgmmDLTg
 3TDB1x9tfFtP/cUW8W3KU8Chq+RZQju7gaWkXh4qRYlg+KEWub80DutBlEiy7wX2CHuJ
 xfsx+iQmXlWF9JDDZ/asaA6j1O4GK1ggNZX0GU49A6JSwuVNFYEFr/QS2ukMmSyKGfpp
 qTMYWg8T3h9VsH4H0E1P+98pYxi5vlaSiZtsnr0h073E8LrUCeA7LmV667sBvYxKBK3N
 Bckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=BvujgDh8MuzDvMg5+TvqpGcBBTEyilLOnnFFaO1sVCGKp9kxui9c1wpziE4TwNsavQ
 tJ3gslCokby0znPGL6XXXTnL2Dwv/a/3rvDrYp53NtdGzYXurcRrZNyxJyAMIDEfv6q6
 3C04eIKfReNd/1EL9Wi5L0AF9HmIbr2fHnKIXqaTRQqpqh5iuYWn39rw+R3GM3SGHwE0
 GbBTVk2QUhSxtOQKR+gEY5NETbk1GqLkNUC90+hshx70/0yKaNkBqKtd5WjvNWNOAfiR
 DpLiQx4mCmmSH81jHUYZ7o1+6tQnDcmOVNy8vl7wDrtTVe8lIg0IIM2HUTkjOLfOnEb2
 akrQ==
X-Gm-Message-State: APjAAAXzTifcOJBuGY/r8dvzoEGySByANboz9pm+9xRwb25QpIftP8LV
 TJnGNnpuS+hyMTO0bC0gXQUy
X-Google-Smtp-Source: APXvYqzt5FTFseENmSuwukyXUbG5RlqSoMxXpSBPztasWpkSwaY0hyoCHv3gUjgzXK2xs00/klXpYw==
X-Received: by 2002:a62:8745:: with SMTP id i66mr32855184pfe.259.1566356225413; 
 Tue, 20 Aug 2019 19:57:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.56.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:57:04 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 3/7] arm64: dts: actions: Add MMC controller support for
 S900
Date: Wed, 21 Aug 2019 08:26:25 +0530
Message-Id: <20190821025629.15470-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195706_787102_3FA631C3 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MMC controller support for Actions Semi S900 SoC. There are 4 MMC
controllers in this SoC which can be used for accessing SD/MMC/SDIO cards.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/actions/s900.dtsi | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s900.dtsi b/arch/arm64/boot/dts/actions/s900.dtsi
index df3a68a3ac97..eb35cf78ab73 100644
--- a/arch/arm64/boot/dts/actions/s900.dtsi
+++ b/arch/arm64/boot/dts/actions/s900.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s900-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s900-reset.h>
 
@@ -284,5 +285,49 @@
 			dma-requests = <46>;
 			clocks = <&cmu CLK_DMAC>;
 		};
+
+		mmc0: mmc@e0330000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0330000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc1: mmc@e0334000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0334000 0x0 0x4000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD1>;
+			resets = <&cmu RESET_SD1>;
+			dmas = <&dma 3>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc2: mmc@e0338000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0338000 0x0 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD2>;
+			resets = <&cmu RESET_SD2>;
+			dmas = <&dma 4>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc3: mmc@e033c000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe033c000 0x0 0x4000>;
+			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD3>;
+			resets = <&cmu RESET_SD3>;
+			dmas = <&dma 46>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
