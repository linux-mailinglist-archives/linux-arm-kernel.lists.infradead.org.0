Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6601F4BFD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2yEE7MpCHqNQU7cW7V70akiM8YMXt7fGKK+VZS/ezzg=; b=dvsi5Y8IwKD5L/gXLja2BfOoLW
	UgqzFb4dEqKHyS7ixwZXntVxgOaLzUQFPUnm5zXIfULKuIwGJHcp6PT5AY+tqcDjIvYiwRB5Dgdkb
	ck1RRrckh0EleoqK29fhZYBir4ngu84LSfZ9lfqWHEi3owe5pz5X9DFK5Y6hFRk3GiTPIikIm5y4u
	gonN3m5ucK1UOhLr5y3ZI7mB9jtP8LAycoSv5HxNYpAwC/ApedD6Ya3vlp2k/d2FV01kNhsw4Y7DH
	hgqSq+c4v303X3zhzmO29oVcpbmoYN9j2xxkUEiYr7Wzq5Wz/G1kMNmH88ejzsB5AzuhRbui/YtrY
	0YQE8DWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeXH-0007JS-2q; Wed, 19 Jun 2019 17:38:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePX-0008Cn-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id k187so63920pga.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3FNM7irOGkHJQx+HodJo4nth9GnuaBbG1lJL4fmhw34=;
 b=a7mihi4J+oTITqcMQOmSnrsxCw9JBQNy/j3baJHuaaOFZaY2VIdn6qNWLDRWfNqkHa
 bvtID88voosR7JeRM3trRKARvqRhjGtOU+rAcZ/8IZyc9wcN2nWEBc0y9GgwG19nn/0t
 f1PL3mLU+evnUwhwyyl3fP5bdxxoaH39SLUXv6pdXM5IPSgx3hCm4Wuxd3lsRHQfQFHh
 4JgUJHPLymJRyaEfD8iKKyHb9GaR0L+IZv/AAvefQBCC1rsp2xf3KwEiMTSyej14Lt4p
 T43tixIdjxT2Fl5Lj4qC7Q/QORgyw23N37d7v8Hs0ILtZRJJwD7zb/6tjU/CAJi3S+/G
 6V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3FNM7irOGkHJQx+HodJo4nth9GnuaBbG1lJL4fmhw34=;
 b=Ua5AO2gCLnnRbvC9GV9gCtNHLJGdDdAordr7QG6JjL6TfytOMjQT+VUODsY+uXYQjc
 pew8/y6qCeJc72CAmqiIcjCzpznyRlnBkpPa99uaOtC0ojqUMxeNoWXfMj5s32PoYo+9
 9ttf1R9zD51i0Neb13pIc3xczvXOGaiZ7gDykgZvzfzohpBJly6CeZ6hWInl9KalByq8
 NbM6ssmH+aP6xVbs110tUenXBNAHEc5vTK4KDsLUlS5aMaBkFOU/jMSUddmRBg2/mGea
 O/AOJH9KDJocjiBKHMXiLRMDkn5TsBtfT8OZT0BlN+GVgpxmGqoPRPyuhkqxyU5f1T5F
 rrxQ==
X-Gm-Message-State: APjAAAXBaskbFAixLcEIcHZGR/QQYQZpntU+gM23vNgKUDf/eZEmdk/z
 Locro9Y7ah1g0xFRao/3o50vNw==
X-Google-Smtp-Source: APXvYqxL6E8l8j0RESM2w0kipOADrPl+klya4JKIJuDnvk/HwBo+MhDh6bo1z5IvCMu+srggyRduTQ==
X-Received: by 2002:a17:90a:a505:: with SMTP id
 a5mr12506460pjq.27.1560965412795; 
 Wed, 19 Jun 2019 10:30:12 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:12 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 23/45] coresight: Remove cpu field from platform data
Date: Wed, 19 Jun 2019 11:29:27 -0600
Message-Id: <20190619172949.4522-24-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103015_345586_80740BFA 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
