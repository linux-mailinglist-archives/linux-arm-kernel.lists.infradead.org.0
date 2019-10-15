Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0D7D8216
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1KsxtlMChpa2YUZpvEZneI96zPuaEtMW2Piie18bX+0=; b=lV0zuVpmfcsvcPraneOsZGAFSI
	3o2X1wgUt8Hqt9K9iLkZ0U6i3t3AiI7aZkUPWEBV+G9R9URldIkfc/8G7QiyvIEwNlbZ+0SdUA0An
	ypRggJU1kI9uAldJilj7H+ZL405a1LqfTrbJFg6poKb2CxcjoFFHJQ56YzqrpYx9LP9X6/tsaohPx
	WvtsNZcZdXxs9guJ4WLov2c8Kb5yT4AHA4r8v2C8BpMY/ueIUp7dvsmqWx6K3AB+ZepmSagUJWHKi
	ey0Ld0iXYwY45nBNqN4hFQyJeCMsgAJzkQtf9N7KVDbN9HI1DSqkqlgei62MkeS6ih+fOvSgz5zHq
	gIiM5b4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUGq-0003xg-2r; Tue, 15 Oct 2019 21:22:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFU-00031l-OZ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:58 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so517261wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rDuhlvBwT6uhRxkYGcIkKsWqjq/99jBo0tsPSyIyS1M=;
 b=saIqH2d+hiYz0leLDWU+UOsYxldo9oKXimdPq0hgyllb9sRTvKMMiWYCIKMvNjTvx0
 UuD6Mlko6ETxXOXHxJeKVu8sk7V051KVJtQCEvY7mmD56ZxQX+XV3Ec2Bi+296aEe4NZ
 T/bbut1dKnKc0bTqMoV7Ky0CZW1RTMXdTgW6A8MsyynCt+LTBmD+1LsSX2WEtVGt/8LZ
 GuO591E35WtjZxvJRSqmRpxvAGi2ea/GLf8qV7Tvx0x6+hXpJIkxoci7vJYY+jKRkfPg
 xzzibw8S51kFex9fzjjjG1F/ofnYkbYlIvAtEPVNLfoJ6Jg863nVaoXx0nhaFBIF8x4m
 LX5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rDuhlvBwT6uhRxkYGcIkKsWqjq/99jBo0tsPSyIyS1M=;
 b=CKj1x63l28asCnuj82/tQrMN2k+c5//BQnuBo/ivm4KusolxHeV5STFSuF6dpx4Wax
 vbLjUmWzSNjV/bYcDCID38Gh5B6qTjO+r4r6IpkCfPgvwTDQR15iDjVggnl1ucH86f8Y
 pxV+m7gLR3lB7/IRPVhvmV2szSks6Md7Tr2+odR86pwOFlTBG8uyOznw2oVXCahuYU/2
 q0WKsVpYTIRuhJcRJJ2Dezl9jnGiBw+24lXKPeBe8d+2q2YVLs2vO9xB7mrE1IWT+pQl
 nR+mt4N5s4rSv5sEkQutVi2pbIbj+E4JMZP2CyyDRrqy37w1zr+5ze0GjIccNNXpz86W
 ig2Q==
X-Gm-Message-State: APjAAAUuKRW+snqJyrAtRxtrphDn4Xum4x/kWv8xsCxJIw9Tkj79+ChE
 xf7HQaFrom0VMWzFEH/Y673B9A==
X-Google-Smtp-Source: APXvYqzsG0Havf3lVAWtlB+9gFIRq1BAC5ZnbgJMgm9uWjQ7BLw/fiVfBDesO7cFSGEAMf1/LcxEzQ==
X-Received: by 2002:a05:600c:21da:: with SMTP id
 x26mr381977wmj.152.1571174455434; 
 Tue, 15 Oct 2019 14:20:55 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:55 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 05/11] coresight: etm4x: Improve usability of sysfs -
 include/exclude addr.
Date: Tue, 15 Oct 2019 22:19:58 +0100
Message-Id: <20191015212004.24748-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142056_807602_9465E116 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregkh@linuxfoundation.org, suzuki.poulose@arm.com,
 mathieu.poirier@linaro.org, corbet@lwn.net
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
index 2dbad7162557..d772765dcd29 100644
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
