Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B73CD8BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 20:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwoQMqgkRNyP6q4duE6QtUMdQ3ktzUKP5f6a/JgMtAo=; b=eOIQ0ctUVuZF8X
	fwLHsj2+KQA/fCKjen2g8o68Pm7F/LJ5fbGG2cp8LcKrt4cnYSrVocQRa5aKkX6LkYGsWOzg2Conc
	+z1TTSg5uYWZOF9mb8dPOYb/Z9ZUcsmqEq5KEF/WD+/jVmMke5SHEhnUK+y2tAYsnUGS7RA6hzU+7
	22YIMvmKesz0F/IIdvPNBweRya6TLu6l+yv8xxr3bgVaG/L6fTzvZqvi2VJwaZZ/VJFUhhSpRBTYl
	Z4/dlBN1evaFzcmV6+IRNw9+z7DELZ3DSDA919Mvo9KapIhNt4tUOG2T5/mnj1oDYn0Ae4MMoVATb
	kFL7gT4+ewjnbfgZDtKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHBXc-0005QC-LC; Sun, 06 Oct 2019 18:46:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHBXQ-0005Pc-Vh
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 18:45:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 11C41227A8B; Sun,  6 Oct 2019 20:45:42 +0200 (CEST)
Date: Sun, 6 Oct 2019 20:45:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 3/4] dma-mapping: introduce a dma_common_find_pages helper
Message-ID: <20191006184541.GA4110@lst.de>
References: <20190830062924.21714-1-hch@lst.de>
 <20190830062924.21714-4-hch@lst.de>
 <CAMuHMdXxWp2=9n2LQA9KVH_ArOUnY78ZoiQ7ZsDMbTOGsEz4hw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXxWp2=9n2LQA9KVH_ArOUnY78ZoiQ7ZsDMbTOGsEz4hw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_114549_377942_B0EE5401 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-xtensa@linux-xtensa.org, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux MM <linux-mm@kvack.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

please try Linus' current tree.  It has a fix from Andrey Smirnov
for what looks the same problem that you reported.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
