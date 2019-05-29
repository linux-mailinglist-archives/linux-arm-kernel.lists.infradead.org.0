Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004622DAD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FUFVSOE6LsFFb6bjcR7YER16gE84DrwkCTqqv8OE4Q=; b=SHbh3bepz2Azx9
	JROq62qmGTtJcWEpfiPqemdQod6ivkoMJAceeyc1qQ+DO+CcXK2hah88oUyTgRJpDbmEdivqKujjz
	25D1roMe5JMcjEavppIIdxzo4gcLkpat2YymsMiYAHMZc05s5OWua26kyJMAOKpxgMKin6Y79DylP
	RUvNjqLYxoFykz1Vy2M6anpYYpXE46iiHymvfdTgjc6SsvcYajcTe0QOXrNNRfitokyiVDvlnd0hp
	/5gdtfSiAIrB2IckST5IrYeOy/9lBTAuKO5mDTbPF6Q/7Co1+h/pM6zngekGxUfmz3uRD7dg+glcO
	srUPN0hdEcN1BsTh4flg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvsl-0004KB-1o; Wed, 29 May 2019 10:32:31 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvsd-0004Jr-SC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:32:25 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E1F5D25AEEC;
 Wed, 29 May 2019 20:32:22 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id E086A940361; Wed, 29 May 2019 12:32:20 +0200 (CEST)
Date: Wed, 29 May 2019 12:32:20 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH/RFT] arm: dts: renesas: r7s9210-rza2mevb: sort nodes of
 rza2mevb board
Message-ID: <20190529103220.5l27ll5x4jbdqrw6@verge.net.au>
References: <1558104187-2842-1-git-send-email-ykaneko0929@gmail.com>
 <CAMuHMdUmmwmm2bx+g=G-py5FiQ5Ynrmxr262j61P5=y5GTA6OQ@mail.gmail.com>
 <20190529102219.pkhwalbm6feaq4tz@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529102219.pkhwalbm6feaq4tz@verge.net.au>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_033224_058118_F3FB18EA 
X-CRM114-Status: GOOD (  16.57  )
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
 Magnus Damm <magnus.damm@gmail.com>, Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:22:24PM +0200, Simon Horman wrote:
> On Tue, May 28, 2019 at 10:08:29AM +0200, Geert Uytterhoeven wrote:
> > Hi Kaneko-san,
> > 
> > On Fri, May 17, 2019 at 4:43 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> > > This patch sorts the nodes of arch/arm/boot/dts/r7s9210-rza2mevb.dts.
> > >
> > > * Sort subnodes of root ("/") node alphabetically
> > > * Sort following top-level nodes alphabetically
> > > * Sort subnodes of pinctrl alphabetically
> > >
> > > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> > 
> > Thanks for your patch!
> > 
> > > This patch is based on the devel branch of Simon Horman's renesas tree.
> > 
> > This looks good to me, but in the mean time renesas-devel has progressed.
> > Can you please respin?
> 
> I guess the same thing could happen again so I have gone ahead
> and both updated and applied the patch. The result is as follows:
> 
> >From da06407455334bd8ec24e9c434691d3dd68571f8 Mon Sep 17 00:00:00 2001
> From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Date: Fri, 17 May 2019 23:43:07 +0900
> Subject: [PATCH] arm: dts: rza2mevb: sort nodes of rza2mevb board

I also updated the patch prefix to "ARM"

...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
