Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655384C1EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 21:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UMsZ96JP3d8w1LCvPsQ1x6bs8TIkySqOzgk6l/WH4PY=; b=c1Y16X9DqeMVVrN8VLoJqICgAd
	uW1PDQ/DtEc8D+chyRkX4CAKuVnaMt1A2ekyJcCBg1km2+8khZEm5/PzgUD2HK1G52HQzDErDOrKJ
	jQVgyx7cOy/uwDV647Qj3l0/c+AkBWUBALl5SZ4CzhovTWnckW8fto5cGOnxFp2cY7xRWbY15LPBb
	LaWkT7zzzVpYys2/sW16/t+W1UcJ6h3ixVryY6SjTYlMTv3I6bt+y55P/Lt8bjkI4TW/Ie4OhTsFd
	+TUTbOhboZCfbMYrw+ICXGJFD8iKhQlBqG4kXYSkmLidZCs8ZslZIVaJUO5/fC7Q6iDxPR6K//ni3
	fy2/6cNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgjv-0003r5-Va; Wed, 19 Jun 2019 19:59:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeI-0006Z8-2T
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so188574pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3eeHPEaBB7ibPeJGVTZBxrjCY9Q44woJ91BY0XbG0Qw=;
 b=h7zSfeEbdEzneBp61eLzanRwVKxxXUTVmy5XGgFJJy+WF/hvr3a2IJ12NdWN1Z8nvY
 0pD4XzG7x4XNnmemmZkQIPGpJl+ZiWsLLtzWVALzCvnB4OCetrGxitzPJz5/YtFWufd3
 A0WfWtyRbNyB28TLrJ3HwRVSwzJ/Z3f7gccmk0yQY/p2DKAJMg7Q+k/gaIMBHEy7eOUA
 tN2qwtmwZfj5O7199M7LivATCKZOJgMDGGvlgPN/jCrDFR637FUUzdcvaRz0aojM0kls
 gWZfBEc4jo8y8UDZZRGvlaIjTbQ4cR/GWwPchX4uZ0Yul0bN84D8vep3ciN030z//hEp
 VWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3eeHPEaBB7ibPeJGVTZBxrjCY9Q44woJ91BY0XbG0Qw=;
 b=c2AysIAX0CQ1FtMhMkFseXXiE5i8qV/dLRBYwQ54znZ58RzwSeiggBcGIMlQ3zRoqL
 vzUbRZ1uJ1xUbxkYx/pxUGNzY7KMciUUJVWREz9Oy4Hvc7M3N6Ll6odTy4eGO87QuAN/
 jP8FteqhO+rCOkGPT2rrKHbXCRb3aboN9pCx90OQpeUDslfsBWXSOzk/7jOz41Dk0KXd
 YPU9dNPqyOa9IJH+2hAhKLM9RBwcAMK1DfHGCVJQCalJxn03vPUvfAZuN+sPnpIhwp8V
 NEsjI+RwOkUTmDCD89PSynExYlnFZJQ9Q9svT1I1jt5FNrmZjtz/0BcC6+EBGxauUDPf
 kxaw==
X-Gm-Message-State: APjAAAXoDGcoSiWXYEedkRJEkv6/aJFpq2wnMnbq+SLh1Br4De75eIJL
 44bH/EyhBTKvAjCYn1dc7m/NrqRxUetwQg==
X-Google-Smtp-Source: APXvYqzBU6iQJD7ox7+BTSiSTIN5hWA7srR74wTOg6IxhqbBxHmYUtzZe0ND/kPfGUMJG1VlAsqAnA==
X-Received: by 2002:a63:5d45:: with SMTP id o5mr9384901pgm.40.1560974015640;
 Wed, 19 Jun 2019 12:53:35 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:34 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/28] coresight: stm: ACPI support for parsing stimulus base
Date: Wed, 19 Jun 2019 13:53:05 -0600
Message-Id: <20190619195318.19254-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125338_474115_22DAF5FB 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
