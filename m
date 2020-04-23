Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4C41B51C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 03:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10CpB9+IUeqf0RrPQr7b3TIaCIyCAroNSu93xbDmsVI=; b=a6xlY74GEj7EOV
	uIGJlMo8ZH53tSbu4cDInktrY23GwZJHA3uhf5bCnocJxAYpGB/keUK+0YZVhOK5rPSwGjOf/jGo2
	ApriKvsHHmUYCtSoWaVuADvQp7dzX9NPYC89CiDwmqlbv6knxw/mAAdel7aKopH3BhmUK4kyhl+S9
	p3TjOMAWe5Q0b/npM/NT2vzyXEJGm6tozYShO3GHbXCLBJhTdckb9ENgOesbhDPWoqzfjPCQXIyrT
	istVjSjSwDA7Cj1TPdZ5s3L0YQrNCmD61mVhRqXU3fYBdhk9sLS+argBGnaZ5vig86Jt5r/4yaTl0
	qIak0uZ0QRYYEmuc2aWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQW8-0004Jk-VS; Thu, 23 Apr 2020 01:19:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQVy-0004IU-VM
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 01:18:56 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5B6A2075A;
 Thu, 23 Apr 2020 01:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587604734;
 bh=5J7cR0szFxvJoNJ8P80jMKgqc3d3/p0yIBp4jdKWeYo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IIx59UKndzfTh4wq2bvrFTQGolD30iYA5PEGQljltaIBRO7fHpu7TroWBiaoSDHiL
 zQzTb3TtBKYrMsVRxlHH0z/8IkrBtBN9md++fOaiM7ZrqN+MmQ0q4EHdlAIVhi7UEo
 DcjwZEgN++cnXQXTx8NmtR6QNwx8wcuUWELejeYo=
Date: Thu, 23 Apr 2020 09:18:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for
 VDD_GPU
Message-ID: <20200423011846.GG8571@dragon>
References: <cover.1587480093.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1587480093.git.agx@sigxcpu.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_181855_027630_A63885A7 
X-CRM114-Status: GOOD (  12.73  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kepplinger <martink@posteo.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 04:44:12PM +0200, Guido G=FCnther wrote:
> According to the imx8mq data sheet running VDD_GPU at 0.9V is enough
> when not overclocking to 1GHz (which we currently don't do).
> =

> changes from v2:
>  - rebase aginst Shawn's tree
>  - fix a warning for the typec connector
> =

> Guido G=FCnther (2):
>   arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
>   arm64: dts: Don't use underscore in node name

This one should also be prefixed like arm64: dts: imx8mq-librem5-devkit:

I fixed it up and applied both.

Shawn

> =

>  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> -- =

> 2.26.1
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
