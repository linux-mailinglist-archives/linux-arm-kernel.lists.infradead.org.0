Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FF0A3B8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2gY+cG/u3rib9MNJ1HWQoHuz/XZT3n/IZE6dQuHs74=; b=uHeBqjyI0dLApR
	lYt72Atv2u0q7GJfFB0PI8YBeK7aiiEfY/kZqDcBWUemuZJ/VMKyHj6my5aOKUxi2Qt6XX4W+wmcw
	3bso4+r5OmxDYeLSwGEJn0MDWJGuLFkCguN9tv8Q+JZDBFJsVy/0+gfwb252kwbNRe4Rc5Z9CwRQV
	GmlPvXbuh0jx68nKWllcGaXktxMpYEJKm6KQDxvwFFy6kboe7aUGIB9My5+jZfJeUh12FljdRKzA2
	ff0o9BJVS2YQEdAnKUTeaklBndCRVSJJMTrpCdaykCQFIy/upZ4dXa4CjTJNQlolf4q68ozKiTWOq
	paI8Dc3KDKIFjoOLUlRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jS5-0006yG-3x; Fri, 30 Aug 2019 16:08:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jQa-0005m8-70; Fri, 30 Aug 2019 16:07:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5D5BB227A8A; Fri, 30 Aug 2019 18:07:05 +0200 (CEST)
Date: Fri, 30 Aug 2019 18:07:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stafford Horne <shorne@gmail.com>
Subject: Re: [PATCH 05/26] openrisc: map as uncached in ioremap
Message-ID: <20190830160705.GF26887@lst.de>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-6-hch@lst.de>
 <20190823135539.GC24874@lianli.shorne-pla.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823135539.GC24874@lianli.shorne-pla.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090708_701169_B336D2F0 
X-CRM114-Status: GOOD (  10.93  )
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

On Fri, Aug 23, 2019 at 10:55:39PM +0900, Stafford Horne wrote:
> On Sat, Aug 17, 2019 at 09:32:32AM +0200, Christoph Hellwig wrote:
> > Openrisc is the only architecture not mapping ioremap as uncached,
> > which has been the default since the Linux 2.6.x days.  Switch it
> > over to implement uncached semantics by default.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/openrisc/include/asm/io.h      | 20 +++-----------------
> >  arch/openrisc/include/asm/pgtable.h |  2 +-
> >  arch/openrisc/mm/ioremap.c          |  8 ++++----
> >  3 files changed, 8 insertions(+), 22 deletions(-)
> 
> Acked-by: Stafford Horne <shorne@gmail.com>

Can you send this one to Linus for 5.4?  That would help with the
possibility to remove ioremap_nocache after that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
