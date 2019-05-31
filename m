Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2D330985
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7YAu/tQXVRy7aP/reTdBSIHmtkTnAxrXDM5iXvSQhg=; b=dqRyOP3r61WbxA
	S1D9tUzsNlLu03Iu3CZeA3ndACacUswMGYgXRKAcZDCn98JEOLefH9LyRM9uSHtdQzAgvfEK6wv5w
	Py8vKy7mnZF76GBVHsKXhcomvu+pqIqfgdR1xil/IMx/LYUxCbVdBMGUeAwpToSZw8uBO+KlES0ue
	zNLy8n5bWESQBGkfWritAdUMaPu5UlUvYQjG1Mx0aFoSZkW6xVKi430JdsQbAmdwCx3v7gjhbQh9M
	L93ruRjL0Yf+txyH3BxCNb6xsvdT44FxmYypKTSoXHduPoIBFH9FeiVJwuTvxfK2Tymy0aHQozoN1
	o0dhw7DNMtXx/hN7Ux5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWc9E-0004Ib-0n; Fri, 31 May 2019 07:40:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWc8O-00034E-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:39:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id x7so2671840plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 00:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejdHdx9aJPFDTdLKuLfQa4XoPCSxip4iB0fegeYSrZY=;
 b=Q5wCjFWX0X+zb5g9028sfTh6/jgJd2eQo05xjMOOBPDXrV6g/iI4f2uvL46tPj900R
 C/0u9XYpKeRmSOSCSHy8wo0CGZJ6Y2Hpd6lG+x2lHYFvTPkVLSFCqV+8Mc1RvgE9F7dR
 1e9trXJpBMPtQB+kwjB0LE9lqF8M5eXitaXac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejdHdx9aJPFDTdLKuLfQa4XoPCSxip4iB0fegeYSrZY=;
 b=qSRPMobiR/MdwC3uobon8cFQmmGa1PYCR3uAn0/1Zq3Tr2r+nLqTXZSqr3UdjihCJT
 I0vKKoZ6ulMMlwmejceE1gfRmq4wbs3qMMtDW+IeDZP3zYPT88AUG5N1qFPB4AdepQQC
 ghK0pp77sFaKLIlFagmA+gMovulxPpGd+JKxxKWMlXITzvghH/4WyFM0NdD5/fnDQsmy
 olp86ChROd0E9gyxOldEyALvdahGv0lWCPBwjfysj/+IvIgPti1yzUR9n9LJDqY2qA02
 ywgMGcDgpPpbPOeuiwjg7z16WVVvszevqdV/DXd/7z1fNRhv/HDPQ8dYSffirELzPtFi
 pc9A==
X-Gm-Message-State: APjAAAXWhNh1YkkGC8UGlPefwukjpAOwQOkg384adWpU/2lmex6lKx1Y
 /5DFkG4LzbzHYokNBIcDa15IYQ==
X-Google-Smtp-Source: APXvYqwoNtsvmCcTcLY1kQ0tL5LV8FXN4fOgbtLi9YsFY5vxCjPTuvcDxqSO9x0O0gI1118bfseHVQ==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr7466917plt.294.1559288367311; 
 Fri, 31 May 2019 00:39:27 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id r71sm17051741pjb.2.2019.05.31.00.39.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 00:39:26 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v9 7/7] arm64: dts: mt8183: add scp node
Date: Fri, 31 May 2019 15:38:48 +0800
Message-Id: <20190531073848.155444-8-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190531073848.155444-1-pihsun@chromium.org>
References: <20190531073848.155444-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_003928_638713_146EC828 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Erin Lo <erin.lo@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eddie Huang <eddie.huang@mediatek.com>

Add scp node to mt8183 and mt8183-evb

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
Changes from v8:
 - New patch.
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 18 ++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 12 ++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8e555cbb5d3..8dd74d7aefdb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -24,6 +24,24 @@
 	chosen {
 		stdout-path = "serial0:921600n8";
 	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		reserve-memory-vpu_share {
+			compatible = "mediatek,reserve-memory-vpu_share";
+			no-map;
+			size = <0 0x01400000>; /* 20 MB share mem size */
+			alignment = <0 0x1000000>;
+			alloc-ranges = <0 0x50000000 0 0x10000000>;
+		};
+		scp_mem_reserved: scp_mem_region {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x2900000>;
+			no-map;
+		};
+	};
 };
 
 &auxadc {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..133146b52904 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -254,6 +254,18 @@
 			clock-names = "spi", "wrap";
 		};
 
+		scp: scp@10500000 {
+			compatible = "mediatek,mt8183-scp";
+			reg = <0 0x10500000 0 0x80000>,
+			      <0 0x105c0000 0 0x5000>;
+			reg-names = "sram", "cfg";
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&infracfg CLK_INFRA_SCPSYS>;
+			clock-names = "main";
+			memory-region = <&scp_mem_reserved>;
+			status = "disabled";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
