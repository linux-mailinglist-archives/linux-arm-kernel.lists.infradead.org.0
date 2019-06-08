Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCAE3A1C5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E3Ur/volLeiqVi7nSujA+kBI02brchL9pCLsFjKYhTU=; b=d648jAN2DV983JQy3ZikgOU5Lf
	QqmLzbYhrH0ekANrTgGeyDgspQO6ZO9fAcz2h73EKvdxluXx8Q4SXmGLPN7Netr6yea+3szNK/6Jg
	rH0kQfEkFg61C6A8T4bWMpmeSMrFh3rZgfsHOzelXwWtg8R3xYSST4uXEZPnnH2LTwgYIlct+TFAk
	KQajQdztTVdS00cXBZ0GDiqCBO0ryOp59eCHnjONEaASSGKtLz+sLCFQb49T78pbKTEp9Os22IoAw
	UYT4CGzKKPb7nO/3EOZN3pPtJBTbiGBFoKTCk1feHhgvU3V9eDfbtSzxoJ4/gsUc+jSRVF6lZRjPC
	GURNF11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhQP-000888-R3; Sat, 08 Jun 2019 19:54:49 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhPc-0007hR-GL
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:54:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id p1so2098507plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=ZNKNnaGMGaVgsB6saqzXNbHdwK8ecK6V2qujeJjPKUCupMTaia18tRB0i/FPAK/pkf
 OEC2brPo4UrZ9vfr16jMQ7EnvyVggKNxCUtStO9sYqtv3PhOCGuadaM9WNiSDFZ7j+wL
 zG0Ks9wObN0WE5cFRSlxIQO6dQIkLKEjDPzaejITPtby0RkQThH7DupHWMaikg4YSRQ3
 GbM5KUHn3hnMlOWykzGHgP7CsEFzfrHckSR0gHAhI0mFvHkm0V5qCDZ6WguyfTTkynEi
 IZ+OSsMJPRRO2t/8ahMNjnE7Pj2hZAm0hFc04R0C2Cl8MbMEu3mbV1+cS2u991t2NY0m
 gA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GdUGLfzA/moIy9fqv00a3/N33TZrVkt63TobdJZyyCw=;
 b=Ynry0rMYYMMDr1PAgSJwpIT0Ke3ijWif2sx3n1VjOM9wZoVH7AJ9r0nJkpAjLLMdi5
 MjaPvFHdJroK6deD0G0fTFfdE8ugzTAfFxCRmocjqjTqQaDyCnC0IHYhvK2yM6E3/NaL
 I8banltpTbhYvn7JO5rIVvM4YvXUyXvHWG8TLXo68A2uD1z984vz4Pgr2+bVFiydKoRG
 /uWuMnunWKeUnW+B9ZCkOQveCONRKXORYJKPt8Cvqc9lSxkeiZ6noJ/mq3tc3kEezXCK
 0sNmI3ESLtMtxOzG2qfvsW5k5N97qZWhGQB+qrAjGaJjFil6WM/Xa1D5BVPUqjulP63g
 NuEg==
X-Gm-Message-State: APjAAAWZ3ogmJ8RAT8eiTbiMYx+IRRClG5A2BiYGKUswDB6Mhq9okxkF
 aYMPQ5DzPqnCYYON37xQHjUK
X-Google-Smtp-Source: APXvYqwO3rDHNYyUT1Kr24rYJRbr7NKX6U1twjbeEsyT5midgPAgdhhTi8J34jwrPiO0WZSiOhujhQ==
X-Received: by 2002:a17:902:3341:: with SMTP id
 a59mr33440069plc.186.1560023639563; 
 Sat, 08 Jun 2019 12:53:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:53:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 3/7] arm64: dts: actions: Add MMC controller support for S900
Date: Sun,  9 Jun 2019 01:23:13 +0530
Message-Id: <20190608195317.6336-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125400_661539_AC1508A7 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
