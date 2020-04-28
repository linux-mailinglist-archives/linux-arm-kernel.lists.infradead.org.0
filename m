Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B511C1BBE32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMawJ0nvSFiJlpevnXV7IURDM+mfCJ7h+OwXtVHdeIM=; b=gVxPxERXN9khy4
	IuM06hDGiUlLxB2CdYaSRwJoX1XauiYUvxTByoS88QAI975gX77QdRB0rMLh1FovqdjwxE5o+px/0
	cTVAhH4B5WXsZx5tRt4XL8TZgdl0+Txv7ytgbRXASO3wjIAm1IoMKl+rhLxco5aYgHQTiyra2sXQs
	pLIxoW+zBq2jGiEYjmY0wtgR+UVN0ImKRgYb84Wy/bOBRf6ljuXHskcMeb0dPup2F5XOMJ24cBEGH
	c8SypwQcXozfZMhScYNZP5HAesJFHaTjqJTFhjvinaUu8r94MOrspR+9UbrUVwM+D0urYuHQsemug
	sfX+h1a+NukgqD6vDTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPhW-00043T-RH; Tue, 28 Apr 2020 12:51:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPhG-0003za-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:50:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id 188so2621790wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 05:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bS1/sm0XxWUvP6abjHta7A4TuogN+Inw+AeKvST2rX8=;
 b=CJ1HWPYa6lmeaiOGvITpPEE3yiBBS9ByoXcQet3Ewn7USk0P0L2v6kpGBwwVeAbOFj
 qaBVV+2OJEDE3NPzqfV0vm9K7As0NHUxa311IdVrZ0pNcKclHW8uy52KshOBmizJ76OR
 E5ENb5bdFQpElej+VSUYUYv5G481/tNKYFDrFNRmgE8Q9ZlHsaJghyhsFWqQeTDquklo
 BWc5H2O0F69bpTAjwrPRdszY3TXrWFrhiY0PUV3y+GQn496C55TBA4HzmO8S0+QZlwb0
 FF5/Yl8RbGFzq3a1GgtEp/vrOkdCDp1AXaM4Myml+k2PMAu9Etnoy8vqrKYGEaUYRy4N
 jsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bS1/sm0XxWUvP6abjHta7A4TuogN+Inw+AeKvST2rX8=;
 b=daU9qY6W++J8ACEAAXr5FsgNimnXeKHnzf547Nm0g7oKcp8rziMJ1N/BtCkRxKrIB+
 v0Lm7N/eM5c2efADV7z8FtpW8VYHpkvJ7zlvGACOCh72j78SHQB0L28Xq66y7hM8zkVy
 E4ZEBxZXYrlKhaqo6lIPFjBk7DGvYWR7oQPSCDE/mF2cFkNVanWuPmUi4rlAxxXjiA3I
 c7c8XsO3qj7511+cUM0/i4HwSBs52w5Ci4wxuIhRNef9GMfhbDFUd7liWyzsufAtoTIq
 DvvgpjacHXEHMZdlow4o1qU562S7XKFXhO25/IMoSouzSXby3RYl++Mntjj9eQIyza7z
 /dyA==
X-Gm-Message-State: AGi0PuZDpya0KuUO/8+1H4YfWzHp7FrLq5RUgGX9J6qfoiPWEeVHKryD
 jtD/CRq1mOglWYyrpJSrkACyJA==
X-Google-Smtp-Source: APiQypJ5w0jIkk9TNeGTgbLsSl7iD17zkDITUusCBji+wndwzT9z5UrwElq+jr6HWA18Jr9/fIejuw==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr4328740wmm.131.1588078245188; 
 Tue, 28 Apr 2020 05:50:45 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 q184sm3246115wma.25.2020.04.28.05.50.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 05:50:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: linux-media@vger.kernel.org,
	hverkuil-cisco@xs4all.nl
Subject: [PATCH 1/3] media: meson: vdec: enable mcrcc for VP9
Date: Tue, 28 Apr 2020 14:50:34 +0200
Message-Id: <20200428125036.9401-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200428125036.9401-1-narmstrong@baylibre.com>
References: <20200428125036.9401-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_055046_511135_EC34CECE 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Jourdan <mjourdan@baylibre.com>

The motion compensation reference cache controller allows caching
parts of reference frames for faster decoding.

Fixes: 00c43088aa68 ("media: meson: vdec: add VP9 decoder support")
Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/staging/media/meson/vdec/codec_vp9.c | 31 ++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/codec_vp9.c b/drivers/staging/media/meson/vdec/codec_vp9.c
index 60e4fc0052b3..897f5d7a6aad 100644
--- a/drivers/staging/media/meson/vdec/codec_vp9.c
+++ b/drivers/staging/media/meson/vdec/codec_vp9.c
@@ -854,6 +854,36 @@ static int codec_vp9_stop(struct amvdec_session *sess)
 	return 0;
 }
 
+/*
+ * Program LAST & GOLDEN frames into the motion compensation reference cache
+ * controller
+ */
+static void codec_vp9_set_mcrcc(struct amvdec_session *sess)
+{
+	struct amvdec_core *core = sess->core;
+	struct codec_vp9 *vp9 = sess->priv;
+	u32 val;
+
+	/* Reset mcrcc */
+	amvdec_write_dos(core, HEVCD_MCRCC_CTL1, 0x2);
+	/* Disable on I-frame */
+	if (vp9->cur_frame->type == KEY_FRAME || vp9->cur_frame->intra_only) {
+		amvdec_write_dos(core, HEVCD_MCRCC_CTL1, 0x0);
+		return;
+	}
+
+	amvdec_write_dos(core, HEVCD_MPP_ANC_CANVAS_ACCCONFIG_ADDR, BIT(1));
+	val = amvdec_read_dos(core, HEVCD_MPP_ANC_CANVAS_DATA_ADDR) & 0xffff;
+	val |= (val << 16);
+	amvdec_write_dos(core, HEVCD_MCRCC_CTL2, val);
+	val = amvdec_read_dos(core, HEVCD_MPP_ANC_CANVAS_DATA_ADDR) & 0xffff;
+	val |= (val << 16);
+	amvdec_write_dos(core, HEVCD_MCRCC_CTL3, val);
+
+	/* Enable mcrcc progressive-mode */
+	amvdec_write_dos(core, HEVCD_MCRCC_CTL1, 0xff0);
+}
+
 static void codec_vp9_set_sao(struct amvdec_session *sess,
 			      struct vb2_buffer *vb)
 {
@@ -1267,6 +1297,7 @@ static void codec_vp9_process_frame(struct amvdec_session *sess)
 
 	amvdec_write_dos(core, HEVC_PARSER_PICTURE_SIZE,
 			 (vp9->height << 16) | vp9->width);
+	codec_vp9_set_mcrcc(sess);
 	codec_vp9_set_sao(sess, &vp9->cur_frame->vbuf->vb2_buf);
 
 	vp9_loop_filter_frame_init(core, &vp9->seg_4lf,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
