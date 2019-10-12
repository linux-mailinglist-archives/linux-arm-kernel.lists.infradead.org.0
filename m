Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BD4D51E3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zloeTiyILFGBEQl4KdHwWVXdknFaUem5pVP11uwWQZM=; b=Z2vXdyDLlO7LkJ
	I+aV1CMcx6aWD2hqKI+yJbmOZxlP3E7BiV3fCDmUwf1fi4mkB2OfFK7V5BO32dou3i3zCML/oFA4a
	5oybzeeoBvn/QU7bNZ7I7i9JdYF3oJJenrjjhYrp1x4XLvv7hts7shR+WmVMlUVBPh7fl+xtbT/RC
	TQsM3xuAsli82OGmPKFsDhlUa8m9YtrbTbfI+Uwl7/vVFSalUQHSZzDACmc2pBfK+lko9vPVBstaF
	pmwFtYzWgsZZLk615W4uq/7XwhkbeQsv3hEqJ4Qz/2g3dsB31KUj+D4FGxCygElZ9wfT/BRQJXYc5
	6jbi50MCaZLKdwf5h8hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMTm-0005x0-99; Sat, 12 Oct 2019 18:51:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRv-0003B8-OZ
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id r3so15257952wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=SA7/NNFeQ98FEGXx1+uVXTnACJz8MTst5089OK206YuwU6jlcpacc5B9z4UOuyyNGw
 ke71/7POGluofgAfCHwJhIrCk3Nin4mRz+PEjsU+uTKiqE3vnMJT+CS7IiBrUrbxNcwJ
 16wlIFHjEPuIKXMa6jct1K47TC+wUDgLzpZ2OxvpscHTmj4oJTPE0q7T4QlnfScmLrH/
 RHuoyRksoDzbj6rhULw77apsYHcBmmm1cnnDIBpEoloI26ulj2PHZOqISdZbCQ8+cGV9
 ViTaIJ9vRXkg/KxI6kNNebgSAmGrLYKBEdQtpWW7uqMar2Op/2p7YnN2AKKHkqOPnh64
 MbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BlSNEKakkPz3qSacpRbF5fymVNSJO3OQiWGq/ZKj+yQ=;
 b=DOEg+fNSWSEgANl8VtbknU10xI7K2XO9E923+Kt8jOCwNAPACvVg2T5GzZ3E4qbmvw
 Yc4Wibpg+BWtw04+rQHTlEAo9Olmr3WD/KfhKSB0EKjje2mbd8XIo6Id2wBx1wWFrLYx
 6GNalIwk+8F1mzFE2mSDT2cUvmqL/vOdKgYvr2dR/l06tLsoZftqa0NnKxWa2GU5YqJT
 gceXb53Pz6jYhcGR9sloje3m8B09A6lBy5C2iUxAxi+IThq0uOPC4iUO6hlQvJ3rU1wN
 RZkevS8qpMHHhDsCdmZoqDJ2bxIYk4XBK8ld6cqZEhb6RW4nIu7RJO1sE+NGB6nsh954
 G6dQ==
X-Gm-Message-State: APjAAAWSmXFIRAqvZ0XEv2NbMCe64DCrP4/vt01PgwRmg4ppxFy1alQp
 oHSbqKG6Zt5B39PCiHSIfFE=
X-Google-Smtp-Source: APXvYqxfCjt/RqeTgVtsWQpkZ0VRN2BvNX4AuzG6Hw4yEBb6II3Qtz4jIguKLO25SuRfFbZlsuxFZA==
X-Received: by 2002:adf:ff82:: with SMTP id j2mr19206783wrr.356.1570906146460; 
 Sat, 12 Oct 2019 11:49:06 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:05 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 07/11] ARM64: dts: allwinner: sun50i: Add crypto engine
 node on H5
Date: Sat, 12 Oct 2019 20:48:48 +0200
Message-Id: <20191012184852.28329-8-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114907_829688_4743D137 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner H5 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..e92c4de5bf3b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -127,6 +127,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun50i-h5-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		mali: gpu@1e80000 {
 			compatible = "allwinner,sun50i-h5-mali", "arm,mali-450";
 			reg = <0x01e80000 0x30000>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
