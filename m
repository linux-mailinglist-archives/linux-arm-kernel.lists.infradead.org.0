Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5D816F3C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z5Dl+2KAZ80ztYjiyBA35waJdOu7ExK9+brimZEDWl8=; b=W3tWRdIvv2nuelP/GTXMYuDSZ0
	s2kyQbKJWuwxeheo3tMPxnorB+6UNglksPb79OVaBqP84G5ZgRtRYxh5mDdqYXtl4gmwb/QbPwwmL
	I0bsROUzh9JX2Jfwc8S6PJEhTJ463nSKp4mkzX7/NkxEG//ya13a93tbb4w6hdEL4sBCmveenrwl8
	a++s4xCxhz0rl3u2j5q2LM+rdMOF6QjesVyjF3XfMt120zqWIii33HApe+Qof9XZM0XDX9mW6Q0Tg
	92TKpVYhry+5Vy72AbtqDKwMP3lydxJNaTf6nDDTna247HFTK5zbIAL12ZzGIWddWAq79WgN05CKr
	ChyIgOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6juu-0007QS-TY; Tue, 25 Feb 2020 23:47:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6juM-00078g-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:46:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id l5so777405wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 15:46:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tDhVs6CVDINJ1HNHUEVGjWNjJ7PiR8LnUgb8ARuG2ic=;
 b=fX/tz/TG51Ku1LPGk4c/OACF8lA9JX7J7eUJ5N6Nq42/JUqhcf4V2J1c1tbTN9dBaT
 /MWYRy/rEEwG8K1u+gOGC/u1dPzSNNE307iffbGvgoUGop77zoQBFSdow3jpFCajM+aD
 1GvJ6hjk1hguSAcmr3pZPDflYCZS3lHewAv/Ooiq2H9RXYgjohd3JlcTdK8/Y7qP8/v4
 EkprqPZ/v5kP2qhkX7dzHOUGyXDBms8qKT/VlIRICO86+Mv5AddvtWmrIRXiLlfp/JwG
 x6pku3mXXSeNCAnRBSaObVq6XDTVtE4zTSMwLPuw7d8AANK3M3LnzU1OYYCdVuqTCXti
 90/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tDhVs6CVDINJ1HNHUEVGjWNjJ7PiR8LnUgb8ARuG2ic=;
 b=a/9yfhPG7ltSLHI1KO0TkWTzgLYbQjWFi57TtzppIlMT0bwg+QCZ8GAh7emNpxA6yd
 yQKqVwcijdK9qGG/ybHcIQjYEuJxU4qEY/XtpmqY6THrvHqScwfj4t3ooKrCGkW0wyQG
 ZCVU40GtOVHW7Kxk2uu296n19khb0EbeB5WT0LwpBDMFwAmuVJsXDjuhLXgrA/iTB+yf
 uq1yIvApgTECT34OfaK77zqg79B38zFubdlAojsiH0+BuhcibqOAxo7Y0WCpgte2ueRE
 GVaGW0I0d3MBBUIBAZRwIuJSa95mrBGnd1Nzwp5fXdI5d5bKklR4e+JxskL9SXi7es0W
 vgRw==
X-Gm-Message-State: APjAAAWNb4V0oTmSTDuLd4Pw2wXmcowyDEyS5T5P4YH6RHIthrVkRE7U
 MVnlpciKFkjOGjqJKmQtIvrRiE/rXBM=
X-Google-Smtp-Source: APXvYqw/0xPxgnl7aeDKR5mzbKyWwiPyvdFy76euk72B/l147vIAmjWTVbVfrHYLYMuc7RrLvlHxiw==
X-Received: by 2002:a05:6000:188:: with SMTP id
 p8mr1522247wrx.336.1582674392490; 
 Tue, 25 Feb 2020 15:46:32 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:186c:5f6c:221d:5ce])
 by smtp.gmail.com with ESMTPSA id t133sm356278wmf.31.2020.02.25.15.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 15:46:32 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 coresight@lists.linaro.org, linux-doc@vger.kernel.org
Subject: [PATCH v10 02/15] coresight: cti: Add sysfs coresight mgmt reg access
Date: Tue, 25 Feb 2020 23:45:58 +0000
Message-Id: <20200225234611.11067-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200225234611.11067-1-mike.leach@linaro.org>
References: <20200225234611.11067-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_154634_393177_C53B2B69 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com, Mike Leach <mike.leach@linaro.org>
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
