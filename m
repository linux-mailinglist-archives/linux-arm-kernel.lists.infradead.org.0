Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A65164684
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:11:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY9DnoY899uyX0t9e4j4mRXz5uJ/BVQWVILX2jj6GnQ=; b=iqZzZTQs2WPgVy
	g7ps5xc8CVk607fhcBJkVUWUU8BivKXHw4ullVZBhKSxC4g55zGvFBgxfUrxPxb/Rs3tBVcX18yL/
	n39UhWmXNov7/8b/hrEoHmgeXcFPsBGlxJCqEhPDWpPq0iY9sEyUFVVndfoHZ455xP/NWQoKJO1OZ
	2lho8B6oxrbuV3LVPNboWRRKKhJajSof19cx+sz4/xyJ6VlhfmAQoWW5j+gDD6+bG5p2AyFcLS78j
	G5eDkncITZ2Yb9TyhRSmWJOiaRgQPSL26Wj7pi0eARikJ0sdmJgMujldEumdgZRaO/y2RghbiOgve
	chIADirpJgohYIdsSQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Q47-0005zB-KT; Wed, 19 Feb 2020 14:11:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Q3B-0004iY-FG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:10:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so727239wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RVrXPTZwBbLcZaQ9fhou/L2fbd5WchWNhoBm0tMKEHc=;
 b=SfyZK5owPyqQsSdRWhmTcSJjmleC78ElDcjV+UjXDo+G9awOf67LIinPNyC9+ExkO+
 glEZlTBhGurOG1midLd+rUDFuMKco1SH6LTm1T94IwGLuqBBL/voCT2kEhAfTxMcTIzo
 PCFzdAfkDzPyvUrf6xpyb0WxdDvMpICa7U+etjNUoC5XGdHmD/oUsgFJ9fl+zQqt4cES
 6e5lS7PyZ6dVCsahbh5qwwm5x5lHv6rJq4mdg8pZIt5mWITNWRG03zSCCG4jsszFGvwh
 dp/zMjzvY5nxNsK5ynymDY12dQ9SoO4JNbel4e0RkNIqwa/741tAMGiDtRC551KQ5cVg
 BaNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RVrXPTZwBbLcZaQ9fhou/L2fbd5WchWNhoBm0tMKEHc=;
 b=S1bvLz5ysepzasFKDiXFitei3KFIzJBn0lADZhhbH8kGGvkXKlWWkoxGt7CpRqxU0S
 mt1hepIxA/SzVd73sjwWAdhL6YrtK1HkqV6FSeIIdDF2TcV1F60cPJFbXYN+qig2D1Td
 EltLyNR1KDtOISFcIwuj6plrbMztY8v0mEmP79gyxRcsaSdFpVLWnPea1NIs/uKgF2aG
 furi70XubXe/svrWYBxIS/S/CfsCvYdU3S+tOgIxmsNAxu783VNCHCXd6Rr1UPzRdfCn
 MBmTKxWUYq5StaaOp4dpOLifvOeMVSdIihScQglcI4m9Rat0Spm9nL/oNWkUwP2IuPbX
 VBuw==
X-Gm-Message-State: APjAAAUz5+k4Gp9MgW4j/vOEiIybwV0dacOcjYSVp/9LOClUWmf92omP
 HFkdxucuWW7SLlGX7zEfd60L5A==
X-Google-Smtp-Source: APXvYqzG5qEyUqHoQ5AtmHYyezCCrK4QAqFgwDEmQK410ch5CMcSCeiuKt5/7DbqU9uDyqAu/vm2Qw==
X-Received: by 2002:adf:f504:: with SMTP id q4mr34534537wro.28.1582121404144; 
 Wed, 19 Feb 2020 06:10:04 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:4ca8:b25b:98e4:858])
 by smtp.gmail.com with ESMTPSA id
 m68sm3182789wme.48.2020.02.19.06.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:10:03 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v5 1/5] media: meson: vdec: align stride on 32 bytes
Date: Wed, 19 Feb 2020 15:09:54 +0100
Message-Id: <20200219140958.23542-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200219140958.23542-1-narmstrong@baylibre.com>
References: <20200219140958.23542-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_061005_530715_E2E91FBC 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
