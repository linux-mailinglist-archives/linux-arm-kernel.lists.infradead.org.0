Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FC6171536
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozQUuDx32zj6RP7GLxvMPW9g7oJXtIVR3ojTGfwBTWg=; b=Ikd73+4W+Ad6q/
	NPSx02UcgJag28Weq/NCWeZPd9lKPLxQmwm7BiY9fxQ2WcdfgIO45lZO1mqHgwM7d1bnb7dfGuFFe
	OmCnP84PkhAOAgp8BX62BMBI8FxkvuDdSJdUvCMnP/gBreTNZjiT6I7Nxgaa2LS5F6SdDeNpFGEmy
	e2xUqBZkl36z1Wz5IvIpccT6WiI7zSTxnWvVqYdtMzSK9/Gl7mNelhD4JExPOSCsMj9tdKwfEfa6+
	GcSBI/ZsEBADRm8eAKSPpVh/iIYZiQNqgHRapowPKKKcqiArlg4mDXJrQN+cQ3R4Tu7ozpcsgQfRp
	FDHZcWs0taTewHM58gaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Gck-0001iC-BP; Thu, 27 Feb 2020 10:42:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GcY-0001g3-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:42:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcR-0003f6-Ay; Thu, 27 Feb 2020 11:42:15 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcP-0004nj-5g; Thu, 27 Feb 2020 11:42:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter.Chen@nxp.com, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 linux-imx@nxp.com, stern@rowland.harvard.edu, jun.li@freescale.com
Subject: [PATCH 1/3] USB: ehci-hub: let port_power() override the
 ehci_port_power()
Date: Thu, 27 Feb 2020 11:42:10 +0100
Message-Id: <20200227104212.12562-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227104212.12562-1-m.felsch@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024222_265572_5DD30A3F 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 11a7e5940514 ("usb: ehci: add ehci_port_power interface")
drivers can add a port_power() override callback. Currently the
ChipIdea host driver is the only one using the callback to support gpio
controlled vbus enable/disable. Then commit 6adb9b7b5fb6 ("usb: chipidea:
add a flag for turn on vbus early for host") and commit 659459174188
("usb: chipidea: host: turn on vbus before add hcd if early vbus on is
required") adding a workaround to address the current core behaviour.
Since that the gpio based port-power is broken which was the only
use-case for this callback.

We should let the override callback override the core behaviour to avoid
adding local workarounds needed to address the core behaviour.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/host/ehci-hub.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hub.c b/drivers/usb/host/ehci-hub.c
index ce0eaf7d7c12..12b8c9055ab3 100644
--- a/drivers/usb/host/ehci-hub.c
+++ b/drivers/usb/host/ehci-hub.c
@@ -1338,13 +1338,13 @@ static int ehci_port_power(struct ehci_hcd *ehci, int portnum, bool enable)
 	u32 __iomem *status_reg = &ehci->regs->port_status[portnum];
 	u32 temp = ehci_readl(ehci, status_reg) & ~PORT_RWC_BITS;
 
+	if (hcd->driver->port_power)
+		return hcd->driver->port_power(hcd, portnum, enable);
+
 	if (enable)
 		ehci_writel(ehci, temp | PORT_POWER, status_reg);
 	else
 		ehci_writel(ehci, temp & ~PORT_POWER, status_reg);
 
-	if (hcd->driver->port_power)
-		hcd->driver->port_power(hcd, portnum, enable);
-
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
