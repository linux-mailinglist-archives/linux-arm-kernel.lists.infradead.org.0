Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A681866555
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M20UFSZFlOqkRTCKt+9JeX9WKluWXiC+twi2yUzPA48=; b=NKwayVPCK/xELx
	XPsDod4Cfh09Ua1eMpfnG+B4At6zEHplttwEKyMYo1tmoQgvzFhYLrPIS87aarzdU1AwR+rwzdxJr
	b9bRyfdkSnFjOs3cmBISRUr/qrqvUSwpehnx6zrAfZwVcLSc7nhBq9it9oMCjTNlZF7UBhwrXfncK
	g5CUvONW1IbkRdWbnHXhN1KnSt5IsJG5szW/hQwqrkL+LL5E9ZbVfIHCpkhgGwOFgnsCRNYGTkqEW
	bYVQvqhiUgSnPEHrQ9HI8RKL8FVwL1/ZOvvoBbWZi/gvBseS/sRh6M8FtClRullLzSZMF3HAjLf+v
	ENSE77RV0CZs2PX26QFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmaO-0001Y0-7R; Fri, 12 Jul 2019 03:51:04 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmYn-0007gV-K5
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:49:27 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CD246891B0;
 Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1562903354;
 bh=wTJ51EYUTFvk33KdvofLjJFSSQts6tpPR315HfRyeYM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=irzal8xpOk12NPzl39lBhX7dilHTq0NBDb8PjzdybIx7VPcmyfHCa8bCJzCPKKDPH
 1Dfm+hH7tkgb3AFK90/XFGR4qvj0FkGSW6y2v6HfB/bH2aeYnHZFjw3qxiLko3HUXA
 zxISt3he39fMC4Sbhvytrg7JKCIgojr9cAzgtLkPpr0iGj1HU9ONfz3p5/N05eVCRv
 6AK/7TYti5BhMYEKS/iCv6qytpaIvTafiW4vFp54WYiApOnKFAGsTBsSLw9htKPSvk
 FEEW7XRSw2NzpceSIcC/WzYyWjk7ieeA0YfEPrULralL6+/ICZPSf/Zs0XyR1LzqeB
 4n5BUmEnxBMRg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d28033a0002>; Fri, 12 Jul 2019 15:49:14 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 0B9FE13EF59;
 Fri, 12 Jul 2019 15:49:16 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 416E51E1D80; Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: bp@alien8.de, robh+dt@kernel.org, mark.rutland@arm.com,
 linux@armlinux.org.uk, patches@armlinux.org.uk, mchehab@kernel.org,
 james.morse@arm.com, jlu@pengutronix.de
Subject: [PATCH v9 2/8] ARM: aurora-l2: add defines for parity and ECC
 registers
Date: Fri, 12 Jul 2019 15:48:58 +1200
Message-Id: <20190712034904.5747-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_204926_047942_0ADFA0D4 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

These defines will be used by subsequent patches to add support for the
parity check and error correction functionality in the Aurora L2 cache
controller.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 .../include/asm/hardware/cache-aurora-l2.h    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm/include/asm/hardware/cache-aurora-l2.h b/arch/arm/include/asm/hardware/cache-aurora-l2.h
index dc5c479ec4c3..39769ffa0051 100644
--- a/arch/arm/include/asm/hardware/cache-aurora-l2.h
+++ b/arch/arm/include/asm/hardware/cache-aurora-l2.h
@@ -31,6 +31,9 @@
 #define AURORA_ACR_REPLACEMENT_TYPE_SEMIPLRU \
 	(3 << AURORA_ACR_REPLACEMENT_OFFSET)
 
+#define AURORA_ACR_PARITY_EN	(1 << 21)
+#define AURORA_ACR_ECC_EN	(1 << 20)
+
 #define AURORA_ACR_FORCE_WRITE_POLICY_OFFSET	0
 #define AURORA_ACR_FORCE_WRITE_POLICY_MASK	\
 	(0x3 << AURORA_ACR_FORCE_WRITE_POLICY_OFFSET)
@@ -41,6 +44,51 @@
 #define AURORA_ACR_FORCE_WRITE_THRO_POLICY	\
 	(2 << AURORA_ACR_FORCE_WRITE_POLICY_OFFSET)
 
+#define AURORA_ERR_CNT_REG          0x600
+#define AURORA_ERR_ATTR_CAP_REG     0x608
+#define AURORA_ERR_ADDR_CAP_REG     0x60c
+#define AURORA_ERR_WAY_CAP_REG      0x610
+#define AURORA_ERR_INJECT_CTL_REG   0x614
+#define AURORA_ERR_INJECT_MASK_REG  0x618
+
+#define AURORA_ERR_CNT_CLR_OFFSET         31
+#define AURORA_ERR_CNT_CLR		   \
+	(0x1 << AURORA_ERR_CNT_CLR_OFFSET)
+#define AURORA_ERR_CNT_UE_OFFSET          16
+#define AURORA_ERR_CNT_UE_MASK             \
+	(0x7fff << AURORA_ERR_CNT_UE_OFFSET)
+#define AURORA_ERR_CNT_CE_OFFSET           0
+#define AURORA_ERR_CNT_CE_MASK             \
+	(0xffff << AURORA_ERR_CNT_CE_OFFSET)
+
+#define AURORA_ERR_ATTR_SRC_OFF           16
+#define AURORA_ERR_ATTR_SRC_MSK            \
+	(0x7 << AURORA_ERR_ATTR_SRC_OFF)
+#define AURORA_ERR_ATTR_TXN_OFF           12
+#define AURORA_ERR_ATTR_TXN_MSK            \
+	(0xf << AURORA_ERR_ATTR_TXN_OFF)
+#define AURORA_ERR_ATTR_ERR_OFF            8
+#define AURORA_ERR_ATTR_ERR_MSK            \
+	(0x3 << AURORA_ERR_ATTR_ERR_OFF)
+#define AURORA_ERR_ATTR_CAP_VALID_OFF      0
+#define AURORA_ERR_ATTR_CAP_VALID          \
+	(0x1 << AURORA_ERR_ATTR_CAP_VALID_OFF)
+
+#define AURORA_ERR_ADDR_CAP_ADDR_MASK 0xffffffe0
+
+#define AURORA_ERR_WAY_IDX_OFF             8
+#define AURORA_ERR_WAY_IDX_MSK             \
+	(0xfff << AURORA_ERR_WAY_IDX_OFF)
+#define AURORA_ERR_WAY_CAP_WAY_OFFSET      1
+#define AURORA_ERR_WAY_CAP_WAY_MASK        \
+	(0xf << AURORA_ERR_WAY_CAP_WAY_OFFSET)
+
+#define AURORA_ERR_INJECT_CTL_ADDR_MASK 0xfffffff0
+#define AURORA_ERR_ATTR_TXN_OFF   12
+#define AURORA_ERR_INJECT_CTL_EN_MASK          0x3
+#define AURORA_ERR_INJECT_CTL_EN_PARITY        0x2
+#define AURORA_ERR_INJECT_CTL_EN_ECC           0x1
+
 #define AURORA_MAX_RANGE_SIZE	1024
 
 #define AURORA_WAY_SIZE_SHIFT	2
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
