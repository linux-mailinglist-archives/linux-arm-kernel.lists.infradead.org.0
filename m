Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC82041D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fh8Em4Ywn1O91az2zjLR+Upk4fiVrKxEPv3pYcxRhxo=; b=Q6KvO/y/ES/oAp
	ASieK8q03sTXvcXc4zlPtxwJ6MuBrFuO5yLZgjpn8TSR1GFyChzbzRdIV2RQ2PPHS5dd2+3or7JUJ
	opFYQva3OsRcPdaA2+OhTVsbV/GJzOxWCINZDt/wuGjeTBpvfjl2KZQkN0eE76u9rgGtVKheCGOMI
	Tv0cl2omgLF6+MWLWpk/cKnLwu+eC1WrbpqdiDxF6qUxY2lM6OoWu99XGxL+iDeFE1nPsAH/yb0bf
	9eEzHeTPkAopLykvf9EQTB0UC1gMrMpGr6zpcaSXlB9DGPTx3hqFzwUrq4Il9bgytF2vZfkDeJSgO
	p3SrJcdRhJea7DrXHb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREGZ-0004P9-QA; Thu, 16 May 2019 11:09:39 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREGR-0004O4-W0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:09:33 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id CFF8725AD69;
 Thu, 16 May 2019 21:09:27 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 035A6E21EEB; Thu, 16 May 2019 13:09:24 +0200 (CEST)
Date: Thu, 16 May 2019 13:09:23 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH V2] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
Message-ID: <20190516110923.amgrvejmndypgoie@verge.net.au>
References: <20190515082326.6449-1-marek.vasut@gmail.com>
 <CAMuHMdVNskLjMpr+RgL_+d_g7=QfO_51wWVYb_itf_19kugLjA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVNskLjMpr+RgL_+d_g7=QfO_51wWVYb_itf_19kugLjA@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_040932_182934_129BCC46 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:32:18AM +0200, Geert Uytterhoeven wrote:
> Hi Marek,
> 
> On Wed, May 15, 2019 at 10:23 AM <marek.vasut@gmail.com> wrote:
> > From: Marek Vasut <marek.vasut+renesas@gmail.com>
> >
> > The PMIC IRQ line pin multiplexing configuration is missing from the DTs.
> > Since the line is configured correctly by default, the system works fine.
> > However, add the IRQ line pin multiplexing configuration for completeness.
> >
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> > Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > Cc: Simon Horman <horms+renesas@verge.net.au>
> > Cc: linux-renesas-soc@vger.kernel.org
> > To: linux-arm-kernel@lists.infradead.org
> > ---
> > V2: Move the pin control node from iic3 controller to pmic on 7792 Blanche,
> >     since there's only one PMIC on that board.
> 
> Thanks for the update!
> 
> As the tag condition from v1 is now fulfilled:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, applied for v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
