Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75606287F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 20:44:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Av8qn9Qr6QIZ44eDDFSm6JEp75V2K7Tf4bSzbueMvc=; b=JZYA/ZewOV4xQX
	dgd880XEWLJNn6YMmcyfCARKDWThvTwV6UO53rlR1ZAi2VPShkYravLMtYSnsfPhYurs08T7TzK5l
	3VA7IIOEi+KdwVopJa2vNFOvKleoZNUTFWGMGr//Wm5bMtGGasrPXRewxOoI5Rso+JZhPNxsXAazV
	r65VVl+jUo1WCC9GTXTmzkMJgGU2vEJgCJqsBwLkoMYBRKHRwcqmMGK+YIBYoKJUTIyWCFvn8u3mu
	GjiYBLvswkLlLpWU0xjUUYM6z0i/APmLzv9aEkN+MQEr/ULkNQ3Fd6i/oAN2YPLD1p8y/jC0OYwOE
	wCxYXCVmlEqnVyi3amdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkYcV-0005qo-Cm; Mon, 08 Jul 2019 18:44:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkYcI-0005p1-3d
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 18:43:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8C7F2227A81; Mon,  8 Jul 2019 20:43:51 +0200 (CEST)
Date: Mon, 8 Jul 2019 20:43:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
Subject: Re: use exact allocation for dma coherent memory
Message-ID: <20190708184351.GA12877@lst.de>
References: <20190614134726.3827-1-hch@lst.de> <20190701084833.GA22927@lst.de>
 <74eb9d99-6aa6-d1ad-e66d-6cc9c496b2f3@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74eb9d99-6aa6-d1ad-e66d-6cc9c496b2f3@broadcom.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_114358_307032_7E9C0226 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Christoph Hellwig <hch@lst.de>, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux-rdma@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-media@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <sean@poorly.run>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, H Hartley Sweeten <hsweeten@visionengravers.com>,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:48:44AM +0200, Arend Van Spriel wrote:
> You made me look ;-) Actually not touching my drivers so I'm off the hook. 
> However, I was wondering if drivers could know so I decided to look into 
> the DMA-API.txt documentation which currently states:
>
> """
> The flag parameter (dma_alloc_coherent() only) allows the caller to
> specify the ``GFP_`` flags (see kmalloc()) for the allocation (the
> implementation may choose to ignore flags that affect the location of
> the returned memory, like GFP_DMA).
> """
>
> I do expect you are going to change that description as well now that you 
> are going to issue a warning on __GFP_COMP. Maybe include that in patch 
> 15/16 where you introduce that warning.

Yes, that description needs an updated, even without this series.
I'll make sure it is more clear.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
