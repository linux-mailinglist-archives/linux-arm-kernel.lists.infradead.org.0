Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546E214FF52
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BqXG6cNrW4K2PN3dNS5IZVkjqylDwUUFBNVeMCOeVGU=; b=qZmk2U0uYUkstWugNJdm65P/Ks
	XJ+jionMwQPyDPIpAfb6gFBFIioWSgXiybUQ8kIEtjfqiLelU3L1ntfWlKDJARY3TDkjNMPa36SMu
	Qq7+5rr/1xpUyDH/At07S9ZOkdCMrrsByYk9m5vWhy/g5gq/cvJMZRY1mPwijv8FUotRLVnmPezYb
	uKEUCMjaxcYajzY0XKNH4ZghdCldmhKr8vp93vAiPx4IqWrDeuznL9DdIq0eE7YK1Ien+IuQbwwmL
	PttPvCYifAEyLN6OpwpZJ0HtB3bgthqmkmFi9zYVC5lPXBCiFQd6k7fALlf1cf5/+nzMhnieSCib5
	/70wYFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMem-0002jC-Ao; Sun, 02 Feb 2020 21:19:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe0-0001zd-Ot; Sun, 02 Feb 2020 21:19:07 +0000
Received: by mail-pf1-x444.google.com with SMTP id i6so6484155pfc.1;
 Sun, 02 Feb 2020 13:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0jJJmK4Mx2WfiOTBPLN7HPig/djh+iM8ysjdKEjile4=;
 b=XzDfGelnW4RyxFB+tbeMszGkIjQoew0dqWwvQb5TtIrvYypWSAs6YWT2jyDjP5NqX3
 iBpWhrtf4wWZnK9NzX3vEBW4t5ZXAg0EpAO1iD+fOnXYqanIGNnYXH04nbAKIGU2jR1s
 dhDZeFZn1fLS1chq3kNCkVH12PEM7S+z1r2llw/KjUbmsTbVeRnFFikeE5Sbw/UWxj7m
 sUofKiy7vWBaZgP2VSdQ+GsMqzBioUhtLPgo1Asv6bKfKlBLk9r9velxrqzwxUpZj8rL
 8mOadA9ciLTlqnP99CdRrzmktHFv/4eLAUoemczu0IdKOei/MvbYGe0CnvX2ueIi0d6T
 wy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0jJJmK4Mx2WfiOTBPLN7HPig/djh+iM8ysjdKEjile4=;
 b=aqDv2M2NQqWF8hykdggyVmE6/ZHJJC3nHind/lZB0xGZBr7IioANfYWCF62hBrm/zg
 4eRjM+4Ionp2Pfthqg+GGHm+toLA6uUORQByEKMcRJ84kzCZDqOg7AmbP5O/y5lkxjU8
 l1A/ozgmDtcXufCcqnQpV3uFqgzTNn8e+WWWhIWZXsLaIcTA2wDjUz3IQqMqUSOT7V3A
 4Hn69G0XmNn9FmJUS+F2QHUfNBvCuZfWn2R7s22tnKtH5dys1BnnfIUkP0SEWy4B92Z6
 qJG3EXjf5P38387f1PsTdYIEdIVOr2akegWrI1ITZuPwDR0cJct6tm40GnRysZ8X36mh
 0V7Q==
X-Gm-Message-State: APjAAAXA8os7ZFP5Lc018aE6fASUkf4uVpKaNQykFVRBLCwHRr4BOMju
 l73RzTn0qKwzWqriqVIy3jg=
X-Google-Smtp-Source: APXvYqxRwOkofmsrr6lj+YNgcfcX5JRarYGSg7YEvrBpqLiB0axkrHcOuolx5Rno4QKcbzUacnd0HA==
X-Received: by 2002:a63:e4d:: with SMTP id 13mr2717798pgo.343.1580678339094;
 Sun, 02 Feb 2020 13:18:59 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:18:58 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 01/12] dt-bindings: arm: bcm: Convert Cygnus to YAML
Date: Sun,  2 Feb 2020 13:18:16 -0800
Message-Id: <20200202211827.27682-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131904_804606_3B856CA7 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Broadocom Cygnus SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,cygnus.txt          | 31 ---------
 .../bindings/arm/bcm/brcm,cygnus.yaml         | 66 +++++++++++++++++++
 2 files changed, 66 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
deleted file mode 100644
index 4c77169bb534..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-Broadcom Cygnus device tree bindings
-------------------------------------
-
-
-Boards with Cygnus SoCs shall have the following properties:
-
-Required root node property:
-
-BCM11300
-compatible = "brcm,bcm11300", "brcm,cygnus";
-
-BCM11320
-compatible = "brcm,bcm11320", "brcm,cygnus";
-
-BCM11350
-compatible = "brcm,bcm11350", "brcm,cygnus";
-
-BCM11360
-compatible = "brcm,bcm11360", "brcm,cygnus";
-
-BCM58300
-compatible = "brcm,bcm58300", "brcm,cygnus";
-
-BCM58302
-compatible = "brcm,bcm58302", "brcm,cygnus";
-
-BCM58303
-compatible = "brcm,bcm58303", "brcm,cygnus";
-
-BCM58305
-compatible = "brcm,bcm58305", "brcm,cygnus";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
new file mode 100644
index 000000000000..2606ca956caf
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,cygnus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Cygnus device tree bindings
+
+maintainers:
+   - Ray Jui <rjui@broadcom.com>
+   - Scott Branden <sbranden@broadcom.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM11300 based boards
+        items:
+          - enum:
+              - brcm,bcm11300
+          - const: brcm,cygnus
+
+      - description: BCM11320 based boards
+        items:
+          - enum:
+              - brcm,bcm11320
+          - const: brcm,cygnus
+
+      - description: BCM11350 based boards
+        items:
+          - enum:
+              - brcm,bcm11350
+          - const: brcm,cygnus
+
+      - description: BCM11360 based boards
+        items:
+          - enum:
+              - brcm,bcm11360
+          - const: brcm,cygnus
+
+      - description: BCM58300 based boards
+        items:
+          - enum:
+              - brcm,bcm58300
+          - const: brcm,cygnus
+
+      - description: BCM58302 based boards
+        items:
+          - enum:
+              - brcm,bcm58302
+          - const: brcm,cygnus
+
+      - description: BCM58303 based boards
+        items:
+          - enum:
+              - brcm,bcm58303
+          - const: brcm,cygnus
+
+      - description: BCM58305 based boards
+        items:
+          - enum:
+              - brcm,bcm58305
+          - const: brcm,cygnus
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
