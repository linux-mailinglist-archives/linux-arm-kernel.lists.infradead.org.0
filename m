Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2791523D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0dEZgyG0egTJe5RiX5ywFAkX8meVWPWJ/41znsxrr4=; b=WTweXc9L2gMUfM
	jpU1YG2zUYLmZYXrOafKLRsJk65UZ737GlQo6zamOYgqpnPbdA8N/4kvoEzdUfG5gubKGBodjxw7n
	8wHmZees4x7DpqWj30DFDYaqNbPpMQUh/SZezakQM0F6al5qFv2E9NjSiB+gQcjyC8KrfOMFPvLPT
	czZVM5uMOCHWTxQm7uuXtsp6FOYz0Y8DiP7F/m4RmwMjdrmS31EdlCw26xJKmTYNPPqlxHNUZRyvd
	PprlzdRuW/uyhjPwbQeq3QpIVgg87ElSzVizmRkZwMfX/Uwi5Oo/+tHuRDRYDtllvhiM52mGsC70/
	0W8C69zbEi0Yi7x5ZQ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8FD-0006MZ-3z; Wed, 05 Feb 2020 00:08:39 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8E8-0005Qn-RE; Wed, 05 Feb 2020 00:07:34 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 12so146478pjb.5;
 Tue, 04 Feb 2020 16:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wc/K2VBiaEoAX8ksH2pdKPCsC2it4+zxHWGi9pFTCR0=;
 b=LpX4vcwIJu2IyTR90vNarI+qCvGoHb1ZlWvp4HFsthjfhAQf+pTPZ9orM/1zzOjeGy
 IGh1grpjO6hNg1h5TXud/wIV6ZjPVsSa1ZSnQVxwO6BcZDFSt+rlWUKIdtC/UhNu7VXt
 lepq53wH10uOLMYt5JXvQk+Ps4jVMGIiz6Kw7aX4DzowJ+oCaFSxJN5xnLuPlKCg1BTG
 690+NA/POlrwDAohjK0Pz0ee5LJJx63gpaJiN8CZW/TsISwcPOmxhL5MO6wRh7p/t5kH
 tWskAuCKC3jODHl1IstXhxUHSvDx8hYy8m5iDgSMVnlVcxdJEiM3QMzBrBkXqzNwLM1Y
 fUcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wc/K2VBiaEoAX8ksH2pdKPCsC2it4+zxHWGi9pFTCR0=;
 b=lWRU/npM8OyQOk4PVFQvZ0vZA9AOGMHJhngtnLPRaMwFB/7hhXxH0fU451MVRh715G
 06a1U5UkvUcP+CPB8Q3iHH4DN2LznQivHEyGdI10w5mqNq70rLTFlhWDwRCc0SM8sI3j
 0eCKzXVD1qGHwbsbWdWynpPR3B3y2zMKHzSUoRQhOZaJOatvo8auYRD5GOfr2vMIF3Ae
 se/4iGsIVpH1hx+87TfSPLYpOpUk3nbJSgzKEZ/jDe/526wkAnGgKwaazmJNXjCXSaAG
 x2vhL6EG2QYWVgYR6wSEri4LuiIS6qYLBL9HVKmboPZ+3uNiUkMrcvxIM+rNDXDMuUfG
 YAog==
X-Gm-Message-State: APjAAAWlrhvtTX8Y7ez95s5uTuMOdfZFm7FUFvrmEdV9ZK2Og8Hwg7Gp
 dGVbi0id4fKKsM6qJDKpCJMKBU2d
X-Google-Smtp-Source: APXvYqxIpUaGYHjBBZkqBxq9C4gI7LzQDwvfUSTeSLhEkS5m4RgcX30JMcEC+W07zub0VrT5fr8jEw==
X-Received: by 2002:a17:90a:7307:: with SMTP id
 m7mr2194523pjk.75.1580861251789; 
 Tue, 04 Feb 2020 16:07:31 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:31 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/12] dt-bindings: arm: bcm: Convert Northstar 2 to YAML
Date: Tue,  4 Feb 2020 15:55:44 -0800
Message-Id: <20200204235552.7466-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160732_913981_CC951C22 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the Broadcom Northstar 2 SoC binding document for boards/SoCs to
use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,ns2.txt  |  9 --------
 .../devicetree/bindings/arm/bcm/brcm,ns2.yaml | 23 +++++++++++++++++++
 2 files changed, 23 insertions(+), 9 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
deleted file mode 100644
index 35f056f4a1c3..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.txt
+++ /dev/null
@@ -1,9 +0,0 @@
-Broadcom North Star 2 (NS2) device tree bindings
-------------------------------------------------
-
-Boards with NS2 shall have the following properties:
-
-Required root node property:
-
-NS2 SVK board
-compatible = "brcm,ns2-svk", "brcm,ns2";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
new file mode 100644
index 000000000000..2451704f87f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,ns2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom North Star 2 (NS2) device tree bindings
+
+maintainers:
+  - Ray Jui <rjui@broadcom.com>
+  - Scott Branden <sbranden@broadcom.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,ns2-svk
+        - brcm,ns2-xmc
+      - const: brcm,ns2
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
