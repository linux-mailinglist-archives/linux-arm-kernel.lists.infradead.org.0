Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C78994F7E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 23:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uLgFVwZHQk2IOTXT0FWlc933SycsiI3wekmnZRd8JXU=; b=C+ipRTx81fQfZvwgXtRrrLC90T
	X91ArbYrRTjaWv+KGhCvyp2+6tzxrvkHRMUHfM4nPWGW0wRKQxudxsTeXBgHJQcRqiNz5bA/jpMkA
	jA8NeQ+r1pnDpPkGjDjlu+ztl3RAD7OxLHwA9F/OtGVvqQzTNkhj/8WR+9DQU9W4lGtA8gjsj+T//
	jcN9gxMYonlA97nYSOj3l8497pccIzB6JDE+zdbICgboMNkFjRKwy/LObXgFbnJmMLOrdjn7MRgkL
	0NUju1gspMm/mJ5rHunrJEffIJBoNIlnZ2djESKRn16awr5P22nJENDB4ORMvE5JDOUc7eiCdmJDj
	JbCYv3HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzoky-0007Zh-Bl; Mon, 19 Aug 2019 21:00:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoim-0005IF-Nf
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id z11so10116559wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tZjDuINKZVADY8hFckbdEg/JuW5ruTkY0MkR12ux+y8=;
 b=rEAy1qMIvoJ+nkeHLNwmZcxzPiNOKTgM2UYbLYy+E83UyTvNCacwhQPL05uJKsOS9H
 5kiv2cSx5N8tPsyS0WdQIueq9P1OjNLEzRSGQNI+iQZzrwWOpB6ROn67gVyoxZMkdvkC
 54gaOjqBiXp5JQIco/z1t0WKBPeCLPp3cvn3Qym/KcS3D7dae1rcNJO2/hynCFDH0am1
 pDglPhSF50jMv+voW4BKRD2yoM8sA07EJSM7dcnOlItD273ZlPUpgHOAZii+kWa4Kwxb
 BtQzd5LkUiiF+LgaHyPjUtNncuvzW3ZWJSkXqeQHdeaBXB8nFmR7un6DT3yJWYuxnify
 MCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tZjDuINKZVADY8hFckbdEg/JuW5ruTkY0MkR12ux+y8=;
 b=QLCro4Tmlr9OonrZBTV98hA/4DTYSAWSHQDAoMMzLAGxV8DJnEIRP87PeCNfj4InCb
 uIQhGvYXIvw1SEQShGjuZopPB2g0jNI22Q9S556IBEUCFxMdjaYu7bERVkxiiQ/M16OU
 VkpYg7yl2ZjwpCrxuLBKxSYhRckcU4l40tuJruzICEuylqtbP5Yr1SPcCnm76hbSp9R/
 iXBgW9ja4A9XdXQHfZbkDiaKqBZgf8ytyGSbnMXdzuQKWl/MAWg/wejhuUsrrCIojPBF
 quMVlFdR5ks6n7tFWpB3WVHhlvTl+BQRJkcc5APl1B23vRbpflKZ06aRgs4EFV4dEaLp
 TSoQ==
X-Gm-Message-State: APjAAAXfckf0R1ZbdXAF02VpF4BJiGp5ieTdRjawU6oJzwtRzCMICT2L
 PsENm889DzfNAK/uk/VhvoTgrQ==
X-Google-Smtp-Source: APXvYqyga+92Y/kSuU5nRch9r2MUMH7THNMXRYEAuo/i+1tIU6nw75rqqn1zGTpKQNCR6eMHrvyx3w==
X-Received: by 2002:adf:a348:: with SMTP id d8mr30703662wrb.235.1566248260540; 
 Mon, 19 Aug 2019 13:57:40 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:40 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 3/8] coresight: etm4x: Add missing API to set EL match on
 address filters
Date: Mon, 19 Aug 2019 21:57:15 +0100
Message-Id: <20190819205720.24457-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135744_867608_B5F8F05F 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

TRCACATRn registers have match bits for secure and non-secure exception
levels which are not accessible by the sysfs API.
This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index fa1d6a938f6c..7eab5d7d0b62 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1233,6 +1233,44 @@ static ssize_t addr_context_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(addr_context);
 
+static ssize_t addr_exlevel_s_ns_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buf)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	val = BMVAL(config->addr_acc[idx], 14, 8);
+	spin_unlock(&drvdata->spinlock);
+	return scnprintf(buf, PAGE_SIZE, "%#lx\n", val);
+}
+
+static ssize_t addr_exlevel_s_ns_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buf, size_t size)
+{
+	u8 idx;
+	unsigned long val;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+
+	if (kstrtoul(buf, 16, &val))
+		return -EINVAL;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	/* clear Exlevel_ns & Exlevel_s bits[14:12, 11:8] */
+	config->addr_acc[idx] &= ~(GENMASK(14, 8));
+	config->addr_acc[idx] |= (val << 8);
+	spin_unlock(&drvdata->spinlock);
+	return size;
+}
+static DEVICE_ATTR_RW(addr_exlevel_s_ns);
+
 static ssize_t seq_idx_show(struct device *dev,
 			    struct device_attribute *attr,
 			    char *buf)
@@ -2038,6 +2076,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_stop.attr,
 	&dev_attr_addr_ctxtype.attr,
 	&dev_attr_addr_context.attr,
+	&dev_attr_addr_exlevel_s_ns.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
 	&dev_attr_seq_event.attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
