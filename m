Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38691C53FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVsaRBp1oG3N5RCMcl9bKV3Oa6A4WDmnrsB2U1c5viQ=; b=l3seJP+rsSTGP1
	UkjwD2JyzELulyo6pEN9PvspDq8ZALbGlWjA+RxT3HHgPlf09AUffKfkN82wq/3QwYbKG8JFpgLIC
	Z0jc2Bba4WXvyMIANyhDBgQ8MTMpBNqCxY0EJqkqzu0ZH74AdZoeEpxkVms2ygFMoG6BkY6X5Ipo1
	V2e9tr/jbVI4wABgifxYm+ta/Sm9tXvjIWCXWK9xeeB5/0l5A/Y024zZ3929OR63og1VYZ8GhA9cR
	6NSzqGXTRihiK1LyCdB83bBcWSRXp8HtFQCPPiZ1ZsxPEZDq/zVdjGG4Zk74PmzNfQjpvTIDuzx3/
	jruRQlsDQhr1U16aHuWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvSa-0001eb-9r; Tue, 05 May 2020 11:10:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvST-0001ct-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:09:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A89768C4E; Tue,  5 May 2020 13:09:50 +0200 (CEST)
Date: Tue, 5 May 2020 13:09:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v3 02/25] drm: core: fix common struct sg_table related
 issues
Message-ID: <20200505110950.GA19067@lst.de>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084625eucas1p1a3c25fd171f360e0aab2f76700699454@eucas1p1.samsung.com>
 <20200505084614.30424-2-m.szyprowski@samsung.com>
 <20200505101508.GA14860@lst.de>
 <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dd1cb55-accb-0dc6-4ca5-90c57cd19527@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_040953_458842_AA207CBE 
X-CRM114-Status: GOOD (  12.24  )
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:51:58PM +0200, Marek Szyprowski wrote:
> Hi Christoph,
> 
> On 05.05.2020 12:15, Christoph Hellwig wrote:
> >> -		for_each_sg_page(st->sgl, &sg_iter, st->nents, 0)
> >> +		for_each_sg_page(st->sgl, &sg_iter, st->orig_nents, 0)
> > Would it make sense to also add a for_each_sgtable_page helper that
> > hides the use of orig_nents?  To be used like:
> >
> > 		for_each_sgtable_page(st, &sg_iter, 0) {
> 
> We would need two helpers:
> 
> for_each_sgtable_cpu_page() and for_each_sgtable_dma_page().
> 
> I considered them, but then I found that there are already 
> for_each_sg_page(), for_each_sg_dma_page() and various special iterators 
> like sg_page_iter, sg_dma_page_iter and sg_mapping_iter. Too bad that 
> they are almost not used, at least in the DRM subsystem. I wonder if it 
> make sense to apply them or simply provide the two above mentioned 
> wrappers?

None of the helpers helps with passing the right parameters from the
sg_table.  So in doube we'd need wrappers for all of the above, or
none..

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
