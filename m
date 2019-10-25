Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B6AE553A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 22:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeqakoNXpEApY8lUZK/XpivmsmmPLEinnnG1GRkhP8w=; b=tIdG/GBUUaSpyp
	Px1MCfsv9+jwIYDIbEJzq/zwYR1ZqkZ8e+G6Yab7KKgNpje10RL9otvW3y8cZLrYOwiKNA7fnQY8B
	7OP2kcqjgQ90uSgPftG97qx6MQzQrBB/vwS9wKP/us3smj4Jm6nIsQOS01p9tq4G+6Ps6vqC06asQ
	ppx6a9YObofoRG0bn7YHXNtnsbSmLQ8cn22RwFJCD3qXrDidMuYiV0UbnPmnP9QBlg11o2RfVQv6a
	+Ev3kmlDqeHFJc4Rww6DfrB/vuSNuvqN8aowIMyYdCU05hIt0umhUb9cZsAowcgm9lxyVOx2WUXI6
	nN8H1DsbH9OpJLizZu0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6HH-0002Mt-Sg; Fri, 25 Oct 2019 20:33:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6H6-0002M8-3D; Fri, 25 Oct 2019 20:33:34 +0000
Received: from rapoport-lnx (unknown [87.70.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F0C9205F4;
 Fri, 25 Oct 2019 20:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572035611;
 bh=+V3MYXgziPOZllvPaeN2wWalwWrmuc8yiZofvYCWoNY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1ISSeESRZG09GzO0p+0h+u/Da++xXbkOcsQ5mlswN8E+JmDJy8i2vG7sk1XtBAlth
 O+JkATp4aZZ6UwRybaJhjTl0dq8o88pCslQd7+isc/kOjQ3j0a42WMTbSUrvr9icVT
 /jJxJNBEQReX2euA+K+z//obJVLa7yxkT+K4iwqU=
Date: Fri, 25 Oct 2019 23:33:19 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Michal Simek <monstr@monstr.eu>
Subject: Re: [PATCH 06/12] microblaze: use pgtable-nopmd instead of
 4level-fixup
Message-ID: <20191025203318.GA8413@rapoport-lnx>
References: <1571822941-29776-1-git-send-email-rppt@kernel.org>
 <1571822941-29776-7-git-send-email-rppt@kernel.org>
 <aa7df5a1-5022-bc82-8816-74c956e2fd90@monstr.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa7df5a1-5022-bc82-8816-74c956e2fd90@monstr.eu>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_133332_189593_E49FFD2B 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 10:24:30AM +0200, Michal Simek wrote:
> Hi Mike,
> 
> On 23. 10. 19 11:28, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > microblaze has only two-level page tables and can use pgtable-nopmd and
> > folding of the upper layers.
> > 
> > Replace usage of include/asm-generic/4level-fixup.h and explicit definition
> > of __PAGETABLE_PMD_FOLDED in microblaze with
> > include/asm-generic/pgtable-nopmd.h and adjust page table manipulation
> > macros and functions accordingly.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/microblaze/include/asm/page.h    |  3 ---
> >  arch/microblaze/include/asm/pgalloc.h | 16 ----------------
> >  arch/microblaze/include/asm/pgtable.h | 32 ++------------------------------
> >  arch/microblaze/kernel/signal.c       | 10 +++++++---
> >  arch/microblaze/mm/init.c             |  7 +++++--
> >  arch/microblaze/mm/pgtable.c          | 13 +++++++++++--
> >  6 files changed, 25 insertions(+), 56 deletions(-)
> 
> I have take a look at this and when this is applied on the top of
> 5.4-rc2 there is not a problem.
> But as was reported by 0-day there is compilation issue on the top of
> mmotm/master tree and I am able to replicate it.
> It means there are other changes in Andrew's tree which are causing it.

0day is still using an old tree for mmotm:

> url:    https://github.com/0day-ci/linux/commits/Mike-Rapoport/mm-remove-__ARCH_HAS_4LEVEL_HACK/20191025-063009
> base:   git://git.cmpxchg.org/linux-mmotm.git master
> config: microblaze-mmu_defconfig (attached as .config)

A while ago Johannes moved the mmotm to github and the last commit in
git.cmpxchg.org/linux-mmotm.git was in the end of August.

[1] https://lore.kernel.org/linux-mm/20190916134327.GC29985@cmpxchg.org
 
> Thanks,
> Michal
> 
> -- 
> Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
> w: www.monstr.eu p: +42-0-721842854
> Maintainer of Linux kernel - Xilinx Microblaze
> Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
> U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
> 

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
