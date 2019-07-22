Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79C4701CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4c2Vp3b8YRax/BDE2usjaGH8Zvk3RP0XTtuAmdDxTD0=; b=unGfmioK9/bubk
	sW+aPbJJmaumUErcjb1Lf5Kxmi5z/4qbLyGtF2Y3y8mlkuVt5Bv2RnmV/P4niE7zC+IV5a23v19IK
	Vj1prVv9xA2PNY4C/kvSh3wwyC+bPdNYBehjB0HPyFabdZz9L3eU7zVmDm3Mkw6iO29Kh4DiEmhhg
	CmGE2Kzw6/8/vCTYguEQA1K5o32OfZ7wNj0BJ6lPuZdRFKXOSX3YucbsDjcbV2XwbkjKmE5p55gj0
	+iQX30TD0N0+Mgilbqcz8MvOSzPny3xmZDGPjcq7xri8HEqa1ewaScEWFMVBFVi3xvv+TUez9ktFt
	4bk2pCStw+yt5Aegb09A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYoW-0002SM-Bo; Mon, 22 Jul 2019 13:57:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYoE-0002Rg-Kx
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:57:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62B0C217F9;
 Mon, 22 Jul 2019 13:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563803818;
 bh=bQfkIbf6XvrrfgVB6dqgFGaZ+h0Cn+0vIdllQGKDcAI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F8tS7392/+6aK0cYmP+vQ9RmGPXef4dDqMkLjhO6alko1nydst/YuXyfD6a/gygLH
 i850A3sQfeK3UW+PqYy2iv50KnWxO5O1G2Hm9nVU5ixBjqyn4iOZ0Mvu6xhwOTWBoL
 aTNPSsJodTo2Otm/KNbTLdjSX6p7UQcWjNJoQyNY=
Date: Mon, 22 Jul 2019 14:56:53 +0100
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH] MAINTAINERS: Update my email address
Message-ID: <20190722135652.se2ba5ithml37dtz@willie-the-truck>
References: <20190722134438.31003-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722134438.31003-1-jean-philippe@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_065658_700390_38DFA471 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: virtio-dev@lists.oasis-open.org, lorenzo.pieralisi@arm.com, mst@redhat.com,
 maz@kernel.org, joro@8bytes.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, linux-pci@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 02:44:40PM +0100, Jean-Philippe Brucker wrote:
> Update MAINTAINERS and .mailmap with my @linaro.org address, since I
> don't have access to my @arm.com address anymore.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  .mailmap    | 1 +
>  MAINTAINERS | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/.mailmap b/.mailmap
> index 0fef932de3db..8ce554b9c9f1 100644
> --- a/.mailmap
> +++ b/.mailmap
> @@ -98,6 +98,7 @@ Jason Gunthorpe <jgg@ziepe.ca> <jgunthorpe@obsidianresearch.com>
>  Javi Merino <javi.merino@kernel.org> <javi.merino@arm.com>
>  <javier@osg.samsung.com> <javier.martinez@collabora.co.uk>
>  Jean Tourrilhes <jt@hpl.hp.com>
> +<jean-philippe@linaro.org> <jean-philippe.brucker@arm.com>
>  Jeff Garzik <jgarzik@pretzel.yyz.us>
>  Jeff Layton <jlayton@kernel.org> <jlayton@redhat.com>
>  Jeff Layton <jlayton@kernel.org> <jlayton@poochiereds.net>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 783569e3c4b4..bded78c84701 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17123,7 +17123,7 @@ F:	drivers/virtio/virtio_input.c
>  F:	include/uapi/linux/virtio_input.h
>  
>  VIRTIO IOMMU DRIVER
> -M:	Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> +M:	Jean-Philippe Brucker <jean-philippe@linaro.org>
>  L:	virtualization@lists.linux-foundation.org
>  S:	Maintained
>  F:	drivers/iommu/virtio-iommu.c

Thanks (and your new address is easier to remember ;). I can take this one
via arm64, since I already have a bunch of MAINTAINERS updates queued for
-rc2.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
