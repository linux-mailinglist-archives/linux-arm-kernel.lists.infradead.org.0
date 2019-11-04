Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8B7ED6B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 01:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IIBBO6AYhp1BbERWGGA8p8VrMzZk4mQlBFTsq2N02Q=; b=rfQ8SmZlnzPLaf
	qETNpUvIYClXk+LMHHq7g44j/f0KOGe0o99Rv+BoVyvXYvTaZ/iAdP+Q8GwhnX9/S0LzfsByAlMAA
	ARxyGeRDGDieisQd3aeNgVsdcYJcQAnRvCl6B64isj/iogsIDhF+mITCzJL/jyWs1ywkZujdkhYbG
	A/qG+/Or3fD/2kO41agUTYRvebMl7RBO8IjFXSDV6dexm4EpTK1YuxzavuvYdq0qu3rYX2Qi5asJ9
	BRpjMwu/Zd5f7+JauXcPOZMTxvUncSGh1cLjyt32LBa/k671vgGJ79ETeza02Dy+js7nT6UG85FhQ
	YpmCGhyhDobFVfq8sPUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQat-00073y-QL; Mon, 04 Nov 2019 00:51:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQan-00073P-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 00:51:39 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA170222CA;
 Mon,  4 Nov 2019 00:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572828697;
 bh=0cPXrS85ZFNq0IkzMuelys/+Yk/AanMHiImMkP3vTHk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a3fcrd5RjNk9WJIl1Kea4MTeMZiT4hoj6uZT561YIM3GlTk4L7qfgmg3wuE+tPP+q
 X8co1KYv/PjnTvUgn2VaSwmcQpANSmp+qPg4UXaVci9e4A77T2sS9gEKKTr91FlY/k
 +ifsMR1p3pkJ/2yfSDMz6OVuegJIP/F96NwuS/c4=
Date: Mon, 4 Nov 2019 08:51:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Message-ID: <20191104005108.GB24620@dragon>
References: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB70239911C3C71E0503808F85EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB70239911C3C71E0503808F85EE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_165137_983348_0206CBA6 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 06:59:51PM +0000, Leonard Crestez wrote:
> On 21.10.2019 13:19, Peng Fan wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > We should not rely on bootloader to configure the phy reset.
> > So introduce phy-reset-gpios property to let Linux handle phy reset
> > itself.
> > 
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> This broke NFS boot for me in next-20191031: board now hangs on DHCP.

I dropped both patches for now.

Shawn

> 
> It can be fixed by reverting this DT patch or by setting 
> CONFIG_AT803X_PHY to y instead of m.
> 
> Needing a phy module is not a bug but everybody will need to either 
> adjust .config or build modules into an initramfs somehow.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
