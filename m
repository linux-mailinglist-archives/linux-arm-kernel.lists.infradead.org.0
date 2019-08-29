Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE0A290C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 23:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1F8+p9SwC/9p9hE8RsuH322g013JQAqhJbWu/f2VBSA=; b=Gu4RkR7/TJCAf8RoJqdkMVoTb4
	cCHRWtj2E/pZKgdv+LPxKwByBprgucitLUL+0dc7q88mW2WXTTE3mWO9j6SHJzCB7gl6+Jst2xHcr
	fj+rOtM0X8m3XX2rWPxEWOHBGRlkbHcTEcJSMHngK+foS2lBuu5gBcXCJzmELzKGLaVuFhCtijouL
	rU6efB/N0A7hOKD+6++6kT1WQVXqqfie0CgL4fODBpXr502yFm3ya6FcMMtTJ8ux3z4kjAH77lGN2
	1mnCOKCPBn2QcBssfXlTjQ5nfXYpbaElM1ipl4V+Z/Dz1kbVolvHjontXKd1uxiFtMmafD7ce7Dsf
	WFs1r25g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3S3Z-00039F-Mp; Thu, 29 Aug 2019 21:34:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3S2v-0002i6-4l
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 21:33:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id d16so5273032wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 14:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N1TqRswcqSvZ5erDhouj03SDeobVAzrfX323hD5EYXI=;
 b=K/7UKiWHz1k6RkeQzIm7opknsl5WpOP/rCobGZC6LaEFNQkNHK341C2eTf+drzAVbb
 5sfOgg7RlgfeQMlpj20T6IkYAq76ESBe+mU0QdIrtSgyweHAg1OR1xzo3tAvFxbL/1I5
 FeWhLGL8WjL6QAxRSfwVpkx4jeZGec+m70rc6c/70qfkYlscXwW2x8qe5PQT2hHY16uu
 CxsYE/Rty/91flDhJXPCl4FQXzB0DD/oI4U5smX44rH0RHSlVasYOzfoBzpF/kmy9/ud
 wL/Naxmemw8+vZMHz4BZyYNSBK1FSvjpnenVYKlp6wxpoiZu0F+OWxxuh97UNnFoZA38
 1ZEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N1TqRswcqSvZ5erDhouj03SDeobVAzrfX323hD5EYXI=;
 b=k07EB+TQci1Lc47fYxDrZDJHNH14jgrjt4ZjRtCknar5aGlqRMgOb43C8P+V4y1HmC
 g0dHTMZsR8FrUDoxmNS458IXd87ljC55XtC3HXPHOXr3HVPSk37v4g2FoHujAPNKkqll
 FOXuhawKc/gh/ICJhBebWaD7hFMuy7kznHjNAVlrzHZnvqiBbiGSuY5R6O7t49/u4wAa
 pfGDZkEknCPLA8HxYl9PvzYYzHedA3rJUrPWzNZ1UVlGSOUElw7p+T/8PrX6WZpXPCPR
 IOTxfe1Hj23z5cLxmGDP7+y6YzZm2FWProP07L61zikANpnaGXTHaifwfa3NwweWivmh
 Wd4Q==
X-Gm-Message-State: APjAAAW9ZOPNPXs3jBngIixxyCjRT7G4yuEIB+UdOoZYb/3HY0pGE+y9
 RfMqROM2y9u2Q2ChcbAHgUTpMA==
X-Google-Smtp-Source: APXvYqxwwdtEdgjgoNICjbi8NlDMo+mLNPNJ7zWNPWZyupgBfays25bs6+GW7Gfg9dGMRfAC5qgTvw==
X-Received: by 2002:a7b:c1c1:: with SMTP id a1mr7157052wmj.31.1567114412039;
 Thu, 29 Aug 2019 14:33:32 -0700 (PDT)
Received: from linaro.org ([2a00:23c5:6815:3901:c44b:1415:84d1:2692])
 by smtp.gmail.com with ESMTPSA id o17sm4515711wrx.60.2019.08.29.14.33.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 14:33:31 -0700 (PDT)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, mathieu.poirier@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v2 02/11] coresight: etm4x: Fix input validation for sysfs.
Date: Thu, 29 Aug 2019 22:33:12 +0100
Message-Id: <20190829213321.4092-3-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829213321.4092-1-mike.leach@linaro.org>
References: <20190829213321.4092-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_143333_185435_70110B9C 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

A number of issues are fixed relating to sysfs input validation:-

1) bb_ctrl_store() - incorrect compare of bit select field to absolute
value. Reworked per ETMv4 specification.
2) seq_event_store() - incorrect mask value - register has two
event values.
3) cyc_threshold_store() - must mask with max before checking min
otherwise wrapped values can set illegal value below min.
4) res_ctrl_store() - update to mask off all res0 bits.

Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 .../coresight/coresight-etm4x-sysfs.c         | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
index b6984be0c515..cc8156318018 100644
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
+	 * range must be selected.
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
+	/* Seq control has two masks B[15:8] F[7:0] */
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
