Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D21DE7E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+k0jWYg9EoLSQQRCPnB1TTaJ0KWthpo5tieIYXZNJ6I=; b=YzAlLLSJ9KNd24
	l3MDttY/ETJJTM9lx8d9iEXETU+7EmYPqkI5p52IMfsmh/f3/5CG2vDqHrn59vJPvvjVBHSPAHC0F
	YR+MKu51cqusYT1wWaJ26/vatGffFmmiMdHARXNdoCOrlH3FOOxw1NWXJsjjMBTm2YyjNmwknNZhY
	K58LP8JeE9ME2hvWkUfs8qCP3tfWKj3yeibSbsQzAU69RiLbTvrdmLPlopWwSu3y2h41re11Ihp20
	uOiYA65UcSEHz4dY5aDJB/sxxi79ojl2MzipCSm0a/UeCaJvu+OnBKxv0y6FdpM0PenwOMoxvEiTg
	pAKN/XxUev6THsgt+WVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTqS-0005PV-0s; Mon, 21 Oct 2019 09:19:20 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTmZ-0002jv-NF
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:15:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so12380980wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 02:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9GArC94tXtiJFh0r8bnfgE0ceBz2txRHJ4czY6jCpvc=;
 b=zLJ1sNW98uTrAiqwDlRmxdBuL/WNQhLcBQSh4C09UdFrgGjdahB/yXyD+SM4jTA8fl
 ty11JCqJSL4udvI3sCbpzuDfEUeofEQcAHcxtRSIN16R6dovtB6g2zna1NuDklI9YziX
 xL7mcG4SgF9yS4Z6nw1psLfv65hAC8wjtTdKnwPNnCGR9aLr9Vt4puigr2co/HzFNqe5
 8jcysH7m2FHMbk39IplnJYO3oREab9XI1IbB1j36fcoVIbIr6EyvKwz9TGrcLESPxe/4
 58g2HIrRMfCZQgIv1zBr9t9t2qWAS+v59aH2ns3x+q6YaDhf2XdX3RyGo9Y/LCIdm5Js
 djZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9GArC94tXtiJFh0r8bnfgE0ceBz2txRHJ4czY6jCpvc=;
 b=t7O5+E7mcKCjy4FwqAspmGBhlvVfjlfHjxKYz5v3uts0kAZ5FLr4KZ/acIu7KjF0wO
 Ch/Fneuy3SqdAVpHfbvj1jGFVo32/Lpnuf6qBfXQrQN9eNwIKOeQvyrAwBTh2lyZA+/Q
 cruz6IQ5wYer14kGNgDHbPYRXrD61ZcD9y1+Hsy8XwEObLto1wXcYUImofwtC4e12JEE
 3gOOOWrx/LHcFLgO9bZzurrgS3d2mwzR6q82Uiicqe6U5WIQSQ32onykeYUUd9ItGkW1
 QlgAUm7sc6RFTkytAck+XBxzAgvlauJwScexh2+xmx3eK15egjiZtpgy/M1PtAk2hRif
 6tAQ==
X-Gm-Message-State: APjAAAWwWNVHHvCJV4yQbaD4tJLLWU06cFPdL1Z1XYvV3TKjpySk0mN7
 TTlcdvQcPmh6vf0aa/jeCkFeDA==
X-Google-Smtp-Source: APXvYqzgonlD2CSV/QcUQqpRcy/V2+0lBkWclazaN9UZd0clclGNPGQqRgOwaLJwLVwhPi1zpxybyg==
X-Received: by 2002:a1c:38c3:: with SMTP id f186mr2658112wma.58.1571649318118; 
 Mon, 21 Oct 2019 02:15:18 -0700 (PDT)
Received: from localhost.localdomain
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t13sm20281595wra.70.2019.10.21.02.15.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 02:15:17 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 8/9] drm/meson: hold 32 lines after vsync to give time for
 AFBC start
Date: Mon, 21 Oct 2019 11:15:08 +0200
Message-Id: <20191021091509.3864-9-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191021091509.3864-1-narmstrong@baylibre.com>
References: <20191021091509.3864-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_021519_950448_6A3E6796 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 ayan.halder@arm.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
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
index fc246248226b..304f8ff1339c 100644
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
