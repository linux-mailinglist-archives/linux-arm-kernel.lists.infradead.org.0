Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C61301B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBBIjtCVlceWPqk7Fz0+VLTNYusXEINOUIee7SQzEjw=; b=nqs6DUyTYhhO1L
	eK484IcXAMsPRpfUX6G3GSXHyUQfZ6oNggIeJqOI6pTEm+/4ezwbPmUrV/Q4hYApYXaI3xO+StutF
	Em8OW3GSM3/vBMDPjLiYg7lG2IRY7M7kxyWQsos/RcPa7WhtFwbTIMTSiMUHRX8ZWgutCkOTK/OxI
	ikaT8alcwq40QkZVd7WgeN9AOvVSKV3rD636BQZaK+iVipLroyW6+LGb7/lpb8mBiE6hayD27oN3a
	wfeG/BAVhgp0HyIzxmBKqiw4jiqlR5zI43AiiwZ9S3h7VwesaM0Jk97dGFlJybyUkq5r6uuTMn9aJ
	da7XJVlcPQV4f0HtU2tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZ9R-0008Ac-1I; Fri, 03 May 2019 14:27:01 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZ9K-00089y-0i
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:26:55 +0000
Received: from localhost (adsl-173-228-226-134.prtc.net [173.228.226.134])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 90E5E14B678CE;
 Fri,  3 May 2019 07:26:52 -0700 (PDT)
Date: Fri, 03 May 2019 10:26:51 -0400 (EDT)
Message-Id: <20190503.102651.1150195235857856671.davem@davemloft.net>
To: nicolas.ferre@microchip.com
Subject: Re: [PATCH] net: macb: shrink macb_platform_data structure
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190503103658.17237-1-nicolas.ferre@microchip.com>
References: <20190503103658.17237-1-nicolas.ferre@microchip.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 May 2019 07:26:53 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072654_064944_AD9621CB 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.belloni@bootlin.com, netdev@vger.kernel.org,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 harini.katakam@xilinx.com, claudiu.beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>
Date: Fri, 3 May 2019 12:36:58 +0200

> This structure was used intensively for machine specific values
> when DT was not used. Since the removal of AVR32 from the kernel,
> this structure is only used for passing clocks from PCI macb wrapper, all
> other fields being 0.
> All other known platforms use DT.
> 
> Remove the leftovers but make sure that PCI macb still works as
> expected by using default values:
> - phydev->irq is set to PHY_POLL by mdiobus_alloc()
> - mii_bus->phy_mask is cleared while allocating it
> - bp->phy_interface is set to PHY_INTERFACE_MODE_MII if mode not found
> in DT.
> 
> This simplifies driver probe path and particularly phy handling.
> 
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
