Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF613118246
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 09:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eNRQJafcY99ibas2wnQJ0w9ZBihha124jCieV3psJOE=; b=m+FGkNe/yFmpNV
	nwLDRNl6yTnJjmQLRBB6KjquXFRKni7g5WgmM7MPC26Cb9mfn5H9UxrNxMvERHz0leV72BP/YAtrl
	cBoQuJrwsdaGnBEO2mKzYTEkUDNksWhdVlglqd1pdlWwglFTBr5OI7q9NL0qObI8vOXxp4hLxtvik
	VN1m18hOHke3pTSV0PGVAPOlA77ZVO3v83yTiVeAd8Fo8mAT6VAEy3vm5ua2/4CpkX4f+uw7pJ4hS
	3BsEaevskfTHh1i2azGZQKaVkDuxCWMEiptHP0xDCHF13ta5fh82gHm7UJJvIotGeNaaKIWXlJ1L8
	IkhSCLsqFB4bhCEODHeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieaxR-00073m-A0; Tue, 10 Dec 2019 08:33:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieaxL-00073T-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 08:33:20 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A7F7E2073D;
 Tue, 10 Dec 2019 08:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575966798;
 bh=/VKW1xCEg210bfqLE1Nq6Wbt7xZ9sCqggKeIj+4r4iM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s+faPYDTzs2fjIOG25xbjNzX5+L5kLZ4YBBGtFU8GvSMzxQgJdfBdWRCIZU9JSm5K
 wzF7eZsdVZwaNYh12PbpSI///dDqSL84OfMBNzyR+54x8afL/0QJzR2WDxVrgtaheq
 t8Dade4ctF1cUXwXyUTwe+6i2FWCB6jZXYktIBjs=
Date: Tue, 10 Dec 2019 09:33:15 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: set GPU clock to 432 MHz
Message-ID: <20191210083315.gixyhp2a4pg7oi7z@gilmour.lan>
References: <20191203021420.164129-1-anarsoul@gmail.com>
 <20191209193112.qr6un5ryhyxwu6a5@hendrix.lan>
 <CA+E=qVcxXu4CggnhZFti-J4MB5m3pvoxKCHnH6ap-4OSZMzCFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVcxXu4CggnhZFti-J4MB5m3pvoxKCHnH6ap-4OSZMzCFQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_003319_153453_21E9BFCB 
X-CRM114-Status: GOOD (  19.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 12:23:18PM -0800, Vasily Khoruzhick wrote:
> On Mon, Dec 9, 2019 at 12:03 PM Maxime Ripard <mripard@kernel.org> wrote:
> > On Mon, Dec 02, 2019 at 06:14:20PM -0800, Vasily Khoruzhick wrote:
> > > That's what BSP kernel sets it to and it seems to work fine.
> > >
> > > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > index 27e48234f1c2..0051f39b3d98 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > @@ -976,6 +976,9 @@ mali: gpu@1c40000 {
> > >                       clocks = <&ccu CLK_BUS_GPU>, <&ccu CLK_GPU>;
> > >                       clock-names = "bus", "core";
> > >                       resets = <&ccu RST_BUS_GPU>;
> > > +
> > > +                     assigned-clocks = <&ccu CLK_GPU>;
> > > +                     assigned-clock-rates = <432000000>;
> > >               };
> >
> > This doesn't really guarantee anything. If the GPU needs to remain at
> > that rate, it should be set in the driver. I just saw that you did
> > send a PR in github, I just merged it.
>
> Lima doesn't set GPU frequency at all since it's different for
> different SoCs and we don't support operation points nor frequency
> scaling yet.

You don't really need frequency scaling though, you just need to set
it to any of the OPP. And if that's still too complicated, the binding
mandates to associate a vendor compatible, so you can base the
information on that.

> So this change effectively sets GPU frequency to 432MHz on A64 when
> using lima.

Right before the driver is probed. For all you now, that frequency can
be changed to anything else at the very next operation and you'd end
up in the exact same situation than the one you're trying to fix.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
