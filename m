Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C261D30DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 15:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rO3QU5A6Cg+qQR0v81G6mJ9TUkAte1ePmjdirO6FAFs=; b=HSbZRT2BqxrUK8
	PFdtA4LWwneo/FxI++eKaV8RTOVAxP1SyxtEiy3giu6x+S/L3h9ftjfJcarunDI1C7qLMbE4cT77N
	UJoompaCDt/fQ7GyKombCZtnIgAHUe5Tfspr1p6XdHUJBCc+C6i/PXGN/5Qu/8nsmaAx/3UBt4wSK
	3QbYTvh18Ypl19kpFKE5Uuw60UWQvwsaDY7rXx/bqVFB8NE+2dPD2MTQdNhLdooVer6rD1nU+WXAv
	YvzbcEcUXSU0uMzmsytPWrOJDAJ2VHFEqnkI3vygyBJ4R2dZN+5mTSlBUUUBmjD79PxASTWHe2ImF
	MHzcfkwGAoBSZpsPLuWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDjR-000197-Ih; Thu, 14 May 2020 13:17:01 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDjI-00017u-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 13:16:54 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id A636E379; Thu, 14 May 2020 15:16:48 +0200 (CEST)
Date: Thu, 14 May 2020 15:16:47 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v4 0/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200514131647.GK18353@8bytes.org>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
 <20200514123855.GI18353@8bytes.org>
 <20200514130900.k4gvr3zcajg3rouc@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514130900.k4gvr3zcajg3rouc@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_061653_170192_23E9AAAE 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 03:09:00PM +0200, Maxime Ripard wrote:
> On Thu, May 14, 2020 at 02:38:55PM +0200, Joerg Roedel wrote:
> > On Wed, May 13, 2020 at 04:07:19PM +0200, Maxime Ripard wrote:
> > > Maxime Ripard (5):
> > >   dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
> > >   dt-bindings: display: sun8i-mixer: Allow for an iommu property
> > >   iommu: Add Allwinner H6 IOMMU driver
> > >   arm64: dts: allwinner: h6: Add IOMMU
> > >   drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU
> > 
> > Applied all to the IOMMU tree, thanks. The code lives in the
> > arm/allwinner branch.
> 
> Did you also merge the DTS and DRM patches?
> 
> Ideally, they should be merged through other trees to avoid the conflicts as
> much as possible (arm-soc and drm-misc respectively).
> 
> If it's an option, could you drop all of them but "dt-bindings: iommu: Add
> Allwinner H6 IOMMU bindings" and "iommu: Add Allwinner H6 IOMMU driver"?

Okay, just to be on the safe side, I am going to drop:

	dt-bindings: display: sun8i-mixer: Allow for an iommu property
	arm64: dts: allwinner: h6: Add IOMMU
	drm/sun4i: mixer: Call of_dma_configure if there's an IOMMU

from the iommu-tree?

I took them because you are also maintaining the DRM driver, which
counted as an implicit ACK for me :)


	Joerg


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
