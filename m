Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C35FEE722
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:15:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ie2YRHw2hCWek/cUeMIBntvLWjOGL/rZbsPJ/QnLWjI=; b=r/xd02f8RK2GOg8JkJcWWs9b2c
	jUzROTyYRsXHTvaobOJADy7dX6wbC5fyIrQulqD0kwlp5yVXMIvSfnMb9qqrs/KiAgMPxqKl02nIz
	+ovtdjuwIYDpUl2AqxlpaK7ooACY5ChTAkue3A+IEDdd67twM+BsWADZ/8zZKLT5lwkXp9bfIenNJ
	zvtF3dZlVq4hQxNmRUNwOzdcxAAAz2K7DLucM188w0oOoQm6MFuUI6PjyTdC/tXLqbtyMOd3z6Nes
	2Y0nBun0/q+E1aNcfqA5GORRkvrqgpBlKmg3Mximm8bfLAqqjYjUmoWOZszA7GSnpPHmylHgcWBMm
	YSRmUk8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgtF-0002BI-8H; Mon, 04 Nov 2019 18:15:45 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgqd-000729-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:13:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id z24so7312658pgu.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=U+l5F417FgwxWcTtFu32EwI1EYbG0FhwLJDw4Yrt6Kk=;
 b=a1jb8OcwTE5t6kokOfUIYVmLkWL2FZZgFIN/0R5uVkBpmKKDWvJfCvPfJ9u8yB8Kf8
 NTYF3XWmVTiaxaNVI32u9UZmU5S+IS08LieUsFQCNBRqlL9X8OJqF/sARnquhMvO75/Y
 u5RXCedd4ox1Jw6PcwNFBSW6IQXUOSYq/74z0p/hT6/d2jnWw9niOxQVdYx9gHNJ1evp
 U5GRkytFxc9LurRnKgxfZU8Nh1B+6qqbkdCPXF0puBUkhJdlYIWgdJQqoMmIY5O494AJ
 zycuKZEwFVUJwV3QkUlpeRJpzomlzAhsRU5TuINBJeTDcM+2v1UbRJQFYB6bSImL5fH7
 WBKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U+l5F417FgwxWcTtFu32EwI1EYbG0FhwLJDw4Yrt6Kk=;
 b=Fwy+ySLlLbTec8fsFlx5FJTuXaWrtPOw5JgDvyPqC3Crci0ubHp3HMJz2/wwRZTBm6
 ZMlYtGI056nx6DfHl0CIQ7vQ03MQMkPSfbGUfQKq5NFmNfw9sIgmKp/bhM3xz+ZtF/Fj
 bK1mj4WMpMoTb25qkeldTPQuVMVaGzeYULJw7bc/FsMdgcolm76aWVJOIHCt4Hqorvx3
 i5sYLQTEkFcSChrJL/bzZgJo78mlP4ZUDXRUGuCx8sP7bVZTe0RL47JzR6C3LIP15+5o
 XhHTJ5XjodXkEYkj7zDw+/lnIDuXkXRPrchhw7DyqGUBByM/B2KAqNp7ehlVr/faYrL2
 xptA==
X-Gm-Message-State: APjAAAWxPVwf3+WkTmZDCNzQwV8psKPm1oLa+rhgil1n0vYsUUdvFu/E
 eGT1UMwdWEK3TKt3zjWr10z9ag==
X-Google-Smtp-Source: APXvYqzCIazSOlhg8dtcxCKtg7yczg0yxQQqajiW7v+NNEdksIMYQDL6Q4pZV46stS56NlEV7na6IA==
X-Received: by 2002:a17:90a:7188:: with SMTP id i8mr601428pjk.54.1572891181785; 
 Mon, 04 Nov 2019 10:13:01 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o12sm16149520pgl.86.2019.11.04.10.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 10:13:01 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/14] coresight: etm4x: Improve usability of sysfs -
 include/exclude addr.
Date: Mon,  4 Nov 2019 11:12:45 -0700
Message-Id: <20191104181251.26732-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104181251.26732-1-mathieu.poirier@linaro.org>
References: <20191104181251.26732-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_101303_339173_63E9EB87 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Setting include / exclude on a range had to be done by setting
the bit in 'mode' before setting the range. However, setting this
bit also had the effect of altering the current range as well.

Changed to only set include / exclude setting of a range at the point of
setting that range. Either use a 3rd input parameter as the include exclude
value, or if not present use the current value of 'mode'. Do not change
current range when 'mode' changes.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-etm4x-sysfs.c    | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index ea1e034809a0..8c056dd1a55e 100644
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
