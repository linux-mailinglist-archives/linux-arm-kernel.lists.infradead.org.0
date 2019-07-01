Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E44C15B725
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 10:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JChYDgnjngYA0PkPlfNDBx+AR1I0hpCAOGoov5xh+sQ=; b=IxjKRkBJ42WWYV
	hpQvJQrhKmLX9Yf0zh8KCN9PgIik1wDF4rgVRaMmom8Zbx1miCWCy8kyrvryjMo1wN87NYp20ORJ3
	/cLb3P/QDQ6qx9peb4r2Kf0VHh+9/zPDWmhE2o66R+4Y3KKWNhsP6x91ZwYsVuwVl41Ncd0bB7Nxf
	WCXyyMDRCLsfnU5uw2RBxSFDxZiyWU47xYfapF8p/maqjE0aQgfoZvqjYs49JizfGHnBum1bvxWAz
	V9psZzKaNY8KzfnODUtWn58M+QT/G0DavqIMcOwOW8BfRwSY9RBcZOQ5c3XCy9mw9Hr0HqphcywIO
	Go0Bs39QwhzuD/IKtRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhrzc-0000O5-02; Mon, 01 Jul 2019 08:48:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhrzL-0000Lp-UR
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 08:48:41 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AC3E268B20; Mon,  1 Jul 2019 10:48:33 +0200 (CEST)
Date: Mon, 1 Jul 2019 10:48:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190701084833.GA22927@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_014840_129557_B735F587 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 03:47:10PM +0200, Christoph Hellwig wrote:
> Switching to a slightly cleaned up alloc_pages_exact is pretty easy,
> but it turns out that because we didn't filter valid gfp_t flags
> on the DMA allocator, a bunch of drivers were passing __GFP_COMP
> to it, which is rather bogus in too many ways to explain.  Arm has
> been filtering it for a while, but this series instead tries to fix
> the drivers and warn when __GFP_COMP is passed, which makes it much
> larger than just adding the functionality.

Dear driver maintainers,

can you look over the patches touching your drivers, please?  I'd
like to get as much as possible of the driver patches into this
merge window, so that it can you through your maintainer trees.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
