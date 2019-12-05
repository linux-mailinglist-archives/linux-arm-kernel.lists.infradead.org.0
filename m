Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 958851139CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUBY7AXgbx+Jn2QhnCeTY4+tFiiK3hpSTF0Fhm2ase0=; b=DSuXeI2qwmKbTI
	7iVmLsTI4yiAqHj+Ua+ep/ip/hdeladwtAPJg4CCaPS9U9Ai2tMjkvdfhmSWtcowb/Y4NdxBzsfi1
	dMLghY8XADcmN1Mjkmh8/QyMmPHhoUJZsm4wKlV/ccpUUhjXxd8hx7/A24ubiZS2ARmEfnpMygy+O
	sy5Fee14p/ZvQehcOEerPEs1bsb/kgRhfE814vOR6tgWFmHkJOVMD1cBXUC3wL7E+eOCCPGrakCSy
	BUHFGy1E9bV3VxdF4E78HRKnI9CqNMWbGMYGoC6dXbrenh8I5Bms+VhvBW9Fpm+g9NP5ZFLXmLg4y
	89ZkO3l6HjBwdImGDGpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icgkk-0008Iz-99; Thu, 05 Dec 2019 02:20:26 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgk4-000819-PY
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:47 +0000
Received: by mail-yb1-xb44.google.com with SMTP id v15so850538ybp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ihtlFABPBnoy2P/0nme6IxjB8k8abDvHtlVFp7u9UbU=;
 b=BDAh3g1xK+Dp/INnYnBHccAOCjdoDmNH2LUb6rnU1ddHgXY/FfDQcOHo+IZMytIrYY
 Iz707zpP3MFrvY9oUzNC+U6u+SRRU1mCidaJrbJe3Ws2wFreNL0ACLouRbtcBZSXcjiU
 DZgC48HC0ffaqLNfulk58wxYNEowiaTAC1AEH3be2v/H9BV5JuX7UUH9J+MGPwJLpfaK
 UvhHKENBybEbxXkNbaQeq1CTOavGJRIQTAZQnzWSPChQYgmRVhHQsEA7rXn17fHz5p5K
 IOC1Xh39Vo4PCMSjfP9JC/Q5f1bznBFhwTGOCjCKveo3D74IFP+6Sr5SQZtU37emCg35
 iyLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ihtlFABPBnoy2P/0nme6IxjB8k8abDvHtlVFp7u9UbU=;
 b=p+frDuqDtnJ32g1y1vIG0mhMXzF5839VAryRC01cSB9gk3v5nv6Xsy4eZRyHCg8ysY
 6zWtRC+hYqZGQpUU50i7sKN/KoAvfULpI/QdXTWXNfhZRJp83RqlGJM/Y+sVO4Z0QxG5
 2ysBaYq85vw51rZy+FrQ5rja9Hu6tJrSpBvy5rZKzfeRNwl/izu3EqgajVGQmV/EnMZN
 QV3q6+fjWSqOmMHSliWF6JgIgajj8wiL4eHd9+IF5ZUOQqQlIvJ9rGWabA0d06v0JXjS
 tD4+EQbFT2iUJEcrwtQxw/3RDL5USsZ8tlKOr4kTm8f+q1q05Kw8iJrMNmMMz6bJQHB8
 pz6Q==
X-Gm-Message-State: APjAAAXDtG1SIcbTOgDt/ZMSKLX0yQN810Y60EpF9ycIsw1FvWlKnWum
 f9lSC9XHVjQzbB7GG65Li+9e/SRO
X-Google-Smtp-Source: APXvYqxF86DnJ8ZxbtvUU5bmlYrvbRlVOwxtkpTsyn3N9R3JEX3DO5SwegbiASSWbFKP3wcWDE/MGA==
X-Received: by 2002:a25:5788:: with SMTP id l130mr4227810ybb.334.1575512382963; 
 Wed, 04 Dec 2019 18:19:42 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:42 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] soc: imx: gpcv2: Rename imx8mq-power.h to imx8m-power.h
Date: Wed,  4 Dec 2019 20:19:17 -0600
Message-Id: <20191205021924.25188-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181944_829264_3F6A09F1 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation to add support for i.MX8M Mini, this renames
the existing file to be more generic, so it doesn't become
necessary to include multiple files to accomplish the same
task in the future.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi                   | 2 +-
 drivers/soc/imx/gpcv2.c                                     | 2 +-
 include/dt-bindings/power/{imx8mq-power.h => imx8m-power.h} | 0
 3 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 55a3d1c4bdf0..f73045539fb1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -5,7 +5,7 @@
  */
 
 #include <dt-bindings/clock/imx8mq-clock.h>
-#include <dt-bindings/power/imx8mq-power.h>
+#include <dt-bindings/power/imx8m-power.h>
 #include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include "dt-bindings/input/input.h"
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index b0dffb06c05d..250f740d2314 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -15,7 +15,7 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <dt-bindings/power/imx7-power.h>
-#include <dt-bindings/power/imx8mq-power.h>
+#include <dt-bindings/power/imx8m-power.h>
 
 #define GPC_LPCR_A_CORE_BSC			0x000
 
diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8m-power.h
similarity index 100%
rename from include/dt-bindings/power/imx8mq-power.h
rename to include/dt-bindings/power/imx8m-power.h
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
