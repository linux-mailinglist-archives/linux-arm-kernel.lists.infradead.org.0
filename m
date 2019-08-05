Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513CA81499
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCYHD2plJUu5uQuxplVKxYE1O3yCzi4BmUR3G/SZp9w=; b=sTJ9F6+ni1Z3xo
	SBJNp3sJ6q88TQv4IhoF96wjOsKpKMOamqTSKviW5h59+U6xaPyOWPmwyvL1PlEvo1XkBASh3srGi
	Uleb2C5N7hqFNV2nIjcRG4R8FjUiCK7Vk9OK9yUJGGCV2TLgmpuIU7BqCU5PxwQsDbr8+T2FyLYef
	4PHwlnsEMU92omq3ogYqqLKM+NzKV2pjQp8lnKIydtwLw48xeviS2yHcGcTL6ydwNHUuNT1KkuoKW
	RkTlA2p4NqqhSaJU16/FB9xXtPDHovb9C+zGI0uYIsMyNzIVsAcng9usCoZDo8d2MY3B/4LGvhNY0
	GUWdkNIm9C52+tHKFMhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYqN-00069u-9Y; Mon, 05 Aug 2019 08:59:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYpg-0005lx-G9
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:59:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so78639490ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EXkqTVhXO6MuFFjVCLi4lBLWx6BlFlZJVWVgTuZAEY4=;
 b=Ba7QAWM2Evl4Pc4fPtC/POrJ4FhEhiepLZMIk4k/Jf6H4nfgT+MI5OG45ZGSdcv755
 H2P3RmWgBKtQhwYQ83e0djlFVDjf4wxYMObX9mcMV2fBTv5n1rjVivL+60qap0XXNSU6
 /LgzC00XNxT/HS6mPk5/AEuqQHVpVdfDX8ra02QjPmCSIEtANfRQs9zrhxEeAjfLDt1q
 tBJjnis5YTgkKttRZvNl1dQoNstj3Pm17uZEEqNaHeF7jj3fN1Un4hVybpPdobQRc/sc
 yS3L6Q+6afMC1lCyqmzXa64ipIj1SNVbp9s6M2955b2Csb4HkNKQAPkvqOPwTZ5yK6Mz
 oWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EXkqTVhXO6MuFFjVCLi4lBLWx6BlFlZJVWVgTuZAEY4=;
 b=j2tGTBchpKONx/4Qfae7tG0KF54WSjhsk3LnHPzVGaAXRnyvQ0uHdmDY/XEHFmcqrn
 KeuOo4Qa90DOEGPwSAKcfUvBUyllnL+Kz/WpADsPCkl2o5xK207/KCI2NoXsEB6BQ0PC
 nPxD9ucqcMHRGTPWmROvOSHElWPkhlXw2JOfAjsY21ko8EIiFfEh+/bXEauA78Mw5hfh
 h0xyGcITWMYaZcL5Gh3CMJZ6b1zyJb7TPBuonQ5vHem13LZNkV4Rju2BFd4psJ5MeWIi
 GM9/AdnH95VscmRb3oNQ6hoWFSjCp0/5nNq3o47t16rcB7WwgSsjBEPvSdI4GzHNxq4z
 XqFw==
X-Gm-Message-State: APjAAAWMuX4WlxyjISYun1CR65sr+CxMZZn6Gwi/eyimcsTGeosEbcxG
 jh4zRtzS8iwtUt1snHsy7e+ukg==
X-Google-Smtp-Source: APXvYqwbuwVFOcYZ+tW4JlcKxLgpwbyuG/DAzlJI56u1tKKPW2NO6e7CH6quIqpkbqZgdu0KsK69jg==
X-Received: by 2002:a2e:534a:: with SMTP id t10mr38483547ljd.109.1564995546767; 
 Mon, 05 Aug 2019 01:59:06 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.59.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 01:59:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 2/4 v2] drm/panel: simple: Add TI nspire panel bindings
Date: Mon,  5 Aug 2019 10:58:45 +0200
Message-Id: <20190805085847.25554-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805085847.25554-1-linus.walleij@linaro.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015908_767960_E112AE6A 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the TI NSPIRE simple display panels.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- New patch as bindings are required
- Let's use YAML
---
 .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
new file mode 100644
index 000000000000..fa81602a922a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR X11)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments NSPIRE Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - ti,nspire-cx-lcd-panel
+              - ti,nspire-classic-lcd-panel
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel {
+        compatible = "ti,nspire-cx-lcd-panel";
+        ports {
+    	    port {
+                panel_in: endpoint {
+                    remote-endpoint = <&pads>;
+                };
+            };
+        };
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
