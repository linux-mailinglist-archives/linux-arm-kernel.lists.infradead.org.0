Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 400FB830D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 13:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43GG7UkyqHHEKQZ+xtBxyHWkQgE1zgwP4mego38PZLg=; b=mcGZTbHKHkvBA9
	kYOnQZzYNj8ZHQJTUkXY552kb0/6byeXUB1AimbHFX1Z6CYUulQnzg5BpsmoEj+6nOVmbKX5mgR86
	GEXJ63itz455VvM8NRexHdzjv4XCT4wzsvNLOQlAHT6Qbo6PnlpW7mCC3OMPjDsR0tYtADXvQ6t54
	J5IUM7ldAAPC+bf3R+taeuGFU7Gcmtack7CZwNUzxJ2uk59reXanE06Z4S5bvhJyHqGULbW7amTyU
	gX0fvfi5sOqiRDhxl5fAKut1iqym9C7Z+XCcAL8Kt7ydGZ6NlDOhvBPGxWzHBmJhzsu0/XzsoV/2c
	ancv9arSZ8UOkXAWCqqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxo3-0000wz-EB; Tue, 06 Aug 2019 11:39:07 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxnr-0000wK-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 11:38:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B5702227A81; Tue,  6 Aug 2019 13:38:48 +0200 (CEST)
Date: Tue, 6 Aug 2019 13:38:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Christoph Hellwig <hch@lst.de>, Rob Clark <robdclark@gmail.com>,
 dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190806113848.GB20215@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de> <20190806093816.GY7444@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806093816.GY7444@phenom.ffwll.local>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_043855_378910_70E00E1F 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 11:38:16AM +0200, Daniel Vetter wrote:
> I just read through all the arch_sync_dma_for_device/cpu functions and
> none seem to use the struct *dev argument. Iirc you've said that's on the
> way out?

Not actively on the way out yet, but now that we support all
architectures it becomes pretty clear we don't need it.  So yes, we
could eventually remove it.  But..

> That dev parameter is another holdup for the places where we do not yet
> know what the new device will be (e.g. generic dma-buf exporters like
> vgem). And sprinkling a fake dev or passing NULL is a bit silly.

This is where it becomes interesting.  Because while we don't need the
dev argument for the low-level arch API, we do need it at the driver
API level, given that in some systems both dma coherent and non-coherent
devices exist, and we need to decide based on that.

> Add a HAVE_ARCH_SYNC_DMA and the above refactor (assuming it's ok to roll
> out everywhere) and we should indeed be able to use this. We still need to
> have all the others for x86 and all that. Plus I guess we should roll out
> the split into invalidate and flush.

Well, we'll still need a defined API for buffer ownership vs device.
Just exporting arch_sync_dma_for_{device,cpu} is not the right
abstraction level.  Note that these two functions are always present,
just stubbed out for architectures that do not support non-cache
coherent devices (plus the arm false negative that is easily fixable).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
