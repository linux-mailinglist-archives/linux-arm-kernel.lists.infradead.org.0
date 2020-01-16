Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F8B13DC19
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwiYF3zSRhNUvy08T5DxNqT8WToN7M2BIUMbpvQQM+g=; b=miXA8p/gdXDrEb
	sNZBuBM11KlucxqLCW/LkpS1VnYm99Cp26cpcNrEBWMZncAP8hSuDhu4pI8K91kKPlb+v0IYj6gaQ
	JSN0USCB/nRGQG0n1EPBo9SeB+Vhi9K8q6R+VXDryUgc5/8s/9bm/jwn1BaFb+CzFeR/WO9GU10nF
	q32qyBYrgM/ls0uroZZBzZr0Rs6JcE86oxGHGEIggeE8GsyiZmgwzJj9Ss5/BZUbA3IEfW/uekupC
	0/5gfK0s8y1PBd4Ls8gCdCf/HQ6CwjAwMp9VsyFoAqRnZdYk+oszsrPdZlrBpIhEUOxtlIIIZ3Z8r
	gLxwWltNsLLwI6O5Fj6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5JZ-0007jK-4E; Thu, 16 Jan 2020 13:36:01 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5IL-000766-FE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:34:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id b19so3763920wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q8VsecRt+zfmEiQATRM3jixSlKuyuB/bDX0OonY2El4=;
 b=DXOpnld9G92rlbb4WX6Ogbj05H6RMFuh45/3B4eW+DhQ6n/E7vudJGO9Mzz7wI0Qy4
 Ws99bkrP1sbWkkwivnamc4ZnUdvI8vvdvw7/kfQDgdF6DfEAvFCVoGlhKAPTBNQ5pS7u
 sPPFON+8inKDqJbghOuAjbdbzKCFhGYX1C6lJqr1uR92e+rxZrsH3LekPu74e+sRVAmx
 6VhaEQieIAPvIF9U+jJyq3qy7on9vjY/pIfHA+KWUfOJh+3w7quYDKliX/uOvJNkUz9m
 PeD0GkUyk2+ZMFQZlWQBYDf2w8q9CqXe6TVyg0DCUiqhezBTPUjh1Jl3IZ5K+UYnT03r
 xCEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q8VsecRt+zfmEiQATRM3jixSlKuyuB/bDX0OonY2El4=;
 b=WaL/nviJuugXbNpzwllfoeftaNuNvNTX41iCIt/07/rMAvyI1uUz2zUAcuDB8pZJfe
 6c1AqaA6se1wj4+wdd8P//yL/SNu0YUT78WJbsbvGeKx4VLDKDhJbi0xA4ftzCiCOPoz
 msjDQDCTK2ROWH/AAAZY7+kIdq+AeTOGiEvmqSqkhrctwQS8Oxxgsh5zIuuFKP2tHJl1
 c/E12L9PkpiEsiSovehW23iZiv4ETyVT6GH82VpP4KHf2zDW+Xu8TH4Xv7YTbu3zFmlE
 +xhqcXZi1Vn6vlrFPS6mGJRTU4vcAarpFNx4zauekFaFeusFzUmJKVkRdLyqmPUaLg4S
 vs6g==
X-Gm-Message-State: APjAAAWpFzu/xSJaDa2+cJoKuiPQl86UogJTwboQG9jWkuFKJyzhuum9
 Dwu2ufOz/HnJqQVRqU4e6/652A==
X-Google-Smtp-Source: APXvYqyb1R+yJT7XgcRexsIrP8eW6i1OtzANNUy3R7MFWcGtdeAFDZbW/yA6D3OLL37hhBv843ua2A==
X-Received: by 2002:a1c:41c4:: with SMTP id o187mr6244365wma.24.1579181684167; 
 Thu, 16 Jan 2020 05:34:44 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x14sm162559wmj.42.2020.01.16.05.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:34:43 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v3 2/5] media: meson: vdec: add helpers for lossless
 framebuffer compression buffers
Date: Thu, 16 Jan 2020 14:34:34 +0100
Message-Id: <20200116133437.2443-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200116133437.2443-1-narmstrong@baylibre.com>
References: <20200116133437.2443-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053445_529331_0B6A8FBD 
X-CRM114-Status: GOOD (  10.12  )
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

Add helpers to support the lossless framebuffer compression format that
will be used in HEVC & VP9 decoders when decoding 10bit content for
downsampling to 8bit NV12 and later proper compressed buffer support.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../staging/media/meson/vdec/vdec_helpers.c   | 27 +++++++++++++++++++
 .../staging/media/meson/vdec/vdec_helpers.h   |  4 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index fc59d8801643..818064b6b4d0 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -50,6 +50,33 @@ void amvdec_write_parser(struct amvdec_core *core, u32 reg, u32 val)
 }
 EXPORT_SYMBOL_GPL(amvdec_write_parser);
 
+/* 4 KiB per 64x32 block */
+u32 amvdec_am21c_body_size(u32 width, u32 height)
+{
+	u32 width_64 = ALIGN(width, 64) / 64;
+	u32 height_32 = ALIGN(height, 32) / 32;
+
+	return SZ_4K * width_64 * height_32;
+}
+EXPORT_SYMBOL_GPL(amvdec_am21c_body_size);
+
+/* 32 bytes per 128x64 block */
+u32 amvdec_am21c_head_size(u32 width, u32 height)
+{
+	u32 width_128 = ALIGN(width, 128) / 128;
+	u32 height_64 = ALIGN(height, 64) / 64;
+
+	return 32 * width_128 * height_64;
+}
+EXPORT_SYMBOL_GPL(amvdec_am21c_head_size);
+
+u32 amvdec_am21c_size(u32 width, u32 height)
+{
+	return ALIGN(amvdec_am21c_body_size(width, height) +
+		     amvdec_am21c_head_size(width, height), SZ_64K);
+}
+EXPORT_SYMBOL_GPL(amvdec_am21c_size);
+
 static int canvas_alloc(struct amvdec_session *sess, u8 *canvas_id)
 {
 	int ret;
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.h b/drivers/staging/media/meson/vdec/vdec_helpers.h
index 165e6293ffba..cfaed52ab526 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.h
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.h
@@ -27,6 +27,10 @@ void amvdec_clear_dos_bits(struct amvdec_core *core, u32 reg, u32 val);
 u32 amvdec_read_parser(struct amvdec_core *core, u32 reg);
 void amvdec_write_parser(struct amvdec_core *core, u32 reg, u32 val);
 
+u32 amvdec_am21c_body_size(u32 width, u32 height);
+u32 amvdec_am21c_head_size(u32 width, u32 height);
+u32 amvdec_am21c_size(u32 width, u32 height);
+
 /**
  * amvdec_dst_buf_done_idx() - Signal that a buffer is done decoding
  *
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
