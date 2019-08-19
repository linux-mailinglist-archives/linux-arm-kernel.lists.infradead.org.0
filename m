Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA7594C87
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCtiRIuGs9aUriSydhGZAkjFFKKfMbkSMBQsYIb0JI4=; b=BWRWiZqzh/tKMR
	UNbkWQ0+5MtHR2ndTCuU2Kjh8WV1tCkTQG64RsheNR7nktIl3lR29V5tk3zQ4HNcGZjiVmMutc8mC
	3heE458WjazWvy4MryyxRLmZOT/+tKKoTq0aVpw85SOartHmsclDPraituh9K2ulZkiKqiMIJsn82
	r5fOucNMmI3uVXEZs7vo6WwuHEwjaamPOmtCGRVT07d+pZmzKkrCsXFKIO1/3Z1wC9RELbLxA9f1c
	r7UTSYVDPMooHZKKz/fuPb8BFcQf+4rYj3NZnnos+L8SyX8flEqhD7lLnMlDjxozYV6+Yebc7cdVf
	xXrvVzPkavFA79sicrQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmHm-00064O-6b; Mon, 19 Aug 2019 18:21:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmGp-0005Xn-Rk
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:20:46 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A01D322CEC;
 Mon, 19 Aug 2019 18:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566238843;
 bh=wxa0LM+vbYgrtuVee7cNQSHuuhlDUGgp7HsBhgwY8lw=;
 h=From:To:Cc:Subject:Date:From;
 b=wJPMkzpuVMW30mhPXbQA+lPzUB8RQ6OFsUg73VIaASOVTa1u6x+8ghSzvaBzyymQE
 EvPM91etkr5FCYpHVTUjo3XnQYyDeq/u4K+6ymdS0lMbIdlF8JtPxjOjmWN8yB61+7
 P6ckND1tXUKFF+UqeZW/ZHfla1lgoUnEyvGAKyJQ=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH v2 1/6] dt-bindings: watchdog: Add YAML schemas for the
 generic watchdog bindings
Date: Mon, 19 Aug 2019 20:20:34 +0200
Message-Id: <20190819182039.24892-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_112044_095924_1F932F63 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The watchdogs have a bunch of generic properties that are needed in a
device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - New patch
---
 .../bindings/watchdog/watchdog.yaml           | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/watchdog.yaml b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
new file mode 100644
index 000000000000..187bf6cb62bf
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/watchdog.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/watchdog.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Watchdog Generic Bindings
+
+maintainers:
+  - Guenter Roeck <linux@roeck-us.net>
+  - Wim Van Sebroeck <wim@linux-watchdog.org>
+
+description: |
+  This document describes generic bindings which can be used to
+  describe watchdog devices in a device tree.
+
+properties:
+  $nodename:
+    pattern: "^watchdog(@.*|-[0-9a-f])?$"
+
+  timeout-sec:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Contains the watchdog timeout in seconds.
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
