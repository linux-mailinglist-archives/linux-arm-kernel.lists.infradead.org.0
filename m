Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F233250BC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXPYjqFU9LP4xgSpVSR35PTiYAEB9cWV5RRsJqYUIiQ=; b=gGSCGv2qePEFNR
	bn2SNCD90fZshJiRhYSBmCL/mvz57QT1MKck132Hm3qfuXmIHn599FhYFc1Ywp2MmhnesNHzEiGDQ
	Us5X4L8WsFGNOpd6dmgIJvV8MZtmi+JOjYJaOk3C/3DALIvdtdxOiZtLDynYmIp0fZoLqZh4tjtFk
	q8c3nn0oz3EwfiZgbOgjPk18JYB+oLcw8G649KMUW65bHx2btAhI9G1w4GjCgKgaIkKXsZBH8Y5VR
	xKwD+faiAF1C3GTyAEKwieql8BhcTy6TU0rOdfHfGit+6G9kz2QB0vgByCem7aMYwZCLkOvy1+xY/
	ifei+ZcZbqozJYozSj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOtQ-00041S-BI; Mon, 24 Jun 2019 13:20:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnr-0008Ee-At
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:45 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8FFA62133F;
 Mon, 24 Jun 2019 13:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561382073;
 bh=9iKvPOTevrUnlhN/sInvHOOlrJKjrfsKl0VU+MOLhA8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RmThMFuPZVIfHab3wzUC9wAYt/02nUuSlLYIkqtugao2CE/5eXGFvJ4gvmD799szK
 n1yaYAQmXIABNb/OQ2Xw54akmKnRvXWwAq+xqvEVPOp7vlxhxQZLS2e/PtCfsPliHG
 DRLzXkpyfcsjylY2SfZrPPKoxBHcvLufV1gM4gjY=
Date: Mon, 24 Jun 2019 21:14:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Message-ID: <20190624131417.GB16146@dragon>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
 <20190624004703.GF3800@dragon>
 <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <670f98af-2c55-de1f-d36c-37d1f33086c7@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061436_283023_EECC0591 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lothar =?iso-8859-1?Q?Wa=DFmann?= <LW@KARO-electronics.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 09:36:37AM +0200, S=E9bastien Szymanski wrote:
> Hello,
> =

> On 6/24/19 2:47 AM, Shawn Guo wrote:
> > +Lothar
> > =

> > On Tue, Jun 18, 2019 at 05:58:34PM +0200, S=E9bastien Szymanski wrote:
> >> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interru=
pt
> >> summary", the interrupts for the PWM[1-4] go from 83 to 86.
> >>
> >> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
> >> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> > =

> > Just curious - did you spot the error by testing PWM or merely by
> > looking at the code and document?
> =

> I spotted the error when trying to play sound with PWM [1].
> The PWM driver (drivers/pwm/pwm-imx27.c) don't use interrupt that's
> probably why nobody notice this error.

Thanks for the info.  Patch applied, thanks.

Shawn

> =

> [1] https://github.com/sasamy/imx-snd-pwm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
