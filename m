Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E71A4E7F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 09:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQzzpBassRGBIhgvyEaiFk3rzrJG0llTxCc87fEnfaI=; b=NFKECyPvQHSitS
	FNyq5QQJGmmkbvWbwtzjXVEZkiO9/fUkPSyihRfxyrpWy4bwf1NCO8ZltIKpPbkSYBbzf0sCM4lxi
	cGpVCDSyauXlMa2Icl2PzLGMKfbBXd0koF/yU22F7NTpAATkNtly5opLvvSNNLvBMRpjRAPXBLcx4
	UEAQTUo+YeURkY4L80Uqn6Cha4/Hd0UfAurhbnM5xpW1W36sLn8Qt4NEa8rFtM5mxO8ampXcFPpdQ
	2fM2wNjClyY9TmOyIVBAQvvybioH6EuYfRrb3zfDd2ecC9MsDDStwsdusphDzBOQmRLt3ejkXwMo8
	RpNzspN7JIdGb4ljEFmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNARu-0004P7-JT; Sat, 11 Apr 2020 07:21:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNARn-0004O6-M9
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 07:21:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4505168BFE; Sat, 11 Apr 2020 09:20:52 +0200 (CEST)
Date: Sat, 11 Apr 2020 09:20:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minchan Kim <minchan@kernel.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200411072052.GA31242@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de> <20200409160826.GC247701@google.com>
 <20200409165030.GG20713@hirez.programming.kicks-ass.net>
 <20200409170813.GD247701@google.com>
 <20200410023845.GA2354@jagdpanzerIV.localdomain>
 <20200410231136.GA101325@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410231136.GA101325@google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_002059_868115_95CFF02C 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Christoph Hellwig <hch@lst.de>,
 Peter Zijlstra <peterz@infradead.org>, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 iommu@lists.linux-foundation.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Minchan,

On Fri, Apr 10, 2020 at 04:11:36PM -0700, Minchan Kim wrote:
> It doesn't mean we couldn't use zsmalloc as module any longer. It means
> we couldn't use zsmalloc as module with pgtable mapping whcih was little
> bit faster on microbenchmark in some architecutre(However, I usually temped
> to remove it since it had several problems). However, we could still use
> zsmalloc as module as copy way instead of pgtable mapping. Thus, if someone
> really want to rollback the feature, they should provide reasonable reason
> why it doesn't work for them. "A little fast" wouldn't be enough to exports
> deep internal to the module.

do you have any data how much faster it is on arm (and does that include
arm64 as well)?  Besides the exports which were my prime concern,
zsmalloc with pgtable mappings also is the only user of map_kernel_range
outside of vmalloc.c, if it really is another code base for tiny
improvements we could mark map_kernel_range or in fact remove it entirely
and open code it in the remaining callers.

(unmap_kernel_range is a different story, it has a bunch of callers,
and most look odd)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
