Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424C384C6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BhXS80ETqxqvOcBTYBupmUDLBNSsCeIH67NiOuPL08=; b=Y6++FDLkbnpm+5
	l5K9kkUNoy6cnCt1E8Byhb3cqnkG24id8LfNuRfm16VGCZZqkHzrzBYFx85h9vV4SP6eYN/cG+lPS
	daQeP8aUP+ME1btTsr89Xh6ByawqUgTNf1LaIj46gzDSIjCQ9haIsmuy7qgQilf5AIeNmzG4mjj47
	6I0xwI2TZYW5yldrGYpsXtuaHeMBNEK+FeRqoURvvsScvs5Z/y0hVYWtKRMtMyyBi/GqrlBXxBCfY
	3AHrzozXkQopC23TWQfaI2jKCPUDRd/qhxZ0C7Uf0lolrAb/Tzw+5s6khhFLJrqBoy6ghFe75tUKs
	tJ/pf5GVZS4G8nc2JH0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLfm-0006JG-31; Wed, 07 Aug 2019 13:08:10 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hvLfb-0006Iu-DD; Wed, 07 Aug 2019 13:07:59 +0000
Date: Wed, 7 Aug 2019 06:07:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Koenig, Christian" <Christian.Koenig@amd.com>
Subject: Re: [PATCH] drm/amdgpu: replace readq/writeq with atomic64 operations
Message-ID: <20190807130759.GA24028@infradead.org>
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190807070834.GA24792@infradead.org>
 <daff9fc7-ead8-40e0-9a16-cb3b90b01722@amd.com>
 <20190807104104.GA18773@infradead.org>
 <18cd9fa5-2d87-2f41-b5fa-927b9790287d@amd.com>
 <20190807125928.GC4048@sirena.co.uk>
 <461cd4e8-31b8-def3-ca92-5b33db8d5621@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <461cd4e8-31b8-def3-ca92-5b33db8d5621@amd.com>
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
 Christoph Hellwig <hch@infradead.org>, Mark Brown <broonie@kernel.org>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "Li,
 Dennis" <Dennis.Li@amd.com>, "Zhang, Hawking" <Hawking.Zhang@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:00:48PM +0000, Koenig, Christian wrote:
> Am 07.08.19 um 14:59 schrieb Mark Brown:
> > On Wed, Aug 07, 2019 at 10:55:01AM +0000, Koenig, Christian wrote:
> >> Am 07.08.19 um 12:41 schrieb Christoph Hellwig:
> >>> writeq/readq are provided whenever the CPU actually supports 64-bit
> >>> atomic loads and stores.
> >> Is there a config option which we can make the driver depend on?
> > 64BIT should do the trick.
> 
> That doesn't work because 32bit x86 does support writeq/readq as far as 
> I know.

I also had a vague memory that x86-32 did support it with SSE, but
I can't actually find any traces of that support.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
