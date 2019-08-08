Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4817E85C4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:00:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLFxaLirCCYAR6uEKrwluZrhOAkqtap3raC5suNtOxU=; b=d1I+5DzCmXKDon
	DCWO/bZxkIAWynq2UU1Cvh7rYvfQzKhaWGStLMOLr/BcZBmTlAUrYUkk5ZulQy2IBMXZryoj95vRo
	odDDNrLMUnuufyYQViuDSvP5ejMinOklVFlu1n/V7eCA5AAjUar6+nwYAefSqEyTOVQRQ0dovkRha
	84TKtisrt3uGUq1mNSpo796JM7HO1k4rscZBSWXRGr47o5VSDHHiLOUFLnCmj5OCWCeyR+yG7ppmB
	8qYLHP3TnDXZx24FuSuDImuchXVnZm7oQoaU7nGRXa0iGeWz8+FGrq/S0zhdjGF/BenWPaif4t25i
	ANvBzLag3CeM1WPn3BDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdLW-0005HF-Aj; Thu, 08 Aug 2019 08:00:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdKx-0005G2-7H
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 07:59:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DE88068B02; Thu,  8 Aug 2019 09:59:47 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:59:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808075947.GE30308@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
 <20190807164958.GA44765@lakrids.cambridge.arm.com>
 <CAJs_Fx71T=kJEgt28TWqzw+jOahSbLQynCg83+szQW7op4xBkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx71T=kJEgt28TWqzw+jOahSbLQynCg83+szQW7op4xBkQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_005951_423568_EE2070DA 
X-CRM114-Status: GOOD (  14.02  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
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

On Wed, Aug 07, 2019 at 10:30:04AM -0700, Rob Clark wrote:
> So, we do end up using GFP_HIGHUSER, which appears to get passed thru
> when shmem gets to the point of actually allocating pages.. not sure
> if that just ends up being a hint, or if it guarantees that we don't
> get something in the linear map.
> 
> (Bear with me while I "page" this all back in.. last time I dug thru
> the shmem code was probably pre-armv8, or at least before I had any
> armv8 hw)

GFP_HIGHUSER basically just means that this is an allocation that could
dip into highmem, in which case it would not have a kernel mapping.
This can happen on arm + LPAE, but not on arm64.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
