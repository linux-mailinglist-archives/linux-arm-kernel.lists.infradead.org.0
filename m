Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3292B2EFE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hyaS1Gyd9xOxnfEEILu+uxfT4g4v4HqMAEGCDfJ9DLI=; b=CIWcKrjrwj9JirQYv25yYdR7Gk
	wi4Ixxh4NgvV2DXsqBrvj23Z9OYx1lRzSzlmEhBRW6ZHiPpMBUyMfLDDwXlxO3hIY4xtF5GtHHoiE
	wioXtDDKvpS3gC5cYOZ3zPAuIF7oQkcO78DWKGC+57EnDcQKRdLhIdGkzDCcUWvfuN6OpEcm8so+f
	3u2ANXzju9zfM9IXcOvhsCjR4gI1hYdaj8oinQeM3Lor+lOUS6u/C8k+MurYCfCMq2Rq8GTgLRle4
	gQEHbrjLnxwZ6qEzH2XH0h8MBmmGiPT7dd953toRRiitNKc7Pzm8zZNjac54SIU4elOlRBh/3UvaT
	wh+NM2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Owj-0005zv-Di; Sun, 15 Sep 2019 07:27:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9OwL-0005yv-5I; Sun, 15 Sep 2019 07:27:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id y10so15109437pll.7;
 Sun, 15 Sep 2019 00:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GTvFcpOUyieP9opBGHsT+B42cxzpcATMaoHH0I+0J1I=;
 b=dtYKXDrGv9xWSDJp5V4bb6UhJfXvdsElJS9v+PO1KZtmJZ+kYN/G9D3z6k7JM5CHjl
 97txUbvRcF+RpggFFczLZtTVvIJYile1i3reqybCb/H3+gbeLHONkPJS5Kl/hRRTSemP
 EX1Lfy+5tAcaww7+Jb4+QM4lWaq6m6ElB/Umpe07KOq+sHYnNAwsgetIDMkW45Iybgcu
 ULay1kOBUmL/Ncvogpmx2RwNnx6xz6hbBxhmniOsGcKJOakPjT2YlxE6vYMjpjcr/4+1
 rZscGGbTSeHWS/kccuXE5kcR/7+tA/x+jl3APtzJL+6qFag8BemK+9WG0Rni+V/Qlaco
 18mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GTvFcpOUyieP9opBGHsT+B42cxzpcATMaoHH0I+0J1I=;
 b=WXVwfceR2OgGi5S39VFZzvU591+7yZxoMwsQk2TnEfKXyzC6QF8PwfIpP596Bh0Shk
 kilXJpPGWvIYCdDraGMZ3PR1Auu9KRwGGEqxTrquti3qpXK0XmNIJyyZMkt+xmlc2FwD
 1YuMSmfqN3Uwb3E7lDLrSPLm/lO82iaCLkrvG+QnI5I6J4v4XpSIJlxbmZ1DRbMWMHJe
 OIfWHONqkq51tg43m+40le+E7LD4GHXk50EBtu/ci5KrzFu83U+2YcnGZSqizhkd2/RM
 QSZiSKRdGWwkMkomoE/Qim+AK1VRUVzmyWgvo4a/lubYfmxebSbo+8fdMruzy7kLh+bz
 A41g==
X-Gm-Message-State: APjAAAW29ZMNphs2Q3h3JA3wB+fgPqAG5ak2zi3SpxU1Gl77ek1PUavE
 5USjxbSmnG1zAOUisOxIVog=
X-Google-Smtp-Source: APXvYqwfyHgYY759f5pUy7ZvnMQo/+BDd2d/wdpUuKRx33ViG0X3MEVEEhSs02ToRewoskfhy8mbOA==
X-Received: by 2002:a17:902:820f:: with SMTP id
 x15mr37974997pln.130.1568532439090; 
 Sun, 15 Sep 2019 00:27:19 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id i19sm7254486pjx.1.2019.09.15.00.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:27:18 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: dan.j.williams@intel.com, vkoul@kernel.org, jun.nie@linaro.org,
 shawnguo@kernel.org, agross@kernel.org, sean.wang@mediatek.com,
 matthias.bgg@gmail.com, maxime.ripard@bootlin.com, wens@csie.org,
 lars@metafoo.de, afaerber@suse.de, manivannan.sadhasivam@linaro.org
Subject: [PATCH 1/9] probe/dma : added helper macros to remove
 redundant/duplicate code from probe functions of the dma controller drivers
Date: Sun, 15 Sep 2019 12:56:44 +0530
Message-Id: <20190915072644.23329-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915070003.21260-1-sst2005@gmail.com>
References: <20190915070003.21260-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_002721_381389_ABB1D795 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 satendrasingh.thakur@hcl.com, dmaengine@vger.kernel.org,
 Satendra Singh Thakur <sst2005@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. For most of the drivers probe include following steps

a) memory allocation for driver's private structure
b) getting io resources
c) io remapping resources
d) getting clock
e) getting irq number
f) registering irq
g) preparing and enabling clock
i) setting platform's drv data

2. We have defined a set of macros to combine above mentioned
steps.
This will remove redundant/duplicate code in drivers' probe
functions.

3. This macro combines all the steps except f), g) and i).

devm_platform_probe_helper(pdev, priv, clk_name);

4. This macro combines all the steps except f) and i).

devm_platform_probe_helper_clk(pdev, priv, clk_name);

5. This macro combines all the steps except g) and i).

devm_platform_probe_helper_irq(pdev, priv, clk_name,
	irq_hndlr, irq_flags, irq_name, irq_devid);

6. This is because, some drivers perform step f) and g)
after hw init or subsys registration at very different points
in the probe function. The step i) is called at the end of
probe function by several drivers; while other drivers call it at
different points in probe function.

7. This macro combines above mentioned steps a) to g).

devm_platform_probe_helper_all(pdev, priv, clk_name,
	irq_hndlr, irq_flags, irq_name, irq_devid);

8. This macro combines all of the above mentioned steps a) to i).

devm_platform_probe_helper_all_data(pdev, priv, clk_name,
	irq_hndlr, irq_flags, irq_name, irq_devid);
9. Above macros will be useful for wide variety of probe
functions of different drivers.

Signed-off-by: Satendra Singh Thakur <satendrasingh.thakur@hcl.com>
Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 include/linux/probe-helper.h | 179 +++++++++++++++++++++++++++++++++++
 1 file changed, 179 insertions(+)
 create mode 100644 include/linux/probe-helper.h

diff --git a/include/linux/probe-helper.h b/include/linux/probe-helper.h
new file mode 100644
index 000000000000..7baa468509e3
--- /dev/null
+++ b/include/linux/probe-helper.h
@@ -0,0 +1,179 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *
+ * probe_helper.h - helper functions for platform drivers' probe
+ * function
+ * Author: Satendra Singh Thakur <satendrasingh.thakur@hcl.com> Sep 2019
+ *				  <sst2005@gmail.com>
+ */
+#ifndef _PROBE_HELPER_H_
+#define _PROBE_HELPER_H_
+
+#include <linux/platform_device.h>
+#include <linux/clk.h>
+
+/* devm_platform_probe_helper - Macro for helping probe method
+ * of platform drivers
+ * This macro combines the functions:
+ * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+ * devm_clk_get, platform_get_irq
+ * @pdev platform device
+ * @priv driver's private object for memory allocation
+ * @clk_name clock name as in DT
+ */
+#define devm_platform_probe_helper(pdev, priv, clk_name)	\
+({	\
+	__label__ __out;	\
+	int __ret = 0;	\
+	priv = devm_kzalloc(&(pdev)->dev, sizeof(*priv), GFP_KERNEL);	\
+	if (!(priv)) {	\
+		dev_err(&(pdev)->dev, "devm_kzalloc failed\n");	\
+		__ret = -ENOMEM;	\
+		goto __out;	\
+	}	\
+	(priv)->base = devm_platform_ioremap_resource(pdev, 0);	\
+	if (IS_ERR((priv)->base)) {	\
+		dev_err(&(pdev)->dev,	\
+			"devm_platform_ioremap_resource failed\n");	\
+		__ret = PTR_ERR((priv)->base);	\
+		goto __out;	\
+	}	\
+	(priv)->clk = devm_clk_get(&(pdev)->dev, clk_name);	\
+	if (IS_ERR((priv)->clk)) {	\
+		dev_err(&(pdev)->dev, "devm_clk_get failed\n");	\
+		__ret = PTR_ERR((priv)->clk);	\
+		goto __out;	\
+	}	\
+	(priv)->irq = platform_get_irq(pdev, 0);	\
+	if ((priv)->irq < 0) {	\
+		dev_err(&(pdev)->dev, "platform_get_irq failed\n");	\
+		__ret = (priv)->irq;	\
+		goto __out;	\
+	}	\
+__out:	\
+	__ret;	\
+})
+
+/* devm_platform_probe_helper_irq - Macro for helping probe method
+ * of platform drivers
+ * This macro combines the functions:
+ * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+ * devm_clk_get, platform_get_irq, devm_request_irq
+ * @pdev platform device
+ * @priv driver's private object for memory allocation
+ * @clk_name clock name as in DT
+ * @irq_hndlr interrupt handler function (isr)
+ * @irq_flags flags for interrupt registration
+ * @irq_name name of the interrupt handler
+ * @irq_devid device identifier for irq
+ */
+#define devm_platform_probe_helper_irq(pdev, priv, clk_name,	\
+		irq_hndlr, irq_flags, irq_name, irq_devid)	\
+({	\
+	__label__ __out;	\
+	int __ret = 0;	\
+	__ret = devm_platform_probe_helper(pdev, priv, clk_name);	\
+	if (__ret < 0)	\
+		goto __out;	\
+	__ret = devm_request_irq(&(pdev)->dev, (priv)->irq, irq_hndlr,	\
+			irq_flags, irq_name, irq_devid);	\
+	if (__ret < 0) {	\
+		dev_err(&(pdev)->dev,	\
+			"devm_request_irq failed for irq num %d\n",	\
+			(priv)->irq);	\
+		goto __out;	\
+	}	\
+__out:	\
+	__ret;	\
+})
+
+/* devm_platform_probe_helper_clk Macro - for helping probe method
+ * of platform drivers
+ * This macro combines the functions:
+ * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+ * devm_clk_get, platform_get_irq, clk_prepare_enable
+ * @pdev platform device
+ * @priv driver's private object for memory allocation
+ * @clk_name clock name as in DT
+ */
+#define devm_platform_probe_helper_clk(pdev, priv, clk_name)	\
+({	\
+	__label__ __out;	\
+	int __ret = 0;	\
+	__ret = devm_platform_probe_helper(pdev, priv, clk_name);	\
+	if (__ret < 0)	\
+		goto __out;	\
+	__ret = clk_prepare_enable((priv)->clk);	\
+	if (__ret < 0) {	\
+		dev_err(&(pdev)->dev, "clk_prepare_enable failed\n");	\
+		goto __out;	\
+	}	\
+__out:	\
+	__ret;	\
+})
+
+/* devm_platform_probe_helper_all - Macro for helping probe method
+ * of platform drivers
+ * This macro combines the functions:
+ * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+ * devm_clk_get, platform_get_irq, devm_request_irq,
+ * clk_prepare_enable
+ * @pdev platform device
+ * @priv driver's private object for memory allocation
+ * @clk_name clock name as in DT
+ * @irq_hndlr interrupt handler function (isr)
+ * @irq_flags flags for interrupt registration
+ * @irq_name name of the interrupt handler
+ * @irq_devid device identifier for irq
+ */
+#define devm_platform_probe_helper_all(pdev, priv, clk_name,	\
+	irq_hndlr, irq_flags, irq_name, irq_devid)	\
+({	\
+	__label__ __out;	\
+	int __ret = 0;	\
+	__ret = devm_platform_probe_helper_clk(pdev, priv, clk_name);	\
+	if (__ret < 0)	\
+		goto __out;	\
+	__ret = devm_request_irq(&(pdev)->dev, (priv)->irq,	\
+		irq_hndlr, irq_flags, irq_name, irq_devid);	\
+	if (__ret < 0) {	\
+		dev_err(&(pdev)->dev,	\
+			"devm_request_irq failed for irq num %d\n",	\
+			(priv)->irq);	\
+		if ((priv)->clk)	\
+			clk_disable_unprepare((priv)->clk);	\
+		goto __out;	\
+	}	\
+__out:	\
+	__ret;	\
+})
+
+/* devm_platform_probe_helper_all_data - Macro for helping probe method
+ * of platform drivers
+ * This macro combines the functions:
+ * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+ * devm_clk_get, platform_get_irq, devm_request_irq,
+ * clk_prepare_enable, platform_set_drvdata
+ * @pdev platform device
+ * @priv driver's private object for memory allocation
+ * @clk_name clock name as in DT
+ * @irq_hndlr interrupt handler function (isr)
+ * @irq_flags flags for interrupt registration
+ * @irq_name name of the interrupt handler
+ * @irq_devid device identifier for irq
+ */
+#define devm_platform_probe_helper_all_data(pdev, priv, clk_name,	\
+	irq_hndlr, irq_flags, irq_name, irq_devid)	\
+({	\
+	__label__ __out;	\
+	int __ret = 0;	\
+	__ret = devm_platform_probe_helper_all(pdev, priv, clk_name,	\
+		irq_hndlr, irq_flags, irq_name, irq_devid);	\
+	if (__ret < 0)	\
+		goto __out;	\
+	platform_set_drvdata(pdev, priv);	\
+__out:	\
+	__ret;	\
+})
+
+#endif /*_PROBE_HELPER_H_*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
