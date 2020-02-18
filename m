Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0A7162ED8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XFbYEgdtzqtlPUZPo8GrxlvtSwyonvjZ6CWANF7QSDw=; b=kPdlKVfbEiv2NB
	E7uccb/3gqbNtCRL1ZDDb2a9HxIlWz738rrdkHtvh2MM+eudw3qIUNXhqBITPPYElRLuGFJPqRnnl
	J0ox33CHEqv3an8H0aTB8dd5+oSvz5BJzkLBzBWvYd6bgYszNJhYBuYn13cI5ygdZvdxQDrisiy54
	3du/0idcMVK0r9PxkZdtuwpQGWNDZJNQyku9830uNUTLFT/QWceHZn2ptWxOnHVSCyj3W/rf/+l94
	FCoijUJhYRPqXalo3BU3TBeee6Tjh+i6iwNCF1ffio5p46RkvBH9pIx3Fc1hHVKlU8XjDMV/JSpuB
	Sbnf5pbF6Uhd4hP3ty5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47oS-0002ZW-Ka; Tue, 18 Feb 2020 18:41:40 +0000
Received: from [199.255.44.128] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47oF-0002Ka-9J; Tue, 18 Feb 2020 18:41:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King <linux@armlinux.org.uk>
Subject: take the bus_dma_limit into account on arm
Date: Tue, 18 Feb 2020 10:41:00 -0800
Message-Id: <20200218184103.35932-1-hch@lst.de>
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
Cc: linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

this series fixes the arm dma coherent allocator to take the bus dma
mask into account, similar to what other architectures do.  Without
this devices that support 64-bit mask, but are limited by the
interconnect won't work properly.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
