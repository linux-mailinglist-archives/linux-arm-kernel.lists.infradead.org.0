Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DB3178DC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jiB//U/CkN2D/DDLw6uT6MToorfJJB+MUmaUIW1+E4=; b=pXWshks9tqxMrJ
	k47+vmvydhfOUphptWlUnWCXV11G8MLFieDLPL3/pD9bbz20T568RJRngQdvtJ76XHnTXgruAUd54
	+sCFyFd+//Yc0THaRFyIDeapSPZJXzPJfNlMBcO+3UVfVArBBN5sJ3N4zoyhsNB0MlLcED+Lq+E4s
	TxBweEYGIu1t+AMqf0Spq7MKIZrSmrTu8TM06sLN8JK0BoRhkLaLk7itrUdxTmi5QM1gJ5VaTt+fv
	xa94o3YMCOItme1mM5NDlbt0cbH+GfRpFW4b2RSXs51CrSL176/QxPC9voOiV0lUuwcY9k1DxhD7G
	yezGvcTYUFRx/gl5vAxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QcR-0003Us-UD; Wed, 04 Mar 2020 09:47:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Qbr-00039X-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:46:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id 6so1218742wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 01:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jIQVieVu7UoENPR4ohx8RO9hyM5Q2LpZgT/s7fhmTzY=;
 b=IkPXgpK4xQ3HN1/lwVgetOzEh4UKm3I+9vyeCcCPhYG1sgxmm/ZFGWaEZKCICJssig
 w3q97QiB8Uqqxfw515+wbeZRdtgSkKczNxTt5VK260CBa/OIyFD5LgXhPlbWMHlkSaxp
 zH3P9zMqOTvIe35eja5Mr64XZgKTgp1EC7Kph8B6J6PMWq19RaTgiFzMKEe+fBdepN4E
 bUmZay3pi3XOLqH6dM8Esz+Of29D57PB93+lRseLxicDlW4Tdberxde1nVkX+qLwEBKv
 oeCeoI5RyPCWOgbD5aazF7HM5AC4Q+y0MfZxEoTTdO5mnsYsI6jQKoVdemXxk0mKXcSZ
 9jsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jIQVieVu7UoENPR4ohx8RO9hyM5Q2LpZgT/s7fhmTzY=;
 b=C5W3yC+2dRgX4Vekylwhmvt0JTwo7TVRPUZPELYJrKEpyPK9MsKMAdSsgSnhx3Sx4p
 2yrthmmuXdZBjDKP889AZL54cCQYxkCiNGvvP4bbIhql/j7YukwVVhusXXb2blRvDPtx
 kJD10lWoJv0/XHjiJe21JAKP/1GHtdaAv6GgPbKSLdbPVF5cMHN39U0l/vh3Nx4Y2BEQ
 jiwRYqCmXTlIbrConQdHi1YDAbHCEm4YhYtN0+Abo6MXNqUlA2X6ptOf8gAx4AJ/jGRI
 mcdEE7WBkM1Y6k1gKCt3++8kWxRUe9HNVVuE7mWJEP+SYuaip5vLLDSl71mMPwiTqHwv
 RYKw==
X-Gm-Message-State: ANhLgQ0zEeWVSTDS65T8PQcJPhsMf90OYq69gpNgKRg9bt8HLjAVtPjQ
 eDRFA5npv5AHmghRN8oLVlVxbw==
X-Google-Smtp-Source: ADFU+vtiBXyp3FrhG2ndaye+3pwo2YmBsb9/Ig1njs7KOUzdF8wkPe/vUfOi1SiSTAHUZP5TDGVuSQ==
X-Received: by 2002:a05:600c:2241:: with SMTP id
 a1mr2786991wmm.59.1583315194019; 
 Wed, 04 Mar 2020 01:46:34 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id b10sm38696107wrw.61.2020.03.04.01.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 01:46:33 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v7 2/5] media: meson: vdec: add helpers for lossless
 framebuffer compression buffers
Date: Wed,  4 Mar 2020 10:46:22 +0100
Message-Id: <20200304094625.2257-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200304094625.2257-1-narmstrong@baylibre.com>
References: <20200304094625.2257-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_014635_734991_EC124CF1 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
Tested-by: Kevin Hilman <khilman@baylibre.com>
---
 .../staging/media/meson/vdec/vdec_helpers.c   | 27 +++++++++++++++++++
 .../staging/media/meson/vdec/vdec_helpers.h   |  4 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/staging/media/meson/vdec/vdec_helpers.c b/drivers/staging/media/meson/vdec/vdec_helpers.c
index 3f7929c54dc6..caec0fb60338 100644
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
