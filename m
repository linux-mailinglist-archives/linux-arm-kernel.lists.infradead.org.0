Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CC41E0288
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rIG+4WWOJJksF+yo+iXZk+0Whe6Sa2Pzx+jl1Br0zDw=; b=pEyvKQuMA+NKxSFF7avF1sdjI9
	nqM1+E+2pPYI7nEZ+MNMqjOA9Xr2ceQGwaUvx3QIrkKmmMCX7lZ6qYXL6KO+24J8Y75GHK1FmRXuI
	AU1dhV5KliYd06eP1RFcv4rNV4zFJO0CP7VVLSwAxLfqruRKD6jE+bMcmZBMC8VeiHJtcgo5WytN6
	wd3kvDaNtgWkibjH9A+UvJwu1B4T0xvYQ/iURgW7x9zil8uOQLdpIVsT861gTyJ0buZqlSnFu9Yh3
	RT31fVZm/iteERUg5rqFOkuUX4BXscdTOpq4OP9/NNrIa/sJjQLqGZ37odcsKKmbXySJrAXrRofc6
	D0tpKRjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwJe-00011X-Cu; Sun, 24 May 2020 19:29:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFh-0006Gx-5d
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:43 +0000
Received: by mail-lf1-x144.google.com with SMTP id x22so9383888lfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ythenNMgCasy/26fjGx9+1WbKj8OM9GaH/NHc6AXhOM=;
 b=cuqs1pzV9wFff2GzAa77a4DoEBOaiwUw4k6/Z5KiNk0rPbw2WWyS87P6oE987eiUQY
 dvFFcbBp3yAMwXas2jEHznl6OFbqR/glhEu7tjtzqv+AihXa/K9aVZ9wKqE9C3qDu6Tf
 iOy2cw+Im3uOdJdsrheiW7bJGH8bgwHa5jzwSC0bZE649ZGdSLvLvllqMKYn5/wPUqEd
 aR6SLXLiJ6w5zAuwDbPp0nCu4VoWqHjhT9v67s22giW0KTfTuSNcTu7U0ExBx5TorhW/
 Y9bZc50QE3GpJhp6lfvQ0y2K4HWFw3Q9QeeCWvvXR4EPplzkihdAw0xE5vLuBQleYb1m
 I7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ythenNMgCasy/26fjGx9+1WbKj8OM9GaH/NHc6AXhOM=;
 b=Ctr/BIXTznQRw3r9oc0T+e5O4h1i0sYcnid2sl2xrYgm0L/AAIWqfjVweheiYBuIS9
 hfvP4oKLMWpMUbvTY6DzCKHRbEfTUbBjC5WKHso/8WXD9tz0uFGWLLKevc+20Cl01aaX
 u9pkEhqeErLfuffcDdUTVYFywMSgSjScv3RyQ7rujadLfjlYjWyjx4N6aNZxf+wiEXfL
 2K64slqrDfTpWLZH0m60JzsvUudBHhc5JHuTtkaG2ZAa8E4/jSdksGL0v73EE5nsru21
 B53BS3649i4oVaLHpF3+FvoDoEjF4dM6BPwlBSwkeCCbM8xryaw1FDEARNzxCyhHZiNQ
 GHhw==
X-Gm-Message-State: AOAM531Z7vG22WtpjvQpdKSvfCyWkH07NKXmSPAVGKqJXYsnhrl2EdCm
 oxRPNTqRLNPLuaV8E3zBFhtKYw==
X-Google-Smtp-Source: ABdhPJyLX3K9NnfpRP83wKssyR/D1UCw4Vs0QqPtZAFmHi4f7xcRBgxDMaLRhHDA/s5sdZNPyS0D5Q==
X-Received: by 2002:ac2:5597:: with SMTP id v23mr12527697lfg.42.1590348339139; 
 Sun, 24 May 2020 12:25:39 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:38 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 02/10] media: i2c: imx290: fix the order of the args in
 SET_RUNTIME_PM_OPS()
Date: Sun, 24 May 2020 22:24:57 +0300
Message-Id: <20200524192505.20682-3-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122541_238579_FDE6C633 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

This macro is defined as SET_RUNTIME_PM_OPS(suspend_fn, resume_fn, idle_fn),
so imx290_power_off must be the 1st arg, and imx290_power_on the 2nd.

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index 2d8c38ffe2f0..d0322f9a8856 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -648,7 +648,7 @@ static int imx290_power_off(struct device *dev)
 }
 
 static const struct dev_pm_ops imx290_pm_ops = {
-	SET_RUNTIME_PM_OPS(imx290_power_on, imx290_power_off, NULL)
+	SET_RUNTIME_PM_OPS(imx290_power_off, imx290_power_on, NULL)
 };
 
 static const struct v4l2_subdev_video_ops imx290_video_ops = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
