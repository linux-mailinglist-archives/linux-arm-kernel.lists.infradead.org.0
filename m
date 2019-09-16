Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262E8B3E0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3Ur/volLeiqVi7nSujA+kBI02brchL9pCLsFjKYhTU=; b=JdmCilLYDydoxsaTpiFXLINxmH
	7ZdtzxLL67wvs3wpDQuk/YzGYa8vX8CrsB0P/5z1YP0D8NazY7SvAcQBs5iiqrfNWJCJ9xJZoQMII
	LtNM0QORX69G9YB9lM2ax4nASUXbXlS3+G30NJ9EM1QC1LQKuO0GM0KRGZJOC+3Foxjd6lUpBRqQB
	jqB/pHcK7XK87+adXh/95DX2qTJ5PYQoA8X8X0MCoZ8qIa18IADrqAYhdevOugRqoKET0qZ+UrbF1
	d70qUpk79LA7mCLOUDvB8nZPwt2NxDO7vjoQWaaEK7MCAlvv63YozLwng2YrlB6hYebqUjFwvXkh+
	DjJbt8qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tEG-0007WG-7I; Mon, 16 Sep 2019 15:47:52 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tCz-0006mV-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:46:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id b10so68820plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=f5uuo8d0Eac1oehzzno+gz4SgKXXXELEQr8OOsFMTlLzjQHG1qP3ca5oK34hNBEw5H
 7icQx4hOYnguI4btVP/2f+R/WtV0vnb/qG0VhwifaUbNDTDOszAGraQSRNkHaZQhVLkN
 P7XHlajOs6MINTQpKI09MvV5s3l492Tsfp/9zd+XiRpjEQUhw4/8lM7+dVRBzVybGgxi
 7j4qqkaQD1tL4tYSRER7C1iQoGhv1iAJNwaUlPwmGN9FUBtlzQ5j/5Ghc3kACrw/OOWX
 ASIo3Dta1rCyZrbDZCbcJ+CKCPa8VDN0zoQLut0m5YjxyW9Sur67vJOuLXTPbAwCEoPN
 +h1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=ZpErLxii/Xd6q8YYsd50k7o7GdFqiQbdVDqRyFa1HcYht4pSdr1TOf5RqJal79Dz2u
 kM2aj8XUdRS9Lw0djemZWf9NS8hXVKcJGzakFwfNDlxURXOHSuZ6tWY4PE07ZLob5cek
 iKdDcchyx0gti9nOwNE248nXSzRunZMro5Lz2NF5r4kXLweekAbtnwhwXZsxhk3VRAtJ
 9LvqKvay9EY5pCCC1Y1KWQMOMHsSrB8RrubldZWfnNJrlBsIPI4a16zJqWwWXUMtndyp
 LYQODTD+gQECFzIHJBe7dJotri3PeTlkQJsUdqZS2GSHyuFG0bdNo88A+RIZaYR2S1B/
 mEFA==
X-Gm-Message-State: APjAAAXKkCoCSHDY1jkDmDCv7YQgYoBickMHmuSPoUaULaLqqZPagTsX
 BBXRJ7EtEUgq/t8qQ7Tnv8vC
X-Google-Smtp-Source: APXvYqxQVpA35IOqLq2Hr/utbWBDftkp4RcZap5GW+4N216N28cBd/8WPcwz6xFyhBbjCuGfLkMAmw==
X-Received: by 2002:a17:902:7401:: with SMTP id g1mr500851pll.20.1568648793095; 
 Mon, 16 Sep 2019 08:46:33 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
 by smtp.gmail.com with ESMTPSA id
 s5sm36227670pfe.52.2019.09.16.08.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:46:32 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v4 3/7] arm64: dts: actions: Add MMC controller support for
 S900
Date: Mon, 16 Sep 2019 21:15:42 +0530
Message-Id: <20190916154546.24982-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084634_073868_D7169D66 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
