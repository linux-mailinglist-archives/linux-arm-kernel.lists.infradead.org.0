Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B140185F72
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SrJwPX2EZ0MKPt7T+RbhZXryA8uRlf6zsyp+SHmaF7Y=; b=W35JrO7GzL7wJMoX2GbsrKCH5q
	6KGqBx81Ngb2lr/9i8GmG5bUwtfzM83sUNqxxrx/+I62mK5tE3XdYf/NvwekQJPQ2b6v8qoOGN/Pv
	0IK1y8Ptzgu7f+9F9Em+5Qrx9xKxHpVEFXdlahr6mc3bB6MNmQCIoeke70Cg8lOtXHDcy/6AyXkdQ
	AFHANw8l247aI3Wqocor4qqylZ4v9FW332Pynd9byBEkVHsp9+hYXxyvNTT/I3gCcnLoMrUk/rg4o
	4avP+snR8rI6wEqX+ollJjTmnHeA9GIo9fU6POXryaiyc8ZveEWJdt5qiygzKFlxeEjni6RR4tvTO
	iDGTqPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYm7-00057J-El; Sun, 15 Mar 2020 19:18:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkk-00044v-Lf
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so6886041plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QWPsdEuJoivN766vayf9ZE52PL5bRfQfO8yDnpnpf80=;
 b=YLGpToUOVh3x/T3ca5Ku8LUvtlGg/mn9uDKg38pRDzUwGgZXJb8tGa0GGOPvsWFdMf
 mZd5tqxB422axuWgaufL7EmQEjw5RQwVD9s3NzGvyfqMA4krbmIvAClbW2HX3kKJ2JMm
 CVP6iXWti5VDFOYIT2elJBcf8xMrAaIg2ufWPnwKfoXTjUiM/up7rMEJYlidVPjy5UEu
 QyKoKUR06GJ0assWVYuG8pjwzWQ7oMkR5ldrFRSvE4KL3Bfh/aoHmVkvEixds7fQQawa
 rqGIrCK9BOyWlfI61kycfL7SJvjPxBdD7XNhyOwOV4TcJsZIZeobTAKULDIoXyCBZYSi
 pSGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QWPsdEuJoivN766vayf9ZE52PL5bRfQfO8yDnpnpf80=;
 b=qn7AemlSD1Nysm1M15bApAfJ8OpbHXWrtIeUxucC080Tg0wP6iJpgCnGogja+QgkvD
 67dMn9MqPKv9VRvvAHEOP9pwxr205TwLY4T5+PZPCPnxs1cjbFOuyqtx4suoFyrJUkF9
 v65GHBAoM9XYJEJ2udUDX82BhomnBClNExuRlz8pru27PQx/NDiBMl/dgie0l6CfnOWh
 5ZCRsi2KNffz7lwH2RRTgrhvcHWAERks2C59boqwhrk1yXExugHkIZd8NdIiUIxNGriP
 hzZIlE7TrQGR2Y1qnaTo6GieP11sA0SOpCMlYRnnmWUmjRL20AwoJEmj1dt4O2oiMsC8
 lLzw==
X-Gm-Message-State: ANhLgQ11E85R20qykl1mx7cR8cwUBg7LHphAi/jXr6RD07LbyIFGwkdY
 PacvaHLA5J+UDbBk+5Eczjc=
X-Google-Smtp-Source: ADFU+vvc/zMCOFtXWvlFmafRLLAhKGqwy8p4BQG+HR/PLdDqKpEPagGalL4+6egi+jCXG4xF5oyHvA==
X-Received: by 2002:a17:90b:3742:: with SMTP id
 ne2mr21417380pjb.144.1584299809762; 
 Sun, 15 Mar 2020 12:16:49 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:49 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v2 6/6] dt-bindings: usb: document aspeed vhub device
 ID/string properties
Date: Sun, 15 Mar 2020 12:16:32 -0700
Message-Id: <20200315191632.12536-7-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121650_773620_062A68E7 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

Update device tree binding document for aspeed vhub's device IDs and
string properties.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2:
   - the patch is added into the series since v2.

 .../bindings/usb/aspeed,usb-vhub.yaml         | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
index 06399ba0d9e4..5b2e8d867219 100644
--- a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
+++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
@@ -52,6 +52,59 @@ properties:
         minimum: 1
         maximum: 21
 
+  vhub-vendor-id:
+    description: vhub Vendor ID
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - maximum: 65535
+
+  vhub-product-id:
+    description: vhub Product ID
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - maximum: 65535
+
+  vhub-device-revision:
+    description: vhub Device Revision in binary-coded decimal
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - maximum: 65535
+
+  vhub-strings:
+    type: object
+
+    properties:
+      '#address-cells':
+        const: 1
+
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      '^string@[0-9a-f]+$':
+        type: object
+        description: string descriptors of the specific language
+
+        properties:
+          reg:
+            maxItems: 1
+            description: 16-bit Language Identifier defined by USB-IF
+
+          manufacturer:
+            description: vhub manufacturer
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/string
+
+          product:
+            description: vhub product name
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/string
+
+          serial-number:
+            description: vhub device serial number
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/string
+
 required:
   - compatible
   - reg
@@ -74,4 +127,19 @@ examples:
             aspeed,vhub-generic-endpoints = <15>;
             pinctrl-names = "default";
             pinctrl-0 = <&pinctrl_usb2ad_default>;
+
+            vhub-vendor-id = <0x1d6b>;
+            vhub-product-id = <0x0107>;
+            vhub-device-revision = <0x0100>;
+            vhub-strings {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                string@0409 {
+                        reg = <0x0409>;
+                        manufacturer = "ASPEED";
+                        product = "USB Virtual Hub";
+                        serial-number = "0000";
+                };
+            };
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
