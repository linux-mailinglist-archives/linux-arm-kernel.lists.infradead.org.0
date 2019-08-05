Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4F9818DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAwX6LozG/+xnb1M33aCOYWLCtLlkDT2stTNeoZ75Qg=; b=ZpUVRfZ3rKvvNO
	T/QclEYlUSbZKv5INhpZBTXFS3qdGZPXEYQfBiMp9rn+l0sJkgYI53qXliT5+LiQ2cLP9ndR7iNWG
	4wgTNJKcrS8lMuwOJCjpFJywZb3rtPbYvDyt6lfQvEuXvZBx9vscAIfddNCbjM29kpOwXKc8cHFyo
	cmScKXkRjczGtdBel0Ffd0qULSNZseY2gaD5apn+EL7Zab98v0MlIjFwFGcc7QQGUpz40cGfvkglQ
	GX2BemnlUf3obBqaQLBn/UOZ3gXGaoWOrx8joFImtcYpj9rkEBiFZBCxHJ3ngwomZ8Rhjdy4rxuxl
	t0BQFl1hotTkeI1c6kaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hublP-0007kn-66; Mon, 05 Aug 2019 12:06:55 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubiI-0003Pi-LQ
 for linux-arm-kernel@bombadil.infradead.org; Mon, 05 Aug 2019 12:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=It0S2pqtroKRwqpCJzVHjSEtdzt+mhpXXxLdI5TJ2aI=; b=q2kRbSjMOJ90AhYw/4R+2X2wP2
 hae6ACK7C2hPizYNHHmWbMCHPByBNwvgjxsYK9G/B8Pf/hmNy1kHj5F9byK2KKYeV0KzAiMs2Zzto
 hyHtmkTij9QC6hY/R6MTXW3bbxnCS0qZ6n9bbmvNi3YBzbC6brp/DUEwE4u02eSHQco04ShWY//+E
 cfJ+53dg0gViL947RiOnryFi5024A+8rp3prIMGydmU/nW+j48MQb1UzHrzSAD14zS4ACQiDfECoT
 ORFXnAeadS+ZV+NSyNnpJQnjm5aJIpXBM0TVkyNwCdlN1X47TWyiQ18XjYUMOOcidtGZAKz9lvBjz
 4PZlvffQ==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubiF-00081s-GI
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:41 +0000
Received: by mail-wr1-x42e.google.com with SMTP id p17so84137421wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=It0S2pqtroKRwqpCJzVHjSEtdzt+mhpXXxLdI5TJ2aI=;
 b=XcS/BR3jo8xM1NaMWdsnUB4S6gVD0pY/78we1meVjquEdBMWTcHxGseyDIptk1owW4
 sAch2yfbaGyV3k2zzpH9b3hN3WBcHMWkA+9chY46jAJx6YqIqZicqWrrd83D6NHliOzh
 3/siYxppNrcV+/XAQ5C3kvBHalzZud7vkYgz1YUywWv1NVjKP4XQFnaCApw0xU7D8RQr
 GyOn68CKDRiFUtKeXDw33SbxSH7yTUr9lBD8Bpkm16lWH4wskVZIiaOhDTaFUkmOrgzx
 X7Kv0hps1OtDlAsW3G1h1Ob/hvy6L9BzYOo5S1uitLU99O+q4mAfyyVAeD8xEFZS6V1+
 IuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=It0S2pqtroKRwqpCJzVHjSEtdzt+mhpXXxLdI5TJ2aI=;
 b=rqAMTKJP8bpoi1e/WtcUpLXUYlsA4sx8VB7+m1s5UUJsIQVSwdRzX16Ei0FDTb0zFs
 FM5VfBhOjFHd8Ol1k2BywR0dwSs4YpLmBmMgqmWooGQxixDRKLFEl7/1ZHQ/X7lzY1Cg
 wAsB3tT5AdXm5eM3cWS7EWLnpyjv/eLp0Q/D5l5FwN+8hR3sZYcoWpJOqDS8LM8rYiOu
 MD1+jxUsRunJbAtX8W/SP8OnhNbH3tmzDHG1wtlgBJOLuD7UkZjQjQiHtdlydr86TU8V
 v8fl2HxxYzhXiJ+5yxWNwI7rY764DGDM1eO1Tg7IdXLrwaO+OjjB0QjWp9thdXijQtSX
 AoWA==
X-Gm-Message-State: APjAAAWWRwcVu4Wl1WhhAIXvTa7Q6JNojlEelZJgJXoZxBjTNsC+wJbO
 UbJinBUDXTcKuGu62EV9ficaQg==
X-Google-Smtp-Source: APXvYqydGaCtbOymxM94Qk7KUysBb9OK1H/sS9OgWK1Hm6mbeH5Ar1ePJu8NBJIxGYsKGqLDdvCMig==
X-Received: by 2002:adf:f84a:: with SMTP id
 d10mr153995452wrq.319.1565006611988; 
 Mon, 05 Aug 2019 05:03:31 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:31 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 9/9] dt-bindings: watchdog: meson-gxbb-wdt: convert to yaml
Date: Mon,  5 Aug 2019 14:03:20 +0200
Message-Id: <20190805120320.32282-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic GXBB Watchdog timer over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../watchdog/amlogic,meson-gxbb-wdt.yaml      | 37 +++++++++++++++++++
 .../bindings/watchdog/meson-gxbb-wdt.txt      | 16 --------
 2 files changed, 37 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
new file mode 100644
index 000000000000..d7352f709b37
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/watchdog/amlogic,meson-gxbb-wdt.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Meson GXBB SoCs Watchdog timer
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gxbb-wdt
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      A phandle to the clock of this PHY
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+examples:
+  - |
+    watchdog@98d0 {
+          compatible = "amlogic,meson-gxbb-wdt";
+          reg = <0x98d0 0x10>;
+          clocks = <&xtal>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt b/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
deleted file mode 100644
index c7fe36fa739c..000000000000
--- a/Documentation/devicetree/bindings/watchdog/meson-gxbb-wdt.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Meson GXBB SoCs Watchdog timer
-
-Required properties:
-
-- compatible : should be "amlogic,meson-gxbb-wdt"
-- reg : Specifies base physical address and size of the registers.
-- clocks : Should be a phandle to the Watchdog clock source, for GXBB the xtal
-	   is the default clock source.
-
-Example:
-
-wdt: watchdog@98d0 {
-	compatible = "amlogic,meson-gxbb-wdt";
-	reg = <0 0x98d0 0x0 0x10>;
-	clocks = <&xtal>;
-};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
