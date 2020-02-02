Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE01614FF4A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/OTX0Ll4O1PQ1Cc+qHFq4oo+/gHSe2E0d3W1+Yucx6s=; b=ryTMpteDlB+WC4yNyyHF0iEzoG
	nLI1cF07+HNcvy+UlxEGZE1T+0pGHgJXS0o660tI/SZ6tq9RZEeyS1Vp/ba9D5+9XzN7lpgVxVblK
	vBxR23Gvg/OnUxrvPBGZ9ddDMU9sp2iquBNGN5fEJRgjmUcKzXTOveyqiTWh80tVkI6EHImnl+5Oc
	q5X9oHBNo5FUOnK5g/uETNZO3weHtG+tGXMP6n5Mk0vB8VuRGcSpZhF6Swtr2h7H1YD1lOyQMio9F
	uZpPDmXajZIP21Z8aqQvffVyVyl9I4lFXJK5dYtt7lDFx33C51bKE7wOS/P6Y0tOLSkiz044TI3oe
	vXxCwKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMeb-0002TJ-Rh; Sun, 02 Feb 2020 21:19:41 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe1-00020m-5q; Sun, 02 Feb 2020 21:19:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so6713924pgk.0;
 Sun, 02 Feb 2020 13:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+HqoXW19IU0tQeOfSlgHN6Hx1A42Q+7w83EjyBN0djk=;
 b=eEhWlT5Tj1M2M79+KdTJ/ZkY6iDqP5hJIiDhZzqXAinj/L9KkQFU688Jn1PUyGQyxm
 Bkcfp7cQtiCnwvl8tQb4rTDddT04CX3zLjxiELDRPj2y2+7UpfZvx94L7TW2xomnsHdg
 GR7dyUrYAQewHqrCfO4G9UYTku56Ph3gmI86U7UcZerbjMXh64rOWVmYHz9tM3jSZP0E
 97/fqoNzIsZtAvdawFdF5wzj5PiIonAkoZl9HRWHlBPjzg7roba95nbyYgKXeIXxryQ8
 K3NzqxKbud90r2k7ktWW381bCYOSnBMFrPrSkIl28wDuNEKO9EG/YAxRtVKjSSv8uyXa
 cfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+HqoXW19IU0tQeOfSlgHN6Hx1A42Q+7w83EjyBN0djk=;
 b=XyVp2xiKkoJQOi3+GA3vaV5FJ+hbBN6GHNxldNOY0lfEe2HL+h9SjJyn/ASixHpiBx
 p5TG8oMbPHa3UE/COL2rQnfnVhzZjMvpjwNdSxSBmq1YqVV0yFfo1lRoP+9SABQn4Yzh
 VVChjOf7MfK+m4g7mW3GqTn0yDY3MMzsXSDlGMX1TZakxIENnIH9fA5LLoTDEJea7iDz
 GJUUbgveTsVh+QD2xymwDT3+h4ZU1d/pj/Jbs7IAGB9/ULXVQnIdm9YVPBkqpfTLUicc
 M4jpwhWXKBNr94z+u1B/haLTCnXUHGgMmxJ+Sn567QJvOPXHEpR3iSaso1tLmhEGNClK
 CXow==
X-Gm-Message-State: APjAAAUIeIK+cGCq8FNsyPeS/2ilEANWJi+Df9CKeLqEyYAM2gDLquZW
 eDDN46UgML/wJeZSlyq9QD6QuoM4
X-Google-Smtp-Source: APXvYqxwXr+UYh03Rgin6a5IfM55L+wGSkmtED3oBRwGNCdutIY5WGWTI2Zkb5r4Ms+8sZuujzi9Wg==
X-Received: by 2002:a63:6441:: with SMTP id y62mr13441735pgb.86.1580678344356; 
 Sun, 02 Feb 2020 13:19:04 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:03 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 04/12] dt-bindings: arm: bcm: Convert Northstar 2 to YAML
Date: Sun,  2 Feb 2020 13:18:19 -0800
Message-Id: <20200202211827.27682-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131905_212867_B485FBC3 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Update the Broadcom Northstar 2 SoC binding document for boards/SoCs to
use YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../devicetree/bindings/arm/bcm/brcm,ns2.txt  |  9 -------
 .../devicetree/bindings/arm/bcm/brcm,ns2.yaml | 25 +++++++++++++++++++
 2 files changed, 25 insertions(+), 9 deletions(-)
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
index 000000000000..2fb9b16408f3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,ns2.yaml
@@ -0,0 +1,25 @@
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
+    oneOf:
+      - description: Northstar2 based boards
+        items:
+          - enum:
+              - brcm,ns2-svk
+              - brcm,ns2-xmc
+          - const: brcm,ns2
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
