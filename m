Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD496A4021
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jv5vfLfFMejzv4JMS0hYT23UwO1eUh63+Gy4unMeO28=; b=WyrqwYSsVcRW1g
	2VzROadgw2EIzixXcwSaPWvPIzHoJDdu5xHTg/8m/sy9pkEfko5vrqRpxUWiG687qkEPm80Z5PIpK
	3uXR0DSYf9+q31OL848pig8F+elW4pHASswijRh918QEWH6MDMOfMHwIqKQjs+YcguO1Wy2h9vFaa
	Losl6Ie/ei5tVjXJC9A6cRbsfk45Zy6mSypE3op2Y2wTaClYG7jNALlD7AJ8YDbXE5egVCk3VqB3d
	w9TzKDNBkWElIodXRzf8VUar2DCY5trf1lLxR5ofL19Gr3opYh3Vd0rWGAcCJD9wro/6CGZg00QhI
	RZWIPLq7syR413v8Z/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3p50-00009I-TV; Fri, 30 Aug 2019 22:09:14 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3p4C-00080i-0G
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:08:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 448D5D87C5;
 Sat, 31 Aug 2019 00:08:22 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id X5asfx9c0zVr; Sat, 31 Aug 2019 00:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id EE9C1D873B;
 Sat, 31 Aug 2019 00:07:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id iVSFb6QHU_Vq; Sat, 31 Aug 2019 00:07:50 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id B2F3ED87E6;
 Sat, 31 Aug 2019 00:07:49 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>
Subject: [PATCH v3 04/16] dt-bindings: mrvl,
 intc: Add a MMP3 interrupt controller
Date: Sat, 31 Aug 2019 00:07:31 +0200
Message-Id: <20190830220743.439670-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190830220743.439670-1-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_150824_269145_231C9457 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jason Cooper <jason@lakedaemon.net>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similar to MMP2 one, but has an extra range for the other core. The
muxes stay the same.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Reviewed-by: Rob Herring <robh@kernel.org>

---
Changes since v2:
- Add Rob's Reviewed-by tag

Changes since v1:
- Reformat the compatible property documentation to higlight the valid
  combinations
- Drop an unneeded mmp3-intc example

 .../bindings/interrupt-controller/mrvl,intc.txt    | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
index 608fee15a4cfc..a0ed02725a9d7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.txt
@@ -1,13 +1,17 @@
 * Marvell MMP Interrupt controller
 
 Required properties:
-- compatible : Should be "mrvl,mmp-intc", "mrvl,mmp2-intc" or
-  "mrvl,mmp2-mux-intc"
+- compatible : Should be
+               "mrvl,mmp-intc" on Marvel MMP,
+               "mrvl,mmp2-intc" along with "mrvl,mmp2-mux-intc" on MMP2 or
+               "marvell,mmp3-intc" with "mrvl,mmp2-mux-intc" on MMP3
 - reg : Address and length of the register set of the interrupt controller.
   If the interrupt controller is intc, address and length means the range
-  of the whole interrupt controller. If the interrupt controller is mux-intc,
-  address and length means one register. Since address of mux-intc is in the
-  range of intc. mux-intc is secondary interrupt controller.
+  of the whole interrupt controller. The "marvell,mmp3-intc" controller
+  also has a secondary range for the second CPU core.  If the interrupt
+  controller is mux-intc, address and length means one register. Since
+  address of mux-intc is in the range of intc. mux-intc is secondary
+  interrupt controller.
 - reg-names : Name of the register set of the interrupt controller. It's
   only required in mux-intc interrupt controller.
 - interrupts : Should be the port interrupt shared by mux interrupts. It's
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
