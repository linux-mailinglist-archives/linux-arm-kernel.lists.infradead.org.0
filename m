Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8B41EBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYWYbZQN8HGei4pn8Ke2m/HhgvVUMX5Poa9Njqt56N0=; b=Xawi/bE0GriBaA
	jcVBgQKO1GqiMPuKab6A2Qn781xFjFLAn3CQwxYAYasmJsStuRfCaxkShOmtQYQiJkdla6DFMNVxj
	c1qcc/sU4jnU8m9jVs8LXZbrqhoJTRtPnuE5L1VSLCC9dni99B1JIHx88Tgoo+Xh4KAZx9gYCr4s2
	KD/mw6fgkZm6flN8C+I+GxNhJor9fMHHS+xO3UfDd+2GYZ6PG2zn+5JeMnVbiAfeOMq3rnWHnIPeJ
	3EuV5hVfB8/2wT3e3OKP/LdL46Ab3CXwYpZ4yCa8zO8ciNx8X/cYh9iJ9S15hQK20vsOHcFbWrWYn
	4jy8q984kCR5laE3dP1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayNm-0005OZ-Sa; Wed, 12 Jun 2019 08:13:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayNU-0005NZ-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:13:06 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D829D20652;
 Wed, 12 Jun 2019 08:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560327184;
 bh=ylQfGdc+VMfHPkhpyVbEgNV3fDavaUzVg7HL1j5C20s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c8OSrMwoQfZ0iJMrNS/ax+bjieZwjH3dPP1EhLnWMh32ETykBx+fiaOe/uKfWmJ+x
 Tv0wFxAXY01bQwfQrubGfiH0E7OnkRu6AFxe4uu+YqvFpStjb8lZ/JK4NEo+kzn8LR
 VFMl3Z/Ew6phHzQwCgeMolfSzizMTxBJn1WhrA9Y=
Date: Wed, 12 Jun 2019 16:12:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
Message-ID: <20190612081230.GC11086@dragon>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
 <20190611224933.GA8624@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611224933.GA8624@bogus>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_011304_877325_B79723A5 
X-CRM114-Status: GOOD (  12.58  )
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
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Peter Robinson <pbrobinson@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 04:49:33PM -0600, Rob Herring wrote:
> On Sat, Jun 01, 2019 at 08:07:16AM +0100, Peter Robinson wrote:
> > Use the SPDX License Identifier for GPL-2.0+ OR X11
> > 
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >  arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts   | 39 +------------------
> >  .../arm/boot/dts/imx6sx-udoo-neo-extended.dts | 39 +------------------
> >  arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    | 39 +------------------
> >  arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 39 +------------------
> >  4 files changed, 4 insertions(+), 152 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > index db0feb9b9f5d..b6fbceaf6889 100644
> > --- a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > +++ b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > @@ -1,43 +1,6 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
> 
> This should actually be MIT, not X11. If you look at X11 SPDX 
> definition, it is for a specifc X Consortium copyright and adds a no 
> advertising clause on top of MIT.

Okay.  I just got it fixed on my branch.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
