Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D931E0287
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n6pOJ5Kb9RXW9Lr7rS3/5T0SDD8pneWFrg/AOREUGtY=; b=hCjj+66N+SFqF2utwH+B7lYduj
	Z8OTe+RS3nerzFgnZNM/wFUDRZmbM5rq/BG9J+osiEo/rWDGaKRIbyess3ihrQQWD3qA0/RLxkQCu
	aGedeE8C5qef4s022pdnMuww9ESH8XFDXKglQYWEaSplBoynQiZiXZmxSwS/1tS/cQNQfksw1jYAz
	mbDzNRX0N32yn76giqDTe+JFDxR3us7g785WyY0u9ps5w2X2zPTvgr1vf3YD31WpUDsRd59Fu361v
	xv6Q3QmOEgH7HZc+fCvSlcCnikJK70MlwjdszLTciU61xoCZwSKkFIunvKfy45m/KA0sV/j/z60rT
	vqXXUdYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwJM-0000kN-6D; Sun, 24 May 2020 19:29:28 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFd-0006Dz-OP
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:41 +0000
Received: by mail-lj1-x242.google.com with SMTP id o14so18599064ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=kcK3yrH4g4ts5H42rI7JP7vzXPX5ac10GjBC78+fEwYXQ3xZZpe9hpb7780Aet7sPu
 xaOopB6kTv3WLbIteq/l/ZlkTGa0IIAljayEsDG5Xhf/lutDdWeg6GFCGpjOr2Vvo2B3
 qPhOFBVuH/CquAHzfHkFJFtlHJ9ice2Wgsbb5A6DxzbPeQmJQ4INkwahmq/0YipuFFT0
 GeSvG0rKpIesgav6Oft8aO4BWDVkaW9fvA+h+VgH3GXCnJjN8Q3BpRjj703BjzvdbX9K
 2A5OKmiM6aZ2Y9bR9xuRVHh3eeBWjw5O3qbZhtwhlJwCQk4aJxXA0M75OZYXxJni35qu
 tyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xeJmQRJvkh8fRKHXAH/W536lRiSffIGCx+R099ed5PQ=;
 b=iR2ddX0/p4tRIH/k6EPCZAY8N1ia176MhR+/TnJgp8b5PAr78XWSLiN9MZgwDlDtnu
 KiiLrO2WUA8CSOoVynI8jskUQiN0aGaBrO8VDYshkJuu2o96Q24QXhDOkCZ6beHZomPt
 +oFnrXGCk/9RBkbku/ZTktTPCN+8WB4VwwupFzkGgs8ux91IybOe7HFKBuk1fsIKdvW8
 GbzMlSraN1p2wmIyZgmgpAgzsou/xR1uJV90qsohvW8VK9jhMVaYIgh00Iy8LYs7MXhP
 4IBLxlrH1gI19exrz/KW3/WlfFiXvRQMquXc3Oe/WK0+0FlMdKDWJoUvsy/LKDsych9X
 xvXw==
X-Gm-Message-State: AOAM532lyPu19qYOcsXa2feKQx0fCvAgKxmNGYQo2Z57dp3osX8QFo0o
 L3eFRbI/oUt7FHrFrzs+F89Riw==
X-Google-Smtp-Source: ABdhPJyZWmTTulqXDsNX7SFmBuKS+wkGmszWbb8/SsBCZAbUcqm2vhW7VXLbW742ya3E0gZXk1U0Lg==
X-Received: by 2002:a2e:b6cd:: with SMTP id m13mr12974189ljo.242.1590348335341; 
 Sun, 24 May 2020 12:25:35 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:34 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 01/10] media: i2c: imx290: set the format before
 VIDIOC_SUBDEV_G_FMT is called
Date: Sun, 24 May 2020 22:24:56 +0300
Message-Id: <20200524192505.20682-2-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122537_896194_D6E10AFD 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the current driver 'media-ctl -p' issued right after the imx290 driver
is loaded prints:
pad0: Source
             [fmt:unknown/0x0]

The format value of zero is due to the current_format field of the imx290
struct not being initialized yet.

As imx290_entity_init_cfg() calls imx290_set_fmt(), the current_mode field
is also initialized, so the line which set current_mode to a default value
in driver's probe() function is no longer needed.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index f7678e5a5d87..2d8c38ffe2f0 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -722,9 +722,6 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
-	/* Set default mode to max resolution */
-	imx290->current_mode = &imx290_modes[0];
-
 	/* get system clock (xclk) */
 	imx290->xclk = devm_clk_get(dev, "xclk");
 	if (IS_ERR(imx290->xclk)) {
@@ -809,6 +806,9 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_ctrl;
 	}
 
+	/* Initialize the frame format (this also sets imx290->current_mode) */
+	imx290_entity_init_cfg(&imx290->sd, NULL);
+
 	ret = v4l2_async_register_subdev(&imx290->sd);
 	if (ret < 0) {
 		dev_err(dev, "Could not register v4l2 device\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
