Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BF61229C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:21:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwiYF3zSRhNUvy08T5DxNqT8WToN7M2BIUMbpvQQM+g=; b=HxVnuI2qwb/JwJ
	W4xHoW7hiEoV/NmrdKkzZISYZG7T7N8icnOaFSXfpO8cb+ZbVKWUHxPHZbCYzKXSNyZNJ3K0LSCOD
	zksaW1eCVEbNqeRKUZtovO+nJnqjapoQHd22NpZpKW0vwJfSkbzGYq4Ag8xDUuTrBanpYrTUhWPfd
	QSuHMCDjNLOfP/ni5lCz53t5o7qbkbjb+TpJ1PRNY3vMLMqDG6knSHwVaMw6J+meR8phbHxrd8II0
	3NfMzKs0eUQEnhFjHM521sMUb5s4bknewWWos85TpnS0y9R/3fdH6wdrqexc6pjdKwKxKIlkkK2hk
	en34Aj46+oHcFG26mHWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAuR-0006BS-AL; Tue, 17 Dec 2019 11:20:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAtG-0004KC-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:19:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so10869735wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 03:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q8VsecRt+zfmEiQATRM3jixSlKuyuB/bDX0OonY2El4=;
 b=r4xyi05Z0qWvrnPsw0oetund2ec5x63QF9JMKUGqjuGRCPP/hY6McWKa3X6zDdvono
 ZWjSxLQQtLNkGZ+ct4x843+eT4sxgb1QgwdLMX83Mzmuh4Xj98lX0BggikOBpFwk9leQ
 hlfSzXTvzpWzz0+tIdxtafXKJfZa4eFa/QcamwaFxVwiKyFGNsGJarDxJlQ1Yt5TTUHk
 d/+0KjrBaBVa0RnEr/gLOYSf6d9tdfI2a3tSnwNvUd6kvjrtuRRIFEvagiv/vWp6BXnm
 KB2YAAZrb67IoP6B8X4o1DlZQhrEQv+3AARAsdM1SXwmhWsCJzKXQbBhoOuyo4qNDmhy
 0rgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q8VsecRt+zfmEiQATRM3jixSlKuyuB/bDX0OonY2El4=;
 b=U1TfnfkJy+87XBdT34+nnu4wSCNx6BG37dKHGx1XrImcYMyjC1DDfjs0JFZ5t6i5Zx
 2vCK7LLZy0JYVqX0Uyu4BHhwKeArUI2eiUw1PQb+J1vwZfFmHk2WmHVK4T9871CIqK04
 de4g1in1UjVB+LWDfvVNt7xDRUp5S/msQVS4uXSdMiGFATresHYPiglXIa8juNE/fK0b
 i3b7ONec0lzcdAtCpsFFTdGvM93y0datcOScdCHS9nBJ6TIy8Aqbk/cul2s51AqgkgFd
 ObLYGQj4WYLzOEiCgBm7fLLgbFVeSkhIeQMB2Q0vs6mR43gQxqGRJjDeggchVzbSgrzW
 /EYQ==
X-Gm-Message-State: APjAAAW3TDqxqZ7Yumk58fG7h0Xs1S3NE7jCUfeU0X35ygTIUP33/pQj
 8NI1FQ5hmjiOqGLCtERcgvvhdA==
X-Google-Smtp-Source: APXvYqzANxopZZDEUqRVRjmMrW4GDF1rSth1AhKzw2hBAkcpYmorJqw3yZKxPiKlZofK2y8ICgKTQA==
X-Received: by 2002:adf:fe50:: with SMTP id m16mr34832312wrs.217.1576581583518; 
 Tue, 17 Dec 2019 03:19:43 -0800 (PST)
Received: from bender.baylibre.local
 (lfbn-nic-1-505-157.w90-116.abo.wanadoo.fr. [90.116.92.157])
 by smtp.gmail.com with ESMTPSA id a184sm2713113wmf.29.2019.12.17.03.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 03:19:43 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v2 2/5] media: meson: vdec: add helpers for lossless
 framebuffer compression buffers
Date: Tue, 17 Dec 2019 12:19:36 +0100
Message-Id: <20191217111939.10387-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191217111939.10387-1-narmstrong@baylibre.com>
References: <20191217111939.10387-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_031946_318573_182AD466 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
