Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606E2154080
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JivVpaaQabzxnoE5cR2V5qVXFQ6iVivh0GOAoM07RQ=; b=XUPVRqSIHZL7ss
	mTCg7ceTVB/kZicgdH3XwufJ5y8MIN9PgEhT5zWGZNW0NOSv+mng0SkAG8BkqoCjjjjBEyi8xisCy
	tLUjHOg4cY3CJojhSUqpqX4qEnyHeIm6abTlDjeBVrwUiTdZMRs0FEhy8S0P4GRQje8Pp7NsPrcoC
	tLohNCeyCKsEhsl98oPAZodNtXa5u9NvHVNmZJ1aH3zuO63c50sOiT0grg/lZSSNWgnGJqEG/mw9g
	xNm5gj/wO2EvOG5oskOW1pGXjqJmIjMTfpCgmrUxVYEMNpOmLUXMlp5C0wSze5z+EB3rBlYDdLMRS
	FyzTJMcoFF8GMiFZac7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izck7-00022S-0B; Thu, 06 Feb 2020 08:42:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcjW-0001aF-HY
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:42:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id u6so6099631wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WxgSke1xqqIbUm6aWbWsjJ4dv5wN++i4U64IM8ckXcg=;
 b=j+ac5GUsSJeMY/OOO6WKioMdvPzDHAK7Sst7e7SM62udReqc3+qm8W7/AS/Y6j7Msy
 KbdrwcRRRj0zMRpvvPFf/hmM7mg96Rfdf0VhoEQJcYuIsKEz7gh5J+pIENHYykkH64gK
 VrSQaGwLJQ3Yr+WmJ+DCP0fJB/LnhnX3OKZdAS37B1DlaSX7AnnS4Z47YpdmTUHgDt8r
 Vtfg1kWP0sNYd1HkEhuL+5LzwDgoxLl90wkWrPN2VpeuyLZoSAlisD0Y6q4QBGH35bxt
 X9SlOl/+fZ9JZhcWQH6io9NScUbnAKo6Zj6NRguQeavLFmgL96CPhb4MSIxe9iMiyLUf
 Ep6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WxgSke1xqqIbUm6aWbWsjJ4dv5wN++i4U64IM8ckXcg=;
 b=TdhMCzhc8YSpjf+qCI1WY/BP1MkG/3HccI+hzfSsc0fTu9HjidnRO3XJdIrIk6clZN
 CVRI5PH7ixsmatACm1FMeHy46w//ingolpZfwgQFx+fBNU0VDsheRQo29bJZM8/LfDoj
 uUNIQTpoH3cg7Y/OGhh7NjeLz7XP9Vwa5AybGCAQu1t1w3nXkGm+NgUieA/x+rosikvm
 nMtxesp2ujQJE7Jx0J5SqMGtqkcbYxFxfmEdK1gev1GauRSruj3WBdcFLbZ0Z4v8AAx9
 jrYL90dG9s47qOXFg/eq7r9CNmPmIZe8NZjkomJXajB+qHsehGL2fCtn0ePrI2NdA/La
 qLiw==
X-Gm-Message-State: APjAAAUuhhdaJK9Q4UEH8Xl+faz0Q3UpU6vHCcnGOf6eVn+inQw2yd+a
 CFM5C+2UL7Z5ZwRDqJw096GVJQ==
X-Google-Smtp-Source: APXvYqxIG6LmzTQJJxqzCkbGhckXZWo6a952zpdZN5OJLly594iVnWzcsvf4srp9zXlz5Jbm13mIpQ==
X-Received: by 2002:adf:cd92:: with SMTP id q18mr2490205wrj.261.1580978517085; 
 Thu, 06 Feb 2020 00:41:57 -0800 (PST)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:7d33:17f7:8097:ecc7])
 by smtp.gmail.com with ESMTPSA id r1sm3222760wrx.11.2020.02.06.00.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 00:41:56 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: mchehab@kernel.org,
	hans.verkuil@cisco.com
Subject: [PATCH v4 2/5] media: meson: vdec: add helpers for lossless
 framebuffer compression buffers
Date: Thu,  6 Feb 2020 09:41:49 +0100
Message-Id: <20200206084152.7070-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200206084152.7070-1-narmstrong@baylibre.com>
References: <20200206084152.7070-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_004158_579530_54D89019 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
