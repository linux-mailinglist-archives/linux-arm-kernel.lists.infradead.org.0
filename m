Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1992A684
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9We/Y/jKrqNH0kzwTKh9Q50JKCN7pj6htW7/hKlrGp8=; b=CmDD0O1WGAV/PF
	tbY87hlZZEKxMaY87BBw2AsV87P/K1OgEBeUoPB1STb0akwbtoWaauZnCqgWTCt14MJsxWfF5T1KK
	XsZS5jBR7FOp028aGmOC+LemJQhEnJDufQBvooEBjeIkAMEDfIEMNDyo4KQergWwZaOE+EOaNXnef
	plhOKR77wnCegXizL83ICa2gokpEDH4rwaZinorDV3wDCsGRBT1q/+/4NOdg48pUGvjGpy4W3oVbs
	GbIxeXyXf76nEunynEPhR2NtDuQ9JJeKX8sFNAZcAwkTeD0wHSFlb+cSf2b+ixq7LUSfbp/Z8MKHM
	+3sqHvmi2wPwAwMV1G3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbQV-0004Vb-Pg; Sat, 25 May 2019 18:29:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbQ8-0003xz-6H; Sat, 25 May 2019 18:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n+PNcF82aHvSsVWjJ6xxGU5P+zv9rDQAJYSA2FkuCyI=; b=BiOXZrxutnRNq3BIucJLphmMI/
 pZaiyAS5FyzO5tWZx9iN9YFqK1spn4b0I/TxhYYqmOf5kt5Ocyx2KHHmR68hN8zsl9HE7C9ey4XrM
 4HGG1sa/vNnSTgGara7VPdsWq8STF6WhZDgCYuws0dHPrPYpiD6cHmrmsl2dEOYWKhjW7m38oV9KN
 UPx/qKYuQja/0QsZRi6FAXFknRMdsj9mHF2dfz1pgKJRZbYWCU7OlDHjlz6tvt4L6GNM+Hk4xCU5L
 EJWt0eqJ+P2u42mTeTpA+aMcENVVKs6sINdTbFahx+krHi0NhLbfU7mYXLwhIz+ygBlpeC4wfw1gf
 zgoGgE9w==;
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb93-00025W-He; Sat, 25 May 2019 18:11:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id e19so4164338wme.1;
 Sat, 25 May 2019 11:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n+PNcF82aHvSsVWjJ6xxGU5P+zv9rDQAJYSA2FkuCyI=;
 b=HOmH0HDkOr7SXnhIcKjEbMv5hPMaXwl9juWT/B/W2aqGGjOVQIs7AHYGMWCPwm/t4e
 Y9sFFjPKvWUkZvJs9lBPO5VekrHnjKFfFYeVP/x87C9QTOtgKpc3iSgm0lbbQVFazFWh
 YTvBXhbKt3wpBTV6JUp+0QMqVAOTiQeHQh1DUiSASdV5iLuuDjO5x3IoBXRBowoZ1gm0
 Ab+rr6jnRMxNrVPd5gfDG9V9RrQTDjfUiUO8spS2+HSu+89X0Kr4sQGBnC8VsoZ5UI+2
 wNxBUUSFXZCqPQfH61jVjEN7AKzhyzw1XmvSIfkW2lnTwukcYpWUgZFex6esZi28j4Xy
 XERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n+PNcF82aHvSsVWjJ6xxGU5P+zv9rDQAJYSA2FkuCyI=;
 b=PMpYvQCaleoocLOhngdekmGyk32vFHI7Y8PMFLlxHeNFVoXTiu2CVGrsQUWYN1sCXy
 DH6nkTRkl2n2zlQvGbs+/zd0tLJxUqnhKIe6ccE8ktyzv4rw5ETcpxwlUEPYB8/g5m2M
 HwLKclfivpZMUrvKkiKhdfxslPQjmgZldlWGgGasC7pEgjIdR3jsi1tREWbrohC/myls
 y1xVgHQr8ZNxZ4e1oAf9CmIRc0mu4E+ovpOY/kA7zTbqLE9GM6w3oAW/qmga3jlkvW0o
 64tFFu8rgZwEiep4UJGM8FSZ+F1ioW5JjXvTZI4L8vN6b/xjXCcSPD9HOfDq5tYgnahl
 6YJQ==
X-Gm-Message-State: APjAAAXDJTx2GcScOGJbUb/l6+N5tNJrQhKftvH7M1gE9Py5hlFRGTes
 BsvQhDxLcLPmJYb+McHb8m4lbr19
X-Google-Smtp-Source: APXvYqxoBz1yNBbK0nsIKKxkJ6BPRwZafE9Jtj2RJXjDTEjHPteUwQIKRJc58Tq/sxZidVq4F1k8eA==
X-Received: by 2002:a1c:cfc9:: with SMTP id f192mr7147926wmg.19.1558807907359; 
 Sat, 25 May 2019 11:11:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 03/14] pwm: meson: use GENMASK and FIELD_PREP for the lo and
 hi values
Date: Sat, 25 May 2019 20:11:22 +0200
Message-Id: <20190525181133.4875-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_191149_667103_50ED4351 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

meson_pwm_calc() ensures that "lo" is always less than 16 bits wide
(otherwise it would overflow into the "hi" part of the REG_PWM_{A,B}
register).
Use GENMASK and FIELD_PREP for the lo and hi values to make it easier to
spot how wide these are internally. Additionally this is a preparation
step for the .get_state() implementation where the GENMASK() for lo and
hi becomes handy because it can be used with FIELD_GET() to extract the
values from the register REG_PWM_{A,B} register.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 35b38c7201c3..c62a3ac924d0 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -5,6 +5,8 @@
  * Copyright (C) 2014 Amlogic, Inc.
  */
 
+#include <linux/bitfield.h>
+#include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
@@ -20,7 +22,8 @@
 
 #define REG_PWM_A		0x0
 #define REG_PWM_B		0x4
-#define PWM_HIGH_SHIFT		16
+#define PWM_LOW_MASK		GENMASK(15, 0)
+#define PWM_HIGH_MASK		GENMASK(31, 16)
 
 #define REG_MISC_AB		0x8
 #define MISC_B_CLK_EN		BIT(23)
@@ -217,7 +220,8 @@ static void meson_pwm_enable(struct meson_pwm *meson, struct pwm_device *pwm)
 	value |= clk_enable;
 	writel(value, meson->base + REG_MISC_AB);
 
-	value = (channel->hi << PWM_HIGH_SHIFT) | channel->lo;
+	value = FIELD_PREP(PWM_HIGH_MASK, channel->hi) |
+		FIELD_PREP(PWM_LOW_MASK, channel->lo);
 	writel(value, meson->base + offset);
 
 	value = readl(meson->base + REG_MISC_AB);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
