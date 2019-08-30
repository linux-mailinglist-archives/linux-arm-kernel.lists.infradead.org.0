Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D137A3B46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHvNue/xGSzQMPg3MqeDZPfeFajIGlErIvJVzmBuAaE=; b=V0B7hCRK0E33UH
	Pa/nkOI6uwteiF2NkrFj03uRdsEqPYylc3B4Nsv15x5btw7IsQZsdMZ5HFvdGs1W4Of4wW/CMajUD
	8mJzy4gRJGQ5HRlbfYV0dsc2vb2cL8ljD+fnpcA7wKxUJXoE0Cmch8RyXTDmc9zw1Axe8kZ9mKiLm
	pxY+Vs/quI8mhANdsMc6JNSiictStoI3hCeRbRwZktzxByfwGYPE89VPKi8hduzvMAvRVIm3AdmID
	K6q2Azlyg2xJNdlcKQJYzjEH0hUYLeVi+1cwekHWQSnUzXHqF7aJMfGedKRTVduOxX5BJWMgWbk6Y
	nKquA3Q3/anoltpBDO/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jOk-0002q4-Hz; Fri, 30 Aug 2019 16:05:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jOT-0002pd-Dv; Fri, 30 Aug 2019 16:04:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 95CE5227A8A; Fri, 30 Aug 2019 18:04:54 +0200 (CEST)
Date: Fri, 30 Aug 2019 18:04:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH 12/26] x86: clean up ioremap
Message-ID: <20190830160454.GB26887@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-13-hch@lst.de> <20190817103402.GA7602@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817103402.GA7602@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090457_621961_E38E6947 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Christoph Hellwig <hch@lst.de>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 17, 2019 at 12:34:02PM +0200, Ingo Molnar wrote:
> 
> * Christoph Hellwig <hch@lst.de> wrote:
> 
> > Use ioremap as the main implemented function, and defined
> > ioremap_nocache to it as a deprecated alias.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/x86/include/asm/io.h | 8 ++------
> >  arch/x86/mm/ioremap.c     | 8 ++++----
> >  arch/x86/mm/pageattr.c    | 4 ++--
> >  3 files changed, 8 insertions(+), 12 deletions(-)
> 
> Acked-by: Ingo Molnar <mingo@kernel.org>

Can you pick it up through tip for 5.4?  That way we can get most
bits in through their maintainer trees, and then I'll resubmit the
rest for the next merge window.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
