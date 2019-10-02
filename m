Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FFFC874E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/AlibOAO4oMoh6vzQYvldpzub8foRnvwou3CJzCons=; b=EE67LoeTQcahoU
	5Z5YF1u0Ld0VXuX8/NbUcWJTt0KXCgWkeEuMsuXBmjI6kyzrg3JBVsRJjr8e8o3XH8qfi6CxXCpMu
	Xss3xLQjrt2Lul9KEqjXOKtY1DcMigzDRYdi4u8VnqBytoOrY1j29dEIs5aieA4md2AJtZrH62sYG
	87HRL0pO7Zb3+4e+r4nxvpIiS7wc8o6v5SCevE4WhlzaU22LnR+xTrtFX2HJrw0WeQbCIzrm6SSBv
	3ueLVbAF8gSKnWoCpvgAq1zVGq2ECHfYNdnA5wEt+RJByMlkUscQed62/GlybRlrG3HY4eKykQlAo
	0/DJPMfSb5coexcb6FQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcmv-00052q-Tv; Wed, 02 Oct 2019 11:27:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcma-0004uu-Qs
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:27:02 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E15821920;
 Wed,  2 Oct 2019 11:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570015620;
 bh=DXFtBgxGGgvpKY8DJ0Xw76yv+899ap6972HaBCLpO6g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=11J36BMuspOigGLsrGnlBC+q9XqU0A3fhCLsa9iZ5LAkYZyh9JsHdOxBBRE595vEM
 4oyu04jdRQ3IM4l0MYc1RrfTa+imy7mC7BNmnHn6GC6QVMBQXjiDCRjlovzpIWBJVK
 Iy15N0dMHTp5tanBmY6D78ajcGe2uab0Uhegf0Hg=
From: Maxime Ripard <mripard@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 2/2] dt-bindings: usb: Bring back phy-names
Date: Wed,  2 Oct 2019 13:26:51 +0200
Message-Id: <20191002112651.100504-2-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112651.100504-1-mripard@kernel.org>
References: <20191002112651.100504-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_042700_910314_111143FC 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Emmanuel Vadot <manu@bidouilliste.com>,
 linux-usb@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the original bindings that were superseeded by the YAML schemas
didn't mention that phy-names was needed, it turns out that phy-names is
required if phys is set according to phy/phy-bindings.txt.

Let's add back those properties.

Fixes: 14ec072a19ad ("dt-bindings: usb: Convert USB HCD generic binding to YAML")
Fixes: c93bcace1098 ("dt-bindings: usb: Convert the generic OHCI binding to YAML")
Fixes: c3e2485d5f4f ("dt-bindings: usb: Convert the generic EHCI binding to YAML")
Reported-by: Emmanuel Vadot <manu@bidouilliste.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/devicetree/bindings/usb/generic-ehci.yaml | 7 ++++++-
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 7 ++++++-
 Documentation/devicetree/bindings/usb/usb-hcd.yaml      | 5 +++++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index 059f6ef1ad4a..1ca64c85191a 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -63,7 +63,11 @@ properties:
     description:
       Set this flag to force EHCI reset after resume.
 
-  phys: true
+  phys:
+    description: PHY specifier for the USB PHY
+
+  phy-names:
+    const: usb
 
 required:
   - compatible
@@ -89,6 +93,7 @@ examples:
         interrupts = <39>;
         clocks = <&ahb_gates 1>;
         phys = <&usbphy 1>;
+        phy-names = "usb";
     };
 
 ...
diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index da5a14becbe5..bcffec1f1341 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -67,7 +67,11 @@ properties:
     description:
       Overrides the detected port count
 
-  phys: true
+  phys:
+    description: PHY specifier for the USB PHY
+
+  phy-names:
+    const: usb
 
 required:
   - compatible
@@ -84,6 +88,7 @@ examples:
           interrupts = <64>;
           clocks = <&usb_clk 6>, <&ahb_gates 2>;
           phys = <&usbphy 1>;
+          phy-names = "usb";
       };
 
 ...
diff --git a/Documentation/devicetree/bindings/usb/usb-hcd.yaml b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
index 9c8c56d3a792..7263b7f2b510 100644
--- a/Documentation/devicetree/bindings/usb/usb-hcd.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
@@ -18,8 +18,13 @@ properties:
     description:
       List of all the USB PHYs on this HCD
 
+  phy-names:
+    description:
+      Name specifier for the USB PHY
+
 examples:
   - |
     usb {
         phys = <&usb2_phy1>, <&usb3_phy1>;
+        phy-names = "usb";
     };
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
