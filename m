Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14691523DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vew9F6K2rri40AyE6d+sm+0Gf2jMrV3VhyozdsThT24=; b=awtzFWcQpNj+wt
	eGmyWOe6iWlklIgUhig1Qy2jXtUmpbrXGYM0gRu2uGkNrUu2QFdhzjc7cSwZ1drvDNco2d2+eza/y
	yAkCCuS7uuhKc+ZG2sq73S4aSjTDlMAuQYWZ5BRsc/TgBuBgH9bEZ4kxZPDfUgf1UKp9tMLDFB5KO
	CygRIdDpvJ7LY5goHomnl20CLWIlo8Ze7M3SUra5tFQx/CL9fq3BK8XCyokGJYR1PSjMH3SY+bpfr
	1nlRcIJYie634aKyOC391rjW/mGSBpTeApVvlQ7EYpebrkoy5VlBzYCFxYL58W8aMO0oo8tXLbvFY
	DdgjIJO7Jt3QR1HNMOsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Fy-0007Cz-IG; Wed, 05 Feb 2020 00:09:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EE-0005Xa-4S; Wed, 05 Feb 2020 00:07:39 +0000
Received: by mail-pf1-x443.google.com with SMTP id j9so190429pfa.8;
 Tue, 04 Feb 2020 16:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ERKdQg+ZQ5/xsEYnaNIhskI/jM2cXI2orVLbvx3keIc=;
 b=VE+WUJAOudGGe1MdXO3cYv0Sr2+IgMUZ/Xs3ym3cceLyAkN1ZgnPmpAZmVraM/WzI9
 kS7OnM9/0wWjf89l8u6tKoOAniITN13YbZ5H7uNdNZUjVWFWTj3S+n8X4k00R/a46duX
 FqaYPZKuEdSnuSIn6xIlvRKUfP0ky7iug/LaCYhxtQfUK9DucOw1/vGYZwoBw4QeUIPm
 fyBSD3uZUmNdlaZEnXIvOoVrXqZrjzQTaBu+A6evQQ8W9TN65Lw3xHarY4BB/VFJuWDh
 mIwBMO0A2UbwE5kBpBFN6W5EvXD/J0auJ7rY6NV1wdvI6VKgI/s0ga3yCyqPh2z2ePj6
 LIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ERKdQg+ZQ5/xsEYnaNIhskI/jM2cXI2orVLbvx3keIc=;
 b=Tp8vKBLcigX6BzQjCIH5Dl4aAQICg1qGvuhYV2Qn2I4LFy7O8Dhbo2sirndiw/NDUg
 foNtVhgqfIGDNucszAuLLCUjf07b3UwR88INhb9ObMrZxubH2zS2g5XENCFHFT0V32QG
 U0Bj02LO0kYRQ5fCA7P8KwzBhBGOW3kvjd4/Yj8blC8meqk6+5QpYDK5wo5j8aKxSJcR
 3sfX7LrYQLvdP6Tg2izfH7EMItYK1kXifEWl5bv63SATOBK/A4D9UHa2q0Wt3oY+pdxz
 6Flis+KXCHUA6rvti36kT9W+50K3eRW5nnJZlhOKS75ZWvELsThLn0Hw5A2taZ4lLm5p
 11zA==
X-Gm-Message-State: APjAAAUBg1uPW+TsDP2B/hTgrvq2etzQSrtVF/30sURFec8Wv8CrOIFg
 FuNcvqVDwV/Ad41moWYNrvSImOjt
X-Google-Smtp-Source: APXvYqy8PcH/z7IK5Rdo7h24zwX6FiZnWQFvwh2ZrcJX3vYIQDvjpslqLAD8NwD3VkRzOBzHky+u0w==
X-Received: by 2002:a62:5183:: with SMTP id
 f125mr22345848pfb.201.1580861256962; 
 Tue, 04 Feb 2020 16:07:36 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:36 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 07/12] dt-bindings: arm: bcm: Convert BCM23550 to YAML
Date: Tue,  4 Feb 2020 15:55:47 -0800
Message-Id: <20200204235552.7466-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160738_189833_A45CAA5A 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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

Update the Broadcom BCM23550 SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,bcm23550.txt        | 15 -------------
 .../bindings/arm/bcm/brcm,bcm23550.yaml       | 21 +++++++++++++++++++
 2 files changed, 21 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
deleted file mode 100644
index 080baad923d6..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Broadcom BCM23550 device tree bindings
---------------------------------------
-
-This document describes the device tree bindings for boards with the BCM23550
-SoC.
-
-Required root node property:
-  - compatible: brcm,bcm23550
-
-Example:
-	/ {
-		model = "BCM23550 SoC";
-		compatible = "brcm,bcm23550";
-		[...]
-	}
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
new file mode 100644
index 000000000000..c4b4efd28a55
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550.yaml
@@ -0,0 +1,21 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm23550.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM23550 device tree bindings
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    items:
+      - enum:
+        - brcm,bcm23550-sparrow
+      - const: brcm,bcm23550
+
+...
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
