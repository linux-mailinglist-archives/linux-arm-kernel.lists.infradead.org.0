Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25311A8436
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0fwzY+CFO685heClTvhPdOdeaRBLiO0tpe0ugcmuhM=; b=Cg8aldXhCypefQ
	iqQ5HvaJU2tdLrUaJIgANj18/5FAIVVlcvFSngX5BX92bpAewkeZmuG/vClrRvHA9GOarAI74QhLS
	FSs8S61GGv3FIlHxoJzWrEWhaSIzGuNnavax9/VeFfMQdLHBm0k71OiYSx8FRs9grEPGk4Qb2hGcB
	Vkgc1osAOo/RbQ5TjRZ4+np8j4xzSqH4eGFXREGuse6jIhBxQyIO47L4DqAmMhALJjSwLG/6JSKjI
	kEXkg5eT7KOcu7Frm2b5wppEI6OuBqXh5/fdiF74VsJeCCleffHcynTMoy/KzpHAxB69HP0EAlVUN
	AJu7+aASglyB16YwpTPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOO7k-0002yz-LV; Tue, 14 Apr 2020 16:09:20 +0000
Received: from wtarreau.pck.nerim.net ([62.212.114.60] helo=1wt.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOO7Y-0002x4-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:09:13 +0000
Received: (from willy@localhost)
 by pcw.home.local (8.15.2/8.15.2/Submit) id 03EG8cHm021440;
 Tue, 14 Apr 2020 18:08:38 +0200
Date: Tue, 14 Apr 2020 18:08:38 +0200
From: Willy Tarreau <w@1wt.eu>
To: Sergey Matyukevich <geomatsi@gmail.com>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200414160838.GA21435@1wt.eu>
References: <20200413220520.GA25917@curiosity>
 <20200413222645.GT25745@shell.armlinux.org.uk>
 <20200414160354.GA463339@curiosity>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414160354.GA463339@curiosity>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_090908_659221_0D1E0F7D 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Apr 14, 2020 at 07:03:54PM +0300, Sergey Matyukevich wrote:
> I have not changed configuration since 5.3, so all the marvell phy
> drivers are in place. Is there anything in configuration that could
> be missed after moving from 5.3 to 5.6 kernel ?

FWIW mine works perfectly fine with 5.4 at 1G/2.5G/10G. From what I can
quickly check here are the relevant parts in my config for ethernet (not
sure all are needed though):

CONFIG_NET_VENDOR_MARVELL=y
CONFIG_MVMDIO=y
CONFIG_MVPP2=y
CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_MDIO_BITBANG=y
CONFIG_MDIO_BUS_MUX=y
CONFIG_MDIO_BUS_MUX_MMIOREG=y
CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
CONFIG_MDIO_I2C=y
CONFIG_PHYLINK=y
CONFIG_PHYLIB=y
CONFIG_SWPHY=y
CONFIG_SFP=y
CONFIG_FIXED_PHY=y
CONFIG_MARVELL_PHY=y
CONFIG_MARVELL_10G_PHY=y

Not tested 5.6 yet.

Hoping this helps,
Willy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
