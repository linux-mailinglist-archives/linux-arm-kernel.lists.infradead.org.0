Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EE2A2800
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h/KJDz6e6mnjeCv4zg4sQ/ZKHUJbiO8IWqQuA0GruNU=; b=nLywuNFZodWcN61e33mE4AKjF+
	VJFwLGENo+wts2Inzf5N57VYje5IIpHqBSJNu4B8F/cjWgjcLzf4uEjK8dfndeFsp1PJmjhvYEcjL
	In35d0SGPj5nYraEIUcIZf7Zq9boO4/X8/0Fcy1jIj4pMMVEDv6HCpi3onduaTso/QVvNTAMKWpTU
	+VKtYWGexCTxmV49iLABH/eyOV1GRanWLdoiWqERgZigdKWotY3hIDoLhM5RTlaI33gS9kmHwAh2C
	suMgyQx7FtXN6gBLz7x96MRegfX62U5YLGklrhOKrfYPP0v2EuW1RNXkCIgHA3O6f+yZoJVLaz0ca
	2CholK/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R44-0006Wx-TX; Thu, 29 Aug 2019 20:30:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2H-0003i4-8f
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so2176466pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZtRE4tzSco72o3chGVIv73hx7TWJtztIiSnwQVUxI1k=;
 b=kiWgybCn9+Eqc0p4UHrd4vH+aGKXMB6h7MH5kykSab88spNCj9cU7I/yBlnnTXKwWa
 B/5WhbbqtonBDVeiuRMok8md+smiS30ZRW6jz2zU9y+zG0joy1HBc/QoLLn/NxZ2+UpV
 4uYKIdB+mvC33EqfsvOWoF0NOcdP8zTn3KcJEoxdihWdQZ4u4NQZSOqfQbHUWEKt1dwV
 imY371VQnFZTH3t2wqggVkF4vFckPI4MQ0f8bdTWO0RX7/4NJVvWyjKpHA+PhAX3RDtB
 8Da8Irnb/XuHlcK22wkFFioEWxOOVOocA0NFe21gIreLZhlRR8bv7YLNkcrliECgBoXx
 PoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZtRE4tzSco72o3chGVIv73hx7TWJtztIiSnwQVUxI1k=;
 b=S+wJ4KSy9wq9xKvQB+jFn7mjYB3T5I4PmdMnVIqUcqDQjlIL68+PtApNYAgrmH33Zu
 Rd2hEHwyuYnDykCzxqFqMQcCBei1++3cacgs7OssgCILRBeaplG4yNE9O2PgSjgO2Q3z
 Q92IGn6sS9U0CLpnqaqvv2wdIuAv1Dg4w80G+bQLTWqS+uKGMXQ+wIAPbCssDc7x45N5
 r/Wf3HAeZYsshpBfA7s+s+2kulSPT9f8xzRdtmr05S8Lvp+BCVz0rUuJqf8Lc1YKUQ/k
 PRxXJ0JXzL6YNtp5riVE5BoCvnTpFhxpBENevbmegemOJQKgQrkw7uLDl1RlwTR24aRL
 te0Q==
X-Gm-Message-State: APjAAAVQ+Qxkps5OYLJUy/5Y2J4bOTiXyfd0l2WKokBg4aLq2s6x0Lqw
 OYbFWz35xnNiZFBOpKyrJ++EOZXko/4=
X-Google-Smtp-Source: APXvYqyOu4Np2Xs4Y4D91Y9VQdAV4MGZhdU9B8smzcH3E0RHUzEEFL52KfM/qo0jHGRtpVa31ipvVQ==
X-Received: by 2002:a17:90a:e502:: with SMTP id
 t2mr11875721pjy.104.1567110528791; 
 Thu, 29 Aug 2019 13:28:48 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:48 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/17] coresight: tmc-etr: Check if non-secure access is
 enabled
Date: Thu, 29 Aug 2019 14:28:31 -0600
Message-Id: <20190829202842.580-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132849_314848_024C9473 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

From: Suzuki K Poulose <suzuki.poulose@arm.com>

CoreSight TMC-ETR must have the non-secure invasive debug access
enabled for use by self-hosted tracing. Without it, there is no
point in enabling the ETR. So, let us check it in the TMC_AUTHSTATUS
register and fail the probe if it is disabled.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc.c | 12 ++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h |  3 +++
 2 files changed, 15 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index be37aff573b4..3055bf8e2236 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -236,6 +236,7 @@ coresight_tmc_reg(ffcr, TMC_FFCR);
 coresight_tmc_reg(mode, TMC_MODE);
 coresight_tmc_reg(pscr, TMC_PSCR);
 coresight_tmc_reg(axictl, TMC_AXICTL);
+coresight_tmc_reg(authstatus, TMC_AUTHSTATUS);
 coresight_tmc_reg(devid, CORESIGHT_DEVID);
 coresight_tmc_reg64(rrp, TMC_RRP, TMC_RRPHI);
 coresight_tmc_reg64(rwp, TMC_RWP, TMC_RWPHI);
@@ -255,6 +256,7 @@ static struct attribute *coresight_tmc_mgmt_attrs[] = {
 	&dev_attr_devid.attr,
 	&dev_attr_dba.attr,
 	&dev_attr_axictl.attr,
+	&dev_attr_authstatus.attr,
 	NULL,
 };
 
@@ -342,6 +344,13 @@ static inline bool tmc_etr_can_use_sg(struct device *dev)
 	return fwnode_property_present(dev->fwnode, "arm,scatter-gather");
 }
 
+static inline bool tmc_etr_has_non_secure_access(struct tmc_drvdata *drvdata)
+{
+	u32 auth = readl_relaxed(drvdata->base + TMC_AUTHSTATUS);
+
+	return (auth & TMC_AUTH_NSID_MASK) == 0x3;
+}
+
 /* Detect and initialise the capabilities of a TMC ETR */
 static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 {
@@ -349,6 +358,9 @@ static int tmc_etr_setup_caps(struct device *parent, u32 devid, void *dev_caps)
 	u32 dma_mask = 0;
 	struct tmc_drvdata *drvdata = dev_get_drvdata(parent);
 
+	if (!tmc_etr_has_non_secure_access(drvdata))
+		return -EACCES;
+
 	/* Set the unadvertised capabilities */
 	tmc_etr_init_caps(drvdata, (u32)(unsigned long)dev_caps);
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 95d2e2747970..4c59f2a4ad0e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -39,6 +39,7 @@
 #define TMC_ITATBCTR2		0xef0
 #define TMC_ITATBCTR1		0xef4
 #define TMC_ITATBCTR0		0xef8
+#define TMC_AUTHSTATUS		0xfb8
 
 /* register description */
 /* TMC_CTL - 0x020 */
@@ -90,6 +91,8 @@
 #define TMC_DEVID_AXIAW_SHIFT	17
 #define TMC_DEVID_AXIAW_MASK	0x7f
 
+#define TMC_AUTH_NSID_MASK	GENMASK(1, 0)
+
 enum tmc_config_type {
 	TMC_CONFIG_TYPE_ETB,
 	TMC_CONFIG_TYPE_ETR,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
