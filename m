Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB037CE73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0n4Su+RfATOimKEjVZmjXN4QKi+W538ZLjQNBc0ACo=; b=FS77aQIpUVrPDl
	AzMZ+HtS6qTy9XUofdYN0KV7T2L4kKUBIkBsv2kwChziuQN14cIL24YcmxnjfbVr4OpJCEQpO2cie
	APkB4lf2jDp2gX3J32u6O4BbgkUD73Az/BU6GPaex4skdWF/Eb0dsA3FNirE8wZzLteUicU3rLbbi
	WNJSl8tTDVmIyBMYlotORm9x8vAIJErhfs8oJDVnwuIo6sPXULg1YpBFYrDtVs7NdGIH5X+HTwMQO
	DKkiscxoVE2smma44krvFLLe6IuZYTvJMXPekXxWRAsm0VNdzhCtRxJJ8H65CYBw6aWj5jBDCreDP
	AzqV7nYQmCLogUPHb83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsvEk-0003KE-Vy; Wed, 31 Jul 2019 20:30:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsvEB-0002ok-TU
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:29:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id 207so62181809wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nxlnCpV0F3leEABjK0OQeWrArZ1TknDUFhS5oY3oysQ=;
 b=TobnQ1A6wip0UtD/g3bDWT+S5CD8CP1ZGTctAaOyZrq5umuF3Fsy0wdsk0Lw089w6R
 FO84q7Lw+RUUGLid2tdjgOQYVYSCnawnjla1ZdgyUXT1mw4Pj0nPsdBgyWiBbcC3NG7v
 Wcf6ktXpSNUlXwiugNEPgnDyvHRxFWNwyJlpiBxfaSK7C8RXOXoh/BbOflyAoO5EHgUi
 Rc91LfDiMW+QvAVNBHBPe1tiUJuxWToECnhIAy18MGrEQRl/wvoCoqK74VrQRTyiKgaY
 DoIaJGBAJXRKbLYn7eztJ5raJW/7LXxuu06tpn0PRPXk79oker2ESsHnT2FZyb/UALoJ
 V/Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nxlnCpV0F3leEABjK0OQeWrArZ1TknDUFhS5oY3oysQ=;
 b=WZuOnA731u+GYWKwyShfFtdSt4Z+rEB7OoQGPij6H1dwr9ul0RVGDgBPO3097eHkW2
 0V7lVIht0WcsCFj2Z6TCcP3tvp3WMWP1gqKR5HGt6k2n3SoLCANkdQJGdB0vNrComXFX
 6LGlQnNlcFvk+o0hT/R1RDonyR3qGhrEys+nyotCqJEFMAk+taOsfS32eln8lK5nl3UJ
 QkOWh9G7XgDHwa7XtNiLSH/zyUlP6OkDcQ4YxHZ1Nh2ssHTLDDzzntMdpycFD1vnb8Lt
 Txu3OP99Th2Nk4bF9EvXfP/dF4kie7qWBuvqe9IFtxAZAxc/0ZhvHhlwP19XPBnWAS3O
 n28w==
X-Gm-Message-State: APjAAAUzKLhMSEcrlw4W30yDyrnLSFcQkZe9ogflRXMdIzt6TR6MzfKM
 mpb43NfLZW/0GNeK4w9oI0mkWg==
X-Google-Smtp-Source: APXvYqyyTC1stOjdGSZiXTNDxIBxPvxI8gB4mh/on+sczAEFRxCYUb1W4QtpSlahmmSy9W02gw2JvA==
X-Received: by 2002:a1c:7e90:: with SMTP id
 z138mr108712019wmc.128.1564604978346; 
 Wed, 31 Jul 2019 13:29:38 -0700 (PDT)
Received: from localhost.localdomain
 (19.red-176-86-136.dynamicip.rima-tde.net. [176.86.136.19])
 by smtp.gmail.com with ESMTPSA id i18sm91905591wrp.91.2019.07.31.13.29.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 31 Jul 2019 13:29:37 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
 sboyd@kernel.org, david.brown@linaro.org, jassisinghbrar@gmail.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org,
 will.deacon@arm.com, arnd@arndb.de, horms+renesas@verge.net.au,
 heiko@sntech.de, sibis@codeaurora.org, enric.balletbo@collabora.com,
 jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v4 02/13] mbox: qcom: add APCS child device for QCS404
Date: Wed, 31 Jul 2019 22:29:18 +0200
Message-Id: <20190731202929.16443-3-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
References: <20190731202929.16443-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132939_961834_A199D1B9 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/mailbox/qcom-apcs-ipc-mailbox.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
index 705e17a5479c..76e1ad433b3f 100644
--- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
+++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
@@ -89,7 +89,11 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	if (of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global")) {
+	platform_set_drvdata(pdev, apcs);
+
+	if (of_device_is_compatible(np, "qcom,msm8916-apcs-kpss-global") ||
+	    of_device_is_compatible(np, "qcom,qcs404-apcs-apps-global")) {
+
 		apcs->clk = platform_device_register_data(&pdev->dev,
 							  "qcom-apcs-msm8916-clk",
 							  -1, NULL, 0);
@@ -97,8 +101,6 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev, "failed to register APCS clk\n");
 	}
 
-	platform_set_drvdata(pdev, apcs);
-
 	return 0;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
