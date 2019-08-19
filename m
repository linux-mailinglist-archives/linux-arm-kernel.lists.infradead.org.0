Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5426594F75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fgLx9jf6ZIgG4RH25Sv38ZqmrnVdkQx2Vk1mvJog+g8=; b=bKg1dcc+LMqGSWQ/qnky3mr9yi
	MpHYpBkVX9cudK8U2Dhi0Ak5NbMy3hBF/duvrzz/Yxjn6NKVHERx1Qe1ieeb1+8VDjoxo1bssbQf+
	eRgKVZFeDMqMf3AY+tq4lFCo6QY9T386lLvgAARhTeCk9LuKn1NRhh9rYRpISHhT1kyO5djBBiAYN
	5RzkgiZmEFK/FosC7UYOt1SMV45HUvnWEsEeTXdOTAMBH/xaWbY9n2lx8qNQR+/w1UyTSyFx4tGnT
	EV6KemXunV41OAAAN2X5wtQ0UfVIBC2oNuXOoWaen+31h+eKl04UXQsm7kq2pb4dcE3XtRntfj7LF
	TJtGazSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzojj-00065K-R7; Mon, 19 Aug 2019 20:58:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoij-0005Gm-9G
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:44 +0000
Received: by mail-wr1-x441.google.com with SMTP id b16so10108393wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KrxSG+qaFTGAM+LupS+n0Ni/hovDe7so4u3P1kbutKI=;
 b=AfPBwxMSQ1ba+LbK5pefijL5w5t3/iBSgyl/j8kX8ULPMvEuUXMrhx3iDjh/+RMF8G
 3LsfElfVH0jnz/kaHrd23SxJLApk09QQn96C1lgYL5BDEmtPwh1R2jbgT8UbZI6bRFJT
 tbgpYLOHScQGqusRR8EyAyqjDhKBdCXOLNFuiIkZeE9a4csdHylQk0U7CbH1KbqDfG+B
 kM8i+JfWenNpabGIA/DbV6aCoYOvaSdXNfQ2wfQ27vZk1Ub6x042lzjPyQUIlBkIfE1V
 jr29vcFjzH0wiNgucKH22so6Eoo7T54Sr3+72LL0ICuaHSZgu6fhJX0PtPDd2qRb+/31
 eS+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KrxSG+qaFTGAM+LupS+n0Ni/hovDe7so4u3P1kbutKI=;
 b=Ho0taze1fGRUUXY4cgJA+w00WE5P4CUjmR0QgtCNsvqcaFESNlfSvnCCsrOlpteN45
 Hi1xSvG36vMGpLt3iri8DO47bNMH2X0Vtg+0o+DN8JKNr1blIC98dYLVPqVuv1mvUwOI
 vDVzJvPqya5DmNfDmN/H/JiQK6eDkHTJmECG5hFRnKAsE0ojmN2IBGIjdefa0BJms1sh
 R6j8iLro61Ro+Az5ZFKd8Ip7D6h9OQdnlIYWrjE1gM3uWR5rWcbKYFww4icGhB7byhHM
 dpo36vAsEBS2LbUg8ZZHfSqnfA61Fg+VvBVJV+ZotVqV7NXie0BLajJ9U4NStM88ahV3
 m5fw==
X-Gm-Message-State: APjAAAVt56Onk3ZY+TuGJKFf8asHp1jCvL1VtfWfsUorPE7LfympB6e3
 335fP/zNdUp5IaY+lukxrmIQxw==
X-Google-Smtp-Source: APXvYqxlFWi/L+H9lIWtV9v/12HM4on9h/0D3aTLDCei8QnCdb6P8Wso0jnA4Np1LEXGgJ6Asqj9tQ==
X-Received: by 2002:adf:ffc2:: with SMTP id x2mr25728010wrs.338.1566248258951; 
 Mon, 19 Aug 2019 13:57:38 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:38 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 1/8] coresight: etm4x: Fixes for ETM v4.4 architecture updates.
Date: Mon, 19 Aug 2019 21:57:13 +0100
Message-Id: <20190819205720.24457-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135741_347870_E755EB9E 
X-CRM114-Status: GOOD (  13.48  )
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

ETMv4.4 adds in support for tracing secure EL2 (per arch 8.x updates).
Patch accounts for this new capability.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../hwtracing/coresight/coresight-etm4x-sysfs.c   | 12 ++++++------
 drivers/hwtracing/coresight/coresight-etm4x.c     |  5 ++++-
 drivers/hwtracing/coresight/coresight-etm4x.h     | 15 +++++++++++----
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 219c10eb752c..b6984be0c515 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -738,7 +738,7 @@ static ssize_t s_exlevel_vinst_show(struct device *dev,
 	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
 	struct etmv4_config *config = &drvdata->config;
 
-	val = BMVAL(config->vinst_ctrl, 16, 19);
+	val = (config->vinst_ctrl & ETM_EXLEVEL_S_VICTLR_MASK) >> 16;
 	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
 }
 
@@ -754,8 +754,8 @@ static ssize_t s_exlevel_vinst_store(struct device *dev,
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
-	/* clear all EXLEVEL_S bits (bit[18] is never implemented) */
-	config->vinst_ctrl &= ~(BIT(16) | BIT(17) | BIT(19));
+	/* clear all EXLEVEL_S bits  */
+	config->vinst_ctrl &= ~(ETM_EXLEVEL_S_VICTLR_MASK);
 	/* enable instruction tracing for corresponding exception level */
 	val &= drvdata->s_ex_level;
 	config->vinst_ctrl |= (val << 16);
@@ -773,7 +773,7 @@ static ssize_t ns_exlevel_vinst_show(struct device *dev,
 	struct etmv4_config *config = &drvdata->config;
 
 	/* EXLEVEL_NS, bits[23:20] */
-	val = BMVAL(config->vinst_ctrl, 20, 23);
+	val = (config->vinst_ctrl & ETM_EXLEVEL_NS_VICTLR_MASK) >> 20;
 	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
 }
 
@@ -789,8 +789,8 @@ static ssize_t ns_exlevel_vinst_store(struct device *dev,
 		return -EINVAL;
 
 	spin_lock(&drvdata->spinlock);
-	/* clear EXLEVEL_NS bits (bit[23] is never implemented */
-	config->vinst_ctrl &= ~(BIT(20) | BIT(21) | BIT(22));
+	/* clear EXLEVEL_NS bits  */
+	config->vinst_ctrl &= ~(ETM_EXLEVEL_NS_VICTLR_MASK);
 	/* enable instruction tracing for corresponding exception level */
 	val &= drvdata->ns_ex_level;
 	config->vinst_ctrl |= (val << 20);
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a128b5063f46..52b8876de157 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -629,6 +629,7 @@ static void etm4_init_arch_data(void *info)
 	 * TRCARCHMAJ, bits[11:8] architecture major versin number
 	 */
 	drvdata->arch = BMVAL(etmidr1, 4, 11);
+	drvdata->config.arch = drvdata->arch;
 
 	/* maximum size of resources */
 	etmidr2 = readl_relaxed(drvdata->base + TRCIDR2);
@@ -780,6 +781,7 @@ static u64 etm4_get_ns_access_type(struct etmv4_config *config)
 static u64 etm4_get_access_type(struct etmv4_config *config)
 {
 	u64 access_type = etm4_get_ns_access_type(config);
+	u64 s_hyp = (config->arch & 0x0f) >= 0x4 ? ETM_EXLEVEL_S_HYP : 0;
 
 	/*
 	 * EXLEVEL_S, bits[11:8], don't trace anything happening
@@ -787,7 +789,8 @@ static u64 etm4_get_access_type(struct etmv4_config *config)
 	 */
 	access_type |= (ETM_EXLEVEL_S_APP	|
 			ETM_EXLEVEL_S_OS	|
-			ETM_EXLEVEL_S_HYP);
+			s_hyp			|
+			ETM_EXLEVEL_S_MON);
 
 	return access_type;
 }
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 4523f10ddd0f..60bc2fb5159b 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -180,17 +180,22 @@
 /* PowerDown Control Register bits */
 #define TRCPDCR_PU			BIT(3)
 
-/* secure state access levels */
+/* secure state access levels - TRCACATRn */
 #define ETM_EXLEVEL_S_APP		BIT(8)
 #define ETM_EXLEVEL_S_OS		BIT(9)
-#define ETM_EXLEVEL_S_NA		BIT(10)
-#define ETM_EXLEVEL_S_HYP		BIT(11)
-/* non-secure state access levels */
+#define ETM_EXLEVEL_S_HYP		BIT(10)
+#define ETM_EXLEVEL_S_MON		BIT(11)
+/* non-secure state access levels - TRCACATRn */
 #define ETM_EXLEVEL_NS_APP		BIT(12)
 #define ETM_EXLEVEL_NS_OS		BIT(13)
 #define ETM_EXLEVEL_NS_HYP		BIT(14)
 #define ETM_EXLEVEL_NS_NA		BIT(15)
 
+/* secure / non secure masks - TRCVICTLR, IDR3 */
+#define ETM_EXLEVEL_S_VICTLR_MASK	GENMASK(19, 16)
+/* NS MON (EL3) mode never implemented */
+#define ETM_EXLEVEL_NS_VICTLR_MASK	GENMASK(22, 20)
+
 /**
  * struct etmv4_config - configuration information related to an ETMv4
  * @mode:	Controls various modes supported by this ETM.
@@ -237,6 +242,7 @@
  * @vmid_mask0:	VM ID comparator mask for comparator 0-3.
  * @vmid_mask1:	VM ID comparator mask for comparator 4-7.
  * @ext_inp:	External input selection.
+ * @arch:	ETM architecture version (for arch dependent config).
  */
 struct etmv4_config {
 	u32				mode;
@@ -279,6 +285,7 @@ struct etmv4_config {
 	u32				vmid_mask0;
 	u32				vmid_mask1;
 	u32				ext_inp;
+	u8				arch;
 };
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
