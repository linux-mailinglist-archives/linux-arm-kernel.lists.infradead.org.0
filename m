Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FFD94F79
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g4xLFN0dpzweEpmkl609d1GF03ZlNLUpiphuqih09II=; b=SAb/k3Dw5kdQuEKHWljbuQO20+
	P3a/8NuJ3nI0kx7Bjb0jECKcUToq0MIBwfpBtnVuUiLlRDcTUh65uD5KRue9HJI7Kjhy08hJ9faJC
	A5o9rFDvVK2yPRt2q/Tx+avlnoxbEl/dKFK1tCALwI1lD4eGwj1TZfz1gCtBaR88VGWFaPthJ3NLO
	kxJRnm3ZsT00ZedhUZgah5NypPTVcZz8U+hyd+9d9DEq69StSZqwpbA1lWm1kike5XrdMKjarP94F
	eH3fCoidGJ0TC/RdIZ1N0wNwgDzTffNQVo0zHXp6sE84Aj1UwoKcpOZw/1cepUXbiIHJwcLj3nKbu
	yaAaX1hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzokT-0006sG-RS; Mon, 19 Aug 2019 20:59:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoil-0005KM-EA
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id y8so10103462wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CCul2VKIQZgegoP3u6Okg21ECz48xu4t9dJfpkQ2azg=;
 b=yiAT2eAKB3FXdoNQbJ9+VFnq7DZsit1uHZRu6LtysPLLPYT2bqCUIF9ejwFv+Qa4Ng
 nb4VCeUHi05ShNj0QU/8VeTRa7VdMJNHQan0ev+6T+SwN2quNZREqfhPdz3aKhFjZp5M
 w8y1tKDOJ6ptLoZWll0v7uj2c6VMhVehIx641LGt+6TgvIB6zNedDUWjY8vvcL4DL0DE
 lpxIkmQIsAldcCFXRdgW1bqyBovJLIrtP8ma1fLWPvNrWfUXEosepKyaKvK+rsMsBSRD
 JxV6GsQ6sCpuKrfJ2PofWlYizwLEj9mbVDIavu0LF0emZJGJnfSGvLiWT4syEzTlIeZ2
 lF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CCul2VKIQZgegoP3u6Okg21ECz48xu4t9dJfpkQ2azg=;
 b=VX57mEBCQgztTS+s/y1fQq3tWVmASMEvXQ6YN3JOUMvWO5L9oceB78rwmXosjnJEGs
 a8ilHgA6NEsD0DU+8NVqvGJVHhZud9Iw/ZCU2ItI0NJODLiIiU4JQV1lm+vvglCgeeZ8
 5pO18yPRdEtd6qE6KnTS0nErApU7QkJVMQ6peu22GjSVVdTKdujwShUP8N3sc97/zJtn
 0JMgCCmQ9oFZNS7GVZFcI2XKHnb5yrd7JQbNmhBckluUjS2ZwCgl6uFiuFXujtACnwmS
 aAEW5vbOmajOz/ABo3lF59A5OxZty2u34aywqTW7npCS2Diq87tTTkszjltmVGh64R33
 wTiQ==
X-Gm-Message-State: APjAAAVL1vELdQ8PpLjDTgh7FmX6GnUQx5DE1ICh67I+eeBqPBrUlmxU
 uzjhv5h6E/nyIfBpZsYCGA2Z3Iqz/5w=
X-Google-Smtp-Source: APXvYqwppDxb1CunFRcf3DDFG7GuwWBeMabtjmVdVgXFy0ayP6VnzrYS248hqoRYYoOqT+5FKi+mFA==
X-Received: by 2002:adf:eac5:: with SMTP id o5mr31138765wrn.140.1566248262212; 
 Mon, 19 Aug 2019 13:57:42 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:41 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 5/8] coresight: etm4x: Improve usability of sysfs API.
Date: Mon, 19 Aug 2019 21:57:17 +0100
Message-Id: <20190819205720.24457-6-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135743_625682_0614F4C7 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Some changes to make the sysfs programming more intuitive.

1) Setting include / exclude on a range had to be done by setting
the bit in 'mode' before setting the range. However, setting this
bit also had the effect of altering the current range as well.

Changed to only set include / exclude setting of a range at the point of
setting that range. Either use a 3rd input parameter as the include exclude
value, or if not present use the current value of 'mode'. Do not change
current range when 'mode' changes.

2) Context ID and VM ID masks required 2 value inputs, even when the
second value is ignored as insufficient CID / VMID comparators are
implemented.
Permit a single value to be used if that is sufficient to cover all
implemented comparators.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 24 +++++++++++++------
 1 file changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 3bcc260c9e55..baac5b48b7ac 100644
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
@@ -1787,6 +1791,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * Don't use contextID tracing if coming from a PID namespace.  See
@@ -1802,7 +1807,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->ctxid_size || !drvdata->numcidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if < 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numcidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
@@ -1976,6 +1983,7 @@ static ssize_t vmid_masks_store(struct device *dev,
 	unsigned long val1, val2, mask;
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
+	int nr_inputs;
 
 	/*
 	 * only implemented when vmid tracing is enabled, i.e. at least one
@@ -1983,7 +1991,9 @@ static ssize_t vmid_masks_store(struct device *dev,
 	 */
 	if (!drvdata->vmid_size || !drvdata->numvmidc)
 		return -EINVAL;
-	if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
+	/* one mask if < 4 comparators, two for up to 8 */
+	nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
+	if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
