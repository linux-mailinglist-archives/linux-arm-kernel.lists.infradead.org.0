Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F03C11264
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TojraQId/wJiWWiL2GrStSEzWz04Pb5pifNAuz8cyyw=; b=gQrgfvWk3m6uTR
	WktbPOS9ucC/soVvEsKz8kaOtVGjD2xitkMYGnZRLwd5VcF+Bu2MNKt/d5eiu2koeSHxAPRVF48xZ
	N1e+T/l2JBSoxQVPKHGdzUXrO5tqZyLlbgJ2fjXiQj520B+ZEIzq6FARSL10I6SNVm1AQeJpv85wH
	b9WE2qpvf7Z4TeM46cgflYgmzYb32e1uwOFwyu26pSFdkWt7j71zvH3xnmKdbycT82qJIoum5ysP0
	qU7bzbeWTJRq1cXSN02IU5zscRq6QH7XqxLn8CHHyFawn5S3VF3hPdQ48UzYI1b27vP9gTwZyaoHH
	JY9ACgQbpNOUGm6bIMVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3m1-0006hm-He; Thu, 02 May 2019 04:56:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3lt-0006gT-LJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:56:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id c13so506916pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 21:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IkrMCqEn9oBcjz0/CtfAqnhPX22uydzYRgGmzuCpAEU=;
 b=ijpGbk6l9KiByD4XFUJqq6IgByHkJAUD7Ag93JRuA50qIy0MK1NCQ5ppXmY5UBmBTf
 MWbNrREJQi7ySq4aHqLTApAXTjP5OJaK4AoWHSzmW09GxwJ4N/fTuXH//QGN1C+vwv+m
 MmX8RhXDGST3fCcYjYXjf6r3RNY4rfTMozMEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IkrMCqEn9oBcjz0/CtfAqnhPX22uydzYRgGmzuCpAEU=;
 b=Jpqto8uhE4Jgp+rBLCexoHcAPRn6CvcUGTVUrlzF0B7MZSzhbJb5I1VSdnyq3K2gPl
 kyJ+fJrkFA2r5Q7kx7P960AvQgiXyrFAR9HMkXiJHH17zGcrY1eYciYQOfdaV5G6eKeD
 MWMe+GC0aR55Rg4/2/zaMeBuShgV4wPV6tlsm0SoSL544UKM1RhThb2s25jbq+Tt9zaE
 4YW0zqrCn1rTm6OwU0kRjYcDbzQfPC5HuO/pTzfZ90EFlV3YPV6l7j/TbX59qXp/C+8q
 +ZnRw4plQsr7dNeMgvtzJBdXITSMDXY6+9NwzjljzO0+k5JGWQwupAy6/PUxo+Iit0id
 IBvQ==
X-Gm-Message-State: APjAAAXgExPJeuMcLuwvFTSs5WnVMDj2razikOYWgc2aE/P01H0Jo9Ko
 Nts/+BXgNbwfhDGdgY84kIH8iQ==
X-Google-Smtp-Source: APXvYqw1sDUyzzDiU3Vy5sYFPwzI+iVL9D0QGXxIHbzqHHaXqc3ZpHKtv4ApVsNNmAUr61R578y0sw==
X-Received: by 2002:a62:6842:: with SMTP id d63mr1875558pfc.9.1556772996219;
 Wed, 01 May 2019 21:56:36 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a6sm64239470pfn.181.2019.05.01.21.56.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 21:56:35 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] usb: xhci: Make it possible to not have a secondary HCD
 (3.0)
Date: Thu,  2 May 2019 12:56:29 +0800
Message-Id: <20190502045631.229386-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_215637_715193_B9C8F915 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Khuong Dinh <khuong@os.amperecomputing.com>,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Hoan Tran <hoan@os.amperecomputing.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some XHCI controllers may not have any USB 3.0 port, in this case, it
is not useful to create add hcd->shared_hcd, which has 2 main
downsides:
 - A useless USB 3.0 root hub is created.
 - A warning is thrown on boot:
hub 2-0:1.0: config failed, hub doesn't have any ports! (err -19)

The change is mostly about checking if hcd->shared_hcd is NULL before
accessing it. The one special case is in xhci_run, where we need to
call xhci_run_finished immediately, if there is no secondary hcd.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---

This is a respin of https://lore.kernel.org/patchwork/patch/863993/,
hopefully addressing the comments there. Note that I dropped the change
in xhci-plat.c, as I do not have a device to test it, but made a
similar change in xhci-mtk.c, in the next patch.

(the @apm.com addresses seem to bounce, so I added some
@amperecomputing.com instead, if somebody there can track back the
original issue, I'm happy to provide a patch for xhci-plat.c as well)

drivers/usb/host/xhci-hub.c |  7 ++++--
 drivers/usb/host/xhci.c     | 45 +++++++++++++++++++++++++++----------
 2 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/host/xhci-hub.c b/drivers/usb/host/xhci-hub.c
index 3abe70ff1b1e2af..9a9c5a63ae57c6d 100644
--- a/drivers/usb/host/xhci-hub.c
+++ b/drivers/usb/host/xhci-hub.c
@@ -627,8 +627,11 @@ static int xhci_enter_test_mode(struct xhci_hcd *xhci,
 	/* Put all ports to the Disable state by clear PP */
 	xhci_dbg(xhci, "Disable all port (PP = 0)\n");
 	/* Power off USB3 ports*/
-	for (i = 0; i < xhci->usb3_rhub.num_ports; i++)
-		xhci_set_port_power(xhci, xhci->shared_hcd, i, false, flags);
+	if (xhci->shared_hcd) {
+		for (i = 0; i < xhci->usb3_rhub.num_ports; i++)
+			xhci_set_port_power(xhci, xhci->shared_hcd, i, false,
+					flags);
+	}
 	/* Power off USB2 ports*/
 	for (i = 0; i < xhci->usb2_rhub.num_ports; i++)
 		xhci_set_port_power(xhci, xhci->main_hcd, i, false, flags);
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index a9bb796794e3937..a2cf715c53f2164 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -523,6 +523,10 @@ static void compliance_mode_recovery(struct timer_list *t)
  */
 static void compliance_mode_recovery_timer_init(struct xhci_hcd *xhci)
 {
+	/* No compliance mode recovery needed if there is no USB 3.0 hcd. */
+	if (!xhci->shared_hcd)
+		return;
+
 	xhci->port_status_u0 = 0;
 	timer_setup(&xhci->comp_mode_recovery_timer, compliance_mode_recovery,
 		    0);
@@ -610,7 +614,8 @@ static int xhci_run_finished(struct xhci_hcd *xhci)
 		xhci_halt(xhci);
 		return -ENODEV;
 	}
-	xhci->shared_hcd->state = HC_STATE_RUNNING;
+	if (xhci->shared_hcd)
+		xhci->shared_hcd->state = HC_STATE_RUNNING;
 	xhci->cmd_ring_state = CMD_RING_STATE_RUNNING;
 
 	if (xhci->quirks & XHCI_NEC_HOST)
@@ -698,6 +703,10 @@ int xhci_run(struct usb_hcd *hcd)
 
 	xhci_debugfs_init(xhci);
 
+	/* There is no secondary HCD, start the host controller immediately. */
+	if (!xhci->shared_hcd)
+		return xhci_run_finished(xhci);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(xhci_run);
@@ -984,7 +993,8 @@ int xhci_suspend(struct xhci_hcd *xhci, bool do_wakeup)
 		return 0;
 
 	if (hcd->state != HC_STATE_SUSPENDED ||
-			xhci->shared_hcd->state != HC_STATE_SUSPENDED)
+			(xhci->shared_hcd &&
+				xhci->shared_hcd->state != HC_STATE_SUSPENDED))
 		return -EINVAL;
 
 	xhci_dbc_suspend(xhci);
@@ -997,15 +1007,18 @@ int xhci_suspend(struct xhci_hcd *xhci, bool do_wakeup)
 	xhci_dbg(xhci, "%s: stopping port polling.\n", __func__);
 	clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 	del_timer_sync(&hcd->rh_timer);
-	clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
-	del_timer_sync(&xhci->shared_hcd->rh_timer);
+	if (xhci->shared_hcd) {
+		clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
+		del_timer_sync(&xhci->shared_hcd->rh_timer);
+	}
 
 	if (xhci->quirks & XHCI_SUSPEND_DELAY)
 		usleep_range(1000, 1500);
 
 	spin_lock_irq(&xhci->lock);
 	clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
-	clear_bit(HCD_FLAG_HW_ACCESSIBLE, &xhci->shared_hcd->flags);
+	if (xhci->shared_hcd)
+		clear_bit(HCD_FLAG_HW_ACCESSIBLE, &xhci->shared_hcd->flags);
 	/* step 1: stop endpoint */
 	/* skipped assuming that port suspend has done */
 
@@ -1103,7 +1116,8 @@ int xhci_resume(struct xhci_hcd *xhci, bool hibernated)
 		msleep(100);
 
 	set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
-	set_bit(HCD_FLAG_HW_ACCESSIBLE, &xhci->shared_hcd->flags);
+	if (xhci->shared_hcd)
+		set_bit(HCD_FLAG_HW_ACCESSIBLE, &xhci->shared_hcd->flags);
 
 	spin_lock_irq(&xhci->lock);
 	if ((xhci->quirks & XHCI_RESET_ON_RESUME) || xhci->broken_suspend)
@@ -1145,7 +1159,9 @@ int xhci_resume(struct xhci_hcd *xhci, bool hibernated)
 
 		/* Let the USB core know _both_ roothubs lost power. */
 		usb_root_hub_lost_power(xhci->main_hcd->self.root_hub);
-		usb_root_hub_lost_power(xhci->shared_hcd->self.root_hub);
+		if (xhci->shared_hcd)
+			usb_root_hub_lost_power(
+					xhci->shared_hcd->self.root_hub);
 
 		xhci_dbg(xhci, "Stop HCD\n");
 		xhci_halt(xhci);
@@ -1185,10 +1201,12 @@ int xhci_resume(struct xhci_hcd *xhci, bool hibernated)
 		retval = xhci_run(hcd->primary_hcd);
 		if (!retval) {
 			xhci_dbg(xhci, "Start the secondary HCD\n");
-			retval = xhci_run(secondary_hcd);
+			if (secondary_hcd)
+				retval = xhci_run(secondary_hcd);
 		}
 		hcd->state = HC_STATE_SUSPENDED;
-		xhci->shared_hcd->state = HC_STATE_SUSPENDED;
+		if (xhci->shared_hcd)
+			xhci->shared_hcd->state = HC_STATE_SUSPENDED;
 		goto done;
 	}
 
@@ -1216,7 +1234,8 @@ int xhci_resume(struct xhci_hcd *xhci, bool hibernated)
 	if (retval == 0) {
 		/* Resume root hubs only when have pending events. */
 		if (xhci_pending_portevent(xhci)) {
-			usb_hcd_resume_root_hub(xhci->shared_hcd);
+			if (xhci->shared_hcd)
+				usb_hcd_resume_root_hub(xhci->shared_hcd);
 			usb_hcd_resume_root_hub(hcd);
 		}
 	}
@@ -1235,8 +1254,10 @@ int xhci_resume(struct xhci_hcd *xhci, bool hibernated)
 
 	/* Re-enable port polling. */
 	xhci_dbg(xhci, "%s: starting port polling.\n", __func__);
-	set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
-	usb_hcd_poll_rh_status(xhci->shared_hcd);
+	if (xhci->shared_hcd) {
+		set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
+		usb_hcd_poll_rh_status(xhci->shared_hcd);
+	}
 	set_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 	usb_hcd_poll_rh_status(hcd);
 
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
