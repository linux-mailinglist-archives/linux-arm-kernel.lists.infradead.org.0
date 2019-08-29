Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C408A2803
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jHcu5J1/flpxAc/DNFCAfIejsaf99gVCn5iXV1tpsyE=; b=nak7xinHVO40nJ/K3o9R/4JSHa
	xuSuKKMNzdG35iLaixE41SJnD/SXkj/0SMnTnB/bWkOwhctX4Yrj2JMluYuCZRKdD9H7zBY0djBz7
	TsMIOosdYjm38wqiCHqWaRQtDwVsxgkkARU2WalchmmAHhZ7bupoER41YquRhw0FDsyCHPQs+DWFl
	/VAiRgV2YSGXdNezfxrBcN6vYiNt8K3KcT9sg/4BqTpfgLXIO4uqwEeYRlq+sEQKIqIqcT39BhlCZ
	Z3ukKG0cInQ1o1Pg4ge3ctnarEi3q1ArgF4/Vwmsry19BkVuUeJzURY7uZItIis/pMCjKCdjxT55f
	DZ5QZhjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R4Y-00072z-KK; Thu, 29 Aug 2019 20:31:10 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R2K-0003lW-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so2106100plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 13:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fgl0Hv4m6rVTvvPn7h0hS8xrcpwpLx1YzEBPcCkf+ys=;
 b=orm9xnFJCpi8wDGJk0uyFFfZKCq+Fbl+O9elJjERIeHAexYHEEx1pgODYqCli+PcUQ
 d++sRKyIwnHIF0qRQosMrwnRh5cdATg7Cs7BOteZZyWBm/XupNtqaSJRu+sb//biSuAW
 4AB33zrmPGZZDrbQyXoILC9j0TyOOA5IXjFzKB8xDrb9zu2zMyT1vR1JH0WNx0XRpnYz
 BvgmIRDwyx7TI4WVThGXyARNcBOzC23K3DEWNhERb/+P+0S+y3zTAEmb+V8dd4Bal2if
 5U1zpLayOGHjdzXjvX+7BuG6mgIwjk/7zVBV31zNR860mCNMmK/2+KeEbCbMx0DVzZyx
 Mkfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fgl0Hv4m6rVTvvPn7h0hS8xrcpwpLx1YzEBPcCkf+ys=;
 b=EXhcs9mmlxie5WG8zCo5hvduRhljXay9Mfqoj+FYZ3iBai4VcUsRgI561G09BXL9Xs
 I5CtHeGFoqiLGX7TcF7nYc4eHry4QDEMKNjInNWFU2MOvaaaGXW1DeW/WOyWomlWIN7w
 wU1hc6JKsmzhPwdHl4eqT7Xy2tO5KA9tQ9vo7r2DjTkAqo8VzEHX67wPNNMiWuy3+bC2
 IcTZv+F9C6zE6iCCf5v+56F8sEx+GvGrJgKPD6vi7KCO3r8HXxohVR7sGCwwvp7OaPKf
 zrQJf18WwWZvr3UM0Jpc2nHndyouFTl4cIa1XD30/GtDo98CXV6BsmtVMOA8ceFBSCSn
 XuoQ==
X-Gm-Message-State: APjAAAUC9ekuDeF1+UZL+P+teMZ+Ov2Y/bsliqRuf7EuLAcJMbx9Nagi
 PYV7hAHG/C0Ww8zRm7+1tENwK2FkGAU=
X-Google-Smtp-Source: APXvYqzt1TuCeOImHpdiZz1vDMArvUJzWVRXiMct7jJkjezkPy9Jr8R1mKZxf5cxjgg1bKCwojWCRA==
X-Received: by 2002:a17:902:542:: with SMTP id
 60mr11520149plf.272.1567110531751; 
 Thu, 29 Aug 2019 13:28:51 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k64sm3620947pgk.74.2019.08.29.13.28.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:28:51 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/17] coresight: acpi: Static funnel support
Date: Thu, 29 Aug 2019 14:28:33 -0600
Message-Id: <20190829202842.580-9-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829202842.580-1-mathieu.poirier@linaro.org>
References: <20190829202842.580-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132852_419242_EC18DD36 
X-CRM114-Status: GOOD (  10.59  )
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

The ACPI bindings for CoreSight has been updated to add the device
id for non-programmable CoreSight funnels (aka static funnels) as of
v1.1 [0]. Add the ACPI id for static funnels in the driver.

[0] https://static.docs.arm.com/den0067/a/DEN0067_CoreSight_ACPI_1.1.pdf

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 84ca30f4e5ec..05f7896c3a01 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -5,6 +5,7 @@
  * Description: CoreSight Funnel driver
  */
 
+#include <linux/acpi.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -302,11 +303,19 @@ static const struct of_device_id static_funnel_match[] = {
 	{}
 };
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id static_funnel_ids[] = {
+	{"ARMHC9FE", 0},
+	{},
+};
+#endif
+
 static struct platform_driver static_funnel_driver = {
 	.probe          = static_funnel_probe,
 	.driver         = {
 		.name   = "coresight-static-funnel",
 		.of_match_table = static_funnel_match,
+		.acpi_match_table = ACPI_PTR(static_funnel_ids),
 		.pm	= &funnel_dev_pm_ops,
 		.suppress_bind_attrs = true,
 	},
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
