Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8523F849E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrSWkv3sxDOYDx5gYUQDUuvtgY3h1JqbcJDPXq+FnSs=; b=rFbK0KQoFWbnt2
	hx5yHYFhslZSeLiFsJZwBGOyNuAjqoxrhkpvjDRO4WBYvkjOE34eeJZHQ/mk36VnPmyDzSoGiOyV/
	9iwtcf/Bwar2BGMJdwHhJD7kWDouWvzOfpS4UG34JzAeW5XToyjCXLUyvDK3KDvjgunw8f43suYir
	5cugGsyn1mVXYSeZEeDyVS9NYgulX/38icwwOTf2YjC/DsPTMOCNG/mmdy09ukSSWL2pVp3rHAoRz
	XGw7qQTBuW82xXJYWW/nXLf8cP/xVwEiozp4H3a3VB3ByAOoSD7Xf5u7rQ5y5J90gjgZP+uefqVVp
	oaLgMdAqYMBo5cpcw8+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJNd-0006tf-A9; Wed, 07 Aug 2019 10:41:17 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvJNQ-0006tJ-Sh; Wed, 07 Aug 2019 10:41:04 +0000
Date: Wed, 7 Aug 2019 03:41:04 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190807104104.GA18773@infradead.org>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel-build-reports@lists.linaro.org"
 <kernel-build-reports@lists.linaro.org>, "Zhou1, Tao" <Tao.Zhou1@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 08:53:25AM +0000, Koenig, Christian wrote:
> Am 07.08.19 um 09:08 schrieb Christoph Hellwig:
> > On Wed, Aug 07, 2019 at 10:56:40AM +0800, Tao Zhou wrote:
> >> readq/writeq are not supported on all architectures
> > NAK.  You must not use atomic_* on __iomem (MMIO) memory.
> 
> Well then what's the right thing to do here?
> 
> Essentially writeq/readq doesn't seems to be available on all 
> architectures either.

writeq/readq are provided whenever the CPU actually supports 64-bit
atomic loads and stores.  If it doesn't provide them atomic64* is
not going to be atomic vs the I/O device either.  And that is on top
of the fact that for various architectures you can't simply use
plain loads and stores on MMIO memory to start with, which is why
we have the special accessors and the __iomem annotation.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
