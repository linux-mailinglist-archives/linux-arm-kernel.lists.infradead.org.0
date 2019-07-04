Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E705F17A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2qzeN+nBNJsy91VNZz837eEwWYF9Gp/AUZ9gXrFbyOM=; b=koV
	qsmuraQmwOrZWuqluB4ZTpaNSQXvrgd4vax4vHA2fp6Ra8cgBLSD8H8iZ7l2E0oETuC89LLw3Cdw+
	F/dEfjbdPErduw+Ok5CHSIGduMCa2BXL4zpCh0kBKIIg0HLWYSu3YdWX8LDAS5lb6z9ZcGHalHukc
	vXWZcsBw+pcXMQGUsXIMGcuiCZ4DvnEOf9M/J4ArFmq4mX973n1FaJ88UYl3r2Ur3K4x5oT3Bvn9J
	SBpppCW4lY3+V3JXtfisViZ6etb9B3+Jnf8lDTuq+oLYS0WeAJKKxnSyMggjg+L0PF0YKP5ajrHKH
	lKiTeqJVeMvtpucBXHxTdcWZV65+XDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirbw-00034N-62; Thu, 04 Jul 2019 02:36:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hirbg-00033Q-8C
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:36:21 +0000
Received: by mail-pl1-x642.google.com with SMTP id k8so2253422plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 19:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=17cMyJgkH0HXIw8s34At2XEgsBcEyQIQIxsPseRkodQ=;
 b=AhZu6qwNvuKVgc2zCyQWl3kpfq9nrUQ7ZGdN6X84iD8N/26u0xKL81+p3gtxhrdzRM
 dkALJCpyzfrpqDiWLEFCxSZCRZtI24uPKw+ybheFuYW13A/G+LAD/5AvTvnXCLuRibCu
 qgM54t5LaflpwC0jfVCB8IXB+SKa9zmbWUuY0fbv/eGHf8BdAfYqMU0M6T2WGKlhURcr
 y6t7IZeZViNno5SMudoWsdRUqWEaLYJuJik5mmMAuypDU2IjJ8o59XQlFm0mPBCX1OFs
 OOCqxWrshJm24ozgbcJIdPC39PF+ryUu5A04bKgrxFDcCGQ2Kr3OXr+mrpqmraUPOi7u
 PbFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=17cMyJgkH0HXIw8s34At2XEgsBcEyQIQIxsPseRkodQ=;
 b=qbSENLbVi0hw77tIXZUC0fmR//tg1V7h+Zw53/a4ekHPm1kIXaTPSM0AFbbXD4mtK2
 HaPHUyN1G7yiIXYUiRiO9zC+gxAx4GDkAGn26mxdiaCFeb5kpv4icn6b5YAqbpf0ebt5
 eNr7rYvRXrTN3bGZw2CSdZKEPfNve20B5T5W/xpjKC+ypHZTlZBZQPgxbMKv4d3iioHp
 +XG+MrWEvNUHj/Fe7ZTPce1XWiPUw0dPghBOtYFRXYI17+Y27ZO4A+C8QN63BwwbdDyR
 rH1J+rMNFQRICWmpefUNg3BZiL8IcIvNqRN+7gBQABh7kyTlz1GyOT757FdDGTmJCueU
 4BTQ==
X-Gm-Message-State: APjAAAUKz6A5huYzaYeJGKY9r3ob209jVlobKPvlNGNR1cvF8Pqktl5+
 gBQCVrUorZmJCz59n8GW0js=
X-Google-Smtp-Source: APXvYqyYa/qQjBq+L2gVp4kXx/POPivUqzYoxZec3adveil5Y74g248FhWBgTXuiScCpCkSHU+aWog==
X-Received: by 2002:a17:902:a03:: with SMTP id
 3mr45646324plo.302.1562207779601; 
 Wed, 03 Jul 2019 19:36:19 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id n26sm4055726pfa.83.2019.07.03.19.36.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 19:36:19 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [Patch v2 05/10] iio: using dev_get_drvdata directly
Date: Thu,  4 Jul 2019 10:36:13 +0800
Message-Id: <20190704023613.4643-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_193620_291396_013E76C1 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, Fuqian Huang <huangfq.daxian@gmail.com>,
 Eugen Hristev <eugen.hristev@microchip.com>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several drivers cast a struct device pointer to a struct
platform_device pointer only to then call platform_get_drvdata().
To improve readability, these constructs can be simplified
by using dev_get_drvdata() directly.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v2:
  - Make the commit message more clearly.

 drivers/iio/adc/at91-sama5d2_adc.c | 12 ++++--------
 drivers/iio/adc/at91_adc.c         |  4 ++--
 2 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
index d384cf0250ff..a2837a0e7cba 100644
--- a/drivers/iio/adc/at91-sama5d2_adc.c
+++ b/drivers/iio/adc/at91-sama5d2_adc.c
@@ -1578,8 +1578,7 @@ static void at91_adc_hw_init(struct at91_adc_state *st)
 static ssize_t at91_adc_get_fifo_state(struct device *dev,
 				       struct device_attribute *attr, char *buf)
 {
-	struct iio_dev *indio_dev =
-			platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(indio_dev);
 
 	return scnprintf(buf, PAGE_SIZE, "%d\n", !!st->dma_st.dma_chan);
@@ -1588,8 +1587,7 @@ static ssize_t at91_adc_get_fifo_state(struct device *dev,
 static ssize_t at91_adc_get_watermark(struct device *dev,
 				      struct device_attribute *attr, char *buf)
 {
-	struct iio_dev *indio_dev =
-			platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(indio_dev);
 
 	return scnprintf(buf, PAGE_SIZE, "%d\n", st->dma_st.watermark);
@@ -1841,8 +1839,7 @@ static int at91_adc_remove(struct platform_device *pdev)
 
 static __maybe_unused int at91_adc_suspend(struct device *dev)
 {
-	struct iio_dev *indio_dev =
-			platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(indio_dev);
 
 	/*
@@ -1862,8 +1859,7 @@ static __maybe_unused int at91_adc_suspend(struct device *dev)
 
 static __maybe_unused int at91_adc_resume(struct device *dev)
 {
-	struct iio_dev *indio_dev =
-			platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *indio_dev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(indio_dev);
 	int ret;
 
diff --git a/drivers/iio/adc/at91_adc.c b/drivers/iio/adc/at91_adc.c
index d23709ed9049..32f1c4a33b20 100644
--- a/drivers/iio/adc/at91_adc.c
+++ b/drivers/iio/adc/at91_adc.c
@@ -1359,7 +1359,7 @@ static int at91_adc_remove(struct platform_device *pdev)
 #ifdef CONFIG_PM_SLEEP
 static int at91_adc_suspend(struct device *dev)
 {
-	struct iio_dev *idev = platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *idev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(idev);
 
 	pinctrl_pm_select_sleep_state(dev);
@@ -1370,7 +1370,7 @@ static int at91_adc_suspend(struct device *dev)
 
 static int at91_adc_resume(struct device *dev)
 {
-	struct iio_dev *idev = platform_get_drvdata(to_platform_device(dev));
+	struct iio_dev *idev = dev_get_drvdata(dev);
 	struct at91_adc_state *st = iio_priv(idev);
 
 	clk_prepare_enable(st->clk);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
