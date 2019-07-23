Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208F571BE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 17:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XP1ERGmHWuKEWz9YXeyvCwbA+lk5KXoMbPvNzymsVKc=; b=DnamolQDUjDWIA
	Ub/x/U4Q3fxXZY+aKKzv4lluQ6m/rhsNoVEGmQbvEY5ETY4CnaI7qvZay+vDqFJ1VWB3C0g71aLc7
	Ijr/BmHmwBXKWhQq9FNZUvXANGsy4Qiz6oK97FDMwD7yEeJ5Siw+Ed+fc/skvkL+XgdVlTDEcSGoO
	O9tWMag4c0j2L/CgiTb9VEPJK8ihXAPv0wM7p30hHawYYgi1uSiAomcOzG+tYXHdv92CUy41aR0oI
	lXRaS6JyhypXDtGZ26WCedkMhXeJoD3bZYPHpDDARIWoKo8ak3YjmFTA9AvxXlI0LH/gUrmCVmfNM
	2gU+wjk5guUnCPchkNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpwsG-0006vQ-Si; Tue, 23 Jul 2019 15:38:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpws3-0006v4-BQ
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 15:38:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FC15217D4;
 Tue, 23 Jul 2019 15:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563896310;
 bh=6BjcRpGUXnApNQz7lAjtezIG7TvYHSpnsTToA6ldcuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iW3wa0oYpaL//UuyWsMLm+i+ND0M4tiRPisfgZng7jScBCMId0zVJa49Mdc8nwHLu
 hpaqz0kgnbWK8ct6/KTj2+eF9ntu+s0xnTiUavTb6xKJKLg+QXKysth4nuK7evoo8o
 d2fcuUXNNxoXFbVMXP4iuPbe3D77Nir5iUNw/TAw=
Date: Tue, 23 Jul 2019 16:38:23 +0100
From: Will Deacon <will@kernel.org>
To: Rob Clark <robdclark@gmail.com>
Subject: Re: [PATCH v2] iommu: add support for drivers that manage iommu
 explicitly
Message-ID: <20190723153822.gm4ossn43nvqbyak@willie-the-truck>
References: <20190702202631.32148-2-robdclark@gmail.com>
 <20190710182844.25032-1-robdclark@gmail.com>
 <20190722142833.GB12009@8bytes.org>
 <CAF6AEGvJc2RK3GkpcXiVKsuTX81D3oahnu=qWJ9LFst1eT3tMg@mail.gmail.com>
 <20190722154803.GG12009@8bytes.org>
 <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGvWf3ZOrbyyWjORuOVEPOcPr+JSEO78aYjhL-GVhDZnTg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_083831_412836_0AB249B4 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Clark <robdclark@chromium.org>, aarch64-laptops@lists.linaro.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Joe Perches <joe@perches.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 09:23:48AM -0700, Rob Clark wrote:
> On Mon, Jul 22, 2019 at 8:48 AM Joerg Roedel <joro@8bytes.org> wrote:
> >
> > On Mon, Jul 22, 2019 at 08:41:34AM -0700, Rob Clark wrote:
> > > It is set by the driver:
> > >
> > > https://patchwork.freedesktop.org/patch/315291/
> > >
> > > (This doesn't really belong in devicetree, since it isn't a
> > > description of the hardware, so the driver is really the only place to
> > > set this.. which is fine because it is about a detail of how the
> > > driver works.)
> >
> > It is more a detail about how the firmware works. IIUC the problem is
> > that the firmware initializes the context mappings for the GPU and the
> > OS doesn't know anything about that and just overwrites them, causing
> > the firmware GPU driver to fail badly.
> >
> > So I think it is the task of the firmware to tell the OS not to touch
> > the devices mappings until the OS device driver takes over. On x86 there
> > is something similar with the RMRR/unity-map tables from the firmware.
> >
> 
> Bjorn had a patchset[1] to inherit the config from firmware/bootloader
> when arm-smmu is probed which handles that part of the problem.  My
> patch is intended to be used on top of his patchset.  This seems to me
> like the best solution, if we don't have control over the firmware.

Hmm, but the feedback from Robin on the thread you cite was that this should
be generalised to look more like RMRR, so there seems to be a clear message
here.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
