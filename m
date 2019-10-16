Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFFD99CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p81W+sfZkwDfxmWtmd1MklfmHm36BQk6uChdh8vOzDE=; b=gcNBpbR+LHJTNd
	XhzrhwOsM/LkjRHFDcgYOd1RDGRCaFeP9eubbfIJwa15RmwjmAFEkCXcMwifyOibisSqVcsqqVtDd
	aRzTX1IwralsHnZXFTRiTEhsO+IDKJQ4NCBXLihOPHcEePYEX9xApEBcHknDssb3/0yrrF3D43JrH
	0An3M+y5P5MYR16HXJdErFIKsM25ZqApoB/ufw9EOUrTVMp/kdyYJ+s/grGylRAQsEk4VQ4Dl7aGn
	C3yTk5wxukHn1A+fr+EoLLIn+MPauGN4+FULR3TNUfd27P9T9ZEx/XSZrHHmkc56mH6XWVk03p1L6
	R4rQvep7/XajaJuRJ1Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKokm-0000GU-I7; Wed, 16 Oct 2019 19:14:36 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKokg-0000FF-Tw
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:14:32 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 4C4AB40007;
 Wed, 16 Oct 2019 19:14:16 +0000 (UTC)
Date: Wed, 16 Oct 2019 21:14:16 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 2/2] net: lpc_eth: parse phy nodes from device tree
Message-ID: <20191016191416.GA3125@piout.net>
References: <20191010204530.15150-1-alexandre.belloni@bootlin.com>
 <20191010204530.15150-2-alexandre.belloni@bootlin.com>
 <20191016.142359.416946718751400991.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016.142359.416946718751400991.davem@davemloft.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_121431_101676_4A5FEB79 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, slemieux.tyco@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 vz@mleia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 16/10/2019 14:23:59-0400, David Miller wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Date: Thu, 10 Oct 2019 22:45:30 +0200
> 
> > When connected to a micrel phy, phy_find_first doesn't work properly
> > because the first phy found is on address 0, the broadcast address but, the
> > first thing the phy driver is doing is disabling this broadcast address.
> > The phy is then available only on address 1 but the mdio driver doesn't
> > know about it.
> > 
> > Instead, register the mdio bus using of_mdiobus_register and try to find
> > the phy description in device tree before falling back to phy_find_first.
> > 
> > This ultimately also allows to describe the interrupt the phy is connected
> > to.
> > 
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> I asked you to address Andrew's feedback.
> 
> You can't let this sit for days like that.
> 
> Therefore, I'm dropping your patches.

I'm planning to send a v2 to address that but I didn't have time to test
today.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
