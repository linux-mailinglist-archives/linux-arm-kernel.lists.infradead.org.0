Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E981B1C61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZQ1wYROobCP+4Scf8FLl3bjNkXHgXvSBo6WAvnKbJ8=; b=UakcBN4FRWTdoz
	yKm+a7qHc9sd548/eeCaSQMuy940jhsxaqv2MlYOnhKBatRRzmiU5LCjB9LTRqV1cfZZVrha0ABUJ
	OJ/8Kn0gAcnQ/I9b434gblaOeU5EUh4RZhcikMOWjUBdg2DUrBKojo+ieC4G5BygdlnH5SRhWTJ4Y
	E5HtScF2G05sH9gjz2Y07rlQedfiv2Fiitwm9JSF8okHkL+78M65AOVFeTLt/m7V1OrziuJffPvX7
	DNjgHgedkfJaD1a4fdIV/93wpwurG4eIYOQqqWozcYjZe4WJ81ta0qPhFMUKOzeU91FOyHBDfjz7+
	U6Xp7Rtq8aKgmPPTHv8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjCE-0004Wx-FQ; Tue, 21 Apr 2020 03:03:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjBs-0004Vb-8M
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:03:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4075420782;
 Tue, 21 Apr 2020 03:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587438195;
 bh=vqvUV0TB68GwK6fP6tJbnKqDVXw1gfsNdoWz4+42JN8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cI19nYGI+jkJGceTHNo7PwKvxFsl40oFyvOgcatNzPvMMLWs0Rzm4vGGJCE/iqAQ5
 rGuAvgUSJxbauiSrLNcdOyhYB8mJaA/oiAapybc7ggMRyE+bPFILdtA0hUYguhUTcO
 cLcK9BhJN1jrqsBeD29kQgVr6Nax9MGH7CJzC/Z8=
Date: Tue, 21 Apr 2020 11:03:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Message-ID: <20200421030307.GB8571@dragon>
References: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
 <20200420145459.GE32419@dragon>
 <20200420163224.GA44571@bogon.m.sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420163224.GA44571@bogon.m.sigxcpu.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_200326_764939_E41E93CC 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Apr 20, 2020 at 06:32:24PM +0200, Guido G=FCnther wrote:
> Hi,
> On Mon, Apr 20, 2020 at 10:54:59PM +0800, Shawn Guo wrote:
> > On Thu, Mar 19, 2020 at 05:46:02PM +0100, Guido G=FCnther wrote:
> > > According to the imx8mq data sheet running VDD_GPU at 0.9V is enough
> > > when not overclocking to 1GHz (which we currently don't do).
> > > =

> > > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > =

> > It doesn't apply to my branch.
> =

> This was against linux next when i sent it, can you link to the branch
> it should apply to please?

Here it is:

 git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next

Or even better:

 git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git imx/dt64

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
