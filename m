Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733DE11DE55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 07:50:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RsABmj9pLx2DSANwjN+TRbsy4onlyniGf5R3uqP52EA=; b=HAKehmbFYXD5j9
	+1LHiBsS3KbwKP9TbcdmMZxwlGTd44UXChkAzsY7lrHkz34wtdGxegRX5tAqXXPnqiZinugFYMaTg
	bq4FQI3X12yTsb3qjocFqzuz+bj8pOo818PYb/spIdHuDtgxCKqWttO8iF9MaTb4l3zX3ADYHfnm3
	omklQIH4a/mJZmbyQVNaneZVR2WOPLmYOueoS/KR7rAdjV62aMu6CGrj99oh848oU3YOQmAHdRNRt
	v02EndaOEGoj+QSwHVEnswlQAFR2Ejm1gmXKesWt3LedVehUdc9IVe2QVVUMsEj4tbVV2wy5uhVKT
	hU7KqQWwjLKcqDLKmYUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifelw-00013i-VH; Fri, 13 Dec 2019 06:49:56 +0000
Received: from m228-5.mailgun.net ([159.135.228.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifelo-00012P-7R
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 06:49:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576219787; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=rsQgQXaQSRf07rNlF+2nEQlC5ph1o6pOgKqbbRi4Scw=;
 b=MWdOGp1xi6ewjZblh9/Py6keHHALTG0F4K+Ty9B8X+DYU3g23QnFRxa2Ni1pxUrh3TkPZ4sQ
 hpTzjbPIu82mCmg8uoVxxKwXuhvsMu77rxSU4GN+Dn9Zm2NxNZBG8VghOmbWcCbRiyhRCRGh
 66nuDFHvQPY9RzhglRGDooNWfyw=
X-Mailgun-Sending-Ip: 159.135.228.5
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df33488.7fc0cbb0d030-smtp-out-n02;
 Fri, 13 Dec 2019 06:49:44 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 72F3FC4479C; Fri, 13 Dec 2019 06:49:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 60FC6C433CB;
 Fri, 13 Dec 2019 06:49:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 60FC6C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>, Stephen Boyd <swboyd@chromium.org>,
 Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Subject: [PATCH] watchdog: qcom: Use platform_get_irq_optional() for bark irq
Date: Fri, 13 Dec 2019 12:19:34 +0530
Message-Id: <20191213064934.4112-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_224948_320931_7A121540 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

platform_get_irq() prints an error message when the interrupt
is not available. So on platforms where bark interrupt is
not specified, following error message is observed on SDM845.

[    2.975888] qcom_wdt 17980000.watchdog: IRQ index 0 not found

This is also seen on SC7180, SM8150 SoCs as well.
Fix this by using platform_get_irq_optional() instead.

Fixes: 36375491a4395654 ("watchdog: qcom: support pre-timeout when the bark irq is available")
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/watchdog/qcom-wdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
index a494543d3ae1..eb47fe5ed280 100644
--- a/drivers/watchdog/qcom-wdt.c
+++ b/drivers/watchdog/qcom-wdt.c
@@ -246,7 +246,7 @@ static int qcom_wdt_probe(struct platform_device *pdev)
 	}
 
 	/* check if there is pretimeout support */
-	irq = platform_get_irq(pdev, 0);
+	irq = platform_get_irq_optional(pdev, 0);
 	if (irq > 0) {
 		ret = devm_request_irq(dev, irq, qcom_wdt_isr,
 				       IRQF_TRIGGER_RISING,
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
