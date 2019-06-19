Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283114C1C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:54:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Y6DP6NZ022P9C/JTSaTxnfdcK3rFrHjP4IVnjaCQwI=; b=L5pzoJ+ie1GenY5n9eQEXKVzRN
	cOssyVeWzvaDWTK43SJUoe7wmiuxt6/PTrgmGlSt7K2Vd/8WpMe2DjCDsYMdF4ys9mVXZZ5tdMfgC
	c/XdK7lH/yDRers6hndv7eGmrPa1hU9xv8DvIWGPpSkYroW85IT0XFu6pUoCkYHqCTEEDwD/AoFFw
	J37nLXnI5kfq6019SM89h5gHRp0HVOsJVRiETO3AGrfYZEaMjXFHQ5aZnfyFmv5EqFA85ja6onmtk
	bCKaFVMBScM2UGIfe77BNuDh2HvBQUPEzEuwZmv3NSYLSiex2x612DvyRk69oWlCTbDAsdsT6kK+J
	gB09MmpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgeo-0006mp-4o; Wed, 19 Jun 2019 19:54:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge2-0006L7-SR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so239774pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bUxFfPS39P9fdU4kY1BrfLqP1exnSRK81MEC3yDEPu0=;
 b=ZacyEvz51O2I0V5F1xg3NL5e/ldty2runRRl/eqK5yEvh6licaMzMfE92JGfBta/bt
 5dLlthl4bBb0LEzgKm8/YwVup4XkFb3aT3KFKlbWhK+kwqpH3FKNYPy0iMlc8BpZ8kr4
 jsvINukegNsrr0BcW9YyoI9yl9bnbRwpixtn/AUyHCDTzLG8hy959ir573M+RXYMfx6N
 Pv2WshetDEklvyUt056k5j0SelYCpjBIMF02NYopnTxoB07VEezIvRAOHMAT0nyATKT/
 i3c5Wg1hSt1NIHDOmzwAJ0BpxD/21/RlPUYM8MICJe7GFl4UETCmIKpMjGr5lkR1E3Oq
 aKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bUxFfPS39P9fdU4kY1BrfLqP1exnSRK81MEC3yDEPu0=;
 b=SZeE7f0bvBIu4F6FYQg7ynOCIBJ+vy+drM8MOd2Fng8/b444uw4JYdU/lH3g4Yg3Pi
 dUfHKBi9Nu5iU9wjHFaNDoyl1wlTwSh9VTMdkPdkWzoR/WrD9hnZqSU/VdeNnc6MxabV
 BwiGxQdLUJ/6QhZI6Ezh4XJomfoHmE1QR5fd8vWgyLu60Ry05xwv5YogcktQ3eb7ZBen
 WOCWs8p3FCz27AcaFw27shoI8+1p1OEBPDo3KRyRixEWSkH2GrGm7Kcq9Xm45HnsIRiP
 U1RUS1Hhg+RflFfkP53SdlAwzQwqhncvinqnS9g2KWr4IJAR0biGzucQqJz6A4Pxh2Mx
 IAhg==
X-Gm-Message-State: APjAAAVrHQjZeQ4PVRU91BUfBsoL03OvlQEkO6XnJxN1n3UV9JOpL9Fh
 NLN7rwxvjNZ9nW6vXZ6ifbLju5aExwOsJg==
X-Google-Smtp-Source: APXvYqxTKsRLmkAFW5v1TJff6alf31mGoREUQLxLGxSGUAMLz2raJDqOtuZAuNRvp0u4kbKIFvcZRA==
X-Received: by 2002:a17:90a:ca0f:: with SMTP id
 x15mr9537373pjt.82.1560974001230; 
 Wed, 19 Jun 2019 12:53:21 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:20 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 01/28] coresight: Rename of_coresight to coresight-platform
Date: Wed, 19 Jun 2019 13:52:51 -0600
Message-Id: <20190619195318.19254-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125322_916510_667B8C11 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

Rename the firmware handling file to a more generic
name, in preparation for adding ACPI support. Right now
we only support DT and we have all the platform handling
code in of_coresight.c. Let us rename the file to
coresight-platform.c in order to keep the platform handling
in a single place for DT and the upcoming ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/Makefile                           | 3 +--
 .../coresight/{of_coresight.c => coresight-platform.c}         | 3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename drivers/hwtracing/coresight/{of_coresight.c => coresight-platform.c} (99%)

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 3b435aa42af5..3c0ac421e211 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,8 +2,7 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o
-obj-$(CONFIG_OF) += of_coresight.o
+obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
 obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
 					     coresight-tmc-etf.o \
 					     coresight-tmc-etr.o
diff --git a/drivers/hwtracing/coresight/of_coresight.c b/drivers/hwtracing/coresight/coresight-platform.c
similarity index 99%
rename from drivers/hwtracing/coresight/of_coresight.c
rename to drivers/hwtracing/coresight/coresight-platform.c
index 7045930fc958..514cc2b67c36 100644
--- a/drivers/hwtracing/coresight/of_coresight.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,7 +17,7 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
-
+#ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
 	return dev->of_node == data;
@@ -295,3 +295,4 @@ of_get_coresight_platform_data(struct device *dev,
 	return pdata;
 }
 EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
