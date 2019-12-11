Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0911D11BDFD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ldw3ZcOBPsAxoVIIOnG+FAedGuCKV0a/ZWxoB0Hra/U=; b=O5aUkTeBbtgSlNbZN5Ciy7HveK
	csygDd3TapUkYmnJTxL4zzTCS73p9sXhOjsNg/GCv07ntSMmIuOOUzcoNhjtpqc4paUZt2hwLEVEn
	NS7cARHJG5s6BcST3bzqvx9xBRd7WL5/Eku6YlJeQoLlKoR6bf1bFHo7JOJBPpQ8eonYQiYGiR4DI
	diM8Bl9QNkUfgXzlmyaUurYnFC3lPfDbden1sLUcXEBt+19nzqf/2KO3/l7+7+AezaGSFYR8NkPPy
	8oYc4YPnfyuAhO1PaDcxSBdmnFzo6jbGONtJZPx6DugAgfy/K7rluYZ+K0uUKuV+2Hbu6MzXCvj/l
	9u+jMrsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8g1-0001H0-Ln; Wed, 11 Dec 2019 20:33:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eT-0008KM-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:32:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id 4so2357735pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g7cIIA2fUKT3XoPncLJ8inchwLvzx7zJ6yCBfGCD0Kk=;
 b=Lf3l10NjokJTOzULJqrys4crSiRGGaVRpF7yZSm4XkNOqQe3ZXMy/OBLaU2AkIzQBz
 L1GSLt1JIzu38qUN8fPnPaCBzk5AgHB4zYdBaDOVdrzbI86OJfV6S4rX2VcS300Jj+DI
 psuofx1zEr4mAmM4/Lvsp6WseLe6l2f7gvIE86l1btmXTpcHiDrUgo0iGE5ekdnUjHwm
 i1NKzWzJMEM+C1Ar0EEAWSA5wKfkE/fNNnX/oL8MMgB/DIxnpCwvaASxofXFd8m5WiFv
 fNKjhV0ECWLPHiP/hfNOrr/Y6R6KJiemIrt2BuwGfXMFGPrQuFnlU02QJsBcR2KY+c+2
 iOHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g7cIIA2fUKT3XoPncLJ8inchwLvzx7zJ6yCBfGCD0Kk=;
 b=QcxexvpAYmwEWXVRsO2mzoF/OULUyuqWrYEmoU/3n1tlnmPvUBJ621zF5UHFT7tggh
 iRMd4qEeoMBLLZ0ZqfkU5uDAfZdX6JhmLIOflMCehFksAQMt+1296s4ZRFS9UiCA7WuP
 6pYz9EPciiS/rhhZ7wCi1e0qPQVniSA1Fm2I2tsQnUiFbVLf8kAqBtZuBb2vKNOFpN18
 JVBl08uZXLwpTXpU5TQuSNhI6cGEgPHpLN9tZv8kTteoZpLJ9XaxxbCVAJ4/gjIKpmVR
 rs/L/a9I9Sq+CJCBjsmK6Wpiyn9gj7YjiXJIKYPD00+8dd/8yA/+FvTt5bPorYrBdeAw
 knLA==
X-Gm-Message-State: APjAAAX90GOx0jeFnPJUKo17pLCobgqy4tl5Sx/wvPpuUdipd0572lmE
 AabgluVk8Z9T+cC1cLnyXPyHppSs
X-Google-Smtp-Source: APXvYqwprBE2vLChSP+ukiV9PRJ5kqS/aFkDnKefJvtf8znhGjt+UG4gh9WbCvcxO9Ut62p6AUXuvw==
X-Received: by 2002:a63:5801:: with SMTP id m1mr6150099pgb.139.1576096323582; 
 Wed, 11 Dec 2019 12:32:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:32:02 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 6/6] thermal: brcmstb_thermal: Register different ops per
 process
Date: Wed, 11 Dec 2019 12:31:43 -0800
Message-Id: <20191211203143.2952-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211203143.2952-1-f.fainelli@gmail.com>
References: <20191211203143.2952-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123205_128387_040755E9 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since we do not have interrupts on BCM7216, we cannot have trip point
crossing, the thermal subsystem expects us to provide a NULL set_trips
operation in that case, so make it possible to provide per-process
thermal_zone_of_device_ops

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 47b622f33900..8170ea1b8227 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -105,6 +105,7 @@ static struct avs_tmon_trip avs_tmon_trips[] = {
 struct brcmstb_thermal_params {
 	unsigned int offset;
 	unsigned int mult;
+	const struct thermal_zone_of_device_ops *of_ops;
 };
 
 struct brcmstb_thermal_priv {
@@ -287,19 +288,25 @@ static int brcmstb_set_trips(void *data, int low, int high)
 	return 0;
 }
 
-static const struct thermal_zone_of_device_ops of_ops = {
+static const struct thermal_zone_of_device_ops brcmstb_16nm_of_ops = {
 	.get_temp	= brcmstb_get_temp,
-	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_16nm_params = {
 	.offset	= 457829,
 	.mult	= 557,
+	.of_ops	= &brcmstb_16nm_of_ops,
+};
+
+static const struct thermal_zone_of_device_ops brcmstb_28nm_of_ops = {
+	.get_temp	= brcmstb_get_temp,
+	.set_trips	= brcmstb_set_trips,
 };
 
 static const struct brcmstb_thermal_params brcmstb_28nm_params = {
 	.offset	= 410040,
 	.mult	= 487,
+	.of_ops	= &brcmstb_28nm_of_ops,
 };
 
 static const struct of_device_id brcmstb_thermal_id_table[] = {
@@ -338,7 +345,7 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 
 	thermal = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, priv,
-						       &of_ops);
+						       priv->temp_params.of_ops);
 	if (IS_ERR(thermal)) {
 		ret = PTR_ERR(thermal);
 		dev_err(&pdev->dev, "could not register sensor: %d\n", ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
