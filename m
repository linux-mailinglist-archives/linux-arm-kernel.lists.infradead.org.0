Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D59B356AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5QIGOlKoXnmI5yuiQnZC0A4mCjfITZYDU2jyHDsc5M=; b=tM1LmLwOkKvuhF
	P0emaPq/eFJwM5kRarcHBDkkFPnomTMlCaFnJIFNAGItZzMgs8++mfVhjcCvztIeahZDdrnlDEcSL
	ef46ToIyz851J3BjTcVCT4NvGcHYmP9mk1TvJ2MY0TQCzymOdo+PNxyi29MC54/AUjM1RUzDZGvGe
	M4Z59LG3lRx76fXOwfAC8RcDUFdvIAIdJyDYuai68K2+5qcUsWX5Kbu5fsC4dlTrhzEgOKuu62Rdk
	sHEcTd8/xpmxnEO4Oi3B7EQnlqZOIK/XVY0NIaizJYNZqAjRFcYpr4odV+JhbFpMGU8T4Ns/MUt4l
	oe1fmllpLw54F+a8ldng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPAW-0004lZ-Vc; Wed, 05 Jun 2019 06:13:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPAP-0004kh-Gd
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:12:58 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 011DB20673;
 Wed,  5 Jun 2019 06:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559715177;
 bh=irDCUXbnBDlPlmhz5zcjcndvEsXZZZcUc47h1fBL7fw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KcHfwmcFrho2SGrruB5UjX2fRIX46+0x6zffq3Mxh5vseEXNEnJwSVsrpDkRT7rhF
 VYxCR9TKKAyGC4DA7FpPKO5/9y7A86CcFkmTxYzVBVcUoVDrwK2pyUE7hLj3L5Nw82
 73CquITgGh7XLFlN5CxOh4ohzeEOOSL/zxOR7mys=
Date: Wed, 5 Jun 2019 14:12:40 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog node
 into scu node
Message-ID: <20190605061238.GC29853@dragon>
References: <1557655528-12816-1-git-send-email-Anson.Huang@nxp.com>
 <1557655528-12816-2-git-send-email-Anson.Huang@nxp.com>
 <DB3PR0402MB39162F3811484D90546B4CC2F5150@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190605060000.GA29853@dragon>
 <DB3PR0402MB39161D679A11B05ADCA8A28BF5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB39161D679A11B05ADCA8A28BF5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231257_569960_E9EC7853 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 06:09:12AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Wednesday, June 5, 2019 2:00 PM
> > To: Anson Huang <anson.huang@nxp.com>
> > Cc: robh+dt@kernel.org; mark.rutland@arm.com; wim@linux-watchdog.org;
> > linux@roeck-us.net; s.hauer@pengutronix.de; kernel@pengutronix.de;
> > festevam@gmail.com; Aisheng Dong <aisheng.dong@nxp.com>;
> > ulf.hansson@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Peng Fan
> > <peng.fan@nxp.com>; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-watchdog@vger.kernel.org; linux-arm-
> > kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: Re: [PATCH RESEND V4 2/3] arm64: dts: imx8qxp: Move watchdog
> > node into scu node
> > 
> > On Tue, Jun 04, 2019 at 09:06:28AM +0000, Anson Huang wrote:
> > > Hi, Shawn
> > > 	The driver and binding doc are already reviewed and waiting for DT
> > patch, will you help review this DT patch?
> > 
> > I'm fine with it.  Should I just pick this patch up, or is there any dependency
> > we need to handle?
> 
> No dependency, it just makes more sense to move the node into SCU node as it is NOW depending on SCU
> driver. Once you pick up this patch

Just applied.

> (and maybe the dt-binding patch as well?),

It makes more sense to have it go through watchdog tree.

Shawn

> I will notify the watchdog
> maintainer to pick up the watchdog patch in this series.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
