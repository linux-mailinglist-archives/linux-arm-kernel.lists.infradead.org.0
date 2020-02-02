Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70AF14FF5D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:21:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tKx+9UzMpixXTyS7JEwOrUSjWuhWXFcwEAB/5mO4bKw=; b=D717vbZKJZLP4VLB/vqzS6II7/
	Cn8PXxl5wdinB/DyZQYc6d5Q/m0RI7wygkSBZ28bmYEQ32UkKmu4P9icNmDznOtxFXK0zdPXX1NCm
	zsrh+9R7HxpeP8e3Z9wsRA5dwvtLGPFr3I0AOwNcIz+KImwV08TaHthO0YzJ//OZzR96XAHaxUESp
	/zPAqZKTZdA1XyT/MmWY4Q7xqETXxe7jITcVJLDJ0IwqKeUYVK8fc9tyBu2UgByud+Fer77av4qZ0
	hYlhK2wHaF/RLTvMHOGTQTMmqoXLvaHSkdyRt0I8E8dbQEAvz6+HTYhhkeV33mAYm6Lie6Bo8EHIr
	gCdEYKvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMgT-0005zi-DO; Sun, 02 Feb 2020 21:21:37 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMeF-0002G8-AF; Sun, 02 Feb 2020 21:19:21 +0000
Received: by mail-pj1-x102f.google.com with SMTP id n96so5390529pjc.3;
 Sun, 02 Feb 2020 13:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ipAhlw5WrsUU5opUi6Qmf1XgM2Fq+bPWZGrkUnEi1PQ=;
 b=jqlUNlkwxxWhM/E6FJwjoqn00hnGheJApKd3G3+IRHM2eTahOI3CAScHOb2kDB+3Ak
 aeEiR6zOkAlIqpG4ZROtszwHLfARNMD2bY/5M16B5hRHb0Svkuw3/loLSaWAZiV/gOM7
 aGzJQrQgGmc8dNQLpxltgheHhJQAEhHcZsAR0qjZXEGRLSOFVIhejChQaGgjt3p29oaQ
 PKikzKKUHAcdJj/buattmAQ/SNCSUvC2TflHD0IzbC7jPwrnE4EHW4CCfCyOTdK/9ybr
 Fat0CcweqkaKbdDcHwo6hWs1NYjyshBqzt7NcgWnt0cq3IyubvJOEobHt3AHmVE742NZ
 uJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ipAhlw5WrsUU5opUi6Qmf1XgM2Fq+bPWZGrkUnEi1PQ=;
 b=OB2GJ06pddR8G7WhGf7nV1rUjJetXsVKo4yoqIN+d1HK+710tEUaqqiLVlgdqSdees
 GIsVwUzPhkZueEf/28UfwplyhOZMVM3obtGm6dofbWgCvvslb0tPVNvJjt0Q2strTWeF
 Vc31YJVC77NlUWMSBSorzvN3/FvMTTbMUfzsAljdNFHlonM+oBwhtdL6dOMCmlPygoXl
 84yoMN1VRF33SNmuUBbYvU6B+hFei8GeIoBZmi4UjamSxalETxrXkSFJyNhMpauAMAB+
 6sqNNfYixTq7i4AI0nhbaFvUnnJK5a+fsNJ/EMp0ktqUy5rsc2zuu+Vq3d2mSbX6qEFk
 kOcQ==
X-Gm-Message-State: APjAAAWV1GTcnLVlfmKWhemBWa3SvoDrufMgm92zRsaXLMcBwn7KfNl0
 dDK4BCeJUy3B+qxvVjoGn6A=
X-Google-Smtp-Source: APXvYqzleHkzLuuK6EbthbsR8W7Ckozvij4yX5QVnZMianpMTeoYoP7+KcICZDn/XgokllSTiDsNzw==
X-Received: by 2002:a17:902:9a08:: with SMTP id
 v8mr19262721plp.251.1580678357623; 
 Sun, 02 Feb 2020 13:19:17 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:17 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 12/12] dt-bindings: arm: bcm: Convert BCM2835 firmware binding
 to YAML
Date: Sun,  2 Feb 2020 13:18:27 -0800
Message-Id: <20200202211827.27682-13-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131919_463390_1FD51BD0 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 33 +++++++++++++++++++
 2 files changed, 33 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
deleted file mode 100644
index 6824b3180ffb..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-Raspberry Pi VideoCore firmware driver
-
-Required properties:
-
-- compatible:		Should be "raspberrypi,bcm2835-firmware"
-- mboxes:		Phandle to the firmware device's Mailbox.
-			  (See: ../mailbox/mailbox.txt for more information)
-
-Example:
-
-firmware {
-	compatible = "raspberrypi,bcm2835-firmware";
-	mboxes = <&mailbox>;
-};
diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
new file mode 100644
index 000000000000..4ccbe3bf616c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Raspberry Pi VideoCore firmware driver
+
+maintainers:
+  - Eric Anholt <eric@anholt.net>
+  - Stefan Wahren <wahrenst@gmx.net>
+
+properties:
+  compatible:
+    const: raspberrypi,bcm2835-firmware simple-bus
+
+  mboxes:
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+    description: |
+      Phandle to the firmware device's Mailbox.
+      (See: ../mailbox/mailbox.txt for more information)
+
+required:
+  - compatible
+  - mboxes
+
+examples:
+  - |
+    firmware {
+        compatible = "raspberrypi,bcm2835-firmware";
+        mboxes = <&mailbox>;
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
