Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E1710EBBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 15:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HET2ekf4TkM6xbw+NiqBn2ogdN8MFpwFHGagePcVgA4=; b=f4zjoNSRvdHtoz
	SznnU3pw5cT0+ewVAWtno3/W6dY9vO7c8fOb8kIrQTenIxihAWz/y1eLUYTdOBIREp0CATkg5uM7h
	KGLOS/y4JZpdmDWdx2dUgEUHcKTStzg1AZUu2MHqR6yogN5GzbPyaSjRBdusjJCBWIUhkGx8TEhdU
	51BQYfvuxHepO5d89hxVIQjFwnp3jUYIlPgvcnT+EkaFYBGvJzcvwWDVZjv/rAZfTK4hhIeftBmTi
	joI+zi9x//nn18GVGiYkoPtTIGcPuVSHYwlu8pYbcXCk3MS2Qaa9CSwFrEJLZVhAwXkYdvQLar6P7
	LV6QHraV6BwrYZP6gFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibmxg-0004PG-Px; Mon, 02 Dec 2019 14:46:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmxS-0004JY-I3
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 14:45:52 +0000
Received: by mail-pf1-x444.google.com with SMTP id s18so4407663pfm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 06:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=iBH0RKi5Jz+t2OYGGbilzyyJp7eEpphFSzH4F62bvVg=;
 b=aoIt9BkWVIK0K4bG8cvKy2uSHV1rP8v4kCRGXl4I4MM8P/u6FaNQ3oyO1/BF7VTZMo
 0f44dB6Bk0yrPQbu52sQmeLIEvzqtZ0NWZpumD+odhjKpb0t9XUrK/Ek78Ttf//Rxcb4
 DlLAZ6/gyt5kh4nhs/Yk1V5zzyVOjUWaFOfxH7upkIWJXeUKBNre78alWk65MStgfcNn
 mDrI/VhadjZ7YMoEKp6XuXeunl8mtWQDgnS2WbvjZ5VlAYa1OHzmrfCpz2f8OPv9skae
 xn4tP31CaVl3yKfuVbtHS2X18XshZJ1p6Fl73jSNPwx6zVEBo7O/WBhH48XT9sxAwIyS
 DIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=iBH0RKi5Jz+t2OYGGbilzyyJp7eEpphFSzH4F62bvVg=;
 b=iKNw/oa6jEVwA7tCzwYds17ciy0hz/1QVD8HW9JJSOnL6RYntaZOr2C6jppoh0C9bU
 tquH1cSZnd/nC4CC8BWeGWtavERJRTUCQIHqJQ3e5W+h0feqnJiZQMvoCwYkbUvrz37d
 zGXtzUdyHNL2ZDb07WMZHKCnRP87iiqRy5mQlrAxQOyzksxslezShAtT3OjIcIEd7c+U
 Jam5M0Wznj6DCuPkE7rc1suqxMBEKk7V9MFJV0z6A6tYWtH+20jIFAQG5Hi11O9/wKSJ
 so+gEiry5KQ1vgxz+itVwY8+Stzs8dAX9tw6oJTP6oTmNKJ0veO8QVlM2wcSvLETLPGC
 /h5w==
X-Gm-Message-State: APjAAAVnw6wWZKz2xb66vG28xFkfOLP14W+/fziXf6BgAjBTdHqWS2US
 VUdQua0H/9FdBF/2iYFzAfsD35lNnr0=
X-Google-Smtp-Source: APXvYqydjvlaxSk9a4YhTRb37zRq93wXcRnAZKDo01RIEpoI47n4+MqT4yoD+oVbPBskbB3wts1oMA==
X-Received: by 2002:a63:d047:: with SMTP id s7mr604744pgi.81.1575297949772;
 Mon, 02 Dec 2019 06:45:49 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id f10sm34347813pfd.28.2019.12.02.06.45.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 06:45:49 -0800 (PST)
From: Jun Nie <jun.nie@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, xuwei5@hisilicon.com, p.zabel@pengutronix.de,
 opensource@jilayne.com, swinslow@gmail.com, jun.nie@linaro.org,
 allison@lohutok.net, yuehaibing@huawei.com, tglx@linutronix.de,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, xuejiancheng@hisilicon.com
Subject: [PATCH 1/3] dt-bindings: clock: Update Hisilicon reset doc
Date: Mon,  2 Dec 2019 22:45:22 +0800
Message-Id: <20191202144524.5391-2-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202144524.5391-1-jun.nie@linaro.org>
References: <20191202144524.5391-1-jun.nie@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064550_617842_D4CFE7FE 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the update of Hisilicon reset operation extension.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 .../devicetree/bindings/clock/hisi-crg.txt    | 12 ++++----
 include/dt-bindings/reset/hisilicon-resets.h  | 28 +++++++++++++++++++
 2 files changed, 35 insertions(+), 5 deletions(-)
 create mode 100644 include/dt-bindings/reset/hisilicon-resets.h

diff --git a/Documentation/devicetree/bindings/clock/hisi-crg.txt b/Documentation/devicetree/bindings/clock/hisi-crg.txt
index cc60b3d423f3..fd8b0a964806 100644
--- a/Documentation/devicetree/bindings/clock/hisi-crg.txt
+++ b/Documentation/devicetree/bindings/clock/hisi-crg.txt
@@ -26,19 +26,21 @@ to specify the clock which they consume.
 
 All these identifier could be found in <dt-bindings/clock/hi3519-clock.h>.
 
-- #reset-cells: should be 2.
+- #reset-cells: should be 3.
 
 A reset signal can be controlled by writing a bit register in the CRG module.
-The reset specifier consists of two cells. The first cell represents the
+The reset specifier consists of three cells. The first cell represents the
 register offset relative to the base address. The second cell represents the
-bit index in the register.
+bit index in the register. The third represent the flags to operation type.
+
+All reset flags could be found in <dt-bindings/reset/hisilicon-resets.h>
 
 Example: CRG nodes
 CRG: clock-reset-controller@12010000 {
 	compatible = "hisilicon,hi3519-crg";
 	reg = <0x12010000 0x10000>;
 	#clock-cells = <1>;
-	#reset-cells = <2>;
+	#reset-cells = <3>;
 };
 
 Example: consumer nodes
@@ -46,5 +48,5 @@ i2c0: i2c@12110000 {
 	compatible = "hisilicon,hi3519-i2c";
 	reg = <0x12110000 0x1000>;
 	clocks = <&CRG HI3519_I2C0_RST>;
-	resets = <&CRG 0xe4 0>;
+	resets = <&CRG 0xe4 0 (HISI_ASSERT_SET | HISI_DEASSERT_CLEAR)>;
 };
diff --git a/include/dt-bindings/reset/hisilicon-resets.h b/include/dt-bindings/reset/hisilicon-resets.h
new file mode 100644
index 000000000000..983e42a0c318
--- /dev/null
+++ b/include/dt-bindings/reset/hisilicon-resets.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Hisilicon Reset definitions
+ *
+ * Copyright (c) 2019 HiSilicon Technologies Co., Ltd.
+ */
+
+#ifndef __DT_BINDINGS_RESET_HISILICON_H__
+#define __DT_BINDINGS_RESET_HISILICON_H__
+
+/*
+ * The reset does not support the feature and corresponding
+ * values are not valid
+ */
+#define HISI_ASSERT_NONE		(1 << 0)
+#define HISI_DEASSERT_NONE		(1 << 1)
+
+/* When set this function is activated by polling/setting/clearing this bit */
+#define HISI_ASSERT_SET		(1 << 2)
+#define HISI_DEASSERT_SET		(1 << 3)
+#define HISI_ASSERT_CLEAR		(0 << 4)
+#define HISI_DEASSERT_CLEAR		(0 << 5)
+#define HISI_ASSERT_POLL		(0 << 6)
+#define HISI_DEASSERT_POLL		(0 << 7)
+
+#define HISI_RESET_DEFAULT		(HISI_ASSERT_SET | HISI_DEASSERT_CLEAR)
+
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
