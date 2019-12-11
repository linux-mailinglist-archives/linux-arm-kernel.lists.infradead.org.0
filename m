Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B1311BDFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eSR055A7S1GUf/hRAcatlCVey6eaNHIWVCcqpHHEMnQ=; b=UiOy/dHTitmce3I0IZqCbsIIPW
	Iu/HUaWdQytegw63sM0+EhbWrwhVcdyrojucuMQ9d4Athbh9qsenyVIwegMWyRm2IE1K9tCS1iNYt
	ph7TxlYRKMdgihmEIpL90z96rFKbf7fHCKSvj5fDeUeqjKC6KO9BqFtgaRvuFoJVzroWls4f/UVzM
	gH7ioNLZQI995QxDu3dJcY8RtGipWhemyu/Z74gNs6JXbrkDFpX/e0UhTxD82kZ0uJrPM2vWFnIFJ
	BgEHPbD6tJaCDJJWwFRM12llwEJrZuDQATIUA/INaBX5WAXX5GsYp12gtVE7n1f3XlX78pdjcQTTE
	37gyzz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8fn-00013e-Nm; Wed, 11 Dec 2019 20:33:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8eR-0008IZ-Pc
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:32:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so35056plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 12:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=afURWFdN1dU/KLmm8O/X/Jsvd7WfBwUp3PbxBXxbEO8=;
 b=WQFmipXruI1fTRuJSFGA+UtCvg+t0311Lztvvzz25V1GaOT4jVXqbMxAyysv9OySUw
 +9/7WI7+1RxSFI33RYHQoPAqQh5XAaPGfMu3YtTBLXVGRu7k8WQ4COQ06ahaIoVgih8/
 vz/1vVaDWE/4sgwwZZfbXOoBD1eYiG15pgQJzhG29xp3jbQrfrj86j8okGfVlpyuayaf
 DfGm7gN6BOebb9VuiwqOzjDCIb1TUmsUkLZZReSofeOeD7z7UVyI+mNOj9fXp9rO2wz/
 jwkW1lQx5uNhpKixZxW499CvK54iXIorUAuS2+PaBbNf4yB3J28mq3eVxcJIBlUN+HHu
 butA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=afURWFdN1dU/KLmm8O/X/Jsvd7WfBwUp3PbxBXxbEO8=;
 b=bEATI4lXMqYec04GrjjisktO9+C1wWLbs0662OGTDlbz+bkRABEPHikLaHH1hPUfNK
 pO8ieamhmW37dEKHQw5JPrZi7xXH2WoSBXL5ltp4Oa12AE7Gm/wBdSezjBm+XaJiBP4C
 g05QV80mvcolI6sKkrDh3scCgPic2v/abTt+/G7x2X3nJ6OgZ5/zY71jXcW9dX6nfMdq
 0eoEwMZj2tUf1yL8ExZUtB26PevLoWfVlAk5oiq1LDiJ36kha4MwkwNZe/JZlSqagg0I
 QnuzujiMtJMTHmG8Ka4cHC+g49ZQKJmhPLseiJeqDMzMDlyu0I2mYJAvprCJQDoUdoVw
 lhaQ==
X-Gm-Message-State: APjAAAW1KozIXV5ZKKgAHkZ98PQB3NA1p/vUc8x/YR/Pjf985cEiQlmS
 0yF0le7eZvzJGyusajeFvgtuTnrU
X-Google-Smtp-Source: APXvYqxGSB+7FmWepthU7M3pDNil4kYRJ30rzs2NUAnzV5QbV9rl9uHOAx0+aLP5WZBmSwJeGCpilA==
X-Received: by 2002:a17:90a:b301:: with SMTP id
 d1mr5568198pjr.20.1576096322353; 
 Wed, 11 Dec 2019 12:32:02 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a19sm917570pju.11.2019.12.11.12.32.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 12:32:01 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	daniel.lezcano@linaro.org
Subject: [PATCH v2 5/6] thermal: brcmstb_thermal: Restructure interrupt
 registration
Date: Wed, 11 Dec 2019 12:31:42 -0800
Message-Id: <20191211203143.2952-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211203143.2952-1-f.fainelli@gmail.com>
References: <20191211203143.2952-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_123203_918798_9F50AE6C 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

If we are successful grabbing the interrupt resource, then register an
interrupt handler, this makes it easier to support the interrupt as
being optional, which is it for 7216.

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 74d94f01b1b9..47b622f33900 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -348,16 +348,15 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
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
