Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999631B593B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgE+JZzoZkyavgYNi5KSEL2UO8Cbivap1BsvMGyf0Io=; b=iYc2FdqbxOPH86
	IqHTwjKflQjnJfvBPO4YSTeo+ni+a1/ACmIGuX2FriHPr5MM1Y9HCEVpaU9Bx78+cDb1xBaAe8+km
	6z6709V34Y0wPXEXWMkq3TVJDZcquXrej6O59B7cQT07qfAN9yfGFhEYt8nFBqlxaoo11RoY2yQWW
	wOHnCcfVl9WgO+xjxcvjzl6jAwIcDp5QQbveoAXPSZ95rtmDa74xaRO0+7EGAZEtVXX+X/wYidfVy
	D/bAL9HYOm1/C8cdO59s1Vh4Dn7Q0QlXLIFfS2ZCNnRS+gn/0GEDWgD6I1/ZLwcNsYY73KWis0XPg
	VUQCidIhOXJN8WBkampA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZ9i-0006fY-Ic; Thu, 23 Apr 2020 10:32:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZ9V-0006eL-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:32:18 +0000
IronPort-SDR: b0CaNB+p9IwjPU+VVs/fqzninoqVB0RHrEjq/WQICx9tCFYIQ2ITaX5eM+nwYUS9pVDMEt8ouD
 yA4/VN2TneMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:32:15 -0700
IronPort-SDR: Tbx4AP8Zju7uVt+bsFFBuorEKEDp+DufEyq0utUZQmn5wkfXhsC5SmipnzOBUDHfLSF+NGOyYH
 O/V5r9IH1k5g==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="247718369"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:32:10 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 158F7204C6; Thu, 23 Apr 2020 13:32:08 +0300 (EEST)
Date: Thu, 23 Apr 2020 13:32:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/29] staging: media: ipu3: use vmap instead of
 reimplementing it
Message-ID: <20200423103207.GO5381@paasikivi.fi.intel.com>
References: <20200414131348.444715-1-hch@lst.de>
 <20200414131348.444715-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414131348.444715-5-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_033217_444743_F6DE489C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 03:13:23PM +0200, Christoph Hellwig wrote:
> Just use vmap instead of messing with vmalloc internals.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Thanks!

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
