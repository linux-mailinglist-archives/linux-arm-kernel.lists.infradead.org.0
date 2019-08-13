Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC88AFFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 08:34:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OGc8bfnDaKG10es6SvT2o9aoRfJj9JZFPifNZ63nnFw=; b=OZtLMm4CklE44v
	GppN5+cL8sq5Z47GoH0PkFEJ+Thb2ttRDICZYC9gAoRA8TWPuMGpilnpYR3xU1DepfTTojnjnB4xZ
	J7dt9Crnk4A3ecK16HQNOuSw08IwjalGcA5ZejMcfEpuEpNJ33BhD6iKayyo9XV+ri8AfrkmJnbdI
	Vk5vzwZxVPBJRTYY8y7VlwcjolhrCVt85QOhmMFjrLGYdlX3mbpUtHB4AGeRYhVZ89Tc5lt1KXUq4
	SJHEM1F+1DnpWPHLbkJPIXXArnqgPWVNLQA+x+oE5GlvWdDXYX7wr7X2rZRvdNEDO/L0lQ4NQSibB
	k1N4rdAo3o3VgQTAcVrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQO2-0002JW-Ih; Tue, 13 Aug 2019 06:34:26 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQNm-0002JA-K1
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 06:34:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so5733989pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 23:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GYvMpGNobVf3AqFb3xy5KgnpYbwIyZqHqD10LEnethw=;
 b=Qg+zDHw9r6HZYqflIIV14xf3Uu6U8FtbmN0aBGEn/uk46YC4wb8qwCDmPmzGJV62Z1
 WceSQ6S+tpYamK00BOiIl+8BSOKKbH1L3drOX/2ho7A8kcRVQNICkBRRrUrO0n+Gtbui
 idhYt4DiFtRvwxoT4L5EwB2Zom7HVG2MRXG7XBVjjOy0X686r6oA6m5iAtmhn33Se0/V
 +dTEX4khpmAI4UxF9EeXYccq8z/YDXktgj++QPcTkY/wAp/Gmeq1UD+HZ6F7rBxgfy48
 oZMYoZvo+B1KpvxsYDpaGw0P8nd0PAn347JUf2dYolE9K9Z6FiVBxGLZn4t70QYVAgZ3
 eHFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GYvMpGNobVf3AqFb3xy5KgnpYbwIyZqHqD10LEnethw=;
 b=NKTfTE1XtuDVLzUl/ckVS7bdyCCrkagoaLJ3GjcAdASenHJSnbEOQbnl98eo6Had/o
 U0OyZqSTKrmiaJAg39VEGH8Xuhy9c4FVAineQ4ws20xCQUpAJcZ8RXT1gf0Fl1WXPY3C
 2/MEM+r+fOg+7UxGOAB3nAw+58XHdyXR5AtA8rdY041rNBsM2S/UZo2svXEvV3Nb1BnP
 gMBXNsYhZmYOaW8CsOb5fM+biGiyOOYHDISthy5msiNXlCQTb9GBfAJFVct0UmxmuuHc
 cE5BunU3BdljZ41jySfqxrNrDnMlD6p0hxaqkd+vOw51kNERlHxvQP266Y9qwFF9/bUw
 9AnQ==
X-Gm-Message-State: APjAAAWpi7IIjG7LuiaG0vXylsn0GceGSmyQg9TIZQQzI1RzqXOqxaXw
 A+LqDlT8EFoS7zRY6zqi2/g=
X-Google-Smtp-Source: APXvYqwfms220Vinc5FlyiGQRBQG8JL5P/Qy34knvYhc+hDf7+JQAwz3oRsAYwjQjm6J5gH30+i+ww==
X-Received: by 2002:a62:8648:: with SMTP id x69mr11624925pfd.92.1565678049875; 
 Mon, 12 Aug 2019 23:34:09 -0700 (PDT)
Received: from localhost.localdomain ([122.163.110.75])
 by smtp.gmail.com with ESMTPSA id m34sm624871pje.5.2019.08.12.23.34.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 23:34:09 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: joel@jms.id.au, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, andrew@aj.id.au,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] drm/aspeed: gfc_crtc: Make structure aspeed_gfx_funcs constant
Date: Tue, 13 Aug 2019 12:03:55 +0530
Message-Id: <20190813063355.25549-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_233410_655756_418BA250 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishkadg.linux[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The static structure aspeed_gfx_funcs, of type
drm_simple_display_pipe_funcs, is used only as an argument to
drm_simple_display_pipe_init(), which does not modify it. Hence make it
constant to protect it from unintended modification.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
index 15db9e426ec4..2184b8be6fd4 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_crtc.c
@@ -215,7 +215,7 @@ static void aspeed_gfx_disable_vblank(struct drm_simple_display_pipe *pipe)
 	writel(reg | CRT_CTRL_VERTICAL_INTR_STS, priv->base + CRT_CTRL1);
 }
 
-static struct drm_simple_display_pipe_funcs aspeed_gfx_funcs = {
+static const struct drm_simple_display_pipe_funcs aspeed_gfx_funcs = {
 	.enable		= aspeed_gfx_pipe_enable,
 	.disable	= aspeed_gfx_pipe_disable,
 	.update		= aspeed_gfx_pipe_update,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
