Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D6BD820C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:21:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Z4SVfK1DmrRidBislJiHGNPbDjH4VuxZFaX1KSzaWI=; b=PXljEDlhvNbyY62G9PrXuzgy0A
	RqVeSjeQ7Of/zDgLBfvwUHonFO/WgU2dwWgkiGvFL+ur6Ybv6Ot0D6K9iMyakmPvA6Y2Z6hsoi6iB
	sGBKMJE8t4a0GGuMN44Jo6EMOmdMZiFY63n8nfUmTY5IDktLT9k6ux6fjd693YHLSgHfPzHXG+4EW
	uLqPiH2Fd6VmTkXukuQzHKlH1sRqwJuVNcnz/xvMP+OjVuXp+rJsoJ342JTF27GVI6mM5ZXudbNm7
	JyPEMFSX47K6OBIhRX1Q5IMICPTxQBxV2bpMXldUy+JzhwQOfxLE0yRZE7Y3CKpggqxJxQ8NgCyrv
	PPGQ4/DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUGN-0003Ww-K9; Tue, 15 Oct 2019 21:21:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFT-00031C-L4
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id j11so25558658wrp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JOcTLOqG6/8JBYdUtCKUjnzDdNgGAk3Lo1/s5SPM2vQ=;
 b=txHkyKEHnouHy5st53YylZ9aOwOE/Nv5QboOO2n6gYm2emk+vDvLPN0A5ycD1abeHA
 8lk8l3WlyW/uy7wkh3zX6aYjwjKKVxEJps+ArOvRlLy2sxDr4604CEOf2nEFA9J9Rlf1
 ZsMyYMssCf5h6eztKHJ+mdRsc7XR3pkSQ6rdf6sgnnz/IW4E8nnjoJyXomJyWhUEMpFR
 kKwTT6NDoVN8a45nKrMhL+4jjfOFai1phnO2fs2HYWD+zWXPSXOGcDPlGOpVwUVGTdNT
 Z0VArCUgeiI9MKrjxYPnHmtH+pxgfLIDE9Fl5rCU4bqX/2gI3mHxwGGLLBySw7CtzQRa
 cdLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JOcTLOqG6/8JBYdUtCKUjnzDdNgGAk3Lo1/s5SPM2vQ=;
 b=c+gVCvbp7U0hnVkShIkLE4dJsRJfoqS3TGWwcqnOE6zy2A799+g6BFdLXollpWyDGH
 9DPy7avonRMPjmdVBmNwlf+xkGIBEsIExFWSTkCgjspfm0Ktm6ZXb+ibRBEbh3bZMyz0
 zoCwFxTyPLF+jClZKwJrzr9xtHrqnRPSDCUTWnbB9Y1FfjbyZAGuo9VZ5TtJdE0QXuOt
 Qhd4iRqPmO7gLLk3dPXbsKisq+7d4jX3awjeFFVDRsySeWK71UmQEaDpmnJ5HmxEqT66
 hYL2OvT/2HfoAjoasyD79ibBAdLY8wtA8HmM1Xhz3kzobMzCtSuWf+sSNUpqVYSP6MWa
 o/UQ==
X-Gm-Message-State: APjAAAVv0StpdsZscu75Vpe8x6LTv8n9XqzPgXyVuQ2GjEzPwD9BTIO7
 WEOoLUHqWgWCRUy7ozSUH3bbjg==
X-Google-Smtp-Source: APXvYqz4Jr5RkrAR2YTxHroI0VVN3aiOOOy7zJSyn5Vbz8lAOydfpR7X29BrEx4tNDJ7mtRmQepUcQ==
X-Received: by 2002:a5d:4a81:: with SMTP id o1mr31198630wrq.291.1571174454488; 
 Tue, 15 Oct 2019 14:20:54 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:54 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 04/11] coresight: etm4x: Fix issues with start-stop logic.
Date: Tue, 15 Oct 2019 22:19:57 +0100
Message-Id: <20191015212004.24748-5-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142055_688536_A06E95D9 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
index 45fa7743eea4..2dbad7162557 100644
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
index efe120925f9d..d5148afdbe80 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -887,6 +887,7 @@ static void etm4_set_default_filter(struct etmv4_config *config)
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
