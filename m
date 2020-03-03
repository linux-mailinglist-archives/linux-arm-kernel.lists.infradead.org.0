Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B717792B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31cGKrfE2xmzaZFQLIlZKBWkCJozebHK2zsw0JeQ7JU=; b=kmUE2w+eZuY0NO
	Zn1phJKid4MxE/ptElivNp6gnAt5rCmHTlRLav/3dS2mx/AP433Hvhli1K4qti/co5do+iHge3xXG
	VGt6fTAA6d7X/WdWuD1FhFiYzujeSpwAbETDifg6tuVb07+0IeGyQb8pXMjvA6dmUq5DAdAHkrqD9
	sCVXIlvCkhFu53XPYLH8O//Hit6UzrU0/riQ5rQTBnhHy7Hl+mPFIlmR3p14evkg5Rodw56sRrumV
	qk2uIzR0b0hXCbRH18pizFEtP3Vnp9k7wRLsTtmGznu2w1O4JgMFqWvRZlZy95cQbSoOAeKneAyGG
	QFApE/JLShANAHiUtJoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98gW-0006Tl-GO; Tue, 03 Mar 2020 14:38:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98fw-0006BK-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:37:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id z15so4672459wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 06:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K5hjg1G3VFJLeuZ62RXxBnJp53DPSao1yCpZ+ZBtBN8=;
 b=iNrm0CI9XnahfkY1GKdbv7m82hqORspH2rHCweh+wIBudNC2ZqFrcVAnaaXt7uDpCy
 eOWYuWZdiQ8nxSKtcUSXqN5o/NCkO70fo22VX8gYL63tV53T+rWuSE9e6mLiaevS0Ff4
 6M2FGsxXj3GoRVu27Q/2kIYiT4RKTrcngLYpiHQvNDqhyEWatZMzY35QMk8rOBe7Wc4Z
 an2h2ylpm7D3382SDTEw7p7Ia3K2fERXdyabba14Lsi+KMozLek0GLJ2GArlVQm9HUYI
 BeI+g3eiumyugaCfnPNyWzZ/uvi0ouNBGZPILG3gzL59aIjyao9pf6rXzpkOGg4NGTMo
 YqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K5hjg1G3VFJLeuZ62RXxBnJp53DPSao1yCpZ+ZBtBN8=;
 b=jMpXuNpPTwJoUbpCUsMrqyx99f3S0QyUgpsgrZuuKDV8W90uycJ0hdiPa7GK3mU+2Z
 9LqYi4o6CvcA5KOy0nPs4HEaoTuau/EcvBFvfCwu8ugPU5fmRaRq92JBiO4c/G1PKFDP
 3saxCkSdBbkCuF+XexvEtp3ApCdzSULSGFg5U9DIbMijI2vWTrzq9KLGYLlm64hhRU2b
 HkBtityC7NxWd2+uqOXZfD5WkhOr8j0lVlK/nt/4ZsupGvdfdmmgXcFuY8yMcGhe19YV
 tCyZn5+j7OSvt0X5UP45DUJ2FQmyBUfcVD5i11XRBdUmXKhrC8jZElzeTn+jrNIUOqO7
 f4xw==
X-Gm-Message-State: ANhLgQ0/W4/oa76foTLwer4Gpjev617V2K0/fgTXP1fPwxLyRY2WxJnP
 5W/WjXy5VdmcpHDc6EVpIZOUzg==
X-Google-Smtp-Source: ADFU+vubH5FvBdZxArVu9XQq+51wNWYXHqzexBNcTn8d0oRpiHzqnZXe/qfgWED/LdX7eNM+kJIlAQ==
X-Received: by 2002:a5d:67c7:: with SMTP id n7mr5635176wrw.319.1583246254899; 
 Tue, 03 Mar 2020 06:37:34 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l4sm4652779wmf.38.2020.03.03.06.37.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 06:37:34 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v6 1/5] media: meson: vdec: align stride on 32 bytes
Date: Tue,  3 Mar 2020 15:37:28 +0100
Message-Id: <20200303143732.762-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200303143732.762-1-narmstrong@baylibre.com>
References: <20200303143732.762-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_063736_260048_99B34CAB 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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
Tested-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/staging/media/meson/vdec/vdec.c         | 10 +++++-----
 drivers/staging/media/meson/vdec/vdec_helpers.c |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 92f0258868b1..bfca4c82aa56 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -528,20 +528,20 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
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
index a4970ec1bf2e..3f7929c54dc6 100644
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
