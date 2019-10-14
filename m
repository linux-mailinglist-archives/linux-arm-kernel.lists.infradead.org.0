Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F5CD62CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZ5NGCKRXBJuFBzImmYEvrwact5jMXZndjrc2y+JEh0=; b=tljp3DgMmWosIj
	0JYpHMLGBKtBRrYBPQop+bccF/j4UuTosdCCjc2Y9p2jQ8BT+cKHwUhv6ov36utE68jr0ASyYC+vF
	S4I89FXGvjHVRdk5LtiEQnjZQvYcTiaGgBOju9csrRjRtsxVQJrlmE61QDdcpImZ8PUTzfKH4HyPO
	K1VihZpvdwf29KSu7YXfE40g1AiDBERh/I+IvRlMvKTSlP0KXsb0CkyFMBHcX/ECtaiHooTeaSV2M
	uLLPXbC5QyWyp8Dg6tPnYd0rxQDqjGj2DYYKdZizOm3KB8nGA1K9yw2IfIbN8NPSYAWJ0dQa12Uy3
	tP40jD52NVWQsDzNJUMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzez-0002ou-ET; Mon, 14 Oct 2019 12:41:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzcS-00085O-Ve
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:38:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so19570051wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IAnG23BH8wEYd0HfQqSBBE73oP4oxu8SI3nR4a88olc=;
 b=qlmGx9bxhJeSbrQJddAhEwZxnmonu1PxJ4zsKPBmg+4kWn7rxXwIpeemyL5Cjo+Yi9
 N1rVcNC3VYzbfasdGmj2x8dxdnZFDrVCNQ9HosWe26JRUk2gVsG8wPfDr5QeUaqw0mot
 10QWWOyl8uobs/eZZJ0Pqs5pBDimJ7SVMW9OjqOLvjvUgGqox8u3zJa6BhZWrdCEil1a
 MAZoQcmpErLwuKoBb1Ftpqgag1Rb/8hpsFg8771ut+YgumtfsrRuAzJuxG+MYXMdjOhr
 7qZ4tSnnKDM8BQ4YIW/TOx6AQolEB1mblRxkHknbQVqKevuevSx6PffElFxZSQCx9cb4
 xO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IAnG23BH8wEYd0HfQqSBBE73oP4oxu8SI3nR4a88olc=;
 b=Hr+2e1YN15R9tL1x+KYssw3pumWzTLnhBWshV/bgXMcJ27n/XWBUNNqz8mhAqQZ7MT
 e5Wbrk8CHTLG2Pj9iS57Wi3CqbjYjYF1A433UZl2rb8PJ3qP8PUlVxI0DEXrgMygEarE
 h6IvnAfg+cHdzUz4axvbslSxxeRxoDa6c4rALD9LqgCFe0mrzU5QU0WQXgIf1oCVgTgY
 v22KV0Orae4s59z+iU8FfiQ1dKs+k+zYPUtXAvIJMroKACnBxQT/MvCOejuYcKFSWVjU
 qzWn6fGAOtmhOun32Q6BoeXvNR/BQ/KA/gWiLWz2fd2QTqbALSinlrocJlqCsOfTlqEK
 +9VQ==
X-Gm-Message-State: APjAAAVhZjrBpKnS3gEnyKpOhIWNYwz9c9F1xM4riB3bN8Yuvi8ID+nq
 i5cMq9nrjQWzWycw3I4FFJcfvA==
X-Google-Smtp-Source: APXvYqzF9XZTNVOAr8QblCl0cKPXnEaofywqCkysNDWSl6nAGgBWpvNdpKzrOBdT7IUuUbl+BIXXFw==
X-Received: by 2002:adf:ebcb:: with SMTP id v11mr23975630wrn.24.1571056715631; 
 Mon, 14 Oct 2019 05:38:35 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 3sm19171203wmo.22.2019.10.14.05.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:38:35 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 6/7] drm/meson: hold 32 lines after vsync to give time for
 AFBC start
Date: Mon, 14 Oct 2019 14:38:25 +0200
Message-Id: <20191014123826.27629-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191014123826.27629-1-narmstrong@baylibre.com>
References: <20191014123826.27629-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053837_025121_8069541D 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, ayan.halder@arm.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using an AFBC encoded frame, the AFBC Decoder must be resetted,
configured and enabled at each vsync IRQ.

To leave time for that, use the maximum lines hold time to give time
for AFBC setup and avoid visual glitches.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_viu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 07713588063e..0a762046699b 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -438,7 +438,7 @@ void meson_viu_init(struct meson_drm *priv)
 
 	/* Initialize OSD1 fifo control register */
 	reg = VIU_OSD_DDR_PRIORITY_URGENT |
-		VIU_OSD_HOLD_FIFO_LINES(4) |
+		VIU_OSD_HOLD_FIFO_LINES(31) |
 		VIU_OSD_FIFO_DEPTH_VAL(32) | /* fifo_depth_val: 32*8=256 */
 		VIU_OSD_WORDS_PER_BURST(4) | /* 4 words in 1 burst */
 		VIU_OSD_FIFO_LIMITS(2);      /* fifo_lim: 2*16=32 */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
