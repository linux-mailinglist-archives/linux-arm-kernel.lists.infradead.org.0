Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CF17E490
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bd4AErNnsbeY97FS3TP+qe4GgCKaCHFuRJF9r/vwd/A=; b=FyGCVjnYkgbYx0
	4/Cp9ZO/INZkCr2zm0YVGqiluvBIS9n0hM2GGloASP3KaKi9K0lCcgnjsQB0jLDVQFyt4M35ef0Oi
	Gu9TpVRVyMhNQxXNxtrObMOtjNELcntti5vzcO1fP9uWSOBZE9kBIUePPLSAgzEOBAWx1NOU61oAg
	VcVHd4dYEZ/gIwedNRMd4y5woQvhA5m4ecvPRPN67lj2B3J8nGMhzHoeHvv8ltOpzQMxEgCR8r54T
	4K2b44jgwUeC3wfJQfxM7RqYedZjk/NkXMRNh+N+aU1o8YEOzUubwOGjMbwTofCRDfMt9Ard9JOn8
	IeWMjsfcYx0BxqdHtbiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL7K-0000fR-SW; Mon, 09 Mar 2020 16:18:58 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL6G-0008Td-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:17:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id z5so146703pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PcYw7fpl583W5FJ6mFqwCL03QCEposuoNhiZDff2Tto=;
 b=M8iqblVixD4cvu/4iRbRGllGuZ4xQPyCWOOtVQxLXTcD38PsBQP4PH+4t+c1th5uKb
 lijOikogDq57BVe5tF3uL0esKPqML8Oduj9jMtNdhvUrgyIsZtirOXh8JgLgeZjdIxdl
 1XhSPIoIIpakw5NCY4D9Y/RyqiCTQMKaAgg/a+eVSnO55AJR1DvwGlfGg3jkGepvIrLE
 HLM1u+em8wdiGunMWgQsGMMOCjfx3HmwvQKDuf6E4bocTabiskupMUBauaXyWP+K0thq
 8y4K1nrKWaB53th6uq5HYRJ5Jpzt1fnncrJhDwGrXahC4deptlfY65MIuLz4jLByI5L8
 pW5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PcYw7fpl583W5FJ6mFqwCL03QCEposuoNhiZDff2Tto=;
 b=snc4B6H/HP57A8Z+dwK/+TJxzxN8jnRWzduAaASLlw30dnW4kSiXEFFPhqWISYZmBi
 zHhdNoi6K5DGluuDlngIeytOyPfb44h/jeEiI/Ju7pwchwHlx64V5/TA7NdEsbGbk3+/
 vULVcggaF3/YXwprY39Yt6oeCuUgKx34rsGFnCNhd6GsXn6ZbxSxwMidTRVbe0fTtuFw
 fDEcm3ND5+Honx0Pg7Hexpqj/dbEokuf02JzfZ7zWzc+gHVZXItBDm0LfNK1wrcrJdE/
 OKsUGePGOh5gMtmBB2pKLVjYtm5ijcYJ3yD2i4v7uBtXwNL29Ls3/QJladpZ9lMWg8pi
 S7RA==
X-Gm-Message-State: ANhLgQ05WfwOCCw3YOqTUvoTCp5QK0Xlyyq8kIYT4QJGsd1LHhoPRYzo
 DGMcz896jD+LQEfv8Ksdd6Z7og==
X-Google-Smtp-Source: ADFU+vvZBxZy2R2KSAGCxjTDkF7iK9IVsOAHa7agqtHqJUbNLRNmC87YTrP2lk2C/kwrIQRMRCUvFQ==
X-Received: by 2002:a63:257:: with SMTP id 84mr16675237pgc.304.1583770671347; 
 Mon, 09 Mar 2020 09:17:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m11sm38403pjl.18.2020.03.09.09.17.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:17:51 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/13] coresight: cti: Add sysfs coresight mgmt register access
Date: Mon,  9 Mar 2020 10:17:37 -0600
Message-Id: <20200309161748.31975-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309161748.31975-1-mathieu.poirier@linaro.org>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091752_345305_964EDBE3 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Adds sysfs access to the coresight management registers.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
[Fixed abbreviation in title]
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
