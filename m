Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936761E4828
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9ZYHVQJCFbQpwXq2XLekcV/vOKDtkFiYQAJDBgWXco=; b=lOGcyT/SClxuvA
	zO4GB7Bj2lPUbXjrKdq3AZn74TG4MDXu2Qzd3j6fHsEOgnZPAKyxPYEoEuod9pOTDkm3+m7qNEaKk
	ryWaAq/f0tGnLFX6oWTabzS2f1ca+zlRpTo3p/mQPiY1gYTiSDwykLeRXzSxEC4FBrNcCRtUdITn5
	fg9I23OhsH3VN33P5nsYXTdbhSk/hdpWn4eoBvQJjj/XaXaRhdMW93ig6qh8tRtKdGmYWfq3GaMpf
	pJeOg2+IyBiDO7kKrrXN+VK6GlYkIQtQV7g/iQrxeUA2CT3u93ciHL8tYMgXONRcHpHr/FC+amLj6
	xliGNwgIID2Owbvl93TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyIE-00056L-GW; Wed, 27 May 2020 15:48:34 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFO-000382-KZ; Wed, 27 May 2020 15:45:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 670AB5C021C;
 Wed, 27 May 2020 11:45:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Br6jNHTz2Qqeu
 hVMkqvSgmOdnA/EpKz1fVYzAs6ZIJ8=; b=K1CqDH1Ionf73F04BRWvx5bIQcVx5
 KRcTo3666HaPFq5Lfplbn2jvFVZC6t5YQgb4HdzAlrNPJsf2d/0SSLmUE2Clp5BV
 83fLE3nI/kezVl4+Avo5lPtIkKNDUxG2++H+OZrQQFe5kp5kc/AkPChscim+Odaa
 Vzd5DIzCBdXFxR8Za19isbiQp9LxvYcBEAaWWu3Ku7LdzcA05mGY6D5yU774XIyp
 KnBUiPfudLJtfztNVYtmG2ljDpgTmls/JP9qF17B1+z3pp5sWiZVmlKMAqLga+g5
 gGaqloclxHrvOVDCucWETqrVulUDdcAZSzlKNlbq7NDfYLOyBlL2WpT3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Br6jNHTz2QqeuhVMkqvSgmOdnA/EpKz1fVYzAs6ZIJ8=; b=Q08L1e6r
 B2A2JS3+sDyNI9KVLVDNJeuZqKcDTFKS7cgxjsUzFjLDUgdgxV+2VSZWMiVbBVIc
 R38pZ9wdKrxy5FYUOsr6LI0Br3oAvQJWmADc2mwF9lu2Be4tK30pQmEqBUw/z0po
 qzwRs65t6Cs44RBwGDhtpzJcU/HiX2GHXeOSHJAhfk6//kNB17pHpD4E3iLMIleg
 pfrtTSp9ne6S6MHjXQIEZUwEvhjB4iAApWtw47lS7kXc3nmmGgD2OIOAPDAWqxsC
 83V06HrOevLoILfPhkQoeFQfUsVbR9x8HOb317T8diegD49msEkTd0HBKpmPlY/V
 j6Vq5xVrpuXG5w==
X-ME-Sender: <xms:GIvOXvaxWik3iX2VsGuCCYdWeJKEhGDddmGZ0-ql2okHeYuET7mcGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
 fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
 igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
 fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
 gvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvg
 hrnhhordhtvggthh
X-ME-Proxy: <xmx:GIvOXublPsLx6x4UmbPQLa2XRbxc4D_q-7pu91nkW_hdNEgnvEmb_Q>
 <xmx:GIvOXh_fvJL2WQJFmciPu6P7z01SHUYeBRfg162OvXoxowCug5tDjQ>
 <xmx:GIvOXlpGWAJZmLyj3IlPRjjXvhAtmv01k4MWlX72lP8o-cav88ejlw>
 <xmx:GYvOXreAUMRWDVZc5dQ_z2ao--49ihbi8KRiC5NV4vaMWPuFJtHxLw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 28BB4306215A;
 Wed, 27 May 2020 11:45:28 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 01/25] dt-bindings: arm: bcm: Convert BCM2835 firmware
 binding to YAML
Date: Wed, 27 May 2020 17:44:57 +0200
Message-Id: <2cd7d7e08bd90c2f61eb2ce79b1db418ff9270b6.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084538_816038_996072E6 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>

Convert the Raspberry Pi BCM2835 firmware binding document to YAML.
Verified with dt_binding_check and dtbs_check.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt  | 14 --------------
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 35 +++++++++++++++++++++++++++++++++++
 2 files changed, 35 insertions(+), 14 deletions(-)
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
index 000000000000..cec540c052b6
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -0,0 +1,35 @@
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
+    items:
+      - const: raspberrypi,bcm2835-firmware
+      - const: simple-bus
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
+        compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
+        mboxes = <&mailbox>;
+    };
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
