Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE674FAB0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w1AO25Cm1lCiy8zLOHxI5FEYuguJZXpCnOBTFVwDhuQ=; b=VF1GzqEqFcMVjM
	gosN1ntQibdxuoWwDS6ZAuJFFLSbI7Wf3jo7dAKIYsCOe6TZnGwFSoxOq6VTG3z6rBHxOlbOrOIXy
	FHiuEI2lLIItKjqTO3XWPTG2jayeKHJGSfgfR1XWxr/tiySTSYn79X9Xyje9sveGW+IDbtRPByb3U
	KUbb2bxplHgGjpUPlBkxfWTOj79LfrvCbMxd0P1IJ5jsWl87dsdKtJE5GmQNYrmhGIBDeo9BGj2Xk
	uj8syNffJQ8nKIoQFRaT0cfJ90I3yVsV+ruzxMb+j/yBjfkh8O+aQGonr1bc91NGdtHaOR7e5TFyC
	13Kv2JV5+kG7X8T+SNNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnBr-0008Ro-AQ; Wed, 13 Nov 2019 07:35:47 +0000
Received: from [2001:4bb8:180:3806:c70:4a89:bc61:5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnBl-0008RU-Nm; Wed, 13 Nov 2019 07:35:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 iommu@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>
Subject: unify the dma_capable definition
Date: Wed, 13 Nov 2019 08:35:36 +0100
Message-Id: <20191113073539.9660-1-hch@lst.de>
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

there is no good reason to have different version of dma_capable.
This series removes the arch overrides and also adds a few cleanups
in the same area.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
