Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCC7C9F3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVf579AJgT66dMd1u+An4cftuR22zZsQ+ZPdPTc+hP4=; b=F3UmJX4momkA0Y
	eOPrhtBzCn4rUC/Oeg3NDf74ai3TpGwu0xcDa91jy33+NFV5XWxelklNEbj3voiudCen/M4moQI2+
	2yIVfl1PhAp9kj3ql974n/rphFFNFabj0uuW4ihq1I3DiXQFt1UoMifklZh5oHGIt+xD7iZG5okwo
	YOwh1qyfOYK9hfvIvvX+E1mjNyYYlszLOMNr6Xrsgd1LOT/Z1op++RR/IKVVxILC8Bmu/iD0kctw/
	1/DAzB9/x6g0tmA+LZ+Cj5VQKY7eCpTuldJyAkETjYoXU4dVontbGfWCU1mX6adw0GrJmiM2Ntjh0
	pTA3f539vzsd50vSakGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0zp-0006tY-VY; Thu, 03 Oct 2019 13:18:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0ze-0006ro-In
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:18:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iG0zJ-0006F9-Ty; Thu, 03 Oct 2019 15:17:46 +0200
Message-ID: <662abbc0298ebab59919490ccc3d5c093ae35cf7.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/21] Refine memblock API
From: Lucas Stach <l.stach@pengutronix.de>
To: Mike Rapoport <rppt@linux.ibm.com>, Russell King - ARM Linux admin
 <linux@armlinux.org.uk>
Date: Thu, 03 Oct 2019 15:17:36 +0200
In-Reply-To: <20191003113010.GC23397@linux.ibm.com>
References: <CAHCN7xJ32BYZu-DVTVLSzv222U50JDb8F0A_tLDERbb8kPdRxg@mail.gmail.com>
 <20190926160433.GD32311@linux.ibm.com>
 <CAHCN7xL1sFXDhKUpj04d3eDZNgLA1yGAOqwEeCxedy1Qm-JOfQ@mail.gmail.com>
 <20190928073331.GA5269@linux.ibm.com>
 <CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com>
 <CAHCN7xKLhWw4P9-sZKXQcfSfh2r3J_+rLxuxACW0UVgimCzyVw@mail.gmail.com>
 <20191002073605.GA30433@linux.ibm.com>
 <CAHCN7xL1MkJh44N3W_1+08DHmX__SqnfH6dqUzYzr2Wpg0kQyQ@mail.gmail.com>
 <20191003053451.GA23397@linux.ibm.com>
 <20191003084914.GV25745@shell.armlinux.org.uk>
 <20191003113010.GC23397@linux.ibm.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_061806_619638_4576F465 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Adam Ford <aford173@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 The etnaviv authors <etnaviv@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Fabio Estevam <festevam@gmail.com>,
 Christoph Hellwig <hch@lst.de>, arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, den 03.10.2019, 14:30 +0300 schrieb Mike Rapoport:
> On Thu, Oct 03, 2019 at 09:49:14AM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, Oct 03, 2019 at 08:34:52AM +0300, Mike Rapoport wrote:
> > > (trimmed the CC)
> > > 
> > > On Wed, Oct 02, 2019 at 06:14:11AM -0500, Adam Ford wrote:
> > > > On Wed, Oct 2, 2019 at 2:36 AM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > > 
> > > > Before the patch:
> > > > 
> > > > # cat /sys/kernel/debug/memblock/memory
> > > >    0: 0x10000000..0x8fffffff
> > > > # cat /sys/kernel/debug/memblock/reserved
> > > >    0: 0x10004000..0x10007fff
> > > >   34: 0x2fffff88..0x3fffffff
> > > > 
> > > > 
> > > > After the patch:
> > > > # cat /sys/kernel/debug/memblock/memory
> > > >    0: 0x10000000..0x8fffffff
> > > > # cat /sys/kernel/debug/memblock/reserved
> > > >    0: 0x10004000..0x10007fff
> > > >   36: 0x80000000..0x8fffffff
> > > 
> > > I'm still not convinced that the memblock refactoring didn't uncovered an
> > > issue in etnaviv driver.
> > > 
> > > Why moving the CMA area from 0x80000000 to 0x30000000 makes it fail?
> > 
> > I think you have that the wrong way round.
> 
> I'm relying on Adam's reports of working and non-working versions.
> According to that etnaviv works when CMA area is at 0x80000000 and does not
> work when it is at 0x30000000.
> 
> He also sent logs a few days ago [1], they also confirm that.
> 
> [1] https://lore.kernel.org/linux-mm/CAHCN7xJEvS2Si=M+BYtz+kY0M4NxmqDjiX9Nwq6_3GGBh3yg=w@mail.gmail.com/

To clarify: Etnaviv needs to know where the CMA area is in order to
move a aperture window to cover the CMA area so the command buffers
allocated in contig memory can be mapped through this aperture. Now the
issue is that there is currently there is no good API for a driver to
know where the CMA area is located, so we are trying to infer this from
dma_get_required_mask. Unfortunately this can overshoot the real DRAM
area by a bit, so combined with the fixed 2GB size of the GPU aperture
this means we are no longer able to map the command buffers through the
required aperture if the CMA area moves too far down in the physical
memory.

It's really a bad interaction between etnaviv and CMA area placement,
due to insufficient APIs to communicate some crucial information. There
is nothing in the etnaviv driver or the hardware which requires the CMA
area to be at a certain place, we just need to know where it is located
exactly. So my try at fixing this [1] was by adding a API to get the
required information, but the first attempt was shot down and I hadn't
had time to follow up on this yet.

Regards,
Lucas

[1] https://patchwork.kernel.org/patch/10966767/



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
