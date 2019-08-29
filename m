Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D00A290B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zQ3mKVIjmkzZlY//UHdt6fM2WI1Co/fEBrzpXNyr3EQ=; b=nEQB11RzEERTjapKtl11uU4SBL
	JYf/MZn/IzmfcF+oFaGe0OAXn/b362i8nVpEV7ZYVPDwF0fFt2FP9j4ISAW679KOvL0XjxgVn0x5z
	OLBwnSpsU0K9cwuavdElqvNBNeP4uxHvGzBAqAbcAduIVOlVRR17gMluGrZr5lb5Yj/PpYwCYvC9o
	bl09sMdVbn1BWtR4Ht85PGsFhpjiV4tArFluOYzh1+KoHsNLnfTrDTcecxuTdplmml1/XX37nBMRu
	pLGcJ7tN+VCoksVN9dcPkC8MqDUdSaQoI++AaSfm4zIASDdBcgAacdkSfyfiK1CYRv+Xy1AB4cPt+
	XvMoMfQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S3J-0002ty-Vo; Thu, 29 Aug 2019 21:33:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2u-0002i5-Oj
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:34 +0000
Received: by mail-wm1-x344.google.com with SMTP id t17so5184008wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2w4g0hv2dCoQnzKavIBKlnm3JmTFuYimQDrQU5XJPIM=;
 b=qCCHB5yl+KAFf4nD5Lb5bJRmI1kdRGb9cPD+Wq+C+1ZZLOJ6g55O8B/JjKRiGSM/iT
 LzJ5R56rk8bmfc0EC0Xi2ih3NX6cQ8GV9J1epI17cpCPOwpTMaMdH6XhmtGAQvabWzFP
 IU6RCRtgnNwhP0mBiUD8+X12XL71yV0/F7gnv7OcyeYeaVVp+2T8IeUVfUKmOixAbo1d
 C1dNA49r3KVLrhGJCIRXkjoP7r1dbshBvAcKm7TUOJlbw8uLF4MDrWORAk7mPucM0OYr
 Q2CPt34+qVjFM2KeAt8qyxYeFkoGSLP2rlEV6Aqvv7xJRRrL2qUjuRghj5OL5/tpmX+z
 zIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2w4g0hv2dCoQnzKavIBKlnm3JmTFuYimQDrQU5XJPIM=;
 b=nQxpBQj0q9wK4fjmw1c5kWdv/IC+XV1jay1ULqAdBZlBrfMdlz7LFr/C46elRKv7BK
 HUvoKWO/9TVxn3tekFo1ssbpjMW1uFItOUAPmJIp8PkgRgdfvPmIH9IALrQL0Oz+huPR
 kH8dVmvuEvcD7sXpsVMq350kbiyPu7CIOyo0AkUIqdTzbEN/RshdtAzJc9+oeziD5vzu
 mIIHW5AbnsvqyIKPO/iS+3VjSNNl8Mk1PYyBnievz6tYBnHn6AbkzyiTyp7vZhoRzmbD
 9hjIEhgPlY3GefjuarxHAFM/IySRwmaFUYAHMcy2JvyZZarDxKerzuXu8b/3FzxITvIO
 UCOw==
X-Gm-Message-State: APjAAAXt5bOw33ji9UDF2rL0QOeykBAX8o+MKam2exLvdCZnLde3P+HB
 u0JfN3lKOXXtAmztStAoGrJFeg==
X-Google-Smtp-Source: APXvYqxAqBuakJJaraJJM7RvKRUsvpgQpQ+E+gIVglNbM4I8elt3dENaflGj+3d4TMxrI5Ns31vtvA==
X-Received: by 2002:a05:600c:40f:: with SMTP id
 q15mr14433310wmb.88.1567114410706; 
 Thu, 29 Aug 2019 14:33:30 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:30 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 01/11] coresight: etm4x: Fixes for ETM v4.4 architecture
 updates.
Date: Thu, 29 Aug 2019 22:33:11 +0100
Message-Id: <20190829213321.4092-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143332_814911_CDFD31E9 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

ETMv4.4 adds in support for tracing secure EL2 (per arch 8.x updates).
Patch accounts for this new capability.

Reviewed-by: Leo Yan <leo.yan@linaro.org>
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
