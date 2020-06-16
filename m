Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D032E1FB042
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQHjfdb71vfvUkrddAd3R56TuqlmzM7h4Vo3FrXRS0E=; b=NS3z4MdvPZB43g
	GuO7sP/97PSW/iuSrskajOCvw/KVIaU4omk31Z8ed/jWn80p5wvBEQ9aAeFbIqOkI9qlQCYMAYD1F
	QlTH8zP21TLf3tHJq4gXFnuCAVtZbmInBtPHCw9nMuWVcIcH4bE0K8InLh93QIFs0H7zCupZkSICW
	SlDbyZ4yCROOeNvo7yKIkXDyxb4DhG7yI3NO6ndLXR7U78nZPKqSuWjtHIaxMJtW9zN6Pa6HsrxYv
	1y4JDKdJmn/5IQ0hxIuCcdjPtqwOxqypdbEXH9TspmT/g6BLp+ioK5A8G3+4YVJDoaLdccqkEFSu5
	jK6TNgZ9Sp1/WBhX+2aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAa7-00056l-A2; Tue, 16 Jun 2020 12:20:47 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWz-0000TK-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:36 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m2so1491297pjv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3QNIUikvD5iyxTHk1gYVBrR3ob0+R8+y+UhbZ9LC4HI=;
 b=sqZtwnwS2+hl5HB/Mtw0ss6MLDu3pD5SAEXhwXuKc6aC9vARfDQdEN0CUoXI/7yvYD
 Ccb0NnHubg8xNdj0m7nhkSA4x/3EgrgoCWpfekQUS0sNLEMmxLroGM85ztzkKVaNV0TX
 sV+C8/Ce5iG2ZZOTrWkG5T7/QVFkFT/0xetmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3QNIUikvD5iyxTHk1gYVBrR3ob0+R8+y+UhbZ9LC4HI=;
 b=gljBzUXVCFEaxtMW3FdIP5uLnmgy/yjJGDGyJeSWGcA/BpXktLbnqHL3eqaQvKTHCn
 pqi+UJ6YWkJWYchN2OWmjqTI7QJmct4xhNI+RtlJ7+o4vs7s2At15oC/2zb8f3N8WMZ3
 pG4mxNv7zrGuxHlmR3+18sQ9H3cgpWfLEzWkB+FqIQ/68a2FjOOi9jLVILBLCwsj48dR
 jsSDNQ85G+QlELnEC1pjHhFv1GXSaCx0pwJbMCMMEUqcdwNvZGtEP7D9aLKC/voScCDK
 sLPXwdVXbndbNsU8ai6Scj8fzZ+W9zLBX6EjKxaKSrVmGFOiLRty7+uwq+GscYhoQIPA
 UTvg==
X-Gm-Message-State: AOAM530eAIF2WrQSWjpdzVqYW4gSzPRf25RfW4hYQ2bl6ppfbdcMJcj+
 4uteh1VI5FNoEatkRz6gm6D+Y4Smi3Y=
X-Google-Smtp-Source: ABdhPJxkj1vvamQcbIq+GbZ7IKqORIqDltS0mXIbcsskYSDbh4JsuwGjaXSV6NAfNX1aQkC3UrPE8w==
X-Received: by 2002:a17:90a:bf14:: with SMTP id
 c20mr2584276pjs.228.1592309852364; 
 Tue, 16 Jun 2020 05:17:32 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:31 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 10/12] ARM: mstar: Add mercury5 series dtsis
Date: Tue, 16 Jun 2020 21:15:23 +0900
Message-Id: <20200616121525.1409790-11-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051734_069588_E544A3E1 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a family level dtsi for the mercury5 and then a
chip level dtsi for the ssc8336n chip.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                              |  1 +
 arch/arm/boot/dts/mercury5-ssc8336n.dtsi | 14 ++++++++++++++
 arch/arm/boot/dts/mercury5.dtsi          |  7 +++++++
 3 files changed, 22 insertions(+)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n.dtsi
 create mode 100644 arch/arm/boot/dts/mercury5.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 8c152e29877d..f0a2b7b3c0b6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2124,6 +2124,7 @@ S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 F:	arch/arm/boot/dts/infinity*.dtsi
+F:	arch/arm/boot/dts/mercury*.dtsi
 F:	arch/arm/boot/dts/mstar-v7.dtsi
 F:	arch/arm/mach-mstar/
 
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n.dtsi b/arch/arm/boot/dts/mercury5-ssc8336n.dtsi
new file mode 100644
index 000000000000..7d4a4630c25c
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mercury5.dtsi"
+
+/ {
+	memory@20000000 {
+		device_type = "memory";
+		reg = <0x20000000 0x4000000>;
+	};
+};
diff --git a/arch/arm/boot/dts/mercury5.dtsi b/arch/arm/boot/dts/mercury5.dtsi
new file mode 100644
index 000000000000..f68e6d59c328
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mstar-v7.dtsi"
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
