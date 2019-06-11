Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6873CDDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5jk7TR/hVvnFmwcMrpiVlksw4xVZ0mzZxoFj7ClO+c=; b=cWkxREbJyQ16Nh
	3kdq7VGaqWcMjxzn3g/4DS8eRhnipRosu4M/LR/2+mZCK24tcVFn772LaujiU3AuRUr1Qd+vcoSqy
	1OKvOF5rZqs7CkizyJ3qwLkedMCtylRauncEy0muFQb7y5YLXo8q9tY3YjZFxetE10nZuQemPoPPH
	gKj5Lu/FkY78mZp3fF7fDsehaJJonpjyy4eUYnBsBAA7dhg/H4dHAxUNDjefuTcl46yjdXH3369rJ
	q/obfaG7n6hCwQmyvL5YBXfYZR8blJxEAFdor8pVLwCNz9t5eYQlO0tH+7gbca8C3cxYBzAtxFMsy
	huY1g2fA7enOq35qRUgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahNC-0007ZN-Sk; Tue, 11 Jun 2019 14:03:39 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahMt-0007YL-67
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:03:20 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id F1BD0FA0;
 Tue, 11 Jun 2019 16:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1560261788;
 bh=3BvB84hfEouUM2qCyFA1C21WzDxy+FKCZeu7WHZsPfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OETh46C8Jts9gnoaub9GkBJ1/ikcePUj6ucwaXsO2qUYXRLQNmpK9D4H38/elqEK0
 zk5PFZ6E1QxcsJEIHKvjJKF0n8I4tbuZ0+UtYkacET86eSXVBYUbUgd+tT9WATwYXu
 cDwEGpBVDmKxAKNxZux1kCahP+vmCZoOtGEH9mBQ=
Date: Tue, 11 Jun 2019 17:02:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77990: Fix register range of
 display node
Message-ID: <20190611140252.GL5016@pendragon.ideasonboard.com>
References: <1560084198-2930-1-git-send-email-ykaneko0929@gmail.com>
 <20190611123022.oo4arh76w72vlkg5@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611123022.oo4arh76w72vlkg5@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_070319_388342_B4CB4E0B 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Tue, Jun 11, 2019 at 02:30:27PM +0200, Simon Horman wrote:
> + Laurent
> 
> On Sun, Jun 09, 2019 at 09:43:18PM +0900, Yoshihiro Kaneko wrote:
> > From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > 
> > Since the R8A77990 SoC uses DU{0,1}, the range from the base address to
> > the 0x4000 address is used.
> > This patch fixed it.
> > 
> > Fixes: 13ee2bfc5444 ("arm64: dts: renesas: r8a77990: Add display output support")
> > Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> 
> Thanks,
> 
> This looks fine to me but I will wait to see if there are other reviews
> before applying.
> 
> Reviewed-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Is a similar fix also appropriate for D3 (r8a77995)

Yes it is.

> And a variant that reduces the register size to 0x5000
> for M3-W (r8a77965).

M3-W has registers at 0xfeb60000. You could reduce the size from
0x80000 to 0x70000 but I don't think it's worth it.

> > ---
> > 
> > This patch is based on the devel branch of Simon Horman's renesas tree.
> > 
> >  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > index 547e970..9b15da1 100644
> > --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> > @@ -1760,7 +1760,7 @@
> >  
> >  		du: display@feb00000 {
> >  			compatible = "renesas,du-r8a77990";
> > -			reg = <0 0xfeb00000 0 0x80000>;
> > +			reg = <0 0xfeb00000 0 0x40000>;
> >  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
> >  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> >  			clocks = <&cpg CPG_MOD 724>,

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
