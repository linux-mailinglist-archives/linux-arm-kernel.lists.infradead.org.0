Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BBD4BFEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UMsZ96JP3d8w1LCvPsQ1x6bs8TIkySqOzgk6l/WH4PY=; b=VrGkGlGxjBhwq571MHpxpX5sZq
	c/SEpQy0tAG7ocJzLTh0ozT+s395JWUraiT+/nwtNuLXwZGXUcZQsc4FkVVBR7tazjWPWKYyGSG35
	3c3NfEZU08mRZok8HANra5Zjw6s95KDyWY/GauBKcyfasp1ntYnoLLBIeyLGgGu/o++z28qJ0U+LE
	2wnpSVCWGZVTMHodsYJufGLrK6iOmV8osphNDYh0obC+j21OelD5MJ0l+i2gd/ZNWfYMfzRQpNanb
	M1CKon3kE/pH1ytVVK6l18xq4tAgvBqfCUqgWbLQ1JSKe8JtZF3NYKIHU/x40A1V0raCdiYeXnONO
	x1SvpbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeZZ-0003XW-PJ; Wed, 19 Jun 2019 17:40:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePe-00007r-OX
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id k8so99688plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3eeHPEaBB7ibPeJGVTZBxrjCY9Q44woJ91BY0XbG0Qw=;
 b=PC6Mqnlfe+IGFJoho2q2hvurUCPsd7GTu7Bk6DYjliF+s5PVREROrFQtTRuSYiZ6s6
 ePLQxWI8REQJU+xBffVM+vZuxABk1GWua5iouOBOuBNFQXE0j93luur6y0VVfmRR9QCr
 1yRCeVydV8uwfmTLk3Lw9P0s/g8rM90x49UsVfsITQ9rvUTZbPNV73ge55XFc5/dRdpj
 lC6AlJFW0XkY4+gRJmKVESe6Jt+UC5NdGyFq+N4lSmjj55FN0NP4Sshih03yy7Vpg4yx
 F6bjJzFJ5pbC61BGlxacGgFHWFI+g+y92iVpgohocuJFjeFOjbVWnAMSnIKpx8fSPzfn
 5QBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3eeHPEaBB7ibPeJGVTZBxrjCY9Q44woJ91BY0XbG0Qw=;
 b=T4TcICfZCjRwEVjuOOdCiXFpDCUFH9FhftB0ta4vAtssyWE9+q37zwmXyqJYpJ4joy
 yRVgPYs4ZX4r1Nikj2w+nIcJ+C2uLA6E1Q/NblG3pzXXeAO+MGiwKSabBHDheATfG9tI
 BhJ/xbYRIjkGPttxcGaaBVK+Okrovn3/HizsStEAYK3FUnxFZd03s/RZax+LiX886jSS
 ORjM5a/Gpd1GMrNaJHMEKz9/sViuTMGX30JD4CsbcuGU14hUdGaFU/DZ9I+GrKN28BUk
 cs8Kwn/EFTsR6h0lwtvsnbw8YZQFYgsppT7eq9jyqz1OX+etcE0eH8BznJxD5iL8hjrF
 3i/Q==
X-Gm-Message-State: APjAAAXZEUEKcd1v1j3yORaLKpi1oDMiW/QI8we/IXbkBWwNb8EWjkj+
 HLXuy1aioWE00Iu73wA2C7G/RA==
X-Google-Smtp-Source: APXvYqzJd+LEwjPQQBAjtrcJVCHtg/1eH6CQB3XJj7f9G9RkGVHFwfLWTEkVkxc9fdee/rMhRp1mhA==
X-Received: by 2002:a17:902:aa8a:: with SMTP id
 d10mr83675207plr.159.1560965421449; 
 Wed, 19 Jun 2019 10:30:21 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.30.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:30:20 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 32/45] coresight: stm: ACPI support for parsing stimulus base
Date: Wed, 19 Jun 2019 11:29:36 -0600
Message-Id: <20190619172949.4522-33-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103022_889283_DC955B3D 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

The stimulus base for STM device must be listed as the second memory
resource, followed by the programming base address as described in
"Section 2.3 Resources" in ACPI for CoreSightTM 1.0 Platform Design
documen (DEN0067).

Add support for parsing the information for ACPI.

Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-stm.c | 53 ++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-stm.c b/drivers/hwtracing/coresight/coresight-stm.c
index e3e2b000cfb7..b908ca104645 100644
--- a/drivers/hwtracing/coresight/coresight-stm.c
+++ b/drivers/hwtracing/coresight/coresight-stm.c
@@ -16,6 +16,7 @@
  * (C) 2015-2016 Chunyan Zhang <zhang.chunyan@linaro.org>
  */
 #include <asm/local.h>
+#include <linux/acpi.h>
 #include <linux/amba/bus.h>
 #include <linux/bitmap.h>
 #include <linux/clk.h>
@@ -716,10 +717,60 @@ static inline int of_stm_get_stimulus_area(struct device *dev,
 }
 #endif
 
+#ifdef CONFIG_ACPI
+static int acpi_stm_get_stimulus_area(struct device *dev, struct resource *res)
+{
+	int rc;
+	bool found_base = false;
+	struct resource_entry *rent;
+	LIST_HEAD(res_list);
+
+	struct acpi_device *adev = ACPI_COMPANION(dev);
+
+	if (!adev)
+		return -ENODEV;
+	rc = acpi_dev_get_resources(adev, &res_list, NULL, NULL);
+	if (rc < 0)
+		return rc;
+
+	/*
+	 * The stimulus base for STM device must be listed as the second memory
+	 * resource, followed by the programming base address as described in
+	 * "Section 2.3 Resources" in ACPI for CoreSightTM 1.0 Platform Design
+	 * document (DEN0067).
+	 */
+	rc = -ENOENT;
+	list_for_each_entry(rent, &res_list, node) {
+		if (resource_type(rent->res) != IORESOURCE_MEM)
+			continue;
+		if (found_base) {
+			*res = *rent->res;
+			rc = 0;
+			break;
+		}
+
+		found_base = true;
+	}
+
+	acpi_dev_free_resource_list(&res_list);
+	return rc;
+}
+#else
+static inline int acpi_stm_get_stimulus_area(struct device *dev,
+					     struct resource *res)
+{
+	return -ENOENT;
+}
+#endif
+
 static int stm_get_stimulus_area(struct device *dev, struct resource *res)
 {
-	if (is_of_node(dev_fwnode(dev)))
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+
+	if (is_of_node(fwnode))
 		return of_stm_get_stimulus_area(dev, res);
+	else if (is_acpi_node(fwnode))
+		return acpi_stm_get_stimulus_area(dev, res);
 	return -ENOENT;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
