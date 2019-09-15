Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ACFB3064
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 15:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7lo4PhSFmQoTTgM7ULcHMF9JFWnU22WsYZS7m+meoo=; b=mEolUlQVT2rqMo
	R6NPSP1DQo30rSPu41VvuNRVM5PDUfsKt2DDe6eACOf/Nj7BwduoW7bVDQ64Q/roZM9ickM3uAZ1V
	tnpWz+1RcLv1ww7p2PMnBqPk2y3JHusFZy3sMb4v8GeNVClNVxkI9mPCPout0Su1ROvDNXFKElDGT
	HodHnZoxIQpZc40fNfjNa3cuGzUmivxpTcIW5b+U90TNqSUeQtYln6qmO5uwao+KTj2jS53YlAwWf
	gy6aFot32LNnCuyJf0n4l+D8/4X8TKJXGhbt/ePyObIHmXhCW/AnM3aN+qRdLpL9WoSoRKNdBaTml
	Vu/KzUOakgnhW11SWPUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9V1r-0007kr-LU; Sun, 15 Sep 2019 13:57:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9V1a-0007kT-Vp
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 13:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F/ACcRyL2qqmFkbHAyxSdbuql7B7in2MrinBX2qvBxs=; b=m8lcSqN39XKDCaoSXtT/ep6hvQ
 zG+zDQd2sib/sfKOdyzMm1VPlL+733lMcjy9gerQHKb0uW8svgvATD7m4WdKKPNGC/UmQ/KPx/26V
 WJH8tDuuKbHJ+M7rNzH1kFFE04eyRPtWk5NhF3Pm8KofqeI2BERnFRiXTc36nNlzcuNQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i9V1I-0004By-Ad; Sun, 15 Sep 2019 15:56:52 +0200
Date: Sun, 15 Sep 2019 15:56:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190915135652.GC3427@lunn.ch>
References: <20190910155507.491230-1-tinywrkb@gmail.com>
 <20190910185033.GD9761@lunn.ch> <87muf6oyvr.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87muf6oyvr.fsf@tarshish>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_065711_176729_32F39B82 
X-CRM114-Status: GOOD (  13.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, tinywrkb <tinywrkb@gmail.com>,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Tinywrkb confirmed to me in private communication that revert of
> 5502b218e001 fixes Ethernet for him on effected system.
> 
> He also referred me to an old Cubox-i spec that lists 10/100 Ethernet
> only for i.MX6 Solo/DualLite variants of Cubox-i. It turns out that
> there was a plan to use a different 10/100 PHY for Solo/DualLite
> SOMs. This plan never materialized. All SolidRun i.MX6 SOMs use the same
> AR8035 PHY that supports 1Gb.
> 
> Commit 5502b218e001 might be triggering a hardware issue on the affected
> Cubox-i. I could not reproduce the issue here with Cubox-i and a Dual
> SOM variant running v5.3-rc8. I have no Solo/DualLite variant handy at
> the moment.

Could somebody with an affected device show us the output of ethtool
with and without 5502b218e001. Does one show 1G has been negotiated,
and the other 100Mbps? If this is true, how does it get 100Mbps
without that patch? We are missing a piece of the puzzle.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
