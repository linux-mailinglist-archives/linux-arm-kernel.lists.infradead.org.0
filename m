Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E884252E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP3KNC+1LDZWWbyttJbggKWAZuE0S7JAfh0iJt2qGQk=; b=h8jh9vPzIv73Ob
	k2WUZhKHULoegbTlXzFkw2pqeYWSP04gQQgI9gLvbDUZkH9rKC3hkSaI7n6cBEEFXqqbSAL0cmo4R
	LGvSqQ6TQBEAv1CUPHrXyjbI6fhz6u2s0YuRhZcrzZqEAz2lNuLoKGH2tzUYZzgd+vk2WP8Z+LICE
	gaLfAmOr4htqCA7Rex+lmQTuRwD3XkFPMAsl5J6djdwShVtOgA1Z8W2EKTN2q43u62rdrNinJMRAd
	lWkkEU5vSM6/0RvoiUssp7P9dZmWEiOahwNN8w5Ml2J5fz52GFuRBkkpDFA9MooFdRJhSFjzjc1l8
	kFMqgCRbJhKgm5QhnDRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb273-0000LC-VO; Wed, 12 Jun 2019 12:12:21 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb26n-0000Hc-FK
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:12:07 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id CC08525AD60;
 Wed, 12 Jun 2019 22:12:00 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id B9DCEE21FE5; Wed, 12 Jun 2019 14:11:58 +0200 (CEST)
Date: Wed, 12 Jun 2019 14:11:58 +0200
From: Simon Horman <horms@verge.net.au>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77990: Fix register range of
 display node
Message-ID: <20190612121157.y6iiftulcsv3ty5w@verge.net.au>
References: <1560084198-2930-1-git-send-email-ykaneko0929@gmail.com>
 <20190611123022.oo4arh76w72vlkg5@verge.net.au>
 <20190611140252.GL5016@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611140252.GL5016@pendragon.ideasonboard.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051205_654711_916CCBF7 
X-CRM114-Status: GOOD (  14.59  )
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
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 05:02:52PM +0300, Laurent Pinchart wrote:
> Hello,
> 
> On Tue, Jun 11, 2019 at 02:30:27PM +0200, Simon Horman wrote:
> > + Laurent
> > 
> > On Sun, Jun 09, 2019 at 09:43:18PM +0900, Yoshihiro Kaneko wrote:
> > > From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > > 
> > > Since the R8A77990 SoC uses DU{0,1}, the range from the base address to
> > > the 0x4000 address is used.
> > > This patch fixed it.
> > > 
> > > Fixes: 13ee2bfc5444 ("arm64: dts: renesas: r8a77990: Add display output support")
> > > Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> > > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> > 
> > Thanks,
> > 
> > This looks fine to me but I will wait to see if there are other reviews
> > before applying.
> > 
> > Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks, I have applied this for inclusion in v5.3.

> > Is a similar fix also appropriate for D3 (r8a77995)
> 
> Yes it is.

Nice.

Kaneko-san, could you prepare a patch?

> > And a variant that reduces the register size to 0x5000
> > for M3-W (r8a77965).
> 
> M3-W has registers at 0xfeb60000. You could reduce the size from
> 0x80000 to 0x70000 but I don't think it's worth it.

Got it, lets leave M3-W as is.

...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
