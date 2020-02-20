Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2A1663C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MFKp/M5VwiM//MFHitj+sUTomzBkvafhg/z4cTkxUx4=; b=As3AYNa2Cf7GFu
	LtifSKJdiJuckr26gV/vTXtEH5Nv87hk/3jOygY4DdXNCV3pAvz2BwV6mU6vEBTDMuWfZPjcYRTyS
	AD3WKj0/9ID+9aQhlNmxm9z3/Qw92lfOIyyo+O0Qvr1UFyTJavDpFhR6h9hgCKc4DOBNL/kCvbjjV
	HsU09D5vLddaITym4idy2E1wIdWkiFj9C1h/OTfB45vm7fvBHAKJbjlpwAB+vfOCrYPCMT1RZ2rSu
	j7JLxojFBHhILBsqp5f4pWY406He+Bm5TU69Yl5s10Wr5TPKkBbSoV7xHompdpEHAHvYl1YjebKLT
	NqzpKGViVXH5UXPS2xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pDV-0000jD-KW; Thu, 20 Feb 2020 17:02:25 +0000
Received: from [38.126.112.138] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pCl-0000Dh-7w; Thu, 20 Feb 2020 17:01:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jonas Bonn <jonas@southpole.se>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>
Subject: provide in-place uncached remapping for dma-direct (resend)
Date: Thu, 20 Feb 2020 09:01:37 -0800
Message-Id: <20200220170139.387354-1-hch@lst.de>
X-Mailer: git-send-email 2.24.1
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

this series provides support for remapping places uncached in-place in
the generic dma-direct code, and moves openrisc over from its own
in-place remapping scheme.  The arm64 folks also had interest in such
a scheme to avoid problems with speculating into cache aliases.

Also all architectures that always use small page mappings for the
kernel and have non-coherent DMA should look into enabling this
scheme, as it is much more efficient than the vmap remapping.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
