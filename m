Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639A3102FFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 00:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=21sicWYTql/YUnzNqTuTg+hA0eIv/Uxt/ljqf/+D+58=; b=hi8i6eGunzwk/CUx4jof6Bkox3
	K0Hu3bdBxYShUaSFkbYK3ui53k3xAIpjSzH93lZQBrZa7slfdbsM0GBbVpRJEFBWUbhJWOp7B7bBT
	84Gb9FDr9M8hbfvXK/0kI28ESa4/bqwFBJRb3HLmlTlYKyQ0Ng8K0B/CfnzJgT+/Jn56SPhXEwdMQ
	v5klzFY1yG8nNntd1wRsAJbnbi4ZKePrZpNZK2VlRjsVLhfDhy5Hhjl8g0i3df0swOUXgSownY6Do
	HVzVUVEUqEoh+EA4cQnuCL3HtCHThD0uFAAGpX7bcW/ebixHU14yhOtj7CxtMmMUYQp6iNtl7/KT1
	pcpIGSew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXCmf-0007QQ-2I; Tue, 19 Nov 2019 23:19:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXCmI-0007P2-Tk
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 23:19:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id w9so25950801wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 15:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ioz5PX0oov2JaX7mQvAoC7mmHamYIvxsGoKqeikkaN8=;
 b=eovu/jQwEYr23wqulMSr5kPbxm9EnEYcMkrjA9bfPXlVjVI9xH7NvJCrSK/0A2y2tp
 s4IdgDy8z9Dh7w8U2hl+6sP2O0Z97KPgnPBfsp7uvaa9moEmJmOc0bDgZSjqs4f4LIVO
 zxt21+9EZvAZJkr9I60ayPNFbhpbz6Let/qLUOyocQJ1mB/VBW9fX8+n5fboKtJtaUKS
 7+Fuff+vIuVUeeZLJNsV0IU/9bffmRA0DegTC2Pv80x7AvgxDcgA/CUwxWDDO3bIAfVG
 Xgg2ylLsXvRuSd9rATIsQ5YZ7XL7OrHwNs83oNlsS/ok994+3rhF48H40iStyupre020
 /LiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ioz5PX0oov2JaX7mQvAoC7mmHamYIvxsGoKqeikkaN8=;
 b=k9r1zkx8LBI495Xq7k3VUjR+JAsuXa3+ylvgWmeMBKWH2NR1bQ6edAHDgsXsZUv28x
 7L+6hcN2L/t+LRNWg0qZx4QQT1FbfKkWuVhu4CJh93zck8Vit8rU5WX2u6n7gQ6tayEI
 srAlZrExyJvKhc/9WnmxNxqiNcqorh4rNidGP5EJTQ+fMWMe1Wjb6wnG69yisBYDeSFY
 9Ci2jnsoYT7Yo4pWkKYxzlKYE4gYTjR2gkTHO4AVgQoT6eUmBJme2aD18Z2mn3mE/Cga
 UcZ5ct9XjUW5FZqNvNyTuD24Q/f/F2IE86BVmEO7QlfLqtoz+mCPElkF0Ly96ANwVbY2
 X13A==
X-Gm-Message-State: APjAAAXYGUVlxuM10tpEoFG0S8OBwyEAbb0nYuDqfkJOpSRnmZ1A9wLE
 //iPdsTyAdsT7snLq8dQXKOBWg==
X-Google-Smtp-Source: APXvYqzHeH3bQMoFavhhf+F+C3BuD8+p4Cx9GIJNkf1B751mBDR7TlHgIz+N/5Brb7BH4y5LszkLFQ==
X-Received: by 2002:adf:978c:: with SMTP id s12mr39187370wrb.47.1574205561439; 
 Tue, 19 Nov 2019 15:19:21 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a19d:4139:292b:19a0])
 by smtp.gmail.com with ESMTPSA id m15sm15746717wrj.52.2019.11.19.15.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 15:19:20 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v5 02/14] coresight: cti: Add sysfs coresight mgmt reg access.
Date: Tue, 19 Nov 2019 23:19:00 +0000
Message-Id: <20191119231912.12768-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191119231912.12768-1-mike.leach@linaro.org>
References: <20191119231912.12768-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_151922_960085_9B3D4F32 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds sysfs access to the coresight management registers.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h  |  1 +
 2 files changed, 54 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index a832b8c6b866..507f8eb487fe 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -62,11 +62,64 @@ static struct attribute *coresight_cti_attrs[] = {
 	NULL,
 };
 
+/* register based attributes */
+
+/* macro to access RO registers with power check only (no enable check). */
+#define coresight_cti_reg(name, offset)			\
+static ssize_t name##_show(struct device *dev,				\
+			   struct device_attribute *attr, char *buf)	\
+{									\
+	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);	\
+	u32 val = 0;							\
+	pm_runtime_get_sync(dev->parent);				\
+	spin_lock(&drvdata->spinlock);					\
+	if (drvdata->config.hw_powered)					\
+		val = readl_relaxed(drvdata->base + offset);		\
+	spin_unlock(&drvdata->spinlock);				\
+	pm_runtime_put_sync(dev->parent);				\
+	return scnprintf(buf, PAGE_SIZE, "0x%x\n", val);		\
+}									\
+static DEVICE_ATTR_RO(name)
+
+/* coresight management registers */
+coresight_cti_reg(devaff0, CTIDEVAFF0);
+coresight_cti_reg(devaff1, CTIDEVAFF1);
+coresight_cti_reg(authstatus, CORESIGHT_AUTHSTATUS);
+coresight_cti_reg(devarch, CORESIGHT_DEVARCH);
+coresight_cti_reg(devid, CORESIGHT_DEVID);
+coresight_cti_reg(devtype, CORESIGHT_DEVTYPE);
+coresight_cti_reg(pidr0, CORESIGHT_PERIPHIDR0);
+coresight_cti_reg(pidr1, CORESIGHT_PERIPHIDR1);
+coresight_cti_reg(pidr2, CORESIGHT_PERIPHIDR2);
+coresight_cti_reg(pidr3, CORESIGHT_PERIPHIDR3);
+coresight_cti_reg(pidr4, CORESIGHT_PERIPHIDR4);
+
+static struct attribute *coresight_cti_mgmt_attrs[] = {
+	&dev_attr_devaff0.attr,
+	&dev_attr_devaff1.attr,
+	&dev_attr_authstatus.attr,
+	&dev_attr_devarch.attr,
+	&dev_attr_devid.attr,
+	&dev_attr_devtype.attr,
+	&dev_attr_pidr0.attr,
+	&dev_attr_pidr1.attr,
+	&dev_attr_pidr2.attr,
+	&dev_attr_pidr3.attr,
+	&dev_attr_pidr4.attr,
+	NULL,
+};
+
 static const struct attribute_group coresight_cti_group = {
 	.attrs = coresight_cti_attrs,
 };
 
+static const struct attribute_group coresight_cti_mgmt_group = {
+	.attrs = coresight_cti_mgmt_attrs,
+	.name = "mgmt",
+};
+
 const struct attribute_group *coresight_cti_groups[] = {
 	&coresight_cti_group,
+	&coresight_cti_mgmt_group,
 	NULL,
 };
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 82e563cdc879..aba6b789c969 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -22,6 +22,7 @@
 #define CORESIGHT_CLAIMCLR	0xfa4
 #define CORESIGHT_LAR		0xfb0
 #define CORESIGHT_LSR		0xfb4
+#define CORESIGHT_DEVARCH	0xfbc
 #define CORESIGHT_AUTHSTATUS	0xfb8
 #define CORESIGHT_DEVID		0xfc8
 #define CORESIGHT_DEVTYPE	0xfcc
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
