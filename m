Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FF61A8744
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08jtmQ+jmvY25WwNH8DzAbbaHocQ9EmSjtglktpVDyk=; b=SBXOXJp/bQYKMO
	mB7LJyTNbgnjh/xpDDZ7yq8XD2EGLIBt/Lfpm0xPSzYMjwhQr23xo1TVrc3txG0BcLX1XaNzMDAU7
	+FIUPMAad3+jfpIKcTuLBv91nGSuISigWMBYd3SLX9zbP7oV3z7CHtAPqbls6lDstUWB9+BAKlHWM
	ZyYw5C6mdtX0cKO1JvG3MD4g9JTwC/7NNBHsOp/l9FT1nAwMYxqRiDnx5iXgGArL1V4VV2AZ8TPb3
	GwWiApdszFimS/tIyXk66VRpg4S3j8IVHk4Lo36gJZ37vL31Gc2Dg8P1889vfmbvX5rpIwkbK5FD4
	uEZQYwIfMGeBm/s4vWmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPCE-0001Ww-25; Tue, 14 Apr 2020 17:18:02 +0000
Received: from wtarreau.pck.nerim.net ([62.212.114.60] helo=1wt.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPC4-0001W5-Nk
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:17:54 +0000
Received: (from willy@localhost)
 by pcw.home.local (8.15.2/8.15.2/Submit) id 03EHHiGB021479;
 Tue, 14 Apr 2020 19:17:44 +0200
Date: Tue, 14 Apr 2020 19:17:44 +0200
From: Willy Tarreau <w@1wt.eu>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200414171744.GC21441@1wt.eu>
References: <20200413220520.GA25917@curiosity>
 <20200413222645.GT25745@shell.armlinux.org.uk>
 <20200414160354.GA463339@curiosity> <20200414160838.GA21435@1wt.eu>
 <20200414165533.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414165533.GX25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_101753_125017_87C5C8E8 
X-CRM114-Status: UNSURE (   7.03  )
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
 Sergey Matyukevich <geomatsi@gmail.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Tue, Apr 14, 2020 at 05:55:33PM +0100, Russell King - ARM Linux admin wrote:
> > CONFIG_MDIO_BITBANG=y
> 
> Macchiatobin doesn't bitbang the MDIO bus.
> 
> > CONFIG_MDIO_BUS_MUX=y
> 
> There's no MDIO bus muxing on Macchiatobin.
> 
> > CONFIG_FIXED_PHY=y
> 
> CONFIG_FIXED_PHY should no longer be required.
(...)

Thanks for clearing these ones out, I'll drop them on next build!
Willy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
