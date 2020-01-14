Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA4F13B2B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 20:07:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XueeJiTdRpC5oC8OOWEHAzFfRqDie2AGOnmfU/Xu43s=; b=aDHwICrsDbXE0FCvmSz2S3p9wI
	826SrtAFuWym8TbwiQYpyPGkCZiFwNC1y4RuvRfSD8wNUUvqGItgv0Sx8t6viYNCI9KMRY2IJ644m
	7IEUon6/wAlL7GzaxLtktX2eAs8GDFHiEIcXrP6yIBxq8wFANpSsrU5u12hWwSb2wqBxp2C0eiyQF
	iL6YVGHny/XSevakb43o9SpJCBvGWmim78Cs2PKynONzXJOPZ2hs6HL2A8uGx28FRf85LR/gEI2h9
	4cGdi2A5XupE9n7gpMgOi0GfVDdporC1+DzDl8lOlRAqK8BHqqfnAkNUUM/z3sYxAyausEK2PzA1B
	UYlhsblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irRX2-0005qu-Rj; Tue, 14 Jan 2020 19:07:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irRWH-0005LI-4R
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 19:06:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so7009595pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 11:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4vSJnMnRQY5K8VIAp/CMpFrjM8LQtV7YQuTT5kLVa2Q=;
 b=b1oRWQ+ofqnyI9P+5iPLK8xjCoJZqwsNkEhaJlpnvxZb+H/Q+SE4o8hARWqr6XiIYX
 ip7DfS9hlMSocjKd8dd02V+XeGog6u8mDa4sJH6+/wlbZrLaYIy1hPaTiz0mZjP+PPTS
 QAsPrC4tcJzFiURmrG9Qp55ycpqJfuSfa4q342neqf72FaJeb4YvFPyxZ3szZppoLjNA
 oGjp1RysfqC5G4aJZiDgRwJ7uws+3jQhNNXa6WQcvu4NTfI9hZTHi9UwIuLjGeCLMEiO
 V7ytPmFE3PF7HATjoX7+Jd8kgl5lfjr7hstsADOOdZ/d9c7obW2YjcE0asOP6EEtV3hB
 C84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4vSJnMnRQY5K8VIAp/CMpFrjM8LQtV7YQuTT5kLVa2Q=;
 b=XPGNNrPPwH0nI8lOUmQ3RZpmQEkCgfJR9x/Xvyryics1bG50uNx3o1Rn+kU8inv2ZA
 S1U7Tb9lX2zjC6y3yrjBe0nJlIiijR3oscpAZJtDQr+7rrn8lzYpCFJY+7JWio9FfBOV
 bPn5Xc2/t7BUalOX50O7U9TodRVDGjWXbb+JLEVP7PJ3lwuo5uM/u1zxAKlaoaQKLstQ
 0oKCFmNFEa8aAwOr1CBgnrGab0l2B8741y9uaJvjVY8A9Q9v1FxTpIaXI4GMVBGLKnNh
 wAUaYDSqHTI9h9ylSvVVmcVP2ITAw8buW8rElqpLzJr4X9mKMzFRRvw1w6hg+ghX4yU/
 bsxg==
X-Gm-Message-State: APjAAAWobgokQcaoSH2/P7Ahc1nHUxq30CbG1hPYnAiDSLjaXJIHN3Ef
 3qN9Dccpi5to14mbpiD0xNQ=
X-Google-Smtp-Source: APXvYqxs2+XlUU2WqQPZYVIaJ6IXhF2aeaBA+8K/Ho1GQddwh7hY3UO+5LROxkyrOAxroGfhjjTbSw==
X-Received: by 2002:a63:f901:: with SMTP id h1mr28558196pgi.445.1579028788518; 
 Tue, 14 Jan 2020 11:06:28 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a195sm19284528pfa.120.2020.01.14.11.06.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 11:06:28 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 5/6] thermal: brcmstb_thermal: Restructure interrupt
 registration
Date: Tue, 14 Jan 2020 11:06:06 -0800
Message-Id: <20200114190607.29339-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200114190607.29339-1-f.fainelli@gmail.com>
References: <20200114190607.29339-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_110629_169367_C07F7666 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we are successful grabbing the interrupt resource, then register an
interrupt handler, this makes it easier to support the interrupt as
being optional, which is it for 7216.

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 4b328586959f..6ded4b9c53be 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -343,16 +343,15 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	priv->thermal = thermal;
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "could not get IRQ\n");
-		return irq;
-	}
-	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
-					brcmstb_tmon_irq_thread, IRQF_ONESHOT,
-					DRV_NAME, priv);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
-		return ret;
+	if (irq >= 0) {
+		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+						brcmstb_tmon_irq_thread,
+						IRQF_ONESHOT,
+						DRV_NAME, priv);
+		if (ret < 0) {
+			dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
+			return ret;
+		}
 	}
 
 	dev_info(&pdev->dev, "registered AVS TMON of-sensor driver\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
