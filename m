Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3985C527E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i8e2gnyuwS8TOyXhV3pTgqgFKjVXkqi47LSvnO/V7J8=; b=s8kUSxX+vhtQzQ
	U7T+sgAzE+NgjRVhefrhBcbt6cN0D9xA3QN69UAtDzMflGEj0B5qXD3MSYiteKqGTTxz9GXCyhYud
	nI+u5F0bjPo41nLU5APjghIOks+aslLbDRXjC+WB+DaVi/XcWG/lCwJXnxvZNGm9vav6vXSXWgp1t
	7/qhvRms5Sbwdv9P0MHf6f10wWMn4mQxftYCDxp0qC4QdFDJLtq7+sS+ufKinmO+fhy7Rk0BqaGWo
	Sg/x4EKytIPAotMDh0vwl6wDaHqaD3m89OqoB0AeGyDBoUuOUg9kqpgAUOxI2FuWyvwXLiGXoyG9d
	XLo+2FgPDZGEhC12HsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhf4-0006Mr-0Z; Tue, 25 Jun 2019 09:22:46 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhd7-0005iX-UF; Tue, 25 Jun 2019 09:20:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: get rid of dma_max_pfn
Date: Tue, 25 Jun 2019 11:20:40 +0200
Message-Id: <20190625092042.19320-1-hch@lst.de>
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
Cc: iommu@lists.linux-foundation.org, linux-mmc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

I though I got rid of all non-highmem, non-ISA block layer bounce
buffering a while ago, but I missed the MMC case.  While I still plan to
also kill off the highmem bouncing there I won't get to it this merge
window, so for now I'd like to make some progress and move MMC to the
DMA layer (swiotlb or arm dmabounce) bouncing for addressing limitations
and kill off the dma_max_pfn helper.

I'm fine with merging this through the mmc tree if it suits everyone.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
