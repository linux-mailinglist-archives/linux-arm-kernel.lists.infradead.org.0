Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AF50F26
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:
	References:Date:Subject:To:From:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=eSYVnsboN+DXplL0ChW6adEYP8mtjYwn/6xAPrK4VHk=; b=EGTmeU07eM2q2s
	vvNq0exenz2FmTV1E9n4E+d3dp6PI/deSca1VtUJRVE/F3kw+KpZn47SAU7t72tnIx3omoVzfXKRX
	rc2AjBO8l4EGGWOFuHRz232CgUufBvP0EfgCYn47CJd2MWGogJiujpfrqpp23HUioMqebhoJcphwC
	CD9HHfgPm+6wVni92GZfJGERo25h7oDWzOMQg0UEv06rXCZRUFFdhg+Mgz4fqZwMiZU8LgqrDtmrX
	m1mZf+ySnIzzfzZCZb9ERKSjlt1RwjFLrWxju0x6AjTHMezPYlPzvAFObdW3p1anG9WItWr1xAn3K
	JhVOdUaDsBb4SWkuha9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQK5-0003Ey-Ca; Mon, 24 Jun 2019 14:51:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQHR-0008JT-DD
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:49:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so13668596wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:references:reply-to:message-id:mime-version;
 bh=+1HDQZviZEdEBIaZ3+cqb2NOlWyANG1RyMLvCgYrlxQ=;
 b=f+kqTndKvKQtaO3uX+rPt78/8vXst8PI3NwjdbB1DABotaFBkHQIV/ydAjoVPhg0Jv
 I2o7qcH/kgyDbaPjhUwHSYcYOQ1yhR2jAIoeV8Yj+hFpdXd7vJUlAja6IZmU2KHUwDqu
 tPvfg05GytpLRIkXHEmKbkwKSQ3Tx2d/zbi8yEa8QCRcQIUur0lj3GsxW+eizD1wdI3o
 dgLsliZhzNRKCBjgNgwmg6A3J5pXwmfgmB9aPfLtLodYBL+RQTEix6ezIZ67blO10OPx
 YJyEaUSR1/QcRZcvtvcARhuvkSCDUHz3S6/R9U5nEJ0ZfjHASF00lpJEOyf8O1YLLdTz
 weiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:references:reply-to
 :message-id:mime-version;
 bh=+1HDQZviZEdEBIaZ3+cqb2NOlWyANG1RyMLvCgYrlxQ=;
 b=InQyu8M/8zs5E9ofV/AMgW8CvOB1I3AlRWsEP0GThn/Jyhfa5LKUeexSSkASWUpbt9
 o3nvgv7kP8N7XhxqZ7OIp6OmgK2iLfGrmyAcqGxNB5bvWJobVGwTZz7S99MEKpJRPeap
 S3zucK15wn7hjkl1fwwY4s6B4KcbsKJv95oEGpGDJvlunBrU4GzLopXTlnvIrLDhHpO9
 60uNj97/5HvZw/sCOaFVViiAGp3dBcNUdIEL/7VMo2PAdGErgP78I8q5AkPTEBSiVaSd
 Vc5QCgLX1G3L2rpO8vW2wCAJ4A5DWQcrBtIziehhkpBK4lg4uHM9EVp7yjA/XAY4eR/i
 ClKQ==
X-Gm-Message-State: APjAAAVZQqT11nreq4JdBVdEdw2V6hxVQqNDiHH50j8GGxX5+kZlR9pY
 qA8HIF9KbzKgtcUMiXG6MEajPw==
X-Google-Smtp-Source: APXvYqyKFT1ZDPov7FN01BjdxpOOg83+Hng//XfE/Nmzv8hToft5RZH9KSY96c9YR1WZPkYlwxu+Iw==
X-Received: by 2002:a1c:343:: with SMTP id 64mr17222141wmd.116.1561387751980; 
 Mon, 24 Jun 2019 07:49:11 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k82sm10654558wma.15.2019.06.24.07.49.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 07:49:11 -0700 (PDT)
From: Julien Masson <jmasson@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 8/9] drm: meson: add macro used to enable HDMI PLL
Date: Mon, 24 Jun 2019 16:49:04 +0200
References: <86zhm782g5.fsf@baylibre.com>
Message-ID: <86o92n82e1.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_074913_559098_7DCF7D64 
X-CRM114-Status: GOOD (  10.45  )
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
Reply-To: 86zhm782g5.fsf@baylibre.com
Cc: Julien Masson <jmasson@baylibre.com>, linux-amlogic@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add new macro HHI_HDMI_PLL_CNTL_EN which is used to enable
HDMI PLL.

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---
 drivers/gpu/drm/meson/meson_vclk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/meson/meson_vclk.c b/drivers/gpu/drm/meson/meson_vclk.c
index e7c2b439d0f7..be6e152fc75a 100644
--- a/drivers/gpu/drm/meson/meson_vclk.c
+++ b/drivers/gpu/drm/meson/meson_vclk.c
@@ -96,6 +96,7 @@
 #define HHI_VDAC_CNTL1		0x2F8 /* 0xbe offset in data sheet */
 
 #define HHI_HDMI_PLL_CNTL	0x320 /* 0xc8 offset in data sheet */
+#define HHI_HDMI_PLL_CNTL_EN	BIT(30)
 #define HHI_HDMI_PLL_CNTL2	0x324 /* 0xc9 offset in data sheet */
 #define HHI_HDMI_PLL_CNTL3	0x328 /* 0xca offset in data sheet */
 #define HHI_HDMI_PLL_CNTL4	0x32C /* 0xcb offset in data sheet */
@@ -468,7 +469,7 @@ void meson_hdmi_pll_set_params(struct meson_drm *priv, unsigned int m,
 
 		/* Enable and unreset */
 		regmap_update_bits(priv->hhi, HHI_HDMI_PLL_CNTL,
-				   0x7 << 28, 0x4 << 28);
+				   0x7 << 28, HHI_HDMI_PLL_CNTL_EN);
 
 		/* Poll for lock bit */
 		regmap_read_poll_timeout(priv->hhi, HHI_HDMI_PLL_CNTL,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
