Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2DF50F14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8U8ALQ/AZobXqt7rjl+2ihKy/932MnJ4UCaB7z4LPyk=; b=eYPXrjfJALlwx5
	pNol/ksMFZHMEC4nAHSPzTjXyv4YX9e2YaFOvWIPfCCJPM+ExOC1y0ZLcV5hFpvnzyE9p8PeSppzq
	BGOwSWqqHDlSFxVUzCB6xWRDAous3F4pa+XT8WExC9e6XVFks18jiamK7cwQt9cDI96fb9Emz9u7v
	cXZAPAMwyIE6paRSXQ9uOJn3OX6VJHk/kVoV4JFABzdQcp6BJ43+D7ORK3XVUdTXfonagkmIbIjko
	8uhCJu8e0b7lWSmIrnEHlcEnDCLduEiEe9X2Ut+i7KdZP1LClTkW+mEcTP8fhtjzYmbDP/nsiZhmc
	ucd4pGhKzNcxr+PGQB6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQIB-0000L0-1e; Mon, 24 Jun 2019 14:49:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQGq-0007rG-NS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:48:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so145396wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=t3gx4CW2mBs3JN+/WIyX7pTLkZS3fRc0wyPs3jrglog=;
 b=OgoQ6QB8KfytnEKNbqfHjNm8UJkRclyxG8kKItYXWzuLf2+ItMLuqzZYvR87PvjPT8
 I1Nr4mRS2NWL+Wcl/BEGIH88enr3Z8oWN3Xrg+rLK4Ts+QBpE0n5oVxZT0L/vbwTEqgh
 VXRGYMOjF+mvNyvaZNbNINR6W28R0EUIDfHbQMvuVw5c4El9SNhb6dq4lNY+roQEtBSB
 1kTeXMaJqzyLiVfsD8gUn+wGwbPLKTE/8M7pJ2PBHUpW2gZmMjA+3LXcNg1GGH+7vsYK
 amzV/RxgVLqs1ml/G1HH7trn59/KUOv6UAmdmCLG30ShA93zBPEcpPNPmj8Zle9KhNp2
 S3fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=t3gx4CW2mBs3JN+/WIyX7pTLkZS3fRc0wyPs3jrglog=;
 b=fKX+RIRVhJ/toW1N42L2GaWclNhEwpHh8MOXo6T9k1hUB9rZDrpjR7wSTWsjj7hCJn
 Ab7wkFnc1FM/96We06GV4VjzAPyOmckjl7evJp7ENcIRqfQViWLoMpC1Y8l5tMSnWu93
 MDMikzTagwm0z4JcUu8YX5UdWymOfoffO5y2SbQUOLwEJohGypp0g/4GN4b+QqKcKaPk
 xpI1n2JXurWttrZRTQxGKe+tu9cqfPW+3Wewo/c/J12AaNWDKfzkPxMvKbL4gTAeaDah
 CL8SrHpOuoR4fedn7BA+I4R9ay9Gb/Kcwefy9FffdCvCQJg9VbvgSbZQgDtKaDnSzzdJ
 1hSQ==
X-Gm-Message-State: APjAAAXbj2vb/iG6z9gZ++0ArFppozxmQl9TSS1tVLMjxQb3MvLs4EqU
 ir6BGsVQCVVzcz+Q7ZychMTyQ7cuqXcZLQ==
X-Google-Smtp-Source: APXvYqzrHd650JT9hi2tr1385IrvFj/niI09iC8N4X0o5wZ49+Tjdpy2oO9/0/usF55unwPrZZ44mA==
X-Received: by 2002:a7b:c310:: with SMTP id k16mr15453054wmj.133.1561387715052; 
 Mon, 24 Jun 2019 07:48:35 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id y1sm8450447wma.32.2019.06.24.07.48.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:48:34 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 3/9] drm: meson: drv: use macro when initializing vpu
Date: Mon, 24 Jun 2019 16:48:27 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86v9wv82f1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074836_937023_877BF40D 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add new macro which is used to set WRARB/RDARB mode of
the VPU.

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_drv.c       | 26 +++++++++++++++++++++----
 drivers/gpu/drm/meson/meson_registers.h |  1 +
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index 2310c96fff46..50096697adc3 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -149,10 +149,28 @@ static struct regmap_config meson_regmap_config = {
 
 static void meson_vpu_init(struct meson_drm *priv)
 {
-	writel_relaxed(0x210000, priv->io_base + _REG(VPU_RDARB_MODE_L1C1));
-	writel_relaxed(0x10000, priv->io_base + _REG(VPU_RDARB_MODE_L1C2));
-	writel_relaxed(0x900000, priv->io_base + _REG(VPU_RDARB_MODE_L2C1));
-	writel_relaxed(0x20000, priv->io_base + _REG(VPU_WRARB_MODE_L2C1));
+	u32 value;
+
+	/*
+	 * Slave dc0 and dc5 connected to master port 1.
+	 * By default other slaves are connected to master port 0.
+	 */
+	value = VPU_RDARB_SLAVE_TO_MASTER_PORT(0, 1) |
+		VPU_RDARB_SLAVE_TO_MASTER_PORT(5, 1);
+	writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L1C1));
+
+	/* Slave dc0 connected to master port 1 */
+	value = VPU_RDARB_SLAVE_TO_MASTER_PORT(0, 1);
+	writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L1C2));
+
+	/* Slave dc4 and dc7 connected to master port 1 */
+	value = VPU_RDARB_SLAVE_TO_MASTER_PORT(4, 1) |
+		VPU_RDARB_SLAVE_TO_MASTER_PORT(7, 1);
+	writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L2C1));
+
+	/* Slave dc1 connected to master port 1 */
+	value = VPU_RDARB_SLAVE_TO_MASTER_PORT(1, 1);
+	writel_relaxed(value, priv->io_base + _REG(VPU_WRARB_MODE_L2C1));
 }
 
 static void meson_remove_framebuffers(void)
diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 55f5fe21ff5e..a9db49e5bdd6 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -1496,6 +1496,7 @@
 #define VPU_RDARB_MODE_L1C2 0x2799
 #define VPU_RDARB_MODE_L2C1 0x279d
 #define VPU_WRARB_MODE_L2C1 0x27a2
+#define		VPU_RDARB_SLAVE_TO_MASTER_PORT(dc, port) (port << (16 + dc))
 
 /* osd super scale */
 #define OSDSR_HV_SIZEIN 0x3130
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
