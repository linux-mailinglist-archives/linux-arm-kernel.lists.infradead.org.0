Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708FC128E7A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:14:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grss71c79PEFvJIzLsDlFkptvNsutaQgkOn0Q+CRimM=; b=SGZaBTRH1yd2ga
	Zcuz2fc+XBHKmTqfowFpQ8j1leHEa3gsun1em0mIofHe2wEFv82OZxlughk3RbjLMd788V0ma+JBe
	hkh2WbGEBR2vZrGc70P7ug3m6kKByk3kH6EajOMjoqrCDhE1YOrAxhXQ5YwvAKJ5t3OLmvQtNKiM4
	ZITfaMoZXCO1aiazKX/9uToI1D9Lb5bTb9MllGOs1/LhflIvv+JQ6BKy7dKTgHzkflbnbQ9+GH50L
	GNzD8uGQ8Eo5BDR1IBar1YaK6F/FpyDjEoPlFUgeyJS6J3k2mBHz/xpXGz8wAQygGtSJYP+I3bVno
	a7Df+rptAwUIyToUr8Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij20I-0004ed-Au; Sun, 22 Dec 2019 14:14:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wj-0001lM-9e
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:11:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id d16so13911648wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IZ2ifsUJ0JDecwnLRVKVryT2ldTM9sS1JLZapFRyFbA=;
 b=aIuz0c3DIOIV/V+RoJaNOt6Nn5j607gJYUni3sEgec5lT2zUWSZPU+Yj6XQ0G7MofH
 /DUytOuJemu6cW+YXcGa9hLeNq/rqhKyp7/fPTej2dWEtKuJHSp9hY+IOlChisFnR4dD
 ugg2D1RyA3GjfZrXmxU5Sf9qTZqo8OmsCDUe39MsJgpKkQnUKWoXAVHU4gkl/+jt9bu8
 GUqNf/XVUC0UEmw2nZlY8uMmCd/3Wivkx9pshLdC6AZAtJHXT0nXHZ++W8mWhRl1q5V0
 3ZGlxCbqtbfRXj1F8PJoUcoXHEbVnLoRRVTKVMfc/TCxe09p9CFAZpCp26SVekLHVgAK
 Sb7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IZ2ifsUJ0JDecwnLRVKVryT2ldTM9sS1JLZapFRyFbA=;
 b=OgksMXafFZJ1ZgyntEz2sUVqU0o74IxdCRhxscxLerfXy9nP0gYeD4HmqNVh4okZFp
 UNJPogAXN+yuu0tEB83dbFGW4FuZThkyNZXBSko7ouqnAruESFNmjnOut2kLUZMAgzfo
 kQFbDT/bbgMzDQ/ZCGo7erdz9v+qGQh6rtrfYVQ1BSwg9Q9RL3WDGQbAvMKJz25PLFLV
 yfUV0HnGGyHwyjQOw8f6ka6U/RcZPxZUrogaedPQTRJMzBdwMbCMPzrWPC4FePbyfO4F
 FNlEwn849D3atf33MDU+aYBWI2h3rtZQH5viECsYvfeXpopQsghYtijZeBCnx33iWxNm
 8UWw==
X-Gm-Message-State: APjAAAXdWuwpdQy3pPnYbEhXEfiqif0eThrLoH72GiT4Zt+xPfUGEBlS
 3BQZw+NquIp1t/BvRCI6Vv3dfsvX
X-Google-Smtp-Source: APXvYqzIPId95QD1p9h5yyQqJIuAkR5ecaXNbnqV/zOLqeN67IxeDaDqVDQUlrB6cCQ/CY+ZiuuuVw==
X-Received: by 2002:a5d:4c85:: with SMTP id z5mr24874687wrs.42.1577023859107; 
 Sun, 22 Dec 2019 06:10:59 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id e6sm16834831wru.44.2019.12.22.06.10.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:58 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 13/13] arm64: tegra: Add the memory subsystem on Tegra194
Date: Sun, 22 Dec 2019 15:10:35 +0100
Message-Id: <20191222141035.1649937-14-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061101_650125_8061FF00 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The memory subsystem on Tegra194 encompasses both the memory and
external memory controllers. The EMC is represented as a subnode of the
MC and a ranges property is used to describe the register ranges.

A dma-ranges property is also added to describe that all memory clients
can address up to 39 bits using the memory controller client interface
(MCCIF), unless otherwise limited by the DMA engines of the hardware. A
memory client can technically use 40 bits of addresses, but the memory
controller on Tegra194 uses bit 39 to determine the XBAR format used to
access memory. Use of this bit needs to be explicitly controlled by the
operating system drivers for devices that can use this on-the-fly format
conversion. Using the dma-ranges property prevents the operating system
from using the bit implicitly, for example in I/O virtual address
mappings.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |  4 ++
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      | 43 +++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index b6ffd5dde20d..cc23d59240ac 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -48,6 +48,10 @@ phy: phy@0 {
 			};
 		};
 
+		memory-controller@2c00000 {
+			status = "okay";
+		};
+
 		serial@3110000 {
 			status = "okay";
 		};
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 9f000bb7fca7..73e23ca158dc 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/power/tegra194-powergate.h>
 #include <dt-bindings/reset/tegra194-reset.h>
 #include <dt-bindings/thermal/tegra194-bpmp-thermal.h>
+#include <dt-bindings/memory/tegra194-mc.h>
 
 / {
 	compatible = "nvidia,tegra194";
@@ -166,6 +167,48 @@ clkreq {
 			};
 		};
 
+		mc: memory-controller@2c00000 {
+			compatible = "nvidia,tegra194-mc";
+			reg = <0x02c00000 0x100000>,
+			      <0x02b80000 0x040000>,
+			      <0x01700000 0x100000>;
+			status = "disabled";
+
+			#address-cells = <2>;
+			#size-cells = <2>;
+
+			ranges = <0x01700000 0x0 0x01700000 0x0 0x100000>,
+				 <0x02b80000 0x0 0x02b80000 0x0 0x040000>,
+				 <0x02c00000 0x0 0x02c00000 0x0 0x100000>;
+
+			/*
+			 * Bit 39 of addresses passing through the memory
+			 * controller selects the XBAR format used when memory
+			 * is accessed. This is used to transparently access
+			 * memory in the XBAR format used by the discrete GPU
+			 * (bit 39 set) or Tegra (bit 39 clear).
+			 *
+			 * As a consequence, the operating system must ensure
+			 * that bit 39 is never used implicitly, for example
+			 * via an I/O virtual address mapping of an IOMMU. If
+			 * devices require access to the XBAR switch, their
+			 * drivers must set this bit explicitly.
+			 *
+			 * Limit the DMA range for memory clients to [38:0].
+			 */
+			dma-ranges = <0x0 0x0 0x0 0x80 0x0>;
+
+			emc: external-memory-controller@2c60000 {
+				compatible = "nvidia,tegra194-emc";
+				reg = <0x0 0x02c60000 0x0 0x90000>,
+				      <0x0 0x01780000 0x0 0x80000>;
+				clocks = <&bpmp TEGRA194_CLK_EMC>;
+				clock-names = "emc";
+
+				nvidia,bpmp = <&bpmp>;
+			};
+		};
+
 		uarta: serial@3100000 {
 			compatible = "nvidia,tegra194-uart", "nvidia,tegra20-uart";
 			reg = <0x03100000 0x40>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
