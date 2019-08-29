Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97197A290F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=maiMS2wczyCfloOaOFYNhMFjOuWMdfaOPk/QrAU8bCI=; b=ouNm5XxUnVPHvxzpka/sv8PQ9s
	Wq21l8qW2gibLP0TOHxDVCeOxknOjjAqro/IgJ1K4PKh7fdzqaQYH5pcoCvT7+X73eZ9LleQD2vFa
	5dwmhs7AvQZCS+dbaoF9AQJAPAk/viBNZgJcHX7OzXfukXR6Slv5onPWVOtWQol3M7qmdYsE7TGQi
	D5m3bl0rrg37dUOabG4oMIMFiskrRRrGKrOuclGev8JSmmKgEH1D7XtBivdjm4YdDqMrg3V6tIEdX
	BwVgT0HM7UaPRx7TFU389tauzFh/P6DfKExBN8fsRrPvNTDaAH625xDRkchRgLnB/FchBVBqIKUoo
	Z0xKap2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S43-0003cs-1J; Thu, 29 Aug 2019 21:34:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2x-0002j8-D7
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id k2so3746087wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rh4R+Pon+fs2ZXsOi2GTsnEROI5SAuVOl6FXI+IVKkM=;
 b=Mq1WB3rpeqIYp4X8AOB2SJu0PzYXf0bsnk3whIgHxthrP45m/vJ3BHt15owYlbBLgR
 Z7Gk256h6KmxJyCdg0TXY+wbGrtZMpOZX7l1CzaS16wCc67XQP2gF/qgOC9yF2cddKzE
 lhpwKbvBAoLfuyqwZik30Nn2fwJRt14G8ons02frCsC3ScyYa2t/K2b55Jb5TNwXoqSW
 sxKJGJsx/TFaI9TbIt8Pq5WbzJy2z74hJDqXknBPUgE98N169w9XLcyclYEYPcXXGPbC
 ipH88iltTfYaMCJpOhDJIsMCkCHGZa0YBDwp4lxAxLeOOWVSwm1b+wWQNzdBgVhWx98T
 1xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rh4R+Pon+fs2ZXsOi2GTsnEROI5SAuVOl6FXI+IVKkM=;
 b=DuXiRD2MK9rgR4T3vsX7HD0e3AYEUaGjnj31lG694Cf3elNKyPUf2t6v6iYfkzxVui
 DpjcgTjVOh3stk9KoJTJQtlNuBxtc2b/zPmTkwjSU7E2hTAOLiUFHPvyilSNhSQwRTu9
 dlCOUkNpZn9JPVoWuCCvVumXf1HMY7JQVRxNcpeddOxiZQfvkjFyaaAFvFup5rvZJeAf
 WQl6kRQFopINEfydhy1CICz+Hxftg0wvCcTaClc8yrBlBh/O3Rkedp3jKG4Ga/vhA5ZB
 yOo2curhGuwlg+om6w2c/lC8pJl/WzLpe79YsMcBjGYjep95AoycolcPbOMWIgBphLeV
 M8Fw==
X-Gm-Message-State: APjAAAWQ07gvgws7lnhfPvp/6XBsVIbRr6NJfR2mnU4woh5PypQCcl++
 xqck2vvNd3OOstGN+MsGxXZd0g==
X-Google-Smtp-Source: APXvYqzhLbodq2FJ0KyM0uldVGdMm8tFwCGa1Jigf44oT8mdo0/WWB3AR4vaEbWNWTUtoJZR6fJ7VA==
X-Received: by 2002:a1c:eb13:: with SMTP id j19mr12434854wmh.18.1567114413880; 
 Thu, 29 Aug 2019 14:33:33 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:33 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 04/11] coresight: etm4x: Fix issues with start-stop logic.
Date: Thu, 29 Aug 2019 22:33:14 +0100
Message-Id: <20190829213321.4092-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143335_452546_4DCE2895 
X-CRM114-Status: GOOD (  15.01  )
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

Fixes the following issues when using the ETMv4 start-stop logic.

1) Setting a start or a stop address should not automatically set the
start-stop status to 'on'. The value set by the user in 'mode' must
be respected or start instances could be missed.
2) Missing API for controlling TRCVIPCSSCTLR - start stop control by
PE comparators.
3) Default ETM configuration sets a trace all range, and correctly sets
the start-stop status bit. This was not being correctly reflected in
the 'mode' parameter.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++--
 drivers/hwtracing/coresight/coresight-etm4x.c |  1 +
 2 files changed, 36 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index b520f3c1521f..11730a194951 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -217,6 +217,7 @@ static ssize_t reset_store(struct device *dev,
 
 	/* No start-stop filtering for ViewInst */
 	config->vissctlr = 0x0;
+	config->vipcssctlr = 0x0;
 
 	/* Disable seq events */
 	for (i = 0; i < drvdata->nrseqstate-1; i++)
@@ -1059,8 +1060,6 @@ static ssize_t addr_start_store(struct device *dev,
 	config->addr_val[idx] = (u64)val;
 	config->addr_type[idx] = ETM_ADDR_TYPE_START;
 	config->vissctlr |= BIT(idx);
-	/* SSSTATUS, bit[9] - turn on start/stop logic */
-	config->vinst_ctrl |= BIT(9);
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
@@ -1116,8 +1115,6 @@ static ssize_t addr_stop_store(struct device *dev,
 	config->addr_val[idx] = (u64)val;
 	config->addr_type[idx] = ETM_ADDR_TYPE_STOP;
 	config->vissctlr |= BIT(idx + 16);
-	/* SSSTATUS, bit[9] - turn on start/stop logic */
-	config->vinst_ctrl |= BIT(9);
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
@@ -1274,6 +1271,39 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(addr_exlevel_s_ns);
 
+static ssize_t vinst_pe_cmp_start_stop_show(struct device *dev,
+					    struct device_attribute *attr,
+					    char *buf)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (!drvdata->nr_pe_cmp)
+		return -EINVAL;
+	val = config->vipcssctlr;
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+static ssize_t vinst_pe_cmp_start_stop_store(struct device *dev,
+					     struct device_attribute *attr,
+					     const char *buf, size_t size)
+{
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 16, &val))
+		return -EINVAL;
+	if (!drvdata->nr_pe_cmp)
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	config->vipcssctlr = val;
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(vinst_pe_cmp_start_stop);
+
 static ssize_t seq_idx_show(struct device *dev,
 			    struct device_attribute *attr,
 			    char *buf)
@@ -2080,6 +2110,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_ctxtype.attr,
 	&dev_attr_addr_context.attr,
 	&dev_attr_addr_exlevel_s_ns.attr,
+	&dev_attr_vinst_pe_cmp_start_stop.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
 	&dev_attr_seq_event.attr,
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 52b8876de157..d8b078d0cc7f 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -868,6 +868,7 @@ static void etm4_set_default_filter(struct etmv4_config *config)
 	 * in the started state
 	 */
 	config->vinst_ctrl |= BIT(9);
+	config->mode |= ETM_MODE_VIEWINST_STARTSTOP;
 
 	/* No start-stop filtering for ViewInst */
 	config->vissctlr = 0x0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
