Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0CF8B7CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRJhDm+GFPexITyjx6RAI/DwXbKNOxWDdNY8NUF3VVY=; b=EvAmRIaSA22yco
	Amt79VBTfTZ8WEigFMaZnbjxojHbv3sWqcbM6VFH0g56JFeeBwYZkwrYxcHSlAh9dQUgCC2P7B/5Y
	bdGaET39TFyRQ7LXNAfkM4bnSiNA8Z1DztXC8y0AppiosZEtW7UG171u9J4SJtgXD+pAuhzas4sDY
	mCCaZHbcr/jXwZvoNfmonFpV/neze7pkDWYYWQ54258/iuU/uU6XuTWzU4MaA/5yWZOS/l9a0kEx/
	m3FTrVzZ3MnoT96gY5KVT8z2XDwZH4TnXSgFBo0/iqbad0WBLuhviqGGe9dXK9VYUfqE/+6DrQd1l
	6iWNukDcMGOiqRwfLDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVU8-0005Tw-M1; Tue, 13 Aug 2019 12:01:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVTx-0005TF-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:00:54 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1F4BB805C;
 Tue, 13 Aug 2019 12:01:20 +0000 (UTC)
Date: Tue, 13 Aug 2019 05:00:49 -0700
From: Tony Lindgren <tony@atomide.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] ARM: OMAP: dma: Mark expected switch fall-throughs
Message-ID: <20190813120049.GV52127@atomide.com>
References: <20190728232240.GA22393@embeddedor>
 <201907290934.B2053972E3@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201907290934.B2053972E3@keescook>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_050053_462051_A699786F 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Kees Cook <keescook@chromium.org> [190729 16:35]:
> On Sun, Jul 28, 2019 at 06:22:40PM -0500, Gustavo A. R. Silva wrote:
> > Mark switch cases where we are expecting to fall through.
> > 
> > This patch fixes the following warnings:
> > 
> > arch/arm/plat-omap/dma.c: In function 'omap_set_dma_src_burst_mode':
> > arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
> >    if (dma_omap2plus()) {
> >       ^
> > arch/arm/plat-omap/dma.c:393:2: note: here
> >   case OMAP_DMA_DATA_BURST_16:
> >   ^~~~
> > arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
> >    if (dma_omap2plus()) {
> >       ^
> > arch/arm/plat-omap/dma.c:402:2: note: here
> >   default:
> >   ^~~~~~~
> > arch/arm/plat-omap/dma.c: In function 'omap_set_dma_dest_burst_mode':
> > arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
> >    if (dma_omap2plus()) {
> >       ^
> > arch/arm/plat-omap/dma.c:481:2: note: here
> >   default:
> >   ^~~~~~~
> > 
> > Notice that, in this particular case, the code comment is
> > modified in accordance with what GCC is expecting to find.
> > 
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>

Applying into fixes thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
