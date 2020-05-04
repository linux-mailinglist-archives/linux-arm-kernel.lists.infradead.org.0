Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74601C39E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JseDZT11iZqFSvyQtykInuL9TLsHYhhw7XCnXYAHPnc=; b=ckAJl7iIKWx0iT
	n/1XrEkjUMbBzI0TuqSneNAnAFOua7kkJYuOvLtgVUonAnCNCBgM8Va4Qk+huTgVaxvOON7xym0O3
	ZZouBGPhWy73EeiWcKKNiiLaxdYeAb/CUaviKfi7sXBbsP5Rm9/zz3Z6wsQhd6MBx8sb2PTfTbbG5
	YoylQAg8c+wxOeAH3h5EvkhmvNscqd2nay4KRtyQisEirjGI5L1DP3XPrT3Kbcncwxsf5z0gaNrcM
	v/DtlMqe8ngu1uFhgT8AGuk6MFfkP8oOBfIhIuEURJdkgMlgWIuxO6n1bXWEcfCeVioAhs7CUoxqA
	KKt8cBIAJ0i+KIr0/lHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVaaC-0001m9-C6; Mon, 04 May 2020 12:52:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVaa4-0001kN-B1
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:52:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 63AE168BFE; Mon,  4 May 2020 14:52:12 +0200 (CEST)
Date: Mon, 4 May 2020 14:52:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v2 00/21] DRM: fix struct sg_table nents vs. orig_nents
 misuse
Message-ID: <20200504125212.GA17241@lst.de>
References: <CGME20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855@eucas1p2.samsung.com>
 <20200504125017.5494-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504125017.5494-1-m.szyprowski@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_055220_526376_CE278858 
X-CRM114-Status: UNSURE (   8.93  )
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

On Mon, May 04, 2020 at 02:50:17PM +0200, Marek Szyprowski wrote:
> v2:
> - dropped most of the changes to drm/i915
> - added fixes for rcar-du, xen, media and ion
> - fixed a few issues pointed by kbuild test robot
> - added wide cc: list for each patch

Didn't you plan to add dma_map_sgbuf and co helper?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
