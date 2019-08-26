Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1D9D074
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XcQ1iAPl52y0ODy3wfOXefIqg1ZytLb7rbBvaaAiudg=; b=PjvVht7GkwdYiq
	/WA/CrQUY/8c/xGAkKt2i8UbvBv3hEB6G7q8auWM8l0QPmt3ImTw0i/8+0rdqOeea48DcCjli5S9Y
	onwM3psWXkm0glHuFLL/DYt716rgKkA0OTTfjlGqbjbumM4Sx2JDVdHoB3xY+OzGW+FFtM4+lxMRq
	ewFTVTri9fEGs2bsdL1MTzhCrdXITO+KBeqoOzkr7+CEQNCpmI/Y6gkvXUDHnoEQuAnZyxiAoq00B
	xOnQZKS+oPjcQ+r9az+RMT2kB/OjQaKFCzhQ/9ucAPiO7lJiVN2aCfPWobhWPoMiwFSQgDHSbngCy
	URLF9eS5jvM7bvlJCM3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2F19-00087W-R0; Mon, 26 Aug 2019 13:26:44 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2F0O-0007u5-36; Mon, 26 Aug 2019 13:25:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: cleanup the dma_pgprot handling v2
Date: Mon, 26 Aug 2019 15:25:47 +0200
Message-Id: <20190826132553.4116-1-hch@lst.de>
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
Cc: Shawn Anastasio <shawn@anastas.io>, Will Deacon <will@kernel.org>,
 linux-m68k@lists.linux-m68k.org, Guan Xuetao <gxt@pku.edu.cn>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

this series replaces the arch_dma_mmap_pgprot hooks with the
simpler pgprot_dmacoherent as used by the arm code already and
cleans up various bits around that area.

Changes since v1:
 - improve the new arm64 comment
 - keep the special DMA_ATTR_WRITE_COMBINE handling for mips and
   document it

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
