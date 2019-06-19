Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C964C1D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2yEE7MpCHqNQU7cW7V70akiM8YMXt7fGKK+VZS/ezzg=; b=cyrQXeyBJYXsK6iqJDGJmh1ua4
	r7kZLY2WjDOuZCuGOvMycVfpXIsv+k6LloYdma34ca6PYEjmzY6565O5MuxjbUxI8Lg24KEzgAzic
	WSkSKcY6huQGtUEUKpI1vhDkdMPlWdroPNaJqfHVtR136UMKOOoKTjpqYIGrM32OdUOuN+GVu9WB/
	V56f2z6DzMYtlzWHTbf+S2SHuis50H0lRvYUvAnaPdM6ZDOQVFJsSszKL2qELV8E/VfuOwXPHGGNf
	Uv5CgULvGO+DisPM/0S+a7mS9jHqiVf04CHCZrGcRRjTnuX+/2EhDj1OOplukNsWBcQmvG4G/cDj4
	9uT4N4ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdggq-000192-Lv; Wed, 19 Jun 2019 19:56:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge6-0006P8-WB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so216288pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3FNM7irOGkHJQx+HodJo4nth9GnuaBbG1lJL4fmhw34=;
 b=PsznvdRhHsdAZMVITq/4kn/w3emBGYGGs9HF1FuMuvGKQE8bjhlbJM95qDZ2WKCwLQ
 N1rEZbibA4dIIXU940k40/fkhdL/DJr+s6FdcS89FjGwKd/lDatVg0QEoAXJRddGPZxw
 C2oZMCx8pY2EsfadRoQnjbH6ojLvN4dI/oB5YgIwVr/gm+G3LVmaI82fzfPDav6Y5ZCY
 mmxSWg6qggo8scnE94b6fW8x2I9oMz9XUuPVXwHLfB4Jq/MeioNcPd9RZcpJBGe8M+bm
 /wyY1504aqEhvF6OstPGkTziNUsNZ4P1SQ335FVNWgZYwoLI+D0KFBmsl0FLVcn3EU5W
 ORUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3FNM7irOGkHJQx+HodJo4nth9GnuaBbG1lJL4fmhw34=;
 b=TENgAnktWhoD18U8PaYU3l2hCPqptk/VE3H1IsVVsf9e6eRjGGHJjtS87wAH03oU51
 cSLNc5F3qh+TCFxPPOkKlSHQEr3C9H3djCYLOV+eeDrgH730iiD/Hv5Aru4KN8J0hfu2
 O0NtXxnDG/BczJ8Gr6m090NfT8OgAdwD906UyK6YuBjaepfTknfANnOJYrgWbsKCsg/V
 0oSEGublHJb7toce2ztngJjSIlnfOGv+x4TLAxjUAkbDFPukjSOmbrskFQZfzRratcF+
 sewY7hDzuuA+0qMy4yQJkbhDNJc8NOyc/MY7qD41P7yboWCSWWpeivjozsXSMGFUBffx
 MdAQ==
X-Gm-Message-State: APjAAAV/DcGKGR8AW8Dso1WOYlnhtTQC1GyFt1tv3rHbkjE3QFUsaCud
 YQ3NA4BRITSlcarpSTvw/BAiqw==
X-Google-Smtp-Source: APXvYqxnKijOhLxbaeOFhyUy7Q4c311Yx9bAJ1qw0LaB7tjR17rNx4VKIrmnu+kstjNZJsLr4+5VHg==
X-Received: by 2002:a63:364f:: with SMTP id d76mr9152262pga.147.1560974006069; 
 Wed, 19 Jun 2019 12:53:26 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:25 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/28] coresight: Remove cpu field from platform data
Date: Wed, 19 Jun 2019 13:52:56 -0600
Message-Id: <20190619195318.19254-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125327_080189_DE2E4908 
X-CRM114-Status: GOOD (  15.57  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

CPU field is only used by ETMs and there is a separate API
for fetching the same. So, let us use that instead of using
the common platform probing helper. Also, remove it from the
platform_data.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-etm3x.c    | 2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c    | 2 +-
 drivers/hwtracing/coresight/coresight-platform.c | 1 -
 include/linux/coresight.h                        | 2 --
 4 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index fa2164ff07c2..722fab9632ef 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -819,7 +819,7 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 			return ret;
 	}
 
-	drvdata->cpu = pdata ? pdata->cpu : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 
 	cpus_read_lock();
 	etmdrvdata[drvdata->cpu] = drvdata;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 4355b2e8c308..03576f3ed22d 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1105,7 +1105,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 
 	spin_lock_init(&drvdata->spinlock);
 
-	drvdata->cpu = pdata ? pdata->cpu : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 
 	cpus_read_lock();
 	etmdrvdata[drvdata->cpu] = drvdata;
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index ba8c14635c6b..541e500a83c2 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -325,7 +325,6 @@ coresight_get_platform_data(struct device *dev)
 
 	/* Use device name as sysfs handle */
 	pdata->name = dev_name(dev);
-	pdata->cpu = coresight_get_cpu(dev);
 
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 98a4440dea3e..bf241dbf99c5 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -91,14 +91,12 @@ union coresight_dev_subtype {
 
 /**
  * struct coresight_platform_data - data harvested from the DT specification
- * @cpu:	the CPU a source belongs to. Only applicable for ETM/PTMs.
  * @name:	name of the component as shown under sysfs.
  * @nr_inport:	number of input ports for this component.
  * @nr_outport:	number of output ports for this component.
  * @conns:	Array of nr_outport connections from this component
  */
 struct coresight_platform_data {
-	int cpu;
 	const char *name;
 	int nr_inport;
 	int nr_outport;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
