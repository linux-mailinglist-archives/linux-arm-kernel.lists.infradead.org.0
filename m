Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C88D139BA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:32:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z5Dl+2KAZ80ztYjiyBA35waJdOu7ExK9+brimZEDWl8=; b=fBr8dm6NnoSbNgOEMWSEEgkAQz
	pU0ovzRZHlYpjsKxc1Gtjt3BWQUDJXw5zOgm0NdzPl8eVtx5p/QQMgnDcI0O9TkPV9wY237pwGVIT
	iGKAVC1It3+8cTcLg096/MMoJRBSHZeUsYtgcupgB5xfVXuwDMYa0jzwNDuZeoZ+wVlp007aWd+V+
	KlrnAzW8FkdmovGcHaAsfQV4SNGZR+KMwT+vGDUcn3HtjgitFHthPwJPKSoitHg2viX7KZXFjLoAd
	kYcyW9lBlcgHVY7axzOq3we36WXyt29zPgcWxBdUoPU/u94AOSwIrTV1VPfjv2flO9Zn1bNe2WHjy
	4CVSAAiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7KJ-000478-0F; Mon, 13 Jan 2020 21:32:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7JX-0003l1-LW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:32:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id g17so10174161wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tDhVs6CVDINJ1HNHUEVGjWNjJ7PiR8LnUgb8ARuG2ic=;
 b=A2fwW/TD0NpDGzkElA08ZVgMAa1qXtJ3piLjsAotQbtJBvFVfCYHT+QVxxX4xCfmYU
 UCG4weGzBATiBaw4GsJG1XpftdYG9DP79uLiY1KIK0vrwkDT+DAJPMCYwCM7jR2D3oDS
 fR2tvxGtR0UoqcYRMYtWsy+v0AmQdfSWRK+5ERSZ93tDMxP935dSmY2ojelcJNRXq40/
 1WwTO0wLKs2NO51ohyMT9x0MCmAxWaukgPOj8JZKj9TLiyIX0XJEPHHYBWHwq9TZ9Ncx
 DmSEHW02ZIl8XYplnpb5x9MJSyVI9vyO7SgEjfi44GkWD55dxARQWu6u2922fMpDXAWg
 VUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tDhVs6CVDINJ1HNHUEVGjWNjJ7PiR8LnUgb8ARuG2ic=;
 b=FZPsJlbQAlYovAV5czBENcyviAJ9okM2ZGLGDYoUt+PlRyb+lySNgGNIW7hbaZXzWA
 F4Uy8oWi11JjwbVe8VyXt4eWeYJ3gdtm0wbj6P+dqAKj6DWZngqUQb2fqRDiU+1rUEbq
 RmUhNKw5PJrOPxJtEYwb2FhISKJfMc8k2KzjOXF9m07y2rrorH5Nfl3Ok5x9Oa39p+Ll
 /1kEB8ghi8H7wiAk0msU1udpvLZ0+ACIwGy0CPsBxVhtoI1fkYAXX8zOVJLW1NCyL5Gv
 MbPh/6X04lNKEXDaSkOyx6d+0BKrYNzG8HBCzao3G32klLrKDsefe3+xO+hq+G8PvtV5
 oYXw==
X-Gm-Message-State: APjAAAWaS8H/KHlo1DSNKN8Nc6OSxRoyTM/sPpfc2VhgregOwp9BIEk1
 IgZk1kmZr58S3NbyxJOHkdmHew==
X-Google-Smtp-Source: APXvYqxBk91QKuFiZXfZ5iXCbkKS4l4muzIu7zxHkVi1v684XagIaX5Y079nFQnIclaOL46PZwYRAw==
X-Received: by 2002:adf:fa0b:: with SMTP id m11mr20667886wrr.98.1578951118090; 
 Mon, 13 Jan 2020 13:31:58 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id j12sm16725120wrt.55.2020.01.13.13.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:31:56 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v8 02/15] coresight: cti: Add sysfs coresight mgmt reg access.
Date: Mon, 13 Jan 2020 21:31:36 +0000
Message-Id: <20200113213149.25599-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113213149.25599-1-mike.leach@linaro.org>
References: <20200113213149.25599-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_133159_744993_568B9E0B 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds sysfs access to the coresight management registers.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
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
