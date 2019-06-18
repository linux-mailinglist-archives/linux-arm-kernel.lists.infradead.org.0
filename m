Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7913449E7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 12:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qp6WsfKe7hmjCgU/zW/JbG2rZiW+DEgWW8iy2qk0Qjk=; b=bOIBxg2HQ2XjcZ
	z2kvtaYy0T9+76S5R5PviCrwGYeaU2ncYWeqcVLSgd1mxfXGDirfoHy11AeI07pfDCRhGBb81OQVD
	3LBNgGHF/T4xOKLtGAFTgIDpPmvrvQ4hdgNQOuhjF1kOf1gcZvze/D+EP/lsJEsT/mMFY9nalCxBl
	aOzF//4Fd7w3jIZ8mkVdCxMMHX3xTT2q7wtJnbb29AgvxFJjU3sWIamLnP7gAPE9OFh4tc/FTWT9A
	LwG97IYp0llBdMDD4iztdFy9Q9S+fqhZKEN6eYF7mQmluZKLN/xg22PZ8f5kC7dB/8caGZ8X2ke2B
	CWk/2ycM24Qt6U2AMKzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdBc1-0007mH-39; Tue, 18 Jun 2019 10:45:13 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBbq-00077c-Cb
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 10:45:04 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0322325AED3;
 Tue, 18 Jun 2019 20:44:57 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id F357B9408C4; Tue, 18 Jun 2019 12:44:55 +0200 (CEST)
Date: Tue, 18 Jun 2019 12:44:55 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for
 LVDS Interface
Message-ID: <20190618104455.72jyrvwf2vut76hy@verge.net.au>
References: <20190617083704.3941-1-horms+renesas@verge.net.au>
 <20190617083704.3941-2-horms+renesas@verge.net.au>
 <CAMuHMdUu2T2+Ri_xEq+Nr1qD_Dm067TDkfxTDpduX4xia2FGDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUu2T2+Ri_xEq+Nr1qD_Dm067TDkfxTDpduX4xia2FGDQ@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_034502_723888_9E7D99FC 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:43:09AM +0200, Geert Uytterhoeven wrote:
> Hi Simon,
> 
> On Mon, Jun 17, 2019 at 10:37 AM Simon Horman
> <horms+renesas@verge.net.au> wrote:
> > From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> >
> > It is necessary to reset the LVDS Interface according to display on/off.
> 
> This is not the LVDS interface.
> The LVDS interface has its own device node.

Thanks, how about a changelog more like this?

arm64: dts: renesas: r8a77990: Add cpg reset for DU

Add CPG reset properties to DU node of E3 (r8a77990) SoC.

According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
level so specifying one reset entry per group is sufficient. For this
reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
earlier revision of this patch.

Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

> > Therefore, this patch adds CPG reset properties in DU device node
> > for the R8A77990 SoC.
> >
> > According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> > level so specifying one reset entry per group is sufficient. For this
> > reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
> > earlier revision of this patch.
> >
> > Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> > ---
> > v2 [Simon Horman]
> > - only add one reset entry per group
> >
> > v1 [Yoshihiro Kaneko]
> >
> > v0 [Takeshi Kihara]
> > ---
> >  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > index b4318661f35e..84d1f58e73e7 100644
> > --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > @@ -1766,6 +1766,8 @@
> >                         clocks = <&cpg CPG_MOD 724>,
> >                                  <&cpg CPG_MOD 723>;
> >                         clock-names = "du.0", "du.1";
> > +                       resets = <&cpg 724>;
> > +                       reset-names = "du.0";
> >                         vsps = <&vspd0 0 &vspd1 0>;
> >                         status = "disabled";
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> -- 
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
