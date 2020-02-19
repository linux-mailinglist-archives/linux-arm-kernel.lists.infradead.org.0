Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CDF163DCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:36:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUWz3y2BkXEcUsn6xl/Uz/u+2w/ySfA1RJZ1L5bchlU=; b=irYUYJWiye1XnX
	m0WpnTkib6Jo9cSv2gslkU3EQe1vHY/TfI9UfwUbos6vQq1mmfLE5unQ/vnUGu3yeXtU7lUd7FYmN
	tyLpojB2e7zDaYRG6RR+qea9hlGlXRlAzGf2vHOtRr0nSFm1u1HUzAMu6/cA3qk1sRyTFfOBj85NI
	hy0wplqW4W8fDBDxB3mYhNNc8vbEjhTEPeBcRdlBb8yo2M2Z2D04EqO1QcIhjG+ydMved/DYrYGMl
	OYIfDUJavBkoqdnrdUu4hfKMJDesADk1Q4QMebA4xYX2rFQzunaP0dyCU42c1RtIxhCMCf23T1Pwx
	BvkjlPPHSBGIQeKv8edw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JuR-00021H-R7; Wed, 19 Feb 2020 07:36:39 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js0-0007Sv-Oq
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:11 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E367FE0046;
 Wed, 19 Feb 2020 07:34:21 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id tRQ7l11uIYi5; Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 336AFE0074;
 Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ciOnyxmKWg_h; Wed, 19 Feb 2020 07:34:15 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id E433CE0046;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 06/10] dt-bindings: clock: Add MMP3 compatible string
Date: Wed, 19 Feb 2020 08:33:49 +0100
Message-Id: <20200219073353.184336-7-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233409_017604_105E06EA 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This binding describes the PMUs that are found on MMP3 as well. Add the
compatible strings and adjust the description.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 .../devicetree/bindings/clock/marvell,mmp2-clock.yaml  | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml b/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
index c5fc2ad0236dd..e2b6ac96bbcb0 100644
--- a/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
@@ -4,14 +4,14 @@
 $id: http://devicetree.org/schemas/clock/marvell,mmp2-clock.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell MMP2 Clock Controller
+title: Marvell MMP2 and MMP3 Clock Controller
 
 maintainers:
   - Lubomir Rintel <lkundrak@v3.sk>
 
 description: |
-  The MMP2 clock subsystem generates and supplies clock to various
-  controllers within the MMP2 SoC.
+  The clock subsystem on MMP2 or MMP3 generates and supplies clock to various
+  controllers within the SoC.
 
   Each clock is assigned an identifier and client nodes use this identifier
   to specify the clock which they consume.
@@ -20,7 +20,9 @@ description: |
 
 properties:
   compatible:
-    const: marvell,mmp2-clock # controller compatible with MMP2 SoC
+    enum:
+      - marvell,mmp2-clock # controller compatible with MMP2 SoC
+      - marvell,mmp3-clock # controller compatible with MMP3 SoC
 
   reg:
     items:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
