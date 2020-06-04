Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA1A1EE75B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 17:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/Q//f6i3Cr8uJ16hvC1XcNYhLUsO5TS95jhBiuLw3E=; b=DmksXmC4P1Mvff
	I4R5L6ntChXY8kWf7sREKAzGBWIdRVh30l+78vC9kXRXQkR4674L71YSLDixOFuLkCdKWLaiSd3mn
	CgfMh8UOwsOp3Dm5hJt8Gr2rQ3hKV4BkGqqQ5GbuCP1sUOlJ2Brt84+q/GWLV1Fnpty+OpkLr5XQq
	MNLl2UlEL7p+pgTXabiE1wASPXh9mTWSVL9qwomdJIDVwsbRTXdmSoOETHgJ6C0+1sinMo4jPolAG
	tLGFEUgTeFUPjjdA37HWihkxKtA2KNzO4yfNUjDytFkvbQnvLMXDT7DMOdqemauUNk/nhQ8uhx+rX
	x7KyFssBi/9EHXaH/pEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgrSG-0008Cs-Hg; Thu, 04 Jun 2020 15:06:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jgrS7-0008Be-4R; Thu, 04 Jun 2020 15:06:43 +0000
Date: Thu, 4 Jun 2020 08:06:43 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH] iommu/mediatek: Use totalram_pages to setup enable_4GB
Message-ID: <20200604150643.GA29193@infradead.org>
References: <20200604080120.2628-1-miles.chen@mediatek.com>
 <55820901-430b-14c4-9426-7a4991ca0eed@redhat.com>
 <1591264174.12661.17.camel@mtkswgap22>
 <f02c8c9d-ed75-6513-f8a9-a2fdbb11b750@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f02c8c9d-ed75-6513-f8a9-a2fdbb11b750@redhat.com>
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
Cc: wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 Yong Wu <yong.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 01:32:40PM +0200, David Hildenbrand wrote:
> Just a thought: If memory hotplug is applicable as well, you might
> either want to always assume data->enable_4GB, or handle memory hotplug
> events from the memory notifier, when new memory gets onlined (not sure
> how tricky that is).

We probably want a highest_pfn_possible() or similar API instead of
having drivers poking into random VM internals.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
