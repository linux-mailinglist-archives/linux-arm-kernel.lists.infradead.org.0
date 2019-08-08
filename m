Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355D085C23
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 09:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qX+sadBliMbt5o8dm0qBmvdrDpWBLm+qxPEERXLgJDk=; b=LfPERobqZuS5z7
	HQCXFO2grPCmavo6nQ8mSzT7h5DNHbpM8NHcHHXuudMEv8TdC9/FneJS3xLn2oK1OyORbj8DDAc+6
	nOUUb6RUoDUSjdaIrK/rsmqqoVzoHny2cS/v7LQGGKkOlk+hqbzpADjvKoQnnYjXIpk1Ujz7Ml6FD
	NPKi5Fn3ZG8HTsuGcgPrOsGtwH6pFcbSTrvVCCchEyOdJMPq6KGcdtLEcyRCCK3dvXYK7QggmqyCl
	2cdeI0eeeM8urkVeWRXmZJBzYauYm3xjpXdgjLBSw+GVuW+gEfCk1MFeP2CnsWVwx4xoJu51/d6bD
	fNcQlIU1ZHsfO+0pcEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdFT-0002zi-Rh; Thu, 08 Aug 2019 07:54:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdFE-0002zO-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:53:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EB68868B02; Thu,  8 Aug 2019 09:53:51 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:53:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808075351.GC30308@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807123807.GD54191@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005356_535349_E650E342 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 01:38:08PM +0100, Mark Rutland wrote:
> > I *believe* that there are not alias mappings (that I don't control
> > myself) for pages coming from
> > shmem_file_setup()/shmem_read_mapping_page()..  
> 
> AFAICT, that's regular anonymous memory, so there will be a cacheable
> alias in the linear/direct map.

Yes.  Although shmem is in no way special in that regard.  Even with the
normal dma_alloc_coherent implementation on arm and arm64 we keep the
cacheable alias in the direct mapping and just create a new non-cacheable
one.  The only exception are CMA allocations on 32-bit arm, which do
get remapped to uncachable in place.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
