Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A86D2641
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 11:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4pwXZMItfhKh5N7Syfu75ItDHq9DyeeyRCHyyTQbmo=; b=TQT1dlF9wedR20
	XDXiv484lzYypkYoRy4yAX+M2ssnj5D59ap9jmnLycs8xB+GoORy0PIJbZPjXuTXL/4Jn6YqEEgsj
	ItgV6MuJSV5jko5/9pH7UMHjj6AUxur+u3efj45g+tzGZeJTKYXa83OTJPJPhIYBYGwuXWts70efg
	MRPFZZ5PEfkvfE3c85WCh7jFjKqnVLMXKHax0VWthKjaY2SvrWB6F0nCdg9gmolXotQWqU3dz/vPd
	TVGPTUua+KHQjw6Yco4FCp4d+Z7/FXjWNkLJ89t69+MPvuAxo/uNLFy2tkNNOXt/3s6frbdhZe7jc
	QMfR2KGK0GFIZ7SF9uKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIUib-0006up-7t; Thu, 10 Oct 2019 09:26:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIUhT-0005zu-6W
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 09:25:39 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so5964478wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 02:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f3ctIUvz8ki//w5Qhjxnv27+ll8g0IP9/N04IDuTOJg=;
 b=HRdZC/s9ma3pxudoYLPvW0srlLgWrP2X+EsMV9H/qDvISXSM2jtJofXSsaHooSMI5A
 BfJHSMAWgBzVicA25C+sSGTb37kLqxiO2lYczi0iecPFplu6o/F8LOLKosRKSEBPiJbL
 HgcIO0pa8Vli/y+bAkSF6+y1tnvoBpUqbX/2jrMkHp1uhbHCnAAEtLF25aTEAjVDm9PT
 gIuR8ENwEXeOT8nLOX7VVyyidjQAZYAWK9akKfhyUGb6+garI4gesqRwdKGxD4FgmL/c
 xfqEtTfPZQ5Um018FjnoDnGkUjUinBe5RH1FoFB7a08vZPOKBe1nrxN7h5RS2+u9QWQ2
 hrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f3ctIUvz8ki//w5Qhjxnv27+ll8g0IP9/N04IDuTOJg=;
 b=S7EezLcYEEqPjSRAhnzU60Blc5YEjSVo7LRhyf0/QJ6ApDAIxUnTbhGiQzWGifhYbt
 qap4IEarImHuZj4pxvsApjGT9e+EFenVZORCyeQ/iu1C353Ww6v/s4Dz94KMox1xK94+
 cJv7piPc5pi3hOIcsnxR3T88HRzNyIP1+mM+Bon7iIWmGH7kqwVn6iZwd0ONQD9ZtDJO
 5J+W/s+/6DXrrQ72RS6tGrKVF3NUfQww+pYohAieDIO5oG33N45DJVHOmin2fm+AxSyJ
 N0zB9KyTMreiaNfFNquI/8lNM4zSKFyDjwWFW0tLA/6p+NN1NLK2cL637xq5RwDrUO89
 u/Ew==
X-Gm-Message-State: APjAAAWPqBRoFaPeGOu3MhDlGDmBMMsRzH9LeRCD4Dy9p79I8n+xxtde
 0q2ZBqX0HNEGpHUUxVhB9elcgw==
X-Google-Smtp-Source: APXvYqzCX+uR6yyZpq/jmdYp7epbZRPT1skB478yR2lPA9B3rxQLF815d5TEzrTMYDsCwtjdf0jD4Q==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr6595993wmk.135.1570699533878; 
 Thu, 10 Oct 2019 02:25:33 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s10sm8373770wmf.48.2019.10.10.02.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 02:25:33 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 6/7] drm/meson: hold 32 lines after vsync to give time for
 AFBC start
Date: Thu, 10 Oct 2019 11:25:25 +0200
Message-Id: <20191010092526.10419-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191010092526.10419-1-narmstrong@baylibre.com>
References: <20191010092526.10419-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_022535_253060_E17DD15D 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
index cdd4962484db..be535e23fc99 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -414,7 +414,7 @@ void meson_viu_init(struct meson_drm *priv)
 
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
