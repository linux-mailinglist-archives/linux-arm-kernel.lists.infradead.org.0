Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A8A3A1BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 21:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0fI9q0m8xTvLe1ome1qbUzg92eMMaZmywovUXXeW8U8=; b=WsvHdzeyxRR+CTIaeY6miE93GX
	yOYi+ZqAnoN710JcBRooUz1wDn1kmUIzvdDLkc+TUXqGzhXcx8a8ilrJ72tA1+HGE0oAenuMdBlH2
	rBfOeuRw0BIgULCc1hJhE0ZBcejlAzqpIvIXycZHyn35DzTNMxlfB+c0Zdh4gPh5CYoy9AfQeaHKO
	mEJPz+JCittPX7W/Tn3nnKzgR9db6oT3LL7+ZoLWiNL4kqL9qLDdXXQ5wfS2NNVH2UGLr1qLi1S2o
	KhKVMh0whvtjbKmb6Lq//tIZ1TdaKdSoY/aSM98xdEiLOJNy3Z8mp9Fijo1wxcNiGBgG4znI3U96G
	oEH9raCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhQ4-0007sq-2s; Sat, 08 Jun 2019 19:54:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhPV-0007Zk-UR
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 19:53:56 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so3021562pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 12:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cj7hwuL+B8dKf3nXFes5L4nsY5TD2nAEfKuZSPiz0+4=;
 b=DqVEQQ0qFsYnIG8uabtLVuOh7gbjeLhQLjWcj40pXUS2k+xV6qp6VnnffBVYswPjb2
 rvpM+JYaQdZBVYAu102qaQJmZ3mTR1psimw70C7ravTtioLbJahthXDnOe3+Jaycbrps
 +y7TBPZc9KhbYPbdE9gQB2ir4EM/C6bW7UznaTAuGfSDhAYWt392APBE6eiZGo7y5YXe
 gEaSneURhJOtAAuh7WNUsyHOqxoLF5xGJ0QRjA3AE99GGPh4LxsUWYAQaN2MsHpMOqlp
 pvVY+Elza90ib9MUUAzgICMPyYoqJZ4doEk1FR2kCXzH8EyQA0NVvSIWTHCclI8xXOBz
 GY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cj7hwuL+B8dKf3nXFes5L4nsY5TD2nAEfKuZSPiz0+4=;
 b=I+nC5XNDS6BmVJbbXMfQISEVpVuB43sfj7yUildbFNYW8x0MGYY+yjRtJBweEMHJ21
 XJQ5yHrpgp3dwG54Kl7JvSV7EXTYnRXWEYBxUFsrT8aK7mVeGOgAgfgKM0Fg1S9AZ3YH
 6Cs/fV9u1Qn+IFkaxGB6QmasUkcJMbUK6oARcLX+Ftr0tOw3SVRWFEs8yPq3l9CAsLUE
 mWpUKz7JZJDwCf8f1It18TYi70qzLkVgqzI9qOuCaVogVUR7VIBd38wbtEqEIwoYHFru
 gChOhnIP24NIc9lx3dNd5vl1hXeh0PQH/z6qR49FCHufQ4p/JaS7mCZ3mcYSrnLFVuT5
 QASw==
X-Gm-Message-State: APjAAAXbumCJTFwgXTgEs86XiqyDlwUrSSonkcK9Dr5+ymCh/xrUHxIN
 DY9ZUD0XAfK19pGPtysFeML0
X-Google-Smtp-Source: APXvYqwhEKeDmzhGZw7GVFoNhnBsVCcgoLu5WuCEMB4u5SVT61l8StIG8sJJYL+wCtfP9/L0lSmZ3Q==
X-Received: by 2002:a65:6383:: with SMTP id h3mr8674377pgv.452.1560023632862; 
 Sat, 08 Jun 2019 12:53:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
 by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 12:53:52 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller
 binding
Date: Sun,  9 Jun 2019 01:23:12 +0530
Message-Id: <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_125354_073812_70163DC4 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

Add devicetree binding for Actions Semi Owl SoC's SD/MMC/SDIO controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/mmc/owl-mmc.txt       | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.txt

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.txt b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
new file mode 100644
index 000000000000..a702f8d66cec
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
@@ -0,0 +1,37 @@
+Actions Semi Owl SoCs SD/MMC/SDIO controller
+
+Required properties:
+- compatible: should be "actions,owl-mmc"
+- reg: offset and length of the register set for the device.
+- interrupts: single interrupt specifier.
+- clocks: single clock specifier of the controller clock.
+- resets: phandle to the reset line.
+- dma-names: should be "mmc".
+- dmas: single DMA channel specifier
+
+Optional properties:
+- pinctrl-names: pinctrl state names "default" must be defined.
+- pinctrl-0: phandle referencing pin configuration of the controller.
+- bus-width: see mmc.txt
+- cap-sd-highspeed: see mmc.txt
+- cap-mmc-highspeed: see mmc.txt
+- sd-uhs-sdr12: see mmc.txt
+- sd-uhs-sdr25: see mmc.txt
+- sd-uhs-sdr50: see mmc.txt
+- non-removable: see mmc.txt
+
+Example:
+
+		mmc0: mmc@e0330000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0330000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc0_default>;
+			bus-width = <4>;
+			cap-sd-highspeed;
+		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
