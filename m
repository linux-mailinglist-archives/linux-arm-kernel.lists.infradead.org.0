Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23742A27F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KQcz9vOAt7NWb6uQFN+F2vdYVUNCFJKEc06r/FDKd+k=; b=ctbo5pFQBdu//Y+y41//Il4iIz
	eZ5U05d3BfYIhxplVdtFLyiWUdHo8Q2k8RzxncrRU8S4vJcoF9FtzZzChGlfwAL4/L8B3IdZcRVSu
	0nR5F1wElaMxDGq8Inrsi70KhWZDcLVfs44er+Kr7ogrOOzbc92G4p6fpjh3svmOCXs6+HOt8tq6A
	eWlMYXoAdaL28x+ExlGcsMWG/XZQP2yzgxZvDj9ppsamBcuDdNWL/OILh9qvPgJMpvXFuhsmbuGi0
	JGUr4SUBgndBJUPZsCRUIApWaWmsRVRj2Qxa9XVPNZ4xRkJ91lxSKmWv2X3xFCfMipqSLTlyVTSeF
	YeW+YdLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R2h-0003uX-Lg; Thu, 29 Aug 2019 20:29:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2C-0003eZ-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id p3so2180114pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e1rfzPi9lka2rztuAHcYlD7FftmyaSElRH5Zdr494kI=;
 b=YQOxkttEKLeumqIAVS1RxL0jOYy08PVdunK/nWSCAxox+i/OpwRzYeJTXkNL1bAMXS
 /I9Wm4yqPIPQ9HGKpBPPG8UUtEKYgHM51mgRyBleeUgOveLyz0JYG1xjxSLL1sMl9BPs
 bH5prYB/dRpOzpUwomDE9n48xHewJ4LnFLB6nl8li83JGcBwrTdhLBuYur1DibNmNuLW
 NreSJHmJUbwWvRH7CIjPIT4uRK7P9JYceGLUCsgC6OA9vDVMJsWw/DQxwhjFDGjDXuBN
 PWrwjUBQuyMtvBjHGwsiQ4c0ekYh8NQYw/6dF7NcK+2l0JcKbpVpo2Yr8emucD/o9DIx
 7LbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e1rfzPi9lka2rztuAHcYlD7FftmyaSElRH5Zdr494kI=;
 b=BnO6CWik4cbln/fFjDHSg7aHIL3jfw5milSIEtRYEqkxz9UKfzMh1pufyc3Iyp/6E/
 bIQY+clGq9kEseUT2wSO7PHoGsK4rypGI2G6Q4lK4c3eBLvuz+xeJHjbUWUyfeKD+Qbl
 d+VBra/BxqGDFn8Ss9Evf9v12CkFAT5O81J0OqLHiB23rAr8WKlfUucgkc0/KSI5HAMU
 qagG8p2XSsYgr30dyDxL0fdv7rDvNquJfY8FdDNVWtG0wmG05ub0kpXWzp9wAEIOnSq7
 CP2fkHC2WiZKG8l00c21JDmd+R8Bdw6DXy4hH01qurAmeksIIX1tqxuM7M1RhWy8a9dp
 318g==
X-Gm-Message-State: APjAAAW7Pf/3VMLiykAocNT6rkmlwlX4O5rA3c+fGkxyfhkWC+dmxuPP
 GSvmGwUU27hFcVOZ1ELkyaF9CgKmd9I=
X-Google-Smtp-Source: APXvYqzc7a/xEbOcqP6mq9R+xh9Rsal8HVpsyZnImbOs+EkhfYKj+eJYHEsOMWYOE4XCsJfV2nPmVw==
X-Received: by 2002:a62:6045:: with SMTP id u66mr13428464pfb.261.1567110524184; 
 Thu, 29 Aug 2019 13:28:44 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:43 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/17] coresight: etm4x: Two function calls less
Date: Thu, 29 Aug 2019 14:28:26 -0600
Message-Id: <20190829202842.580-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132844_795477_FC6AC094 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Markus Elfring <elfring@users.sourceforge.net>

Avoid an extra function call in two function implementations
by using a ternary operator instead of a conditional statement.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm4x-sysfs.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index a0365e23678e..219c10eb752c 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -296,11 +296,8 @@ static ssize_t mode_store(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	config->mode = val & ETMv4_MODE_ALL;
-
-	if (config->mode & ETM_MODE_EXCLUDE)
-		etm4_set_mode_exclude(drvdata, true);
-	else
-		etm4_set_mode_exclude(drvdata, false);
+	etm4_set_mode_exclude(drvdata,
+			      config->mode & ETM_MODE_EXCLUDE ? true : false);
 
 	if (drvdata->instrp0 == true) {
 		/* start by clearing instruction P0 field */
@@ -999,10 +996,8 @@ static ssize_t addr_range_store(struct device *dev,
 	 * Program include or exclude control bits for vinst or vdata
 	 * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
 	 */
-	if (config->mode & ETM_MODE_EXCLUDE)
-		etm4_set_mode_exclude(drvdata, true);
-	else
-		etm4_set_mode_exclude(drvdata, false);
+	etm4_set_mode_exclude(drvdata,
+			      config->mode & ETM_MODE_EXCLUDE ? true : false);
 
 	spin_unlock(&drvdata->spinlock);
 	return size;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
