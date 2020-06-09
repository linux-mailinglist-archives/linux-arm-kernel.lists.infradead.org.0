Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAAC1F35E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQf636SfziFQpeElrJqEk3gRdd+j14aYlgJCCfl3g2g=; b=AjwlE60w2Q4FLI
	AEMrBePi9wjgml77MEZ6Ab9PdQhV/VUIGXgl7wgaAxWogVsk+ZJAV7vKdkYeTutOC+wr4GL+n4EUd
	+KLxGOe9trKMu7i4Ht5UmbKkAkCsZO+Z0w0yFIR+4CvA6RMp5b3ZrfuYkQgU+Ocyj27BU3j6V/zKS
	MwdnM1HkCWVg48rUnAe4ECDfuL6fZtzFYOssHpqGJgle024301nj05zi1arn3a0qNWxXo9TciKG1N
	otDlkWqjlNXH6XcJKIbWc0ZACas2Yka7XNv3kL+zdb/eOu9WzwtB8FfWQ2du5+aJQfvoPzk/atk4G
	i2k97w1F4aV5zzRuyEvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZKV-0001Vn-Af; Tue, 09 Jun 2020 08:09:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZJG-0000ZA-OJ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690118; x=1623226118;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CVX3KheKEZUyLSS073Y9Q703DmBTx+PPKOvv792Yx6Q=;
 b=pj/t/FlG4MINsruym3n3i+xFlmLam2o+fdA+Wej2Ce9XGi7LaD0qLtcf
 RM/8FClPj2cGxpZVPiuz9AuHnn9g9wdUHO1WWuKw0Es08b1VtPTmDZmTz
 OPYTtRqYOUURqUIMMVpcmHfv/N16XuLvke2n9DDTJNByn5BsxYXtN6vQ/
 zXMQoYpH6OXCaVUUjVg1ywrCbhLM9j4s3W6z9YStG2hQYhzdoDkt/bwBp
 9td4Gp9AsdRk1uXNHh3fItFFBf3H1WgfmYHgPedgQOgrUZLhOaPDhQTHC
 o/l5w+n59x1aTDZOIopRo3qrCifBcRzIpYD3Jv71BisUz16GHmdT93xUA Q==;
IronPort-SDR: xnpxjOnPkOs999EkK6zJ9UllPwRvBrkLSbWE3RXdU0eiOAfXLEbxa1g0Xdu+z54Bjj4IZU7Pc4
 MCgLQxd6FCpzDXIcOnaqOq9RoOE9xbr+GPOMQmIatWOwxpWrqd3rDhX8jki57HmNGTiFKOrobB
 PKeGA8lU3SjbM0hsYdSQOeBpip6JAKMaJYXmw/hUvRyoiZERrRcJiWtcdl5+CfWXtuXjTOains
 RdaM4pzIkygcrxEbgo1RvkZ2QbPmL+GmI5phLrn91y3rAAFT0Zy59FJIR13RqO4/fEsD0HccHS
 W3E=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="79412848"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:08:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 01:08:31 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:08:29 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 07/10] dt-bindings: clock: sparx5: Add bindings include file
Date: Tue, 9 Jun 2020 10:07:06 +0200
Message-ID: <20200609080709.9654-7-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010838_887894_ADEEF1D9 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Sparx5 support 9 different clock outputs. This include file has
defines for each supported clock ordinal.

Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 include/dt-bindings/clock/microchip,sparx5.h | 23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 include/dt-bindings/clock/microchip,sparx5.h

diff --git a/include/dt-bindings/clock/microchip,sparx5.h b/include/dt-bindings/clock/microchip,sparx5.h
new file mode 100644
index 0000000000000..4b04dabacec2c
--- /dev/null
+++ b/include/dt-bindings/clock/microchip,sparx5.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2019 Microchip Inc.
+ *
+ * Author: Lars Povlsen <lars.povlsen@microchip.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_SPARX5_H
+#define _DT_BINDINGS_CLK_SPARX5_H
+
+#define CLK_ID_CORE	0
+#define CLK_ID_DDR	1
+#define CLK_ID_CPU2	2
+#define CLK_ID_ARM2	3
+#define CLK_ID_AUX1	4
+#define CLK_ID_AUX2	5
+#define CLK_ID_AUX3	6
+#define CLK_ID_AUX4	7
+#define CLK_ID_SYNCE	8
+
+#define N_CLOCKS	9
+
+#endif
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
