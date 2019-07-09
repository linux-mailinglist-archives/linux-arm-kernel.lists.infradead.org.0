Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADDB637BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q2n6rzx8Zi8SAZYa7qwbtlYMceR5nz54ujm/LA76Q6A=; b=Ci6GIZcvOsofyR
	WlQKJVLvBb43HS3RJahuOIcqGFW0yf/7EmliQPyWRcvLdUw3xocCgVU8/GwG0hOKSIY0Uo13w8cqS
	SzsFDYHf6qM/3pQv+KUooh9T2bBcratB41N9hAYJfyq4QJyylDKyYeRlzZIXRV8iVuw5L+SziuNO0
	Yj2YZmgY+WX23S0TibN5quSp4YvbZGTsCRsqZIvKUm1NokoKd+i5ImFrp96N90mVrVVCmq1a0FjXQ
	EDiB47HJVv+zQQDLqLLp6S/R6UcH7XYygPfKxD0k0FiORv7Pe7cSLKEWld8+RZA16Jki40Uzee778
	9F7tlycT3+91E9ihVp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqz0-0001Xc-UC; Tue, 09 Jul 2019 14:20:39 +0000
Received: from [209.244.105.251] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqya-0001BM-5n; Tue, 09 Jul 2019 14:20:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: add swiotlb support to arm32
Date: Tue,  9 Jul 2019 07:20:09 -0700
Message-Id: <20190709142011.24984-1-hch@lst.de>
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

This series adds swiotlb support to the 32-bit arm port to ensure
platforms with LPAE support can support DMA mapping for all devices
using 32-bit dma masks, just like we do on other ports that support
> 32-bit physical addressing and don't have an iommu.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
