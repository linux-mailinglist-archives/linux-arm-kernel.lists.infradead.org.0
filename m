Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE683309AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 09:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3reIgzTPqMHnOcKam9Yn6LNcIBnnORy4EBeO4OnS8s=; b=jaJYrDiYEqphUv
	j5ogGZQpoAvJtNen1dwhrkVx9MD0po+GvpTkL+qFWeeD23m11HJIHA13eVi4NLQ+YuzyK8LAobCLr
	CAJBZyOmgLOVLxcBooxqp2Jq+lUR1keMWEN1IOcazr9I0RiwV3O9Iw5RDIQOFAg5Am2D+sYfSeLDP
	JNHU085NOZvxBfxdB1M1vC9DoOes/BIm9w6dsRKXR86i8RH3QnSkYT2Lf57wkbOH4cxLAMPs3DSSY
	eD5AOWiNSihScvC2VycJQopeoHl/92iOurrEGsuUwCIr8ebqyi7hpeW0VnzQAxL55wUXJd5/ukA1b
	kdl4Im+tjyuMLGzaeJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWcGh-0000yJ-Oh; Fri, 31 May 2019 07:48:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWcGZ-0000xv-NF
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 07:47:57 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16DA125C45;
 Fri, 31 May 2019 07:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559288875;
 bh=GWIosX87hTOI8Tkfm7AbxvgTQ89o5/vaaxIkcdU4J+A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bBXWKSPmMfZ5XQ8DvB5lKq+8d/OZG8wH3JOaRMOzGD5tbNo4HPwkkEihZ46z1hur/
 uitjg3tLBXP6aFxUw2HEUS/2uMbaO6HWy7SY/aMa068N+MyGW0EzOfnuY/kMh65COk
 Q+jiYktwA07UVyFqwEmHgH6hZdLqL3IQkkIyiTQ4=
Date: Fri, 31 May 2019 15:46:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to audio_pll2_out
Message-ID: <20190531074633.GF23453@dragon>
References: <20190522014832.29485-1-peng.fan@nxp.com>
 <20190523132235.GZ9261@dragon>
 <20190529233547.B7F6F2435D@mail.kernel.org>
 <AM0PR04MB4481A7FF28A9AB9A1584423888180@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481A7FF28A9AB9A1584423888180@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_004755_771351_4D2F1A7B 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 01:22:57AM +0000, Peng Fan wrote:
> Hi Stephen,
> 
> > Subject: Re: [PATCH] clk: imx: imx8mm: correct audio_pll2_clk to
> > audio_pll2_out
> > 
> > Quoting Shawn Guo (2019-05-23 06:22:36)
> > > On Wed, May 22, 2019 at 01:34:46AM +0000, Peng Fan wrote:
> > > > There is no audio_pll2_clk registered, it should be audio_pll2_out.
> > > >
> > > > Cc: <stable@vger.kernel.org>
> > > > Fixes: ba5625c3e27 ("clk: imx: Add clock driver support for imx8mm")
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > >
> > > Stephen,
> > >
> > > I leave this to you, since it's a fix.
> > >
> > 
> > Is it a critical fix? Or is it an annoyance that can wait in -next until the next
> > merge window?
> 
> I did not run into issue without this fix currently, so it should be fine to wait
> in -next until the next merge window.

I was trying to pick up the patch, but the base64 Content-Transfer-Encoding
make the applying difficult.  Please talk to NXP colleague Anson Huang
<Anson.Huang@nxp.com> to find out how to fix it.

https://patchwork.kernel.org/patch/10944169/#22656941

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
