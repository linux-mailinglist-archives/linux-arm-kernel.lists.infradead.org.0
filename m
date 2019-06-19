Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696704BFCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:37:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=noXKls5VRq76zZMKstRTDzGS8SA+7SleCAI/20+HEjc=; b=XFikOiV4EIyZHDsXx4qPkXYwU6
	PJsCNp/Kuro/eLPGI6v/TrWd9vFNyzOWMj8GnM0jyT+hGWSWNjRm+l8/HlcscGY4aVxW0G/Elfv8g
	S/LCHJUgZl1bDbgeyvVF2gxKTw00zOCRUYvs1pi3AQBZpph6nRsmUcUFsj2/CARtpKhhYeJOEt/Yn
	yWmVEkEMYfj1DarubYoN/VKY2JvOEbvqFJwNkcPbLcvWoDbxat/RKysUlFFkMMFcV/PYLW4MIU2lo
	GdgXXoHFC4yrKhRMolizwqM4E3hOdrBpGJotvx5YSwjh0tKAxsZMq2jadTg/1e442SwSSquodf0az
	1gtRhJ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeWw-00071P-CA; Wed, 19 Jun 2019 17:37:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePX-00086w-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:19 +0000
Received: by mail-pf1-x442.google.com with SMTP id r7so11943pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P8HOcu/iy58r97z1ZeEK9hZTcUyQU9lbtvmBDEqsK0c=;
 b=j+vwQNKrlxU0pB2aMYfXLTrSXtIol5Z5NrZcceuavtkupVjU8t8XpwO2kpWWYmCrog
 8Np0B/qhoAYgf8mu1huXxDEwcaCc3BWfxTPfk1h62NUqiEV9eSKA23BKAwUtmJsfklv0
 Ln/Lkxcb5nurTLFXR89FtYprIxEFGzFJQzkMDnzTRwE3It41Iaq55zLL4hXXBIJwLYHA
 fwFmSdxK9zyHjp4d7BIt89Bpke6JuDM9eoY3qDbxiA4M6iuoxQ43cqHj/Im1Qn/3Up56
 zRLadea8O1Rue4uXiknyw0W8t1V0n7u1/NZaw1kQ222T0StxPD8J8u3HAoj4l4fBmkp0
 9uMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P8HOcu/iy58r97z1ZeEK9hZTcUyQU9lbtvmBDEqsK0c=;
 b=ND6YNn3tTiPGsP9jlSZL1RDio3py2b9UAepv7TAuzQFcJdYDZ/hyNRbg+LzDI5HMOh
 oVojId7Gr7gSTE13Slb2lcx2KxCsMAsNxr7axCbhW7yk2iMYWou6uCdaWzmqZ9hBf59a
 Hm9SQT7BS8njZAt6h8manbT7qNFRDw/25nuXrzXfvzUMA9t2GQVDGJWuTYPUKRDYtKUO
 e4ZUkyghW3agvT/mKQG4Ro7pNalD7wdJR5dHSUdQzdY9spUt7uHK3m4xaBTofrwoGr4J
 lgL3DA1eq95KTRetTyTspnSNpJQ98zU3g496o8m2efJbezTbBXSRu6iuqgQqkFsf7BsM
 AK0Q==
X-Gm-Message-State: APjAAAUu6QDdQmveYm0muZD33+dRe/Vx/wQGz5h8zzp/3PNXXdufdr3D
 TbWavNE8jXaNEkvesK4exzJDJA==
X-Google-Smtp-Source: APXvYqw0WmRFdcNA37h3eEdFVwC7qHM3Cwg7PD/8zJDmC77AHVz9oLFcJzbPAND/Cu7FmI40yJ6nzg==
X-Received: by 2002:aa7:9a8a:: with SMTP id w10mr10792808pfi.66.1560965409280; 
 Wed, 19 Jun 2019 10:30:09 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:08 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 19/45] coresight: platform: Make memory allocation helper
 generic
Date: Wed, 19 Jun 2019 11:29:23 -0600
Message-Id: <20190619172949.4522-20-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103015_554966_8D65B9C4 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
as it is independent of the underlying firmware type. This is in
preparation for the ACPI support.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../hwtracing/coresight/coresight-platform.c  | 34 +++++++++++--------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 514cc2b67c36..4c31299607cf 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,6 +17,24 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
+/*
+ * coresight_alloc_conns: Allocate connections record for each output
+ * port from the device.
+ */
+static int coresight_alloc_conns(struct device *dev,
+				 struct coresight_platform_data *pdata)
+{
+	if (pdata->nr_outport) {
+		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
+					    sizeof(*pdata->conns),
+					    GFP_KERNEL);
+		if (!pdata->conns)
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
 #ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
@@ -133,20 +151,6 @@ static void of_coresight_get_ports(const struct device_node *node,
 	}
 }
 
-static int of_coresight_alloc_memory(struct device *dev,
-			struct coresight_platform_data *pdata)
-{
-	if (pdata->nr_outport) {
-		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
-					    sizeof(*pdata->conns),
-					    GFP_KERNEL);
-		if (!pdata->conns)
-			return -ENOMEM;
-	}
-
-	return 0;
-}
-
 int of_coresight_get_cpu(const struct device_node *node)
 {
 	int cpu;
@@ -252,7 +256,7 @@ of_get_coresight_platform_data(struct device *dev,
 	if (!pdata->nr_outport)
 		return pdata;
 
-	ret = of_coresight_alloc_memory(dev, pdata);
+	ret = coresight_alloc_conns(dev, pdata);
 	if (ret)
 		return ERR_PTR(ret);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
