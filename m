Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D54C1D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Wkk8Wg5kf5yJfh1Zg1QlQ1ayy7G1klS4bc8scvnBHI=; b=YC5MGOY90/XB54WsHbFIBC994L
	UM4PN4IhOidqov8LH5rYPWv5RGobmU28Aoxdddxe68V2TjKXs0z/cWAlQtE+WFQe19uhF58KGYaWr
	y045oxBizEEtiquLUcf4otbL6G77qJzeISirgzIFVNftt9bT+m/Ab5QtRvDBXZTPxly5kQJvz8gYG
	MgZqFi3EGPAA5rhMqdFr2xVybMWL2cVUy4kNSm3t8g23xrLImUh0+p9+RmooFUuCklhD62KSVjvzE
	gyiX9eVr9SZQXnQS7DiTJkzezItlwYjOt0eYIft4ANgCL+0+ZGIGKaIbiSEM5vQFkK+7gO9xE/aJk
	CHbTXDGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgfb-0007Rc-M8; Wed, 19 Jun 2019 19:54:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdge3-0006MO-Q0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:25 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so202392pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FnDr//WBMjqUCzmJ1siLDIF1sonMXILv1ogujL+lmt0=;
 b=L30mxg/lnx2/wbRwEiKL9gmPTNsGHJ52gXMW0DcKJz87uCpW47xGDOnzkvQmx1rV0Z
 Fi6h8R7MZOGIraUeVZBy7BjyCTYJxpJkbOTBqwBm08Gzi6b4NT7LtQTkON5mV6YqH1po
 owjdGbs/jnH/Cbfx525QZBkTCffkhfkuFulS8MAVgdE8U2IUpy5eP9kNRDi5fGn5b59S
 iFpDFuqFRT3XD80taSvC8p+OvG83XGYsWxvFtYh88zncw0BMJOVXqHMyezXE/pmGqkIO
 wh3zyCI1Y7LPEZAKJmWmg7iiV0KOyKhwSL1feOj3BXF/D+F7YvepnVEaPREZ6io1L4r/
 AniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FnDr//WBMjqUCzmJ1siLDIF1sonMXILv1ogujL+lmt0=;
 b=qhilkfkhOVlipJXPmIdFmwN96VQKUaQcg0r3RIlUY7C24tRCiHE9Mkec+oR4SW95YR
 EvAPkAjUL8JWTThlGCQgcqV++59T+rikMb9rk36oHJjkyWhMsJeWHW8yG8c2pcK9oFEc
 TenAYGAmEuxVTgDRkwHtX8MkSPLwX+V3xKUh0ktoE6CwTg0jEmtAT6Mq62+xPOKIoQ+v
 4mpjM/XLjaeuFPUKbDn9vE7Lao26Extv9uAfhnKXCdl2GmGVtva3YogS5QkdY78XtEkv
 I72V52iwaC45G3H5IAYsqd+Qo66WaVKXsxyvEzy7PgY/YYfSBD1KukKPKfaRJsj1cidP
 n51Q==
X-Gm-Message-State: APjAAAVS4nWkbcdRj2oI0uaSNFpl5QiEiLx/Q7Jt1x80WkhFlXuDkIaS
 ce0HYTxqf0aocHNkDk4Pg9+ttJSWaVxoCQ==
X-Google-Smtp-Source: APXvYqynzGNpDXLiYIwaTLJ2/ZeV3XntQaSqkdYx1d9Dlqnzs46BHqq5ZWVr3Qo5+r51GtYnRsvwCA==
X-Received: by 2002:a63:35c7:: with SMTP id c190mr3049052pga.445.1560974002997; 
 Wed, 19 Jun 2019 12:53:22 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:22 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/28] coresight: Make sure device uses DT for obsolete
 compatible check
Date: Wed, 19 Jun 2019 13:52:53 -0600
Message-Id: <20190619195318.19254-4-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125323_842859_AB75F9F4 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

As we prepare to add support for ACPI bindings, let us make sure we do
the compatible check only if we are sure we are dealing with a DT based
system.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c     | 3 ++-
 drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 6236a847bb0b..3423042e7a52 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -196,7 +196,8 @@ static int funnel_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-funnel"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
 		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index ee6ad34061a5..7e0514557920 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -187,7 +187,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 		dev->platform_data = pdata;
 	}
 
-	if (of_device_is_compatible(np, "arm,coresight-replicator"))
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
 		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
 
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
