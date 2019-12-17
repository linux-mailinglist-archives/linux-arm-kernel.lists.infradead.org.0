Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24A1229BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3L7/SP2u1xTVbwFmcNbgjn29tzXSBDMGbKXAY69Fgrg=; b=BiJEcpXmE1R1fp
	gjyg+V8HAvobJ1ptXRnvfih52Ljg9k2CLZZt/JKF3//sx6dGU8jnUpgeQssY2xT60TuczUg+YNhOl
	1Gy4QJtlbGr4lalp0rDseY3r8O3nqlREqoRIZGK1bvlGYeDuf+j9g2yk14SOR/5wKlAKAfyKYnUqv
	Ws78gsJFUJj6+PpNysQ/RPUYIWO201/N6bAMs6IsnwmxxuTqPASVg8QpvuCCuk4c3nFV9coHuWIu9
	BU/b7wFsSr6SdkeMpIGMLS3MCR4K5wL/NOJjNnBCG8axTCZRKlabldQEY1kFDFM/Apf8OOSkTjG/k
	t4dFtU32EuqR0ISd8l0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAu5-0005q1-Be; Tue, 17 Dec 2019 11:20:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAtF-0004K7-Ej
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:19:48 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so2523465wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 03:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nq23CNv+1Mccfg53lZf4BbmhYzh0ats8L7b+6kh1lhM=;
 b=JkP2cBOdB1jizFRg1waiD4qV7ueEblfSlWDYkogvCG9zIEqtulTxydzio6qhq9ONoy
 k4KKwRtj8XYwmjolQg1cgjCxQTWEck5bqRQp9Lv6/VgtqUITpWapRM75azFpkFzQin7m
 rX7hfKpVrVGqQB3t0LtAqV1km8r2HQXp6/DaBhgv13tm/DrkNd/TposlDwEMG395qO+y
 r37a8fSNxAv0dLHEx8kN5nY2XD3C0JgwEp8ESHOzdPFsQ5tTjfnu26uHAZis+lGPNAwH
 7cAFBcKAc3mMk3Wc+I5l1ca0JifPkUqH0XrRjK/HaP//pO6QZnjOq7AqikGQ9Vkqu3oa
 wmqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nq23CNv+1Mccfg53lZf4BbmhYzh0ats8L7b+6kh1lhM=;
 b=VR2h6jnU27Elb6ws1G/xm+eAJPmrB0dks31LyNBH5ognnCWbcKKHRMcyzQE05TW/cD
 jpDwYohMtN2K8z1yNF3eUPm8Z/wnUlKS0a2Maa/GN76K4/Bks35+3weviekzYAqdc44f
 QxdRkTx/KyBNuU0J34JbIPDY0KWI/Aki/APmulKseyjBN7DB6GnZRWjbnCqKUPkW49gD
 o8XXdFEso1Nphop3EsOMI/WswBse8b2gqEWScUxjQaT1OIDnn4rY3i42j7WpDk2f5kmq
 7EpObJbyi6L9RVBIZTdOt6FoCWU6YF9YK6mEpb7iNAjxHFcyrlzGGhpanx29R/gSK1jT
 xjGw==
X-Gm-Message-State: APjAAAXdA8zojpIxvN4v82ImUbkOxRPDVvsuzwQYolTsMVzONfGfCacF
 GJHcfbU37UArO5EzBzrG7GzFjQ==
X-Google-Smtp-Source: APXvYqy9goZ1j0cNPEceJSpdmJLFMACjHYGJdKCXZXrKYvBR8MdlhGzlXmaLhM56FCaykJyKN3NTxw==
X-Received: by 2002:a1c:9a44:: with SMTP id c65mr5171515wme.30.1576581582745; 
 Tue, 17 Dec 2019 03:19:42 -0800 (PST)
Received: from bender.baylibre.local
 (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr. [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id a184sm2713113wmf.29.2019.12.17.03.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 03:19:42 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v2 1/5] media: meson: vdec: align stride on 32 bytes
Date: Tue, 17 Dec 2019 12:19:35 +0100
Message-Id: <20191217111939.10387-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191217111939.10387-1-narmstrong@baylibre.com>
References: <20191217111939.10387-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_031945_493168_38E9C5A9 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
index f03d9eba6e23..bd59d32b92ae 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -525,20 +525,20 @@ vdec_try_fmt_common(struct amvdec_session *sess, u32 size,
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
