Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090D51A530A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 19:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZZYZXsvi/JPDAHfNFvuOOKZmDnqsJyoTR5Pco/xe6A=; b=ENc2Y12IF1cJj0
	RfJTeb19FM1t19T2gpEPRTjDKfqEkU9Cn3B7fvInMgcJSWGlZKsvyY4QTrqkvkEkK5k02pcLe7+OB
	OhMIBeWGnmGQy0cJfQUUnu1VAZ2tCEvIOSCCdL37DjCbKQBsCvj8jr+oYlolH9rgmUwM4di5uwdAR
	p913NGGU71t1RsBSdpK313D2P3eQDrD+CnX3yMMxyUFYzzS6vvCIkmgmLiRMKd503tMeIrXmpjlmK
	67m9IDhUAzeIWG6b1KFUURDZX3QmnDNjnpwLuSCmlZO9uyb0wjN9oDNPBcD8xzYIMazv2zHKT9cJZ
	79OBp+bwBW9c6jQStypA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNJYo-0005Cs-US; Sat, 11 Apr 2020 17:04:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNJY6-0004dm-IV; Sat, 11 Apr 2020 17:04:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id s8so5610054wrt.7;
 Sat, 11 Apr 2020 10:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0q2fKgSBRhLM1xO7rLbH5yRPkbOobCmPZS97hpoNVA0=;
 b=PZ/NpT7+fJNJfMN8f4fzRXEbqHEHmtUZk6vVaXMRrEoo/FHzhgPkhzvoPjlqfFoJOi
 3U2aA26CFcYr4LFkJFbFByB3MM31E2Pouxz+6LNJhMmZ0Me1Wl61n7PGgBueel+BH1sR
 xlrgIOHMVa8Jnd9TS4sJGVCun+h7mELpPtE+R1zunW7VFnLoAc1Zz8khIjw+N+xnEsQN
 YWHC1ijj1Gy7O0lZIrYNoqvCNXccYkcJDHVExZGYxknXNt0pSE9qn14R2pz2ICWWGtdL
 aAuBidR1XlHY1oh48gGVY94BokXCwn6ub2+XhAiCWjq8aqmJPDJwSQgq4TJtWy3GuIIb
 KC8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0q2fKgSBRhLM1xO7rLbH5yRPkbOobCmPZS97hpoNVA0=;
 b=j+nx70L60sKsQv/YzUoVPvefjLjp4v6CiNjqvD40lHB2KhnO0GVCo8EMwQikORGIdk
 Z4Ku8rcyR1BYV9sVwOEj+k5/IUTw20DArnJsr7Ek0VrcpaJXidR0WWHzO9ynFYjvt+Kx
 kPNElnbEFP82Jv79UGWAO1iFBsTspWVvcTmq3kXH8fCLRbs6tPJ+t9hoYwIVaQoCreYo
 WPzZIBaW1Ed6evP6LJXYzERjw7YA6u7JFTu4HLlvHJPGK3UTqzKf6cERogGW5HFzgYKC
 D/+GGavt2WfXsWJOWX5kbbjdp05G2hd3JGAQ268QLZYo1UJAWLMrDlLp/DJjapmEPb4O
 CgPg==
X-Gm-Message-State: AGi0PuazAWr66sa1CuwWXp3uyo1P5VVNpAG45osZ/Ggp/PVuLXJGNYou
 v/gmJb899K0QnoZ/S8qJ4YY=
X-Google-Smtp-Source: APiQypKF2Y/xf57pA4qKcjYugTlUoLUad9MGxVceyiUevVDpTs87m0hSyC03IicQqskKxYHznIcN8g==
X-Received: by 2002:a5d:4bc1:: with SMTP id l1mr11322589wrt.103.1586624644812; 
 Sat, 11 Apr 2020 10:04:04 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x18sm7105067wmi.29.2020.04.11.10.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 10:04:04 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH RFC v1 2/2] pinctrl: meson: wire up the gpio_chip's set_config
 callback
Date: Sat, 11 Apr 2020 19:03:56 +0200
Message-Id: <20200411170356.1578031-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411170356.1578031-1-martin.blumenstingl@googlemail.com>
References: <20200411170356.1578031-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_100406_613212_8B6C5569 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use gpiochip_generic_config for the gpio_chip's set_config callback so
GPIO flags like GPIO_PULL_UP or GPIO_PULL_DOWN can be used in the board
.dts descriptions.
This is required for some Meson8m2 boards where GPIO_BSD_EN provides the
"MUTE" signal and requires enabling the internal pull-up resistor.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pinctrl/meson/pinctrl-meson.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson.c b/drivers/pinctrl/meson/pinctrl-meson.c
index 291f3078e7c7..079f8ee8d353 100644
--- a/drivers/pinctrl/meson/pinctrl-meson.c
+++ b/drivers/pinctrl/meson/pinctrl-meson.c
@@ -603,6 +603,7 @@ static int meson_gpiolib_register(struct meson_pinctrl *pc)
 	pc->chip.parent = pc->dev;
 	pc->chip.request = gpiochip_generic_request;
 	pc->chip.free = gpiochip_generic_free;
+	pc->chip.set_config = gpiochip_generic_config;
 	pc->chip.get_direction = meson_gpio_get_direction;
 	pc->chip.direction_input = meson_gpio_direction_input;
 	pc->chip.direction_output = meson_gpio_direction_output;
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
