Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5326F11268
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBSxBj6FtTYVJndX70ITb2U3OFToHfiDKT8Cvtxdf34=; b=KbG/byZZHbFqO2
	o2VGwgeTEaYa8bEFDAhqh2cYa6wu4+7ToYazzRJMVTUZ+EBLGgA7ka1cz6VyCKbzD1jtgf1kNIsQ6
	gN/vhmy2DBV0AhNvt1SK/hSagSVCrmxy07yf43VzkGxigIV4eQuNpiqcjbK7wocJrUAbtDceQ0bhM
	vT+jFQH9iB7jHs/k87y4imJ2zug5n8brogRI46sYMFqG+CwpPKNiavWsXjI2nhXGpDZ/ExRidS2pN
	B1axBvv55yW9D1yH3dx6wY+AihNyprrjfwb4BlzP3o6V1mIi8U1D9MjRFkj7JqXDa5vnFbP9v6ywy
	zGv5FS1lqrSlJyXO4yjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3mD-0006tz-TL; Thu, 02 May 2019 04:56:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3lv-0006h4-DC
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:56:40 +0000
Received: by mail-pf1-x442.google.com with SMTP id y13so513986pfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 May 2019 21:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0uEhbXfTbBJ1Z2Kv01LPBYrX3ZS5Rz9y5kPzobESOBI=;
 b=kjA0IkL2lphoYXjpaZd0JAuzOk4YKKTN2UCTNfqgYOGUz6zgSRQY1cyglpFLe9gZ1n
 GRnS9XNzri/D5ysNkPqqdDRMk3KRSwovN2qpgkhVkTiuhC4agg/NTutb4WuN47fVcZCF
 UUIO5robvSzsJ+u7sWK47XdnbhZImedX79T2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0uEhbXfTbBJ1Z2Kv01LPBYrX3ZS5Rz9y5kPzobESOBI=;
 b=qx1Z/ZzPMfhKxpFY9UzxkH3rLWE7iMWNSYSDwdmPVDQPcAOunB39G/23MB+uCJKA9w
 s5qCZ/2WxPeKGjN4TBIO17aKryObcMm3HrL61fPvOvNvh8e0+Fp1XoRvHWk8TJKBYFe7
 Ujk24djVQXpmVudhh0VTCjWBm5WLZCWfmAHnXqgf58Nkyz5F9cpWNX/VdtvBVgbv4Fcz
 6sXrlEROdGN3rkTLT1P5eQ/QI8nuT67fTbSNYWbRGqXB7ZVEGiZec08mn3NhaD818fxl
 fLaEfqkeElEKFFNKiIolK4nIQ8dIARKglV+DYZtdV0CBo0wGQsqX1U6wL0cdiTVmBRTV
 3Xtg==
X-Gm-Message-State: APjAAAVE4ZBDIZ41vRi4qUx1hOxvDz6KGL33vDHTGy/JroJ1SblTgFWE
 5Ns76toU9ct6mImUpo9q0kB1kA==
X-Google-Smtp-Source: APXvYqxb8f1zrcqX3NddJRYvEW77UkD+Um0XCa7fQsUuySsX73xUDBYJ7k8eUOzlL/onT4KImTFWUg==
X-Received: by 2002:aa7:800e:: with SMTP id j14mr1786208pfi.157.1556772998334; 
 Wed, 01 May 2019 21:56:38 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a6sm64239470pfn.181.2019.05.01.21.56.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 21:56:37 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] usb: xhci-mtk: Do not create shared_hcd if no USB 3.0
 port available
Date: Thu,  2 May 2019 12:56:30 +0800
Message-Id: <20190502045631.229386-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502045631.229386-1-drinkcat@chromium.org>
References: <20190502045631.229386-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_215639_441055_D2F12CF5 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

When the controller only supports USB 2.0, do not even create the
USB 3.0 hcd/root hub.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/usb/host/xhci-mtk.c | 44 +++++++++++++++++++++++--------------
 1 file changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index 026fe18972d3e5b..189f5dc614e6e05 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -527,23 +527,28 @@ static int xhci_mtk_probe(struct platform_device *pdev)
 	xhci->imod_interval = 5000;
 	device_property_read_u32(dev, "imod-interval-ns", &xhci->imod_interval);
 
-	xhci->shared_hcd = usb_create_shared_hcd(driver, dev,
+	/* Only create shared_hcd when USB3.0 port is available. */
+	if (xhci->usb3_rhub.num_ports > 0) {
+		xhci->shared_hcd = usb_create_shared_hcd(driver, dev,
 			dev_name(dev), hcd);
-	if (!xhci->shared_hcd) {
-		ret = -ENOMEM;
-		goto disable_device_wakeup;
+		if (!xhci->shared_hcd) {
+			ret = -ENOMEM;
+			goto disable_device_wakeup;
+		}
 	}
 
 	ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 	if (ret)
 		goto put_usb3_hcd;
 
-	if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
-		xhci->shared_hcd->can_do_streams = 1;
+	if (xhci->usb3_rhub.num_ports > 0) {
+		if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
+			xhci->shared_hcd->can_do_streams = 1;
 
-	ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
-	if (ret)
-		goto dealloc_usb2_hcd;
+		ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
+		if (ret)
+			goto dealloc_usb2_hcd;
+	}
 
 	return 0;
 
@@ -552,7 +557,8 @@ static int xhci_mtk_probe(struct platform_device *pdev)
 
 put_usb3_hcd:
 	xhci_mtk_sch_exit(mtk);
-	usb_put_hcd(xhci->shared_hcd);
+	if (xhci->shared_hcd)
+		usb_put_hcd(xhci->shared_hcd);
 
 disable_device_wakeup:
 	device_init_wakeup(dev, false);
@@ -579,12 +585,14 @@ static int xhci_mtk_remove(struct platform_device *dev)
 	struct xhci_hcd	*xhci = hcd_to_xhci(hcd);
 	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
 
-	usb_remove_hcd(shared_hcd);
+	if (shared_hcd)
+		usb_remove_hcd(shared_hcd);
 	xhci->shared_hcd = NULL;
 	device_init_wakeup(&dev->dev, false);
 
 	usb_remove_hcd(hcd);
-	usb_put_hcd(shared_hcd);
+	if (shared_hcd)
+		usb_put_hcd(shared_hcd);
 	usb_put_hcd(hcd);
 	xhci_mtk_sch_exit(mtk);
 	xhci_mtk_clks_disable(mtk);
@@ -611,8 +619,10 @@ static int __maybe_unused xhci_mtk_suspend(struct device *dev)
 	xhci_dbg(xhci, "%s: stop port polling\n", __func__);
 	clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 	del_timer_sync(&hcd->rh_timer);
-	clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
-	del_timer_sync(&xhci->shared_hcd->rh_timer);
+	if (xhci->shared_hcd) {
+		clear_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
+		del_timer_sync(&xhci->shared_hcd->rh_timer);
+	}
 
 	xhci_mtk_host_disable(mtk);
 	xhci_mtk_clks_disable(mtk);
@@ -631,8 +641,10 @@ static int __maybe_unused xhci_mtk_resume(struct device *dev)
 	xhci_mtk_host_enable(mtk);
 
 	xhci_dbg(xhci, "%s: restart port polling\n", __func__);
-	set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
-	usb_hcd_poll_rh_status(xhci->shared_hcd);
+	if (xhci->shared_hcd) {
+		set_bit(HCD_FLAG_POLL_RH, &xhci->shared_hcd->flags);
+		usb_hcd_poll_rh_status(xhci->shared_hcd);
+	}
 	set_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 	usb_hcd_poll_rh_status(hcd);
 	return 0;
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
