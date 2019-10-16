Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FCDD95FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:51:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtV7fiA3G3F/vg2h6Gx4OH9Zy22dQfLBw+jYyg4Stu8=; b=BDA2YK0Xd28Wsm
	lzQ2ta3MU5XW9MIEgu9OkdyLuSfpx4P87HTTUlmIrovef39LG6xB1TLFGo369YCHK9L8G99bGrs1/
	C6ImDzrT7suYBHNiMgXuFqmxOR7YpZw1a5B59pnQBzujy+tS75ITJqRL2sUvEwDfARXdBaYPEQi73
	+e4KlgHzBrjOpiT2eUB8PNDWLlm0QhIy3iKZlKYJENYwdBKUbdTw5pDHUyohx0PG5fHr/p5XaNRTE
	sGuvGcGhj39ImS50w+cHOc6JgDNFxt/PB8ezBbTiH/AkCOJPGXhwSaBPzv/GWkP0z3Dzw+74wz3w5
	XwuklUv6ziCvdls2O3PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKla5-0008JZ-9z; Wed, 16 Oct 2019 15:51:21 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlZt-0008IQ-GT; Wed, 16 Oct 2019 15:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=B2YdhfhEgWZqOqKtmmkSBnl7J2karsMTF9JaNWGz1es=; b=SWKnuxxTJ8loDpThNmUspjv0mz
 IC3p36PrAKtL9tp1IZgO4lCUtA53uqlL4O4okRoMJVUc6BFIgmE72tsjC7t1me4tCZ9q1lmBCYNwD
 XQfkQtXJMwo6GhiFZSmXTyMYxzgmGDvehHy+Lhq4vgIR41Hpcc0bO8n+syvCJDqy03LU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKlZr-0008Je-TX; Wed, 16 Oct 2019 17:51:07 +0200
Date: Wed, 16 Oct 2019 17:51:07 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191016155107.GH17013@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_085109_553586_5D1B1CCE 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Woojung Huh <woojung.huh@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel

Please could you give this a go. It is totally untested, not even
compile tested...

Thanks
	Andrew

From 235549a687ad91c1500289fb32ee1c775d06d16d Mon Sep 17 00:00:00 2001
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 16 Oct 2019 10:42:07 -0500
Subject: [PATCH] net: usb: lan78xx: Connect PHY before registering MAC

As soon as the netdev is registers, the kernel can start using the
interface. If the driver connects the MAC to the PHY after the netdev
is registered, there is a race condition where the interface can be
opened without having the PHY connected.

Change the order to close this race condition.

Fixes: 92571a1aae40 ("lan78xx: Connect phy early")
Reported-by: Daniel Wagner <dwagner@suse.de>
Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/usb/lan78xx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/usb/lan78xx.c b/drivers/net/usb/lan78xx.c
index 58f5a219fb65..62948098191f 100644
--- a/drivers/net/usb/lan78xx.c
+++ b/drivers/net/usb/lan78xx.c
@@ -3782,10 +3782,14 @@ static int lan78xx_probe(struct usb_interface *intf,
 	/* driver requires remote-wakeup capability during autosuspend. */
 	intf->needs_remote_wakeup = 1;
 
+	ret = lan78xx_phy_init(dev);
+	if (ret < 0)
+		goto out4;
+
 	ret = register_netdev(netdev);
 	if (ret != 0) {
 		netif_err(dev, probe, netdev, "couldn't register the device\n");
-		goto out4;
+		goto out5;
 	}
 
 	usb_set_intfdata(intf, dev);
@@ -3798,14 +3802,10 @@ static int lan78xx_probe(struct usb_interface *intf,
 	pm_runtime_set_autosuspend_delay(&udev->dev,
 					 DEFAULT_AUTOSUSPEND_DELAY);
 
-	ret = lan78xx_phy_init(dev);
-	if (ret < 0)
-		goto out5;
-
 	return 0;
 
 out5:
-	unregister_netdev(netdev);
+	phy_disconnect(netdev->phydev);
 out4:
 	usb_free_urb(dev->urb_intr);
 out3:
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
