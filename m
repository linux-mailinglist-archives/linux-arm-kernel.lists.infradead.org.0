Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1EA14FF56
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:20:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OnaU9KNtqBzW46ssD7zvgepAse+5STvVUW98dTai+eQ=; b=AdE3Kk+s+uOg2O05EENXJdDRpl
	c4apy4aHtrbVp3HvI9knfdsP+JU48XWHvD438fGl047PbzzuqFiJ1UgPC/DrFRRjQGVw/AI4mwPUv
	b32hVr/VJ9IRrc9uFrwSdge3aHEdqTyz2WD7EXogYKJ4sUGOwpwtgFQTMo8Zr46OkcuNP+vvMBlKf
	i1Xf2C28Kb5vxrQEFCEqEeiN4qbI8q0JE147rmw/OPowwLIHQmPHmzTH9ENhhku97WLAKKwoKF5RZ
	oI9yUkeDBAkdLRJZfgvC7tPs4C1ZS6zmfchZIicQbeTwE+5yHYBXTOAdq5bdh8P8dlbXdDceyJXxb
	NHIbiY5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMfE-0003DL-A9; Sun, 02 Feb 2020 21:20:20 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMe2-00021V-Nz; Sun, 02 Feb 2020 21:19:08 +0000
Received: by mail-pf1-x441.google.com with SMTP id n7so6485913pfn.0;
 Sun, 02 Feb 2020 13:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cLNIp7PhbQluM+POzy592n9tV10I9FW4qXHr+ace/0o=;
 b=ry5sjD1L5SWWSxiszhSYKOJe3zcYfWegJDPhnA4gdDOnQqfvHPpwtdd6hcUx/L1NtJ
 K/z/1wv0N6xLazRKhcauNDxKBsbvhb7fPo96DoV1ZC7LLGFO8hqcASm9IJwkntCbr66e
 JqYgA3aV69TyKP7LALziFFb+ZFDl2IWDoglcCE6LRumZ1kZGx6vxTUqwk99zX3QEHMlA
 VCjfCZoeHIrEJhhzywxDYJlCf33sB6aP2l5BQ3NA8NciKDGJVvpSBP9wSD7JxYtenqtG
 qtrbdnkPxfcWZ8opEdCU/V6UKRB1zP9o6pKwGKTtIax1eDBjG5XiXRVCbIszFUk/uaEt
 mt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cLNIp7PhbQluM+POzy592n9tV10I9FW4qXHr+ace/0o=;
 b=H6rtRDzvE4IH+wtTw8Rz2vxqeaEckdQUFe+pLWhhtA1CZVDrgDA3Q01gFZET6jsxJb
 O6y2S3xAbQ6jN3V6e4wifJzWtjdRA8N9zkhoASdGy5q53uS1qNDw0kjNjKHW9OOp+ylU
 i6hS2ycDyT9z80eGRiMj91bkJppLo+ykfmXorMgzrPIb3I9Qc0V0CrbUxuc2eIJc6w5B
 SsITvUtNilbSKhg5kww9EG5ZC7uyauP8bV7xkQs38bVaBUQjYFAF94vIOINK+N+p6E3E
 Gk9XnlS9YE4fFvbd3maPy6NPKTacjlnE609sXmM3lyQ0+jbO5tCPTUl5e5AxSEyXa+JL
 DI/w==
X-Gm-Message-State: APjAAAUcEoxxvRyGT+Ref84JE5/FYNfGDdHYIz7f0AQT6IlPJy/cQhEk
 NQfhLhPfhideJx9dWk/Hcl4=
X-Google-Smtp-Source: APXvYqwrkI357eRs0qOJv+iVUPF/RoVjanzj2RJmPd1gxl+n4lOhSsmQZ6FZzFooY9j35ZJi4460Hg==
X-Received: by 2002:a63:744f:: with SMTP id e15mr23111913pgn.344.1580678345992; 
 Sun, 02 Feb 2020 13:19:05 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:05 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 05/12] dt-bindings: arm: bcm: Convert Stingray to YAML
Date: Sun,  2 Feb 2020 13:18:20 -0800
Message-Id: <20200202211827.27682-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131906_794273_093E43EB 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Update the Broadcom Stingray SoC binding document for boards/SoCs to use
YAML. Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../bindings/arm/bcm/brcm,stingray.txt        | 12 ---------
 .../bindings/arm/bcm/brcm,stingray.yaml       | 26 +++++++++++++++++++
 2 files changed, 26 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
deleted file mode 100644
index 23a02178dd44..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Broadcom Stingray device tree bindings
-------------------------------------------------
-
-Boards with Stingray shall have the following properties:
-
-Required root node property:
-
-Stingray Combo SVK board
-compatible = "brcm,bcm958742k", "brcm,stingray";
-
-Stingray SST100 board
-compatible = "brcm,bcm958742t", "brcm,stingray";
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
new file mode 100644
index 000000000000..b58307086cf2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,stingray.yaml
@@ -0,0 +1,26 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,stingray.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Stingray device tree bindings
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
+      - description: Broadcom Stingray based boards
+        items:
+          - enum:
+              - brcm,bcm958742k
+              - brcm,bcm958742t
+              - brcm,bcm958802a802x
+          - const: brcm,stingray
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
