Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C5394F76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+uv1KJREAelw9J2bZpxTWP61C4inb5CLvzQAZf73GnA=; b=fl7EyFjdadVK1OFA8GRL8+ugBd
	sSPDjS29sqBq8AP/8zP913xFsdXHZjjNd9y7GpZrPyVgo0aRFTaMurmwJgkXLhQYDKLVY7hw03LFg
	SBx7+r9YrTvvd8AhLJ9/cdBl5CFUbHj8qe89peAd7t2UvyRjJI+by013g1vUo7r/MDvzov3dJ6rqQ
	1dHX0lYlJdvLOYftWfIl1CnN3ucV7X2Y2ZPbbV+ioUi9JsV4Gbmow2PA03fdH0/uJ3K15+bLZTyOg
	ffsooCKsrfKu8gKaVwR33jWhxVblAvQsFRFB9vq/mjSQQ5So87X3AMKENLtzk90XcJZcekOEhY5+j
	rdE7sPZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzojy-0006JM-Ti; Mon, 19 Aug 2019 20:58:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoik-0005Jg-NA
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so10104025wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HETJqMmXH/Vh/v0MKmFkWUVEJbYhaPbpt5CvCKS+cYY=;
 b=XPrCyM8wjGvuKRTCe+5cGMRhhPNWj1huHLUdq0lIo2XnG0Rr/82xNRGXEi2fMywDa5
 lw4IqDMBGPBW9BLM2pSujVIVmMpNbn/47ZcarrdRj8qXwjRx+TttF94RoeJWpxvdzcSO
 zWG+E0ljBe2SqwuSBtX0NyZE4vNBNbSNZ05BU7iySkCtpnm25hHwdBkmlpyE6eKKMG0l
 u5vlBCuryKqyzygKWQUwVuOBw3nJVVkVOC52S3H+IS+eq4vp7K6axQetqdWHTU9ANYG0
 eCjg75E+P9QFhfbQwbeTxuAR203/mfG13OcjmHN2uWGYZsrNXbWxAHMT76ems50+odMO
 2CwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HETJqMmXH/Vh/v0MKmFkWUVEJbYhaPbpt5CvCKS+cYY=;
 b=UahJDun/3O8lp5+WY0PwDMiB8h9hW54cJzdNtHx7kYqh+BtZ2QN72E3TR4xW2wCTP3
 R+p3IQIDYrHy/y59OF3YZ627BnQviEfHbRMOGWFs5CRJtnKAoJ9Kao9JB91GQpPM3aQW
 Q+mDloPP0B2aqQl3S8UbLIusSBB/xtUgG3+a/3siVf77+x7d3KwIEdlSokCkpRGkH+n0
 D/8nyjnFV9aZSqngXWSvWm5Ct9dYjGB8axZjyyv858Ob06eZ8OqhbLaA/A5ExidFMeG4
 K0nU7pdr204dM0sN2nX9d2Li1+HzBa884ZTxIZxIcnUCrAFtW4Pdz2hKaBeT161ET8tT
 1htg==
X-Gm-Message-State: APjAAAWGlg+mlG6j86uKsqENg1wRO1xoKxnzXntJxaedkT0eQ9wPz0yL
 EXEBrm4PgbgBdvpbgDZVNwR0Ng==
X-Google-Smtp-Source: APXvYqxnNSfp/w/bnJEd/xhsB8E+zCWpUdGWXIrxmQ5D56UB6C+2oQ5KrtbAb1oXZCXiahXq+ID4OA==
X-Received: by 2002:adf:8541:: with SMTP id 59mr29456251wrh.298.1566248261435; 
 Mon, 19 Aug 2019 13:57:41 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:40 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 4/8] coresight: etm4x: Fix issues with start-stop logic.
Date: Mon, 19 Aug 2019 21:57:16 +0100
Message-Id: <20190819205720.24457-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135742_934271_E714C9A1 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: suzuki.poulose@arm.com, mike.leach@linaro.org
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
index 7eab5d7d0b62..3bcc260c9e55 100644
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
@@ -1271,6 +1268,39 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
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
@@ -2077,6 +2107,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
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
