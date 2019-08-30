Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB2EA2FE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUeSl/Csylbxs/R1zP1yzHwh+snfYylXUYB2JkweddA=; b=Or0liy9U4PTvok
	Y3wpqE/3CG0CGfcQoHWGYPB5pEm9mrct4WkvBtO/oFC/WjZwmdBlPq+0mcRMVLmvZS6DbVVNWch2s
	SJHJpMRper5DBac/LslSoEbyMz9G0KfrQAm8qrig48bGJ/d+yOTJS/YTaI948RbyW4SOORo+3d1a8
	Eccv3IHNWKdFWugCY2ufw5xG73OvvG0OcF6r0lvJ11Yx580ePta+EAdTvNttRTccR3vBpWipKa9jv
	V6NxVOIQ23uw9pt+qxwEMHaA0AQDSC+RyNDtlnuDOaGH2b2s6AXI52cOrav9Xo0rlA+zXMIVaQzqr
	k7kUEftLPeGvThAtPW8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aPm-0002p7-R0; Fri, 30 Aug 2019 06:29:42 +0000
Received: from [93.83.86.253] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aPY-0002ok-0S; Fri, 30 Aug 2019 06:29:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: cleanup vmap usage in the dma-mapping layer
Date: Fri, 30 Aug 2019 08:29:20 +0200
Message-Id: <20190830062924.21714-1-hch@lst.de>
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
Cc: linux-xtensa@linux-xtensa.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mm@kvack.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

the common DMA remapping code uses the vmalloc/vmap code to create
page table entries for DMA mappings.  This series lifts the currently
arm specific VM_* flag for that into common code, and also exposes
it to userspace in procfs to better understand the mappings.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
