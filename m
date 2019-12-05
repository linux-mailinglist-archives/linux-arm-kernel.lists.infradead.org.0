Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66869113DD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3L7/SP2u1xTVbwFmcNbgjn29tzXSBDMGbKXAY69Fgrg=; b=kknb2m6Cq3z1nR
	xq5TR9D59KcAZhrNbfNwPuaNhyUpC3NMhoLb+9bAGxqiYm9KWDadU3jTq884SnM2MLNa76PvRFNsD
	3MkPuZF2wxvhKu/7Eq5OUeQL9JhQoTmGudQyXODe2lWACT8+jh7+7vAZmimI9BNOsyBAK9b825615
	5Hrke6M8MnchgNpM2jYgK4PsB4Xs5BUXt1B8CVbjBORtqLaL6vCV8QuvakkwSs9DWe/O/ZYR5M3+k
	g6NV/tO3xo/KeKDO9OdJeE+Fe/4OdSZNod+rGyfsAPESUJlcjReSvq2tZTuVZMfvTjY/Wqzcobvdw
	abLfLBzOWg7BQ3ZkBnEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnO9-00041n-LE; Thu, 05 Dec 2019 09:25:33 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnNb-0002X0-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:25:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id q10so2547349wrm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 01:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nq23CNv+1Mccfg53lZf4BbmhYzh0ats8L7b+6kh1lhM=;
 b=I/lfkLkec9xB4Lt64wD0JnmL1JPuqJcyEsa4h0hoXOUU/LWyELsD2B6FcUs8hnngLr
 s+iXCwOz//+2tsj4q3jUPAYlFnr0S97iUKEIVw+bh962MrKywBxIUjTHjF4VGEmEXxVu
 CblxxSfJpk6JGELdeXTC1lPCXGZpZRt1miq63dr0M1xsDi7IUpJfGpOe/EuMDXnbgnJM
 Qc58/qbQsGckCR1Kc1OD/KYg1fDFqt+cCX/Kijan7HudoaA1WfcMQMK+a/xiAv0p67PL
 4/gFjYTNRyxXZCX+yStyq4ucTXOkp3V/Ye3YdM2rquaNhy/4TNzxz3RKEkPx3e6p5Va5
 ok6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nq23CNv+1Mccfg53lZf4BbmhYzh0ats8L7b+6kh1lhM=;
 b=LiiVqAD3reGSMyJL0mkkAHuiRhWCL0O2otrb/5xgsL7kZ3xnTbsJszUJ7+Xz+ucu/4
 YB2TiUD9mEtW2QOf8YAdPhWw39u46ig3IuujwUnCocU1IwEePF2MQ65v+DdlwNicCXAd
 mQtFMPhnkCZyoetYDa/tTJ0OHbcsrilPAEz6g/nO2ABSwYNeNeYqpJae8t7d0keD8dSF
 Xy7Uy9Ph272fik14n/V7g5YvqKn8zLBM3axmXqSCapoyqTVJ+51XgQ/crTbg8l666UoH
 hrLvQ8mGx5rnIEO3BN47vELjHtLoayU519fzCfFiaDUGgHM4/aq5saYmiwAGlo+jPLy4
 pZKA==
X-Gm-Message-State: APjAAAXtIdadOsbbhhZqEcxwCHJnXstMmqOT2CaAaCadyK9sIVqiMGS3
 mkJmEYGJSXH9QpBMw40C46egHA==
X-Google-Smtp-Source: APXvYqxM/twH277jtVYnEriu835IS5kknyb1j1etNDY9mX3nYl9pJof1Rjwetb+ekuL3yMja3982dQ==
X-Received: by 2002:a5d:4752:: with SMTP id o18mr8664381wrs.330.1575537897807; 
 Thu, 05 Dec 2019 01:24:57 -0800 (PST)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id t5sm11642620wrr.35.2019.12.05.01.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 01:24:57 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH 1/5] media: meson: vdec: align stride on 32 bytes
Date: Thu,  5 Dec 2019 10:24:50 +0100
Message-Id: <20191205092454.26075-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191205092454.26075-1-narmstrong@baylibre.com>
References: <20191205092454.26075-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_012459_543838_F5F2BBBA 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
