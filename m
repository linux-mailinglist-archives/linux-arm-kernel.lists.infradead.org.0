Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B5DC39E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAhckLCRi5lcXD9/NZyJ1xQMsVAnr3Ur+ZLEs+SR5AA=; b=cuDYAA3RuImTAF
	1EJ1XECgrpPLikP+XDNQAjJkLjvTr1AK45Tikb9uP+9Wh7QQPx9/pafqDHt+upd0V2GWON1/C6Tip
	0hnlFIKejf/sIEyRBHJAAXTI8L1RRgVjc3h3KzwKTkarRh6HqQUhIyFhY3NZtZuwBU4hyiILGgt97
	/pmQuJeHKqMd9lrg2EB+ioVoi3/5VhsXpc0mQHE3mk+RcWaixt+mlY4nqteg4spFFxwDH3PFVtWZT
	G/mVou95H7W/lu7RiOZAzFt2fucpQ6gHWUNp45k5ZBqe3AQbjk0pUdNNgnTRcwDm974PAMNauE0VL
	0lYlTR5ruO38YJzjXB1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKed-0008QK-Fg; Tue, 01 Oct 2019 16:05:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKeR-0008PQ-SA; Tue, 01 Oct 2019 16:05:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A35D91000;
 Tue,  1 Oct 2019 09:05:22 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BCC543F71A; Tue,  1 Oct 2019 09:05:20 -0700 (PDT)
Date: Tue, 1 Oct 2019 17:05:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 0/4] Raspberry Pi 4 DMA addressing support
Message-ID: <20191001160518.GQ41399@arrakis.emea.arm.com>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911182546.17094-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_090523_956763_CC0397D6 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 robh+dt@kernel.org, wahrenst@gmx.net, m.szyprowski@samsung.com,
 phill@raspberrypi.org, will@kernel.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 08:25:42PM +0200, Nicolas Saenz Julienne wrote:
> Nicolas Saenz Julienne (4):
>   arm64: mm: use arm64_dma_phys_limit instead of calling
>     max_zone_dma_phys()
>   arm64: rename variables used to calculate ZONE_DMA32's size
>   arm64: use both ZONE_DMA and ZONE_DMA32
>   mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum zone_type'

I queued these patches for 5.5 (though they'll appear in -next around
-rc3).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
