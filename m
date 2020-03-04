Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E47178DC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:47:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31cGKrfE2xmzaZFQLIlZKBWkCJozebHK2zsw0JeQ7JU=; b=MMU+7TZO1OumWq
	zqtKj/1a+vvq8dNZ5DNv6cBcx59J6iR+pc30eQc0U8P/XeS9QZGEdftug4D05Zrk5d/QIpIaCBZkY
	U+b81G5ccu4gI+SPjSBhQEUMmg1uIgrF5XXmO7oIszd1a/OPAFFumbfV3cljA+BeyCnuyH1THJGN2
	jHO7duEjYqwCA8WsgPPKsTETiXSDe+KU2+899L5248d+g+6Sp6oY0Br4hTwcyHSBPPKDeyLa8FCls
	2JyBOkSbkPtPx8YyBXDmoA9sYIFli9JmB3GOAPh8r4k8aL/C2Bo0tpUzj0k2eTY/AJ75GWhipY6NF
	Dy2Fkm9kaw2RVnwiQLIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Qcq-0003u2-6f; Wed, 04 Mar 2020 09:47:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Qbq-00038c-AU
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:46:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so1551375wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 01:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K5hjg1G3VFJLeuZ62RXxBnJp53DPSao1yCpZ+ZBtBN8=;
 b=2SE/62ffNoNovHiDs1k+u5cTld9gBWOVjpxlimiyMzuGDcXNO7DUxt9Y14hP9n3+eL
 NH+9A+7QJG3kGP10lLckXdEVA97WpRjF9zy0NHjXZmq7Jc4bmR3ep3dxqbaMwqx7CHRU
 usGM+s3jBF5hjJA11vy0AStb7wZVycGK89BWs8Pqqs0InWE3NVc5febUgjUoOo4lRCcj
 +LxhnmvycnOEXSWQf57tEgS0Q4nn8FMOhSDh4vwtVXySqWhzaS1mZB7NSDyea7/Q8+Yy
 6DIqNuLQwsNnqxuD0BT0LZWAZWKogGUIAS3hvuN0Daa6hf4lk0GPyxZygHBsYWv6GZrG
 VnIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K5hjg1G3VFJLeuZ62RXxBnJp53DPSao1yCpZ+ZBtBN8=;
 b=LSC7dVfY9+6YRhlc4u6m8Tty5iXPSEybOwUsrNllzDq0BYvxYfX4y4Y3JOxj+jNTY1
 gZaWtroTCDRsT2NNMl0ZRLo2CJ85ZjELmcXppAMeUNhtW7+ucEpz4m8QbntWk73jk51S
 z7518TTn9ltJjEEimlfl6AUF6HNXlroh+qkuzpzXVlOnf4eBm8G4cCrmNuJdtmBEWcyR
 1AHxRR8P5SznufqsYOn+NvClP2NVOGnn2Im1G7cGKRCJAl14vvPkwhlfC2Qrr8bUpHhV
 J5o3EEMYtP4P+QBnjKo8/86AU0oaavmEzn7SNTECaVCxCXsgS3pdw78gBNN5fdq1ee8f
 fdyA==
X-Gm-Message-State: ANhLgQ05OCjO8jgiv5s4uC4yjFaVmTlj6XMr0WIrA8uASp2u9Ye3lv84
 NEIygu5FIvqj5UymSuKAV6yyOLBnqWdEYg==
X-Google-Smtp-Source: ADFU+vsmHI8XwQXXfnDZR562BoFU7zrqmPglShefMhkAEPAr3dqW+fmq4C1hsmjfc+4oVh7WFI4DFQ==
X-Received: by 2002:adf:f604:: with SMTP id t4mr3308460wrp.96.1583315192881;
 Wed, 04 Mar 2020 01:46:32 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b10sm38696107wrw.61.2020.03.04.01.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 01:46:32 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v7 1/5] media: meson: vdec: align stride on 32 bytes
Date: Wed,  4 Mar 2020 10:46:21 +0100
Message-Id: <20200304094625.2257-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200304094625.2257-1-narmstrong@baylibre.com>
References: <20200304094625.2257-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_014634_361788_746E0904 
X-CRM114-Status: GOOD (  11.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
