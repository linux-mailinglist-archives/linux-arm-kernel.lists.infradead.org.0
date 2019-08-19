Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D52C94F78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 22:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IEpWMhoB3jcCt9THCkMADVTaGT9TJByRGuTSCwvCQHo=; b=rvSid4gOYK1EbzhCZOxekhA8OH
	9iXoQwFnHi1+9Blc6+ROLeDsmmR51/khTtAl99mZdQ4WSHClJAGISo0IWnpDlhRuRBpAYTSEdeu+d
	k2qDaRLugPMECSAjIgDApCnpCWBDPGy0G6QMKk+7myNvUmIhOlt3keO5U12yVDl4r9Leg3lJTq9d/
	kDbzQ3PV1siMtRJoe51Qx2XtgUjdkUkTv23zEFTs5HTIWEI6xbbn5BfFTL2ruvTSXVeBCh6clKXpJ
	RzLN5g1kIPJajosY+4wJJFa2FLJcLdw8jKbCnkxIfiuqMCk6NYSg/e/8myHnMAQdfZsa1f8yHgFNp
	Gax+aQpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzokG-0006dS-IR; Mon, 19 Aug 2019 20:59:16 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzoij-0005Ha-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 20:57:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id b16so10108435wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 13:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=INjabaSGZPkEn9B72o9FQotjLSWcPzG5kAFJlXBsUZU=;
 b=NTnzk+XXQyrdoLxrX3R9G318V3+Ap1olLPhWzT7nI0eO0YsYm32Z7T0zozWyDEYTVY
 Se+k5u4miJRD/TpkPVoPm+WK9ZpTTzLD2Z5qjngL3N2cUmX8azhkoGw/yqkbtIZiqv9K
 wmxvxvFUB+2UbZb5chFPgq/mq9DzC1UyTp31Kn/sqWrnWIa0nZHPFma1STJgJYGcFfzO
 /tW/8knnx64D88kHlthu5mo2txvcSBatkUf5Wm9n3kItr9pjwplNLAarHiIbufSvVcXW
 ZXMD6O+jIvUYhJ9W5k34gqoRNoCHwH6O4Mt6cK3LuNLO9DXAvI7490HFRkOTeEoGiZ6R
 MNcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=INjabaSGZPkEn9B72o9FQotjLSWcPzG5kAFJlXBsUZU=;
 b=j1H8/PvzDDB9KhxYP4vFexhrkXW0Ug3fIwdSbm4lkbA7LkLgWxkkAj9Gj22RH3YG+i
 KrXbMaDZ6U1VVkNqc6iDHg2qg5H+y4g+X3jrTnp5YqzBYSIzNRNTzmBBZ9rfOSK/Glr8
 xn+EbKb8rYSPKsNUvKzzIWv2deQ86AAjw7qtxfvB8V758bdNoidz93TgmLKi49djQ1lD
 mHIjmwZI/weNvC22gBkcZ7QCb/7rboEraztGxrT2A0pw3CCu2WKl6/MOC7LIzG1wjdc3
 6jduWRsGe+T2Ra5UWp12z8X0yc6vgeqdjztQPdwmpDSUIyOSvHU+h7AtM28uQMhq0bgb
 4TOQ==
X-Gm-Message-State: APjAAAWT7LbFxfxYh56Mu0smRx4Y0Uvxi4S3qZ1ygGBlzuIu50xNCuiv
 GKOBzJO8MjsHlEyH19H/m1bOiA==
X-Google-Smtp-Source: APXvYqyTtzqQbxNT/ix949eUwDwuswz2kLB5wjP//FLB2p4tGFjCXKMJjPgl8U3kGvtn6p5Ch6x3iw==
X-Received: by 2002:adf:fdcc:: with SMTP id i12mr30804331wrs.88.1566248259774; 
 Mon, 19 Aug 2019 13:57:39 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:247e:6e55:2413:b21c])
 by smtp.gmail.com with ESMTPSA id n9sm6698423wrx.76.2019.08.19.13.57.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2019 13:57:39 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org
Subject: [PATCH 2/8] coresight: etm4x: Fix input validation for sysfs.
Date: Mon, 19 Aug 2019 21:57:14 +0100
Message-Id: <20190819205720.24457-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819205720.24457-1-mike.leach@linaro.org>
References: <20190819205720.24457-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_135741_358991_B98E927B 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

A number of issues are fixed relating to sysfs input validation:-

1) bb_ctrl_store() - incorrect compare of bit select field to absolute
value. Reworked per ETMv4 specification.
2) seq_event_store() - incorrect mask value - register has two
event values.
3) cyc_threshold_store() - must mask with max before checking min
otherwise wrapped values can set illegal value below min.
4) res_ctrl_store() - update to mask off all res0 bits.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index b6984be0c515..fa1d6a938f6c 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
@@ -652,10 +652,13 @@ static ssize_t cyc_threshold_store(struct device *dev,
 
 	if (kstrtoul(buf, 16, &val))
 		return -EINVAL;
+
+	/* mask off max threshold before checking min value */
+	val &= ETM_CYC_THRESHOLD_MASK;
 	if (val < drvdata->ccitmin)
 		return -EINVAL;
 
-	config->ccctlr = val & ETM_CYC_THRESHOLD_MASK;
+	config->ccctlr = val;
 	return size;
 }
 static DEVICE_ATTR_RW(cyc_threshold);
@@ -686,14 +689,16 @@ static ssize_t bb_ctrl_store(struct device *dev,
 		return -EINVAL;
 	if (!drvdata->nr_addr_cmp)
 		return -EINVAL;
+
 	/*
-	 * Bit[7:0] selects which address range comparator is used for
-	 * branch broadcast control.
+	 * Bit[8] controls include(1) / exclude(0), bits[0-7] select
+	 * individual range comparators. If include then at least 1
+	 * range must be  selected.
 	 */
-	if (BMVAL(val, 0, 7) > drvdata->nr_addr_cmp)
+	if ((val & BIT(8)) && (BMVAL(val, 0, 7) == 0))
 		return -EINVAL;
 
-	config->bb_ctrl = val;
+	config->bb_ctrl = val & GENMASK(8, 0);
 	return size;
 }
 static DEVICE_ATTR_RW(bb_ctrl);
@@ -1324,8 +1329,8 @@ static ssize_t seq_event_store(struct device *dev,
 
 	spin_lock(&drvdata->spinlock);
 	idx = config->seq_idx;
-	/* RST, bits[7:0] */
-	config->seq_ctrl[idx] = val & 0xFF;
+	/* Seq control has two masks B[15:5] F[7:0] */
+	config->seq_ctrl[idx] = val & 0xFFFF;
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
@@ -1580,7 +1585,7 @@ static ssize_t res_ctrl_store(struct device *dev,
 	if (idx % 2 != 0)
 		/* PAIRINV, bit[21] */
 		val &= ~BIT(21);
-	config->res_ctrl[idx] = val;
+	config->res_ctrl[idx] = val & GENMASK(21, 0);
 	spin_unlock(&drvdata->spinlock);
 	return size;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
