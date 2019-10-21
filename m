Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D05DE7B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XiHxxiWeiN1iwZKGhJ6V1NN67hHI03R83Tuvv969gE=; b=QVFAjrlyhWimU9
	Lwfpe0QCQwaWEluTe+2EFeFbOiKibtjQOD4GXBvjoksOeFk1VHklgsnXoEJaFb5uykViArrHIDjtM
	9jjteKLkGEigL2fO8R9neqroc0DAEHrCCSrzpsIhWr2C/4mnoGloz9wpPH2/RJbumxIxAXHnMND2o
	tVuJF63KEkR6WtIKL0k/a6ga+pYXbKxm44rosMjBZRp9MoWA7ZfMhu2G+wG1DRHzeuP6jV3PyJNem
	H2YzzHj/YPJteh6uTfsfyvkjKGXIRvtrMF4ZCU71mts60tDCZLreRCu4ZvievWQqtMVY7H7eUUBqV
	EPVePmxVTs03vIGNpjhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTn9-0002wN-2g; Mon, 21 Oct 2019 09:15:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmV-0002fl-6W
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id p7so12391880wmp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qDD2ziTUH4iVa0dzLE+0MqtrcwtEloFCQjzGa/0salE=;
 b=Z73uEg7UKgYk1leib+Lrz12y+eL4X27Nq3POnyLEcHDYIjKTXRd1/zU0aqSEEkVGU9
 cdTdpNl/8DMrrwjvId3op7/1+gzPKxdZb0wBHm7n0z9YeOHPsjXzzbaJC6vAlLy8urWw
 i+meUGAPQsTSafCAmV75L/xCeFlqIen2wS8vou2PDLJ+qV5lKKV3eyfkyeOw/QmSKDFM
 g6aIFmh9rhAW2gC57oRFCRwKpT4nJDKb5GRWosAMsEiKLvthKgeTwAgJz+XZ1BUMRKcC
 a4u7AytvzMU6kOz7a8aXA6/6UdJ1AF5atDdTkEydN9xLJpU1tHRlo/ztXoHFgINrw+PB
 o06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qDD2ziTUH4iVa0dzLE+0MqtrcwtEloFCQjzGa/0salE=;
 b=XjGRNrfLTeFKxcqLyBLUhTIEaByGb3zrUIQdlCUij1SlWY7a0GYK8bGbwvsbKdt4BU
 y5/xY4k0642D95uZ1RAGCpoQ71DFxKekgAa3qOpRxZY2+49awqBydr/Tg9XO++Ek4b4M
 9rxVv8zUAJ+/ig6zEKtFd/5ew0uNTATshhWlnEkeZQaMN2npFFpfdhCgBUxm+Ve3KeeS
 Zky4rFJUG5H8+ZNveDqZ0YoH4U/WhZb7NerB8P1iwU68txzSk126ZsiU29Ne8chc0lZ1
 hzzHKu42br9jASPf0C1wAM+hgaizaP/T84VdG8J3+rqmDZvlc7opf2eRlM0e+/4Mw6hx
 L2dQ==
X-Gm-Message-State: APjAAAUND0nH7W9/ww1oIi6ObvfOiaWAIegntkMj1xu78r0w5bmluH1T
 oHspBLSgnNMyHsTQ2pBQ+C+b8g==
X-Google-Smtp-Source: APXvYqxwpMCLFzRRta3WE5BmI//VeCYqIDqGSOxYZVPKLJENo6zfL95E75p+aJ12kCrXGKdqjUu8GA==
X-Received: by 2002:a1c:c90c:: with SMTP id f12mr17569471wmb.97.1571649313528; 
 Mon, 21 Oct 2019 02:15:13 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:12 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/9] drm/meson: add RDMA register bits defines
Date: Mon, 21 Oct 2019 11:15:02 +0200
Message-Id: <20191021091509.3864-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021515_234955_E1C05AEA 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic VPU embeds a "Register DMA" that can write a sequence of registers
on the VPU AHB bus, either manually or triggered by an internal IRQ event like
VSYNC or a line input counter.

This adds the register defines.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_registers.h | 48 +++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_registers.h b/drivers/gpu/drm/meson/meson_registers.h
index 547bee04b46e..8ea00546cd4e 100644
--- a/drivers/gpu/drm/meson/meson_registers.h
+++ b/drivers/gpu/drm/meson/meson_registers.h
@@ -1211,11 +1211,59 @@
 #define RDMA_AHB_START_ADDR_7 0x110e
 #define RDMA_AHB_END_ADDR_7 0x110f
 #define RDMA_ACCESS_AUTO 0x1110
+#define		RDMA_ACCESS_TRIGGER_CHAN3	GENMASK(31, 24)
+#define		RDMA_ACCESS_TRIGGER_CHAN2	GENMASK(23, 16)
+#define		RDMA_ACCESS_TRIGGER_CHAN1	GENMASK(15, 8)
+#define		RDMA_ACCESS_TRIGGER_STOP	0
+#define		RDMA_ACCESS_TRIGGER_VSYNC	1
+#define		RDMA_ACCESS_TRIGGER_LINE	32
+#define		RDMA_ACCESS_RW_FLAG_CHAN3	BIT(7)
+#define		RDMA_ACCESS_RW_FLAG_CHAN2	BIT(6)
+#define		RDMA_ACCESS_RW_FLAG_CHAN1	BIT(5)
+#define		RDMA_ACCESS_ADDR_INC_CHAN3	BIT(3)
+#define		RDMA_ACCESS_ADDR_INC_CHAN2	BIT(2)
+#define		RDMA_ACCESS_ADDR_INC_CHAN1	BIT(1)
 #define RDMA_ACCESS_AUTO2 0x1111
+#define		RDMA_ACCESS_RW_FLAG_CHAN7	BIT(7)
+#define		RDMA_ACCESS_RW_FLAG_CHAN6	BIT(6)
+#define		RDMA_ACCESS_RW_FLAG_CHAN5	BIT(5)
+#define		RDMA_ACCESS_RW_FLAG_CHAN4	BIT(4)
+#define		RDMA_ACCESS_ADDR_INC_CHAN7	BIT(3)
+#define		RDMA_ACCESS_ADDR_INC_CHAN6	BIT(2)
+#define		RDMA_ACCESS_ADDR_INC_CHAN5	BIT(1)
+#define		RDMA_ACCESS_ADDR_INC_CHAN4	BIT(0)
 #define RDMA_ACCESS_AUTO3 0x1112
+#define		RDMA_ACCESS_TRIGGER_CHAN7	GENMASK(31, 24)
+#define		RDMA_ACCESS_TRIGGER_CHAN6	GENMASK(23, 16)
+#define		RDMA_ACCESS_TRIGGER_CHAN5	GENMASK(15, 8)
+#define		RDMA_ACCESS_TRIGGER_CHAN4	GENMASK(7, 0)
 #define RDMA_ACCESS_MAN 0x1113
+#define		RDMA_ACCESS_MAN_RW_FLAG		BIT(2)
+#define		RDMA_ACCESS_MAN_ADDR_INC	BIT(1)
+#define		RDMA_ACCESS_MAN_START		BIT(0)
 #define RDMA_CTRL 0x1114
+#define		RDMA_IRQ_CLEAR_CHAN7	BIT(31)
+#define		RDMA_IRQ_CLEAR_CHAN6	BIT(30)
+#define		RDMA_IRQ_CLEAR_CHAN5	BIT(29)
+#define		RDMA_IRQ_CLEAR_CHAN4	BIT(28)
+#define		RDMA_IRQ_CLEAR_CHAN3	BIT(27)
+#define		RDMA_IRQ_CLEAR_CHAN2	BIT(26)
+#define		RDMA_IRQ_CLEAR_CHAN1	BIT(25)
+#define		RDMA_IRQ_CLEAR_CHAN_MAN	BIT(24)
+#define		RDMA_DEFAULT_CONFIG	(BIT(7) | BIT(6))
+#define		RDMA_CTRL_AHB_WR_BURST	GENMASK(5, 4)
+#define		RDMA_CTRL_AHB_RD_BURST	GENMASK(3, 2)
+#define		RDMA_CTRL_SW_RESET	BIT(1)
+#define		RDMA_CTRL_FREE_CLK_EN	BIT(0)
 #define RDMA_STATUS 0x1115
+#define		RDMA_IRQ_STAT_CHAN7	BIT(31)
+#define		RDMA_IRQ_STAT_CHAN6	BIT(30)
+#define		RDMA_IRQ_STAT_CHAN5	BIT(29)
+#define		RDMA_IRQ_STAT_CHAN4	BIT(28)
+#define		RDMA_IRQ_STAT_CHAN3	BIT(27)
+#define		RDMA_IRQ_STAT_CHAN2	BIT(26)
+#define		RDMA_IRQ_STAT_CHAN1	BIT(25)
+#define		RDMA_IRQ_STAT_CHAN_MAN	BIT(24)
 #define RDMA_STATUS2 0x1116
 #define RDMA_STATUS3 0x1117
 #define L_GAMMA_CNTL_PORT 0x1400
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
