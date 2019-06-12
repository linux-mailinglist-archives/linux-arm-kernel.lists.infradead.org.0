Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C9543091
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5Wkv3+VX/HceTrSYeUyP+WT148eDfCt61DgV8kWOqg=; b=djp80D16riQAd0
	PfbAZCM4bbrj9h6h6Ol6/e6IbqcYSoFYI7v8xZSYySIzLWaCh+nJg00OJfTNbgVjueerLfwx1qTYF
	yAYOZ/9iuGEbWpkgRAkHH9DgN0omnOj/urCimodCwKotMtwVwhnoZvGVhRzp1LUVgM58mRJeJ1mhF
	rv8kAfiQ+fOO+Qh8TuZBzbu1ao0X30gD5rX36uJwHgxipxTkS62UmYBN08RWnf6zFFIxveeb17CK5
	ajsNyWjuTYIesBHmwq2t7JsQa3EgGrMgYakSBuk1x6Ygckn4FXacWK4BTwgkpmrbiG3i9bYPx+9Kp
	dMs5zb8+VE6oVnUxwNNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9R9-0007nm-52; Wed, 12 Jun 2019 20:01:35 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PE-0005GY-EP; Wed, 12 Jun 2019 19:59:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so18192915wre.12;
 Wed, 12 Jun 2019 12:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O2ZTxmecaI8j/nsEN2U3OFIk14R4Cf7/mfp7zpgoLfM=;
 b=Q54uXWSOBp86x8VIy7nD49eWrt7nKUUASANXF9km1DmsBhbyaAeGqKorOE3GG77GdY
 1b8zuz7QBFDif20RA39AvYgTbw9EqS1cZ84omHdCAaYuPezVE1afE5SkcI9/UOuM4mQe
 6aK9oArhU8EW2NLW/OnK6ulTCIeb19t+xYmobb2dA/r1ya56pxkV2ipcFoAG0JWS5Kz+
 yZ0/dx0N+2mf68CXrlV54vzW5GVzbzP9CoxoeBC0f0B7rJGcNiS6sX6WfkjrSbtBLADL
 L8M/R0KL71oi5Hd1bhAeXKx7GcDlGi9TqtmmpPzJ77OyZEOuQVnfXE/WRsGsnH2HnYl9
 gsuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O2ZTxmecaI8j/nsEN2U3OFIk14R4Cf7/mfp7zpgoLfM=;
 b=XfxcgGM3xhVx9zEHZ3j6w+cCgqeZ4U/Bw788MuwIZGl8xB4PrlazFsK+WsphaLxCfw
 ic1Wr8XJe9yPGBxVSy43JYcL0r5M2O9XkHDgt7C5O5J8Xh1Qt0CisCGDdwZwr30Iw/iz
 BIsIIu97C6iZkZQPToiHtmyeS6qfAsqK9QndvBGEzOp+9vj0J0QoyXF0m5r7Gy5xcax9
 2BI+W7h66CYWf5qunFr1quZaviWueF3sPqVvQDadonu/1aNi3QudNuVPa7NEJf42G6p3
 d/dDcO/8KcppJJ1HFfauvfsykFI1fGYn/eX8uYLb5fsC73eX1Cdm7x878QNsZF1OpDUw
 jKdQ==
X-Gm-Message-State: APjAAAXaf2kR+B8bzTq5lj66si/PzYL4MJcgbnbpyvRR5K4VHA6E+gVc
 T7IiZin9FOIhnRRsK6ZkprhLCS7w
X-Google-Smtp-Source: APXvYqyspO3oY8Ipnq8K2E0Xl8QIVawbGhRqNZsLBv7lCAtvqLpJOyYoNB7zK5F7Udq8+Q23sINe3Q==
X-Received: by 2002:adf:ead1:: with SMTP id o17mr10900777wrn.176.1560369574888; 
 Wed, 12 Jun 2019 12:59:34 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:34 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 04/14] pwm: meson: change MISC_CLK_SEL_WIDTH to
 MISC_CLK_SEL_MASK
Date: Wed, 12 Jun 2019 21:59:01 +0200
Message-Id: <20190612195911.4442-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125936_522214_3FDA14FD 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MISC_CLK_SEL_WIDTH is only used in one place where it's converted into
a bit-mask. Rename and change the macro to be a bit-mask so that
conversion is not needed anymore. No functional changes intended.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index c62a3ac924d0..84b28ba0f903 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -33,7 +33,7 @@
 #define MISC_A_CLK_DIV_SHIFT	8
 #define MISC_B_CLK_SEL_SHIFT	6
 #define MISC_A_CLK_SEL_SHIFT	4
-#define MISC_CLK_SEL_WIDTH	2
+#define MISC_CLK_SEL_MASK	0x3
 #define MISC_B_EN		BIT(1)
 #define MISC_A_EN		BIT(0)
 
@@ -463,7 +463,7 @@ static int meson_pwm_init_channels(struct meson_pwm *meson,
 
 		channel->mux.reg = meson->base + REG_MISC_AB;
 		channel->mux.shift = mux_reg_shifts[i];
-		channel->mux.mask = BIT(MISC_CLK_SEL_WIDTH) - 1;
+		channel->mux.mask = MISC_CLK_SEL_MASK;
 		channel->mux.flags = 0;
 		channel->mux.lock = &meson->lock;
 		channel->mux.table = NULL;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
