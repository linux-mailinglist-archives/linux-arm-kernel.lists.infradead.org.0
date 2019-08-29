Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A848FA290E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tpeUYVNSrwA9MDuOUh982lZC1m/evMZr1oYKhqezefs=; b=HbmyqomJeDBnMJdQL7IajWMwmC
	2XU2a9kLNWN0G6d6x+SkxyzllTOo//hauUbg/Wmzn1pnc9FN1GroQtQbZEAF13QTJnzz+DsjGglTk
	vKbZhi8pp1k0x0q3L/tsvm4emghTzwOfheb5njQre+us7FJBmg5WHT/9D3w4Xemwf4szzxDWWYAEk
	tik9dWXQj5ncE1MGQFM3ZQWlcjBozvOffpk5SkPT3DqIjMhxacM7Zd5NZoyLEJJNSQ82JKMIDNwR8
	KqFGs814sA5UqKh6m1EOoPJjk5U/Zkbrm2r9b7+Kwzr6/U1TGwpXPPBPHhYKRAIomGEuIqO2zDkIk
	X5tEls0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S3p-0003PS-OL; Thu, 29 Aug 2019 21:34:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2w-0002it-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id r17so5046506wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fur89ambu8asqSKJ83o1wksXejtXLZa5zDho06Du8Wk=;
 b=jxEC2MTnlb5pZQa+aiOZCUHUnA9Cqx6SGXvbA8O6R665H+DBm8mi3HoXHPzYOQY0kw
 99FyErMxjuLQNjwXuxsw43eVSGI2+X3CuEGYUgtYS/WARvUiHGSQDGrEjDuFX6uLT7FR
 pnm/L8Hch/FnLR9Hwn3kfHSwv9npCyPJpOtHN667am68Ec5/KevjwfZ+CwZJRRH4g4m8
 n8flMMnYzpr+cxZWMm/C4bljBmDYs3yqxPjmaZYgm6JfryPRXX7n41oJzRuGOH1gwvyF
 GomML8e1qelCLTt0OGZvNBG9lk4L5GqGOY+u03mckTuZtMEb+mUfnsQYjU/KJSlHn5Uy
 tmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fur89ambu8asqSKJ83o1wksXejtXLZa5zDho06Du8Wk=;
 b=bDiM+LiuXl7l2XMtLd7XZWozJ3pYte2SmrJzSjEDWke6hTwqoPADDvpn5v2ob4W4Ut
 OFSUjtifGXXj3lgmQxHMs5qKj3mnI19ifAyRTN54RsoaplJ4BKOsLGecqUv8ms4Og1g/
 08sQujagF/kuOFN31vgPf9W7tYfH4W3hHCG+BGZzWy8uGLCwDSqRjdqqiwKFSZfKIPBc
 2YUyZpSDkCMbMKSyw7hYkionsXwLFF7QLvw02Y1Md40CPySYrXJogdskHYFGsOxn5BEs
 PmGank5m9PN8kGMz3f/DpmWqPPvzJtyLCaj1WQSqK62blhJVlyWN6UF2YjQ6fyc6fOrv
 4sNw==
X-Gm-Message-State: APjAAAUmSlMrijAAo+tRuqt4VCR9sEnHUD1wwygtzEAxtN5HAh/d248c
 /1BEUGd6Ui3p0Rg+0a3uH+Jaow==
X-Google-Smtp-Source: APXvYqyDlvJS5ipd0Z9JZJ7tBVbuqrlRIBk11+3pGl3pXYiJbtmfVovrJvxYjAxjVwtCVQcTcJXUbg==
X-Received: by 2002:a7b:c244:: with SMTP id b4mr13814780wmj.125.1567114412966; 
 Thu, 29 Aug 2019 14:33:32 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:32 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 03/11] coresight: etm4x: Add missing API to set EL match on
 address filters
Date: Thu, 29 Aug 2019 22:33:13 +0100
Message-Id: <20190829213321.4092-4-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143334_630639_C7787D59 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

TRCACATRn registers have match bits for secure and non-secure exception
levels which are not accessible by the sysfs API.
This adds a new sysfs parameter to enable this - addr_exlevel_s_ns.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index cc8156318018..b520f3c1521f 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1233,6 +1233,47 @@ static ssize_t addr_context_store(struct device *dev,
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
+	if (val & ~0x7F)
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
@@ -2038,6 +2079,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
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
