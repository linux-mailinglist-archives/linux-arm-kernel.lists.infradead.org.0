Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EFBD820B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 23:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lc4s6tnQbMy/eoBVBJdTpOhGuKzTQsVlERsOkmlpJrM=; b=GCW+eNnJJz4PQgrwm6HW/72goo
	PEP5FBosoJ3AS/ST//HjMSO00uXCCM7XnRa/bdHpKKGzym9BQwhKKiX+Oe2zxKx31udBe2c6shKJC
	dyW3V0Gt3JA6p68sNzeBxKreoKRWygSEnkgAOP4fEMsrPW9zH14SBsbQ7xW3tBvdiM1x3Gn33WwKZ
	+yvvB7BiZlqR6fzVekLvYuirpiCWv+aecBzjzTRJCNDN0L9hIexBUxc15nTIEK5HZGA6F/GsGNTkf
	Z7A7l3CaE/sjG8LuWhKWMN1Xfs+eENKNmvTP43XHwxJwgNiiL4Xr1lZnOQG8NqHbAbbChl2RaSuti
	O/KlOCgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKUG4-0003FU-5v; Tue, 15 Oct 2019 21:21:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKUFS-00030a-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 21:20:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id p14so25525438wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 14:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JRO3tClUzpMi9acjR3thqehN+ENGTOGjbtCc0AW0Fs8=;
 b=rcPC9SKwb8Zv8jq74ZzC+zkAEzX+eMOYIP5T/0XiMyNrcuSYsh4SIcU/6o9bnjL1B+
 TzpFvCTfZaD+y977GS9kvLl75WuuTM1qvG19NrjV+oUNG/UrUZKOPDL9SR+66fN9bpVM
 bJLIw+9aSsGhsb4jP9JopFUY2DzhGthEsuSOgpPyTCpF45etZbIRIGH2DtDltc+bGb1L
 rb1kCBIt/xrg9XmmmuNaGks7oFcRre64qhh3f7LG0IlAt8Wn+hDd3bsKmz9GelL9jfXm
 q32DkCdgOzj2L/1urJXzztiEZZWPlJPmW5Vn6kDKL9M+ICyIqPbp9mKY/ia1Z8GLTL4l
 adOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JRO3tClUzpMi9acjR3thqehN+ENGTOGjbtCc0AW0Fs8=;
 b=gJnXCgbd6SGnAFGJaWlMldARLAMdafUiw/3xq0dfh2V1Ht8B+1m1cLwxISyJd42+x3
 hTZEvWkuDLOLuM8f+svAd8U1C8Pmzr97loz2cbNVT5hlLPc6VlJaNW2euVTdIS8CJUAI
 Efyp8cNUZ4TjC+yWa9jgiqFmhmrmHlIq7AZt9fcs4yRNIDiNhj4iapUqbT1InDbgjkK7
 F6aL8LsZByItutk/cIk6/8KkrLBhAxKu699S0FeLYy/q/zgja7oEuedNgq1d9iutbWTS
 euszsYuPd9wve6K5oTv55YevrXJRX+ZFUCwVKXyLcLtq1OkrDmKG2/yNeUe7xAZaZwLU
 PdyA==
X-Gm-Message-State: APjAAAW5J9XlqO2tCuea0Smfkds6ntLqQ3j9vHtvYJj3OT6LOK3cm+EV
 QZQR4qd+DI6GrKuUFNczO0V/UQ==
X-Google-Smtp-Source: APXvYqyY9s+if0u6fzoBhmY8qkQfL9fhhKAiFpjfY2QjZPxZhtz8OI3u5kWOiie5uvm9+0pTsueXhQ==
X-Received: by 2002:a05:6000:1c7:: with SMTP id
 t7mr2595316wrx.198.1571174451413; 
 Tue, 15 Oct 2019 14:20:51 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:39d2:21a2:678a:9501])
 by smtp.gmail.com with ESMTPSA id g185sm517649wme.10.2019.10.15.14.20.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 14:20:50 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Subject: [PATCH v3 01/11] coresight: etm4x: Fixes for ETM v4.4 architecture
 updates.
Date: Tue, 15 Oct 2019 22:19:54 +0100
Message-Id: <20191015212004.24748-2-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015212004.24748-1-mike.leach@linaro.org>
References: <20191015212004.24748-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_142054_944353_523E4738 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
index 8f98701cadc5..efe120925f9d 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -648,6 +648,7 @@ static void etm4_init_arch_data(void *info)
 	 * TRCARCHMAJ, bits[11:8] architecture major versin number
 	 */
 	drvdata->arch = BMVAL(etmidr1, 4, 11);
+	drvdata->config.arch = drvdata->arch;
 
 	/* maximum size of resources */
 	etmidr2 = readl_relaxed(drvdata->base + TRCIDR2);
@@ -799,6 +800,7 @@ static u64 etm4_get_ns_access_type(struct etmv4_config *config)
 static u64 etm4_get_access_type(struct etmv4_config *config)
 {
 	u64 access_type = etm4_get_ns_access_type(config);
+	u64 s_hyp = (config->arch & 0x0f) >= 0x4 ? ETM_EXLEVEL_S_HYP : 0;
 
 	/*
 	 * EXLEVEL_S, bits[11:8], don't trace anything happening
@@ -806,7 +808,8 @@ static u64 etm4_get_access_type(struct etmv4_config *config)
 	 */
 	access_type |= (ETM_EXLEVEL_S_APP	|
 			ETM_EXLEVEL_S_OS	|
-			ETM_EXLEVEL_S_HYP);
+			s_hyp			|
+			ETM_EXLEVEL_S_MON);
 
 	return access_type;
 }
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.h b/drivers/hwtracing/coresight/coresight-etm4x.h
index 546d790cb01b..b873df38e7d8 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.h
+++ b/drivers/hwtracing/coresight/coresight-etm4x.h
@@ -181,17 +181,22 @@
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
@@ -238,6 +243,7 @@
  * @vmid_mask0:	VM ID comparator mask for comparator 0-3.
  * @vmid_mask1:	VM ID comparator mask for comparator 4-7.
  * @ext_inp:	External input selection.
+ * @arch:	ETM architecture version (for arch dependent config).
  */
 struct etmv4_config {
 	u32				mode;
@@ -280,6 +286,7 @@ struct etmv4_config {
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
