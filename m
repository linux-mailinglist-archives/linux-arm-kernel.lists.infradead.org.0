Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7B31D6849
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 15:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4tl6XQX8miKl8imX5MC+NyGqNsvJAKO4XbyWG+vrhs=; b=gWhQn0v+LOFpwZ
	BvcHh7uSLMOwFW8Us9Ehh6j4KTK+SwejVEK6i1juC9swwvLJdLqPf7SM58cTarzDDtZkba4ludfzv
	/pAjlwuifF8KLhKbn9/CEhigas4JjQyqzlQRVGpALZVKFnyHstgcr4It9e8/8ANbgBcecjySrsXZD
	lL1fCejxIz0D4/WV2gjOm7l17pSVs16tLXyJNJFkny+scTzYs/mbdlut7ELSGfYFcsSvxc2YFYl9p
	wuihqbcppxZMym3sbjfONxYwbfj+W/r7ZMdqgyFW4OnYUl6XTxxhz/Une/MKQOR6gInx236wzTdV3
	GLzGKrBWIMUkTKJ7ZP0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaJkZ-0006qT-61; Sun, 17 May 2020 13:54:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaJkQ-0006q3-K8
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 13:54:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52195207D4;
 Sun, 17 May 2020 13:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589723672;
 bh=Cbjq7S492hExhy/OpGtAavgkFLYT3aJ2qr2ct+fnvus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gpmw2RgjJDxtje08/PwFMDlWPjx61GtDcpxtd57EQ77iM+/7FL3E+5bGLke5caoSs
 aUvyCIH3BCXgCoxoDsG0HhAthlTavRZbYlCflvdUpyYp10zX7+PBlMjTmKmPssuFXR
 6JIVixqqVdd+SQGYua9t7qPv2gfNHlxmvSbcyTHA=
Date: Sun, 17 May 2020 21:54:25 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
Message-ID: <20200517135424.GA25973@dragon>
References: <20200427035655.18157-1-yangbo.lu@nxp.com>
 <20200513082254.GE26997@dragon>
 <AM7PR04MB688584E51D49FD4A7761734DF8BC0@AM7PR04MB6885.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM7PR04MB688584E51D49FD4A7761734DF8BC0@AM7PR04MB6885.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_065434_683033_B50FDA4E 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Leo Li <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 03:13:45AM +0000, Y.b. Lu wrote:
> Hi Shawn,
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Wednesday, May 13, 2020 4:23 PM
> > To: Y.b. Lu <yangbo.lu@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org; Leo Li <leoyang.li@nxp.com>;
> > Richard Cochran <richardcochran@gmail.com>
> > Subject: Re: [PATCH] ARM: dts: ls1021a: output PPS signal on FIPER2
> > 
> > On Mon, Apr 27, 2020 at 11:56:55AM +0800, Yangbo Lu wrote:
> > > Output PPS signal on FIPER2 (Fixed Period Interval Pulse)
> > > which is more desired by user.
> > >
> > > Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> > > ---
> > >  arch/arm/boot/dts/ls1021a.dtsi | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/boot/dts/ls1021a.dtsi b/arch/arm/boot/dts/ls1021a.dtsi
> > > index 760a68c..b2ff27a 100644
> > > --- a/arch/arm/boot/dts/ls1021a.dtsi
> > > +++ b/arch/arm/boot/dts/ls1021a.dtsi
> > > @@ -772,7 +772,7 @@
> > >  			fsl,tmr-prsc    = <2>;
> > >  			fsl,tmr-add     = <0xaaaaaaab>;
> > >  			fsl,tmr-fiper1  = <999999995>;
> > > -			fsl,tmr-fiper2  = <99990>;
> > > +			fsl,tmr-fiper2  = <999999995>;
> > 
> > Not sure code change matches patch subject and commit log.  The change
> > is about changing fsl,tmr-fiper2 setting from one value to another.
> 
> The calculation refers to Documentation/devicetree/bindings/ptp/ptp-qoriq.txt. It looks complicated.
> But to be simple, to get 1PPS signal (period is 1s) on FIPER2, the value should be set as,
> fiper2 = <desired period> - <tclk-period> = 1000000000ns - 5ns = 999999995.

Please update commit log to include how new value comes.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
