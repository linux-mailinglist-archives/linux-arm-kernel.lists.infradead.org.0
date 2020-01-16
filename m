Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E5B13DC17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:35:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLB+nTF1yOvyrxyPgziCDAYlJAihPQ7XJBcC5KoZ6r8=; b=hL5H2Hw4JjEfFU
	RF3Rjt0xhZV7p8vMf0osHSaO126yz43B7qimrgPyddAzYN71skf5dRpst9o1Lv3ObVm8HKXgGO1gC
	p/OZeZbW+8MCb0/9KBCzmrO+Y2GKjzUbs0A/f2vtN60rR3US2ZyjNRJcZYiTfIuuMIy1qBimD2q0o
	636uJ5ZKujgUBIQFW1Xos5meWwdG+Kcvb+Q8FDnBVtLe8MCjY2PiosRC0SL+AEGR5ZzY+pQzGv/aa
	NGhYW6PLtNNyVQRCgWypApQLSZoJnhDO6cMlBqZdUqvoi56aKNDwCrDwzy+RAlzg8KIRF8zTVaEUP
	y86o7b7mBgnqINM0LQhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5J3-0007RB-HE; Thu, 16 Jan 2020 13:35:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5IK-00075g-87
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:34:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id b19so3763864wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 05:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tsG/kNWOY1oaLEfx3AisRYovgh6oCd1Sk94EaWADP1A=;
 b=1Bs13GLWG0q2oepJBkkMKBXN55AsJyFVIq83RdE7FstgXFKYTqAM1fdoPdTjTsIfPa
 kkqRNS1Wk8ISL8gDFtyPgSQq3Z1zlqP/Ns4yWx3XFdbmT1KYDVkIbjTpwmQdyn8QwUYs
 M4oMN04iFRP7BThXs5qLF4c2HLvGKJ0cEONeHTkZu0ZSn4qLZi8dp0qD2+teA/o+g4Gc
 YvKsoYRTPQgj/5F0YUO26C/UV6jOi2Z5hR/vNQdbt3TdlF6FmbWvaziQxi2xhF/7mVlL
 8dOOGV81WYjpsLXe+f6lJa5oVU1BrICKWOs6oI6dh187EIZm8ZLKyLbcu8N0Z6GbBitP
 nIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tsG/kNWOY1oaLEfx3AisRYovgh6oCd1Sk94EaWADP1A=;
 b=RHRgBogRHbXx9B7JBT/nkwPpajKwPqKCMjnW7emF5uDt81aVqFsDXosqaIg+fLX1TT
 Cj6rWt6yeAwof7wJI26DzbK0SQvNkayNZHXhGNOzWBcnI1oSks7iLkuxIc3DBIWDehdz
 DNMv/sP7JdDrcYuznW4TGpRcVzXfbI7ymyp0RwIjt7RVArRRkXsYqqiDvCM9o5xYQl5r
 s/dUxT9eG34EXpnQ4yoI6YM5mPo4IyzfxlhVHibsu1R5BoMJCk4NtHK272eV5jmzxAlH
 95x9rMFtPzOxg5Zi6/wuwaW19evGmIP5RliyfdCKRqXtnIyoqgkWoWRHi+PFcOIaD91f
 yAVQ==
X-Gm-Message-State: APjAAAVENNV/HMWwBT964g/kVdZCMpD1ph1saS2TDOd2worwPRfRM2ia
 PPtNnjx66S0/StxFaIcqYiowLQ==
X-Google-Smtp-Source: APXvYqyXmfYjyCLjI7Jq4nu3MhkiOKk2tOb7dImKfGrnqC+3eVJikhsp0cBodESHkU94cTJ8uUFX7g==
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr6598741wmm.157.1579181682932; 
 Thu, 16 Jan 2020 05:34:42 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x14sm162559wmj.42.2020.01.16.05.34.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 05:34:42 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v3 1/5] media: meson: vdec: align stride on 32 bytes
Date: Thu, 16 Jan 2020 14:34:33 +0100
Message-Id: <20200116133437.2443-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200116133437.2443-1-narmstrong@baylibre.com>
References: <20200116133437.2443-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_053444_295682_171E517D 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HEVC/VP9 aligns the plane stride on 32, so align the planes stride
for all codecs to 32 to satisfy HEVC/VP9 decoding using the "HEVC" HW.

This fixes VP9 decoding of streams with following (not limited) widths:
- 264
 -288
- 350
- 352
- 472
- 480
- 528
- 600
- 720
- 800
- 848
- 1440

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/vdec.c         | 10 +++++-----
 drivers/staging/media/meson/vdec/vdec_helpers.c |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 20e95b71c2d6..5514d2d259a4 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -527,20 +527,20 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
 		memset(pfmt[1].reserved, 0, sizeof(pfmt[1].reserved));
 		if (pixmp->pixelformat == V4L2_PIX_FMT_NV12M) {
 			pfmt[0].sizeimage = output_size;
-			pfmt[0].bytesperline = ALIGN(pixmp->width, 64);
+			pfmt[0].bytesperline = ALIGN(pixmp->width, 32);
 
 			pfmt[1].sizeimage = output_size / 2;
-			pfmt[1].bytesperline = ALIGN(pixmp->width, 64);
+			pfmt[1].bytesperline = ALIGN(pixmp->width, 32);
 			pixmp->num_planes = 2;
 		} else if (pixmp->pixelformat == V4L2_PIX_FMT_YUV420M) {
 			pfmt[0].sizeimage = output_size;
-			pfmt[0].bytesperline = ALIGN(pixmp->width, 64);
+			pfmt[0].bytesperline = ALIGN(pixmp->width, 32);
 
 			pfmt[1].sizeimage = output_size / 4;
-			pfmt[1].bytesperline = ALIGN(pixmp->width, 64) / 2;
+			pfmt[1].bytesperline = ALIGN(pixmp->width, 32) / 2;
 
 			pfmt[2].sizeimage = output_size / 2;
-			pfmt[2].bytesperline = ALIGN(pixmp->width, 64) / 2;
+			pfmt[2].bytesperline = ALIGN(pixmp->width, 32) / 2;
 			pixmp->num_planes = 3;
 		}
 	}
diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index ff4333074197..fc59d8801643 100644
--- a/drivers/staging/media/meson/vdec/vdec_helpers.c
+++ b/drivers/staging/media/meson/vdec/vdec_helpers.c
@@ -154,8 +154,8 @@ int amvdec_set_canvases(struct amvdec_session *sess,
 {
 	struct v4l2_m2m_buffer *buf;
 	u32 pixfmt = sess->pixfmt_cap;
-	u32 width = ALIGN(sess->width, 64);
-	u32 height = ALIGN(sess->height, 64);
+	u32 width = ALIGN(sess->width, 32);
+	u32 height = ALIGN(sess->height, 32);
 	u32 reg_cur = reg_base[0];
 	u32 reg_num_cur = 0;
 	u32 reg_base_cur = 0;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
