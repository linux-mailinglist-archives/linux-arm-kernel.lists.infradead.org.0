Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520431D1663
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5a/BZqIqm8+0FLB8jxlkDuK4qkGpmWyMuwK+292sLQ=; b=XFiYvtEBLz2Me+
	QivykxKwBL1rSD0vlmi7ki8w/BhbMVe3KyK2jtPVViPjrY1eKlsg67E5IqnywYIQLij3IyLAt3tOg
	gclppV3QuuesCrOw5UfLCpnnrb0OcC7HNOM2s5aQmGeBm7w74KYG3F/rmwlgI6OkKQu2hwrDHyGzl
	6fXe7r9e6cejHD4vB6SGPcCI93CpHVmzhL4iKNacygw5bsuT9LDhntZmvK7iJ8+RhaWjJrikzYwpp
	QereZQfObnO4xp+FwpQo7aJjrDXRISq56Ui5LY6R8Po4HuVV2F1THuI8qE+Npv66eqZuUYPtgo9nJ
	NMVpsr7fuRzjkO0lyqeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrkt-0005Th-Lw; Wed, 13 May 2020 13:49:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrjd-0004TW-AT
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:48:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 643AB68BEB; Wed, 13 May 2020 15:47:41 +0200 (CEST)
Date: Wed, 13 May 2020 15:47:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v5 00/38] DRM: fix struct sg_table nents vs. orig_nents
 misuse
Message-ID: <20200513134741.GA12712@lst.de>
References: <CGME20200513132127eucas1p23f6be10bbd627e69e36d2451068b3204@eucas1p2.samsung.com>
 <20200513132114.6046-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513132114.6046-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_064745_541188_06CC47DE 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I've pushed out a branch with the first three patches here:

   git://git.infradead.org/users/hch/dma-mapping.git dma-sg_table-helper

Gitweb:

   http://git.infradead.org/users/hch/dma-mapping.git/shortlog/refs/heads/dma-sg_table-helper

and merged it into the dma-mapping for-next tree.  Unless someone shouts
the branch should be considered immutable in 24 hours.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
