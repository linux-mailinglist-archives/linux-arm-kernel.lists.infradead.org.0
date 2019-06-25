Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA3955515
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/YYU1MeCGtR7PMavtTXxagB+O7kdh0TFzHTYLjrptk=; b=dAJxCieqmTGU/9
	TbfVLMdaFTEj3MLEhSwyytF/vcLlwzJleWArJwqkSo4hpizticGgaqNybVUk8Z7tWEPJ3PcQIptiY
	Im9eTWVlAdMmK70/SR73ncAYD9jgzUq95YSIMm+/IIIkMR6L8TrHn9B3oQS6/nYS9NQumFiVyjFy9
	MMSt2qeoW2bycxVDMhwtq/WRIBDmI3LzEVGKUJgcVFHPFT0z2ew+ebY94xawXu26UvqiuCXJYT9zb
	1hUUYAPOhkzitdgPK+tfRp76BVXa1ZLW9JUlvNwHhHvDRPxDneZKAyAjbyWkwWaauIK82kbrWkWWR
	LkB/hWnBk+/77O0OaIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoco-0002ZQ-AR; Tue, 25 Jun 2019 16:48:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobe-0002Dh-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so3541579wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DnmUUmlBFAOJ6r0lO2j/n/ft2AG+WeYI8h0EcXuhXCs=;
 b=Xbo7XSFN9rED5NZS/+c+eS51wLoYcSb+HfUkS0fXp+WEVZI/klmyc/xzDQcSk6kbda
 PLkTwD+LzBS3AZ94fFA8beUaDPzXToHiAtQGtYgMEa7xGSHRnmt9i8HHb4RkAENDHe5e
 IsL0oKoIDRchTHu/mEX4S5wUizdEf+RMRPLLMDrB7AmcmgO+P7E3pn73quB2Juy8UxTW
 jEED9bkXwE57LB6U9SOCXArx0Oju7R8iZ1WfU5HvlkhPqgCsPcO1+tnAvFeSoPUrrDae
 33cxR70DEVqATeHx9PamU6pz/v/4lzjTi/KGso5mz5Zz8Vhl6pl2nCo9mmky/EQOLFvo
 3uUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DnmUUmlBFAOJ6r0lO2j/n/ft2AG+WeYI8h0EcXuhXCs=;
 b=Q5SFfA1XVe9H1sSu5NnsRfMYpI0ZdtZ87hj7jn6G+78m9NYXjjKLhUOIOd3IjyXBda
 l4q6mRFsfJKFAtIEnbRSY1nDEGWbtg/z1sSa6zub105GYA5hUENTBLSYcefxfgBsaL5x
 5RG56ju25rFVuXWTm9bueFi2W1x3kf6VhEy5oG0ByWXHU4zY7u0SuohSpwsg+uka4M4w
 z6PU4yI2cSmOxpZwTkjpfTRca9fAJ1uvjDl2kREstAI6Sh1tXQ6az4Gfkz9ci0SExhA0
 WZZZJyOLSkaUP/ITyyEnVXdfb6Ma24NNgLQ/iGOXRKV+yJqHzbQNpjudkt5gkgTZJAR8
 9wtQ==
X-Gm-Message-State: APjAAAVrXBqXtHGuRTgs2niyNVKRqMCmYgZuaNHlQz0GPDYfpfFQuAa0
 r94bU6nIUAn1qBGpSeCJFV6ehg==
X-Google-Smtp-Source: APXvYqw0MlFamdgw8IfuZ/mw6IFGIsihCgTjA9lyv6BtUZRI3MTMXO+uUOMmyuh2w+RBxwxPXQqvxw==
X-Received: by 2002:a1c:cb4d:: with SMTP id b74mr14944322wmg.43.1561481260999; 
 Tue, 25 Jun 2019 09:47:40 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:40 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 02/14] mbox: qcom: add APCS child device for QCS404
Date: Tue, 25 Jun 2019 18:47:21 +0200
Message-Id: <20190625164733.11091-3-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094742_354585_7D3C6FB8 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is clock controller functionality in the APCS hardware block of
qcs404 devices similar to msm8916.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index 705e17a5479c..a05dc3aabac7 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -89,16 +89,18 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global")) {
-		apcs->clk = platform_device_register_data(&pdev->dev,
-							  "qcom-apcs-msm8916-clk",
-							  -1, NULL, 0);
-		if (IS_ERR(apcs->clk))
-			dev_err(&pdev->dev, "failed to register APCS clk\n");
-	}
-
 	platform_set_drvdata(pdev, apcs);
 
+	if (!of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global") &&
+	    !of_device_is_compatible(np, "qcom,qcs404-apcs-apps-global"))
+		return 0;
+
+	apcs->clk = platform_device_register_data(&pdev->dev,
+						  "qcom-apcs-msm8916-clk",
+						  -1, NULL, 0);
+	if (IS_ERR(apcs->clk))
+		dev_err(&pdev->dev, "failed to register APCS clk\n");
+
 	return 0;
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
