Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BB21FB036
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhMDfYp6+sIsiFnjvYBeBVBDJTHD90CN2+udngLDNiE=; b=KqtiqA3+Hk3WMp
	w3HHoF00zjvs2b9Bcfoft2bzdKRtxHHuJKqbFghiPk6B1ljUsfGHZ6x1xFsla0cGeSjhh7wkXrImJ
	noDdIJnhYL4Dt4LB69y4QT2OZRdvOYmJNIV9PWSiX55mC4zuZOpIP9aiiKUrBtmemjUPxaxrT9eeQ
	4/+RUdB57mZg/ZsOhk50gAQtsbQTsVFlYWSpYnBfMbCe6ez8EtCNNy1jk55ifPK1s/TbRsje+C4fK
	HtAd9PLNWYyxe5nHPFr5hIoKuGb7eKy48W+9vwH1vQF42q0EEngGQbuj7tLNN2HQaYjxdV/dvMPGK
	GpKTct6nI2kztTLjIYIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAYX-0001WL-3A; Tue, 16 Jun 2020 12:19:09 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAWo-0000J3-Qe
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:24 +0000
Received: by mail-pf1-x432.google.com with SMTP id 23so9403111pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fDQC1q/6pTc2BSyh05jjBKpJepT+dwpazrZGsFLJpVo=;
 b=ESIgPO/yFoN1yMwOvDNrlQaYh8bbunv9VbR9IKFnZbYX6dpCTDGH+c6VH2SDIdfESr
 vkcjchgJk6GtVFwTNIHnN8OZeh0eizMagRZB+bTDD0IE1qBG1X8AdLbFDrBj6qZfvGOw
 jXleuZz+UEUBvMbo8Remr4eW4uLhYb2tLHhlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fDQC1q/6pTc2BSyh05jjBKpJepT+dwpazrZGsFLJpVo=;
 b=EBrNr2Zf4NmvOH1dCr/r/IbHh/sfT72FpVOw630csMRcWxVR0hD6C1ijcnzkTHszlC
 luDb/BT4fGt+KeN8WfHZV9jKYbcYk86OqBu6PP12xi0qNctWqJtRE9b73Bh3GfltPSLr
 vZ5voroH9H7NrSj2frbBuGA0NmvxN4tY56vXTw9uBuE1FUYgm70N/sRO0eq5bcP94OHB
 Mx5Lq4h7VhX44caQUG9MBiSlINqMl2dIQb03T+9hOsd0qup/rI8ZYxJ/IuGPnKs6AmFR
 aEOyGkJFl2carBW/41ItAwsHDiwTSuodCeMQK7Cevbv0mVRfwSA+ZRo9AhIDbrScg7uP
 /giw==
X-Gm-Message-State: AOAM533hLi+WSX8injzVeRQ/XK1Di/xKayBRUL+IJcJkMa/w5kW/WsT/
 MA6Ef8dFc0QMlykO9SOixQvhlDKDc/I=
X-Google-Smtp-Source: ABdhPJyWmAquQyVAsMd+xi0kijqsxvUQQiX6VNMiN1pZ1XkqqyV013WG62jyzVMUsqdx145PjJ2Rmw==
X-Received: by 2002:a63:c204:: with SMTP id b4mr1819831pgd.67.1592309841318;
 Tue, 16 Jun 2020 05:17:21 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:20 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 05/12] dt-bindings: arm: Add mstar YAML schema
Date: Tue, 16 Jun 2020 21:15:18 +0900
Message-Id: <20200616121525.1409790-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051722_869390_9D5ED835 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
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

This adds some intial boards for Armv7 based mstar platforms.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../devicetree/bindings/arm/mstar.yaml        | 34 +++++++++++++++++++
 MAINTAINERS                                   |  7 ++++
 2 files changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
new file mode 100644
index 000000000000..7bb91a546b5f
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mstar.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mstar.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MStar platforms device tree bindings
+
+maintainers:
+  - Daniel Palmer <daniel@thingy.jp>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+        # infinity boards
+        - items:
+          - enum:
+              - thingyjp,breadbee-crust # thingy.jp BreadBee Crust
+              - thingyjp,breadbee-crustx # thingy.jp BreadBee Crustx
+          - const: mstar,infinity
+
+        # infinity3 boards
+        - items:
+          - enum:
+              - thingyjp,breadbee # thingy.jp BreadBee
+          - const: mstar,infinity3
+
+        # mercury5 boards
+        - items:
+          - enum:
+              - 70mai,midrived08 # 70mai midrive d08
+          - const: mstar,mercury5
diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..a8640c1c50cc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2117,6 +2117,13 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm/mach-pxa/mioa701.c
 
+ARM/MStar/Sigmastar Armv7 SoC support
+M:	Daniel Palmer <daniel@thingy.jp>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+W:	http://linux-chenxing.org/
+F:	Documentation/devicetree/bindings/arm/mstar.yaml
+
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
 M:	Michael Petchkovsky <mkpetch@internode.on.net>
 S:	Maintained
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
