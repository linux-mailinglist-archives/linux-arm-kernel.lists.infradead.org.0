Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301831832CF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:23:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XT7cmhe5pzVP59yKhfP37ZMF2cerd/E9kiwsfV7Jl5w=; b=OEp5ejE2uM9vzr
	iaHDQwKCkVfOjDdfYdOMONTOPkGvlXORiOQtRCGrzE7E/xB9KIzmWTlKtgOZMdu/U+2SxzM0R9JZ9
	P/iHfgR20Dvb3pMsNXSoN/ZJFm/zF2Ql1IqY8dJtQELmBl41qZB3vWTmpu10N9VfP8iyIcGLUVvxN
	fzyAbvMcUX44J6p6HADz99G5h88obzReyo02nMsblGP0WX2M5SX+ZRzCMnjNtLT7VvWB4wQMCkRFh
	BI1orpM0iUQLoVWWYIj0tiNU+PrxZdAE8vSTtGMcDVuGnaZOx3ZkwYkgAaCJusLKdbw5dzHOtUfMk
	HU5FHY9brFlxw/X/uzLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOji-0003km-7y; Thu, 12 Mar 2020 14:22:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOja-0003kD-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:22:51 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 599ED20650;
 Thu, 12 Mar 2020 14:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584022969;
 bh=1tyFYkYNgWZaP/Fj/CSjoWSlP2yoXwZznqa1gCTEDsk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cxmt4QTznZbNnbUYifOJ+cTEHY4uVUMapdZ8bTOy2AP5cgfWMJNsKB6Nj6JVACZ6/
 JpWYLW7VciFOGnKjao0BjHdUpVdP8T5ngEbpLU7osiQfIDV2qZzAsjNshRa8zna9wk
 Q0kTyNmDaLzDBISffNgwdGxaAd3gm6r4HUzEDafw=
Date: Thu, 12 Mar 2020 22:22:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH 07/15] arm64: defconfig: Enable QorIQ cpufreq driver
Message-ID: <20200312142229.GA1249@dragon>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
 <1582585690-463-8-git-send-email-leoyang.li@nxp.com>
 <20200311061220.GB29269@dragon>
 <VE1PR04MB66873A9B6773FFBF96F37C6B8FFC0@VE1PR04MB6687.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB66873A9B6773FFBF96F37C6B8FFC0@VE1PR04MB6687.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_072250_583143_FAB9A018 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 06:54:00PM +0000, Leo Li wrote:
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Wednesday, March 11, 2020 1:12 AM
> > To: Leo Li <leoyang.li@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH 07/15] arm64: defconfig: Enable QorIQ cpufreq driver
> > 
> > On Mon, Feb 24, 2020 at 05:08:02PM -0600, Li Yang wrote:
> > > Enables the generic QorIQ cpufreq driver to support frequency scaling
> > > for various QorIQ SoCs.  Enabled as built-in as it is a core feature.
> > >
> > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > > ---
> > >  arch/arm64/configs/defconfig | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > index e97ef8b944b8..996dc749ea5c 100644
> > > --- a/arch/arm64/configs/defconfig
> > > +++ b/arch/arm64/configs/defconfig
> > > @@ -90,6 +90,7 @@ CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
> > >  CONFIG_ARM_QCOM_CPUFREQ_HW=y
> > >  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
> > >  CONFIG_ARM_TEGRA186_CPUFREQ=y
> > > +CONFIG_QORIQ_CPUFREQ=y
> > >  CONFIG_ARM_SCPI_PROTOCOL=y
> > >  CONFIG_RASPBERRYPI_FIRMWARE=y
> > >  CONFIG_INTEL_STRATIX10_SERVICE=y
> > > @@ -722,7 +723,6 @@ CONFIG_COMMON_CLK_RK808=y
> > >  CONFIG_COMMON_CLK_SCPI=y
> > >  CONFIG_COMMON_CLK_CS2000_CP=y
> > >  CONFIG_COMMON_CLK_S2MPS11=y
> > > -CONFIG_CLK_QORIQ=y
> > 
> > Why is this getting removed?
> 
> Newly added QORIQ_CPUFREQ selects CLK_QORIQ, so it is removed by savedefconfig.

Note it in the commit log please.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
