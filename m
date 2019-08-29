Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A512A2911
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:35:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4qIYcGVZklmlVBq4U627jG8k5PJyHGOlg6+GpoJe4Ws=; b=e7KgU5AD4faXCDmD2Jzl3ss27Z
	OQHRLbPm7gLhNsK+Glejsl+0aWiRXq4W9LwRSCpAoeSKm+ayXqrE3+bdhR94BekSm5J+xZtOtyCvs
	xJlq7ypNGnZRJIKJ2kLC3MdQ976IVag4+Z1LCSGQ4fISFqJqmjkqxHgUBFza1BDPSrmREnFJWrVoH
	Zyb8S60D7f4eULbiX9poGUbT2fGQY7xkGI/eI0Si/LLeNt+ppWpEKs/zhotzBqLGLaehLP5UK+gYS
	YDSlZcyvGPAPNlDNgBbxlQu2Kn+a5oX3XjZxBhUcYhe+CK7YfB6wpIjebjl6GX0t42GANyX3hb2Wh
	ZOWI7GUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S4I-0003qV-7g; Thu, 29 Aug 2019 21:34:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2y-0002jo-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id g207so1207446wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OgUwq8PV39ZIG0VU/e8yOPix/100+rTX8d/plHmGxFg=;
 b=cQhGJXf16IBUwr71hYviFfVm8lqflyPRdPBx6NLDs0G/fBHcMpePmerVdrkmHd5rgc
 dRxD6gXUA76nsVq5Ba0ZxzNAmTZr/k/rfd48mfVjZodhMemRYOE5wOIInBQZZIfUlFTg
 Ax/L/TC/gTzPlbq5OxCho1ertwvEB8D95iJ4qSpnVGMvXSjfyAYyXhdQxTFRsyQKpsjK
 ezPNm28Pycd71q17+7/bpzJCL2yavrk4IxVD8bPtEjx38egAxjOGQ/TUcYVJd4LBR9rl
 x7qbFkqStyo7/VnbKLaLST51MH7KtQWaq3qscHsm1UvPYtwyYOOr6I+7okMk/2UZuf9i
 SHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OgUwq8PV39ZIG0VU/e8yOPix/100+rTX8d/plHmGxFg=;
 b=PLHwFhfEAaFpySCXU6b07MgCcbfZEigDbRFMx+huGekUmsr4NBLiJC+X947kHIMXQ2
 Rvjn0ePUt9dKLv10ClJ2B1mvXt2Bj9zV4BFI8jPuAYw+dhP/JUl5Vin9sEVPd1Q53G7j
 TZXH63V1w3h3vU78Keg81WmaYeMj/J4d2jQdg5F6foQXZkkJNAfM0ayf/u65YfkkAOIy
 pqsTeFSEzqqM5SLN3hxyA8yBLUQrAsPTreWZP7lsQQtrYESdjWBPfnmoY5WEngx6uuyu
 3FCWEqFi2c998jUkUb1V8Kb8Vell9n5opkh8OKW6GE1NJCCBqCxZtAyJJYsaXscURtLD
 FSjg==
X-Gm-Message-State: APjAAAWf2/wE2BpCU9K2dwhsOZoJwR1I0cIclXQSlbYpgkzOxfUtXHYB
 Ec9TW/Uj46AVK2XnBa105TooKA==
X-Google-Smtp-Source: APXvYqy0WPe0LjUXiF5vXxBgpNIqHB5KJOh0XO7JJtnOCE/rNTUHtJhcFQfsgOf7XPv103GfsLCF1Q==
X-Received: by 2002:a1c:730d:: with SMTP id d13mr219988wmb.107.1567114414957; 
 Thu, 29 Aug 2019 14:33:34 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:34 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 05/11] coresight: etm4x: Improve usability of sysfs -
 include/exclude addr.
Date: Thu, 29 Aug 2019 22:33:15 +0100
Message-Id: <20190829213321.4092-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143336_629756_1582BD7B 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, corbet@lwn.net, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setting include / exclude on a range had to be done by setting
the bit in 'mode' before setting the range. However, setting this
bit also had the effect of altering the current range as well.

Changed to only set include / exclude setting of a range at the point of
setting that range. Either use a 3rd input parameter as the include exclude
value, or if not present use the current value of 'mode'. Do not change
current range when 'mode' changes.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../hwtracing/coresight/coresight-etm4x-sysfs.c    | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 11730a194951..e4a9ce76ed33 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -297,8 +297,6 @@ static ssize_t mode_store(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	config->mode = val & ETMv4_MODE_ALL;
-	etm4_set_mode_exclude(drvdata,
-			      config->mode & ETM_MODE_EXCLUDE ? true : false);
 
 	if (drvdata->instrp0 == true) {
 		/* start by clearing instruction P0 field */
@@ -972,8 +970,12 @@ static ssize_t addr_range_store(struct device *dev,
 	unsigned long val1, val2;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int elements, exclude;
 
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	elements = sscanf(buf, "%lx %lx %x", &val1, &val2, &exclude);
+
+	/*  exclude is optional, but need at least two parameter */
+	if (elements < 2)
 		return -EINVAL;
 	/* lower address comparator cannot have a higher address value */
 	if (val1 > val2)
@@ -1001,9 +1003,11 @@ static ssize_t addr_range_store(struct device *dev,
 	/*
 	 * Program include or exclude control bits for vinst or vdata
 	 * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
+	 * use supplied value, or default to bit set in 'mode'
 	 */
-	etm4_set_mode_exclude(drvdata,
-			      config->mode & ETM_MODE_EXCLUDE ? true : false);
+	if (elements != 3)
+		exclude = config->mode & ETM_MODE_EXCLUDE;
+	etm4_set_mode_exclude(drvdata, exclude ? true : false);
 
 	spin_unlock(&drvdata->spinlock);
 	return size;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
