Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA7418D4FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:54:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbm51BlmlsQSFKoC/KotwMwhJ9CJmCkp2pBY8it2qKE=; b=pXRHHeCBZxTX9M
	7ECFTvat2bHe8yRw/vkvqBZ+uklwrNIf7qfpXQhY8V78OC+4NcO2OFPthjFUTdufeEyDnGaFevtZ1
	SNaw8PralSfmiNU2LED4qhlAHhWHJKyC9VgBAsrNhVQUec0He9TPYlAhWCICecV544Grmpmy41S9D
	RBUNbrpw0ZIS7R/kF1Zj3oKG8FXIJwKu8ruKppHZWepMUUCWMmVYOYlWW++aLCh+ML32HQ2Gdv1RK
	eay9HMJtOP4Soxc5OM3tYDyiBpahXu0ZFMYBeb8d4wtHTID6gBOAD1/xtp5ok7kt0mKKdfBtqV9l3
	LGp8N3mvjuKrnPLPygyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKug-0003rS-GY; Fri, 20 Mar 2020 16:54:26 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtT-00033P-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id x7so3376903pgh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bqv82b+ph0sEcbGJvVNzchR8aiOgRU1TkB23QF29QAE=;
 b=X+bXUI1hnWVBbNjI8HHCzwZPH6DFdbhZAEjZIcFie4q5RuWWDFlzsJJEpPpMQAHeYn
 9c5ZV0sPFFemBTQcHq5u0VROrlvv+zGOCgdgG6VlMm7MgPHTRVsdzu4fIEmKBloS++RW
 Kf/JW0C126ZnTdNeJ4mJwzVC/AE/Egf4e02XGZdAod88jLxuYqibJsy3LGVrv2GsF5KN
 Haf2OcQzXmjdpCDBdBEa5y87aqxlAwHjNHR0pMlrN5iSY5ynU2NK1sQdtP8dgYp8XT59
 94bMjA+ZaOZvijAimEQ2Fc93o3R/L5iO4bNWixKBPjn1u1En63Ao31YKWY1W0rSr2xDN
 qA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bqv82b+ph0sEcbGJvVNzchR8aiOgRU1TkB23QF29QAE=;
 b=nN+isr9d298P1227+Wmdec5vaoYeJM2hlUqajXcrpfAm/QMztxVZJs437nhRUh3+Sl
 a3BIrbdEvK+4mN3wDsti095BOM2HGTaBRmDLicIEg+quxMw4Xflo9uQuDeNk6+GKEVtg
 Mz4VAT06igbtsgY2j3Sn1misryHolj1l0jwyE850BI5myLCVXppKrH7qQs/wI9n7ocL3
 xfiMaDjBmfZYzxVGtFphxiMbVVcH3QmylhkTyqv6OHtLqBNXkoFtbT/cPlsnySQPbfit
 VhdlTqGWa2Ndw+2RmJdri7MYGmlCQ3dMhQoSFWMGtRrJxMo02lY+w1xq/hJXg5x4Qw7V
 Ssvw==
X-Gm-Message-State: ANhLgQ0OsBsWKiaiqNdPw2kjjM8D1+tpx1/vRkYDiQrhLbXZ1whMKCkw
 k1K5LbAREp0xbeY+s3UoXLRkAmR57IM=
X-Google-Smtp-Source: ADFU+vvhm5BKQcSM6HKLRShP+sWhRIwrWCaZYWUy8ZFwiyRGfk38awXmZ0GBfGv9UJSnYQmWtxZ3AA==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr10552175pfa.139.1584723187142; 
 Fri, 20 Mar 2020 09:53:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 02/12] coresight: cti: Add sysfs coresight mgmt register
 access
Date: Fri, 20 Mar 2020 10:52:53 -0600
Message-Id: <20200320165303.13681-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095311_201776_B40269FD 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Adds sysfs access to the coresight management registers.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-cti-sysfs.c | 53 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h  |  1 +
 2 files changed, 54 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index 6d2790568071..378b435d9a8f 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -73,11 +73,64 @@ static struct attribute *coresight_cti_attrs[] = {
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
+	return sprintf(buf, "0x%x\n", val);				\
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
