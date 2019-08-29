Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F462A2913
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Bs9f3uBgFbcb5afwF+d5u7hM0DefAJ2wOIbcmlYvBo=; b=qvl0VzZhKI/OAIQyLKL6jVLvCM
	gXT+LtZgqI4Nk8FycCVGnGFU1//AMwARNt+51A+NMryzJojgqOPpxDUwzcPX9jbIZRgip6jbNYDmY
	OKmJdnc15TKaW1ZlHpfbW67ik68svAHfvLIIKGcaZ9aGOG3FZvMUqN3qHZ8iajXdnH66S9HfWRozT
	bmFyXptJL7rYZKpChUJGY5NOzjhh/JfYIQxdETYhpRL87Q6yTwcQja9RmZC9gc8yulmkHlFIct/Y2
	mCyHNq9Jfb/Fn+UfnbWidIamy/gha0wZ3OaOj2MNU/AqktAukCRj1+A0skrUX2QzDUFasK79gs/HW
	JGdmA6ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S4o-0005TL-2X; Thu, 29 Aug 2019 21:35:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S30-0002mk-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id z11so4892599wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=16sir9Jo92fa6a3Fm0L8aUegEHqxRHW+/tMTqCDog2E=;
 b=RGAyjwObJ77VFslNszJX7jrH/aDw/nBNR6FDrmqYkeTivd/RXvKYAcK7xAfziq+VC5
 DvVDZFL19LmtjoiLFTGgIu2u1LEA8GPQVa5N6da83rZIQ1wgSqjRuX6DihE7BJBFP9hM
 5HnLRbqM+rw6SLgG3NZ+ZQgbWgV9zCkyThpvKafiDvGatdMuXimqf6F3T8a7daK822C2
 MLlQE9tm3fAFwAG4Wd3rluU+S05SuhDSmG1yq6DNhweSekxbPtHCn+JFm4wv/h/RNOo/
 gJGB+hCzI1ski9db1cYiBWYdaHOgJ5zJruSMiSMVpzvHSIXigHZ1r7cL30LFol4kz2T3
 Pwpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=16sir9Jo92fa6a3Fm0L8aUegEHqxRHW+/tMTqCDog2E=;
 b=sriyud6aWkX/myoOpaDW+ivqIjSZIh8dS2kDH3Um4wYgeWesuBGNeS3z1n7IaUImFs
 65PNEkCMZnX6DcNtl0cavaYzlBDn7lS2d7Wlb+OnE9fymaf+XA4lm7OaXM+SgYSDqok5
 Mpfhqk7VfWU1lBAtUqYP6QMFZje92NUHDuHcMaDV7OQtvAYFhF+eVRKximdvOT7bRc/6
 XDP2aAOdeLTFy9wmz93qt4daQbbyxxfYv7OC5//oqgdOUGynEQXWePK7xyVgBcNey5IK
 ZRSwfF9/hFcaLS+mVqmq129pNvVIWGhXIo+5/ohtT09aEnpmlOTYRoFNVue/eWtrKMqI
 2WhA==
X-Gm-Message-State: APjAAAW8Gu8TmbpfRhjYtPC2V3hxeSFArd0Z51JkmDKkbEtzh+kh3oni
 h7+ZYjBNd71h6G+9JeXgEn5+FA==
X-Google-Smtp-Source: APXvYqx2J3W2xrr4agpOmTtJlQZjTZ3fxGJws3q2aHzqr+k8zyeetFO2g8rb/EXHW04YVI8m8eTrjg==
X-Received: by 2002:adf:f386:: with SMTP id m6mr14175103wro.313.1567114417400; 
 Thu, 29 Aug 2019 14:33:37 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:36 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 07/11] coresight: etm4x: Add view comparator settings API
 to sysfs.
Date: Thu, 29 Aug 2019 22:33:17 +0100
Message-Id: <20190829213321.4092-8-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143338_768688_AAF60518 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Currently it is not possible to view the current settings of a given
address comparator without knowing what type it is set to. For example, if
a comparator is set as an addr_start comparator, attempting to read
addr_stop for the same index will result in an error.

addr_cmp_view is added to allow the user to see the current settings of
the indexed address comparator without resorting to trial and error when
the set type is not known.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Leo Yan <leo.yan@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index 171d3c580968..a8c9eadfe56f 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -1275,6 +1275,57 @@ static ssize_t addr_exlevel_s_ns_store(struct device *dev,
 }
 static DEVICE_ATTR_RW(addr_exlevel_s_ns);
 
+static const char * const addr_type_names[] = {
+	"unused",
+	"single",
+	"range",
+	"start",
+	"stop"
+};
+
+static ssize_t addr_cmp_view_show(struct device *dev,
+				  struct device_attribute *attr, char *buf)
+{
+	u8 idx, addr_type;
+	unsigned long addr_v, addr_v2, addr_ctrl;
+	struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct etmv4_config *config = &drvdata->config;
+	int size = 0;
+	bool exclude = false;
+
+	spin_lock(&drvdata->spinlock);
+	idx = config->addr_idx;
+	addr_v = config->addr_val[idx];
+	addr_ctrl = config->addr_acc[idx];
+	addr_type = config->addr_type[idx];
+	if (addr_type == ETM_ADDR_TYPE_RANGE) {
+		if (idx & 0x1) {
+			idx -= 1;
+			addr_v2 = addr_v;
+			addr_v = config->addr_val[idx];
+		} else {
+			addr_v2 = config->addr_val[idx + 1];
+		}
+		exclude = config->viiectlr & BIT(idx / 2 + 16);
+	}
+	spin_unlock(&drvdata->spinlock);
+	if (addr_type) {
+		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] %s %#lx", idx,
+				 addr_type_names[addr_type], addr_v);
+		if (addr_type == ETM_ADDR_TYPE_RANGE) {
+			size += scnprintf(buf + size, PAGE_SIZE - size,
+					  " %#lx %s", addr_v2,
+					  exclude ? "exclude" : "include");
+		}
+		size += scnprintf(buf + size, PAGE_SIZE - size,
+				  " ctrl(%#lx)\n", addr_ctrl);
+	} else {
+		size = scnprintf(buf, PAGE_SIZE, "addr_cmp[%i] unused\n", idx);
+	}
+	return size;
+}
+static DEVICE_ATTR_RO(addr_cmp_view);
+
 static ssize_t vinst_pe_cmp_start_stop_show(struct device *dev,
 					    struct device_attribute *attr,
 					    char *buf)
@@ -2120,6 +2171,7 @@ static struct attribute *coresight_etmv4_attrs[] = {
 	&dev_attr_addr_ctxtype.attr,
 	&dev_attr_addr_context.attr,
 	&dev_attr_addr_exlevel_s_ns.attr,
+	&dev_attr_addr_cmp_view.attr,
 	&dev_attr_vinst_pe_cmp_start_stop.attr,
 	&dev_attr_seq_idx.attr,
 	&dev_attr_seq_state.attr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
