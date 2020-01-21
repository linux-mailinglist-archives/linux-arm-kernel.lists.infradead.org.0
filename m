Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131E7143C98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 13:14:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31vQNuvxIMMK3BxzN9ds6CELJBmmmnR8OOAkTBlNyaI=; b=N/Ge75iWFoyRIc
	rGLVRREOJ4vvNoblHq9Ob5xi42yg0dVGVpaqUSNBsO1K09p7MezaqhgkVupMvtKU+LfHTKDuvZex7
	j/h0b6urJYb9cavC0mfW17KsfLTL3u0n1Ccy1DObIfRkOn5CkYkiDDC2HMmSKzFhk3Eml4+rWW7de
	0TJPx6z2vidryoWEoAzGRDR8rO/BFh7Vmys4QIOmWY7v3m4mShXf30a6XAnrKOyEmi9N1tLO9U3/K
	FNf0xmZ6Us8bfOZaAgqr89efqAek+jMnW2g207jKoaBHl/CbSNCQjSrzZNZis1xDnEMyz0VIN2x9d
	ysJEjsi0FPJwQxN4R/Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itsQE-0001os-OK; Tue, 21 Jan 2020 12:14:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itsQ3-0001o0-Tz
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 12:14:13 +0000
Received: from localhost (unknown [171.76.119.14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B222A2073A;
 Tue, 21 Jan 2020 12:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579608847;
 bh=Qq3v/FQs81Z4u3h/BT7zP7lIhmAukfuHUqvLomvAe2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M3SfLdxAoH9lXTgviaGdxEEl8nstuFNd2zRY3BHNhdqp7YUCg7QXEXKixsKmRxHX3
 9F0Fa3pogu6a6IKs20YUE+vsokLsny+vHu5lpHCodkcVtQ6ZtO+ZwVolZpTq89HxKb
 C+IU7xZmZtRhEW3HAO68Aly8DcgIt2c0aG6kJffQ=
Date: Tue, 21 Jan 2020 17:44:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests
 with dedicated DMA
Message-ID: <20200121121402.GP2841@vkoul-mobl>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-2-stefan@olimex.com>
 <20200115123137.GJ2818@vkoul-mobl>
 <20200115170731.vt6twfhvuwjrbbup@gilmour.lan>
 <20200121083514.GE2841@vkoul-mobl>
 <54b1a38f-3903-49b7-d20b-f97824a528ba@olimex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54b1a38f-3903-49b7-d20b-f97824a528ba@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_041407_990235_1EB55E2B 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-01-20, 13:37, Stefan Mavrodiev wrote:
> 
> On 1/21/20 10:35 AM, Vinod Koul wrote:
> > On 15-01-20, 18:07, Maxime Ripard wrote:
> > > On Wed, Jan 15, 2020 at 06:01:37PM +0530, Vinod Koul wrote:
> > > > On 10-01-20, 16:11, Stefan Mavrodiev wrote:
> > > > > Currently the cyclic transfers can be used only with normal DMAs. They
> > > > > can be used by pcm_dmaengine module, which is required for implementing
> > > > > sound with sun4i-hdmi encoder. This is so because the controller can
> > > > > accept audio only from a dedicated DMA.
> > > > > 
> > > > > This patch enables them, following the existing style for the
> > > > > scatter/gather type transfers.
> > > > I presume you want this to go with drm tree (if not let me know) so:
> > > > 
> > > > Acked-by: Vinod Koul <vkoul@kernel.org>
> > > There's no need for it to go through DRM, it can go through your tree :)
> > okay in that case I have applied now :), thanks
> > 
> Hi,
> 
> Should I keep this patch in the future series or drop it?

Drop it :) It would be in linux-next tomorrow!

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
