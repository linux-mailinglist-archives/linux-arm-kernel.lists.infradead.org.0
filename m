Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35A996FB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3Ur/volLeiqVi7nSujA+kBI02brchL9pCLsFjKYhTU=; b=knOB/R2ke6YQ1MiEnafOCqkIbl
	7v/THN/Wo2eBYtqjErWStAwnNNCf1zHuan3gQJGlyPJSzMfu3XQBNg54PoosO7ANGhpaYIz+seqMc
	cg1wsrTosQUqc8pSYhotYA3nvW8YEcnzIYhCtHOSPt/gioiDcXr4bEJTpQ4prBk0tuq1K9iK9il0I
	xJPAPuetWrmyRbiqvEK3CLn0LHylRA7yIAK30yB4OMi7zoOKvZ6vQPg546FmGRhISdn4I5N4GYopM
	kGOkV5JrW3w3i5F/t1hQIf/UMHkSOpCvUEbo+PzjBI7RKM5v5kJZeokuXgu5LcAmhLiUh27IkODQt
	NrBqo9bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GZ2-00068c-En; Wed, 21 Aug 2019 02:41:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GYR-0005dH-RO
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:40:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id z3so471924pln.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=AF45FZq/9GIa/RSGGKlY6M1BOYxvVfJ8bVFO2XKZAlJlRX5GB0czlvwCPkIeIgwm9p
 UyN4cOdOloa9yDmFhlq1R5MG4iChc172UUytA9c9inXamtyPkvH/CSwCw4jfBfUvlvfA
 e5XDXtcy91HNpqIJFPlD3F03JPLqaXcTgbSQ27OZ1FaHyr6psIkXoD0N3RlelwlvJNBu
 8jldz8zyPQ7qy+gWZAqr41/t+K+fTg8eg/cbKE4SYJOMgxzAqMz7EBGKzuEyg54qutcs
 HdwSeLjzb5I82RRg9ZDXsGKgvK9Z1yElT9k+/YJutOhW2OAfWEU3d2Nk0zkslnkPlMXX
 Y6oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=Mo+3xyWdGeSrCfc+h/CwyuWBtS7xvMaf/zZtstJeNTi5EU1OUTjWXgVc6MNP/IHH0U
 Rpq4dmcIyp6QNrQalwrfBK5vaDI+7IUg2GcOwErcUFQI6hLtYf0dDXqWyt4fUvNqvJLb
 IrnvWeD7lQ94/cur8a/GwxKhNa0ab379dmGBX/DkhR9+PtU+Ex/STzPFsmawTrYM22n6
 CDn7KuymCTW0/kWwSaGkVpU1llsJGbkHESbcmUXOoAzia5BHJuA1MLNa7WU9Oyj9HrNg
 pXAmVM5xrMSLgyHQpJ0/aHXfTUzXJ2NIBgSAVmw9Cq4KrnPYQovx/Rx/tKEj+xR5R86N
 efaQ==
X-Gm-Message-State: APjAAAXI69cSAHKX6xL1S53bmQfB6TsdiwK1vQqKsKTJ8nmhZ7Dj62xI
 uJE/+YVY6bTtkTTL+r3h/90e
X-Google-Smtp-Source: APXvYqzX351Wmm+kwzgjdUdao7XB7TObisEn5eBl3G9W2w+85A6ymPIpsyrlpxme8Ye0ZdI8AdGnmg==
X-Received: by 2002:a17:902:f217:: with SMTP id
 gn23mr31247981plb.21.1566355254909; 
 Tue, 20 Aug 2019 19:40:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 b126sm26091608pfa.177.2019.08.20.19.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:40:54 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v2 3/7] arm64: dts: actions: Add MMC controller support for
 S900
Date: Wed, 21 Aug 2019 08:10:10 +0530
Message-Id: <20190821024014.14070-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_194055_909715_16CD2401 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
