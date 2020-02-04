Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2641523E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9hnbwO0t09KFQ+0KNcnATvI1LfyF/oJgdG2Jl2DGGM=; b=PtaczodcFxN2es
	+qUj5veNjWtCtM+zNm02wiF6xoT1us0tJRoSQXxg/pE6eOau84X7CUSU4M34zR56RlPj8HhnP4rkC
	88eluBDwDRefB+q2KkWqz2T9o/YvzbBbW9WDYCpeAIWtYXlD1F4idrOStzVyMjNwf935+RFu4JpVl
	bIXBB94VbtW0ZcxNeIDabDCUtfYdgDE7HbH/rPXrjMU5quU+i5+Cd1xsi3eLB+d7TBgJRcUTNTuOA
	mlf+DWNA5Wj6QbFqHpa8sij2DDhaS5+OahdPv1RGRMf/p0VsxtENHBI3hHIo6C7ZwLAVJKy9LeEiY
	DPxWAlVorPOCpQ7j6wOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8HC-0001DC-K7; Wed, 05 Feb 2020 00:10:42 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EM-0005hc-Sz; Wed, 05 Feb 2020 00:07:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so81164plr.8;
 Tue, 04 Feb 2020 16:07:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rNgHMA6kv0sEkVkQCHv5m/SCpI5yps7HvaSz94olJGw=;
 b=FduV5e7HHuIFti5m8veUplRlVddJCO+yldY9RyI4aJLl69t7Q56G9YCzNz/5uK2rqh
 uKV8J0rtb6IsQZpQj95xIZ0wHnhuRqQVM4HjKZ2u/qr0vxDj+isgnnCifl7sg1xzlQWr
 PlJ3X/0IlWdSc99RZlKgYNXmhV2KLNP/JaR3Bs0IkRqbERYO4QdyrhsPfCf7dHO2eeQU
 uQJyJI6YD5YU7LqywP5PA4CYVKAhQpV+7t32Qo4gBLRt8sLQVF9IgkqYZqiwXoncausw
 43fG6VTKvbGo8RYi8IciME75p7KCcnjY1FKx3T6GuRvhxlDM/Q1/f6M58xTQ/zYu+NmW
 cnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rNgHMA6kv0sEkVkQCHv5m/SCpI5yps7HvaSz94olJGw=;
 b=ArzEGiBBcf6Io0FhV6UgblyU+JlhQb2aBlu/Gvzp5/jhsZnUWXc9kwLwEj305VWbJ4
 XbsM/qlHlppOIQQ+4AbChrEsizF0nGskZftTvc8SQQOxcCnpdpffYXFz3QZnrP5P99UY
 JZXB0p004jgdrAsoQRbgDggIGcuI+UXGqygNy8iOe/SmnOKNadqT3K11u9LbZKu4fKkl
 7RRhwzGkNrtXrUiGc+yS4vhUdhJi4SxQzHnYiKdYR4KImIg33nH0yjn8AK3PDaIzDnuF
 EhyT4qwjmlD/y58C9vM4z+q/tLiRRW8UUjU9bHn7eBuAH2P9yLSoEbZXzM6h8W0Qh0V3
 DQdg==
X-Gm-Message-State: APjAAAWkSJCuLpLcFth98yhe05i+4Mz2qNIUORSjLhfYdxL4Rul47qQZ
 ebGfqCjMy8+9jyaE4MlKDppuMNym
X-Google-Smtp-Source: APXvYqzHjGGFyqHeoAwdAmsvIQYeZobj3KRq8ev1PClEsjo0BTz7/NwXacj13yx/it/VHATevfm1Lw==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr33932389plv.194.1580861265516; 
 Tue, 04 Feb 2020 16:07:45 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:45 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 12/12] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Date: Tue,  4 Feb 2020 15:55:52 -0800
Message-Id: <20200204235552.7466-13-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160746_965282_6DD9946A 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
index 000000000000..db355d970f2b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
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
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
