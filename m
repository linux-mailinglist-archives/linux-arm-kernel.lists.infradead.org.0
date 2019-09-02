Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC21DA5707
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+z2Di2ahJdHwamskvdQsFhCZfPXDWKMDdSfJcl4mEEw=; b=iE+8rKVU7datn1
	Jrmz6MF0mVwVXVHZZ472z+jfSh7kKUad2z+iFpe/1SxXp0quBaN4b8I8pALs/NzZXXeQ1MPLkUYdY
	QMW3Ej2lC0fhZZVqK5euvULX3KRIXDiJyyWwXTJ9LSkv2DW0GqUgNyiHhNfFniq4eMni98Cq3mopN
	zVRfGby8wSnF+Y4woI2iK824axhYZrqBm4YZy689iaS4WjD8tsNYFKYTLAYYMqXHJv3JcnwUtXESp
	6shCGfMyNxshmAanF1VJEAF6kGaI/xjxlp1QyrOQpSr2/yOMBn+pKjiNobNTz9+bvX7f7Br1avi+y
	SQ9olnsF6uMIiNeLVDaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m01-0001GX-9J; Mon, 02 Sep 2019 13:04:01 +0000
Received: from [2001:4bb8:18c:1755:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lzi-00018q-Rg; Mon, 02 Sep 2019 13:03:43 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, gross@suse.com,
 boris.ostrovsky@oracle.com
Subject: swiotlb-xen cleanups v3
Date: Mon,  2 Sep 2019 15:03:26 +0200
Message-Id: <20190902130339.23163-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xen maintainers and friends,

please take a look at this series that cleans up the parts of swiotlb-xen
that deal with non-coherent caches.

Boris and Juergen, can you take a look at patch 8, which touches x86
a as well?

Changes since v2:
 - further dma_cache_maint improvements
 - split the previous patch 1 into 3 patches

Changes since v1:
 - rewrite dma_cache_maint to be much simpler
 - improve various comments and commit logs
 - remove page-coherent.h entirely

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
