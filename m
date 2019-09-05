Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9076AA9A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KgboDI4o+wxF1FfDqgrKICoe9XnWjPcpOneGZOQmS8=; b=CuU/7DLjMtVFdk
	JatxlHGiZnxrfZmUxL0tUYinS/yPenZf1t2OsAZInqpiqw4XmKySxyvOwef0rs83YUsDP5qSVh278
	zMQ/HFaPd1u9G5XU+5cQrkL7WAGZDl9phxMKuNBZxrYo3Mk4IMS8QDr+nIeknP8y10rS4Ze33FuHe
	ML3i7dfUj6cocJfvsV2zniTwW1w9cAYIoFtO1NxbIRarcRvdRx4NgLj/jSD4bCGSJFtfznHPHDQ/1
	d88aj4VhrtSDGU254UVoscob8/5hdIiunKSkpEZfZrMfoRb0gCUjJWFFQaWVMYeMF34Jqe7H2zq7B
	WkaulJ0My7vRSFGT3ctw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vCX-00064T-5i; Thu, 05 Sep 2019 17:05:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vCK-00063i-Sa; Thu, 05 Sep 2019 17:05:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DABAF28;
 Thu,  5 Sep 2019 10:05:27 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D80663F718; Thu,  5 Sep 2019 10:05:25 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:05:23 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 1/4] arm64: mm: use arm64_dma_phys_limit instead of
 calling max_zone_dma_phys()
Message-ID: <20190905170523.GD31268@arrakis.emea.arm.com>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
 <20190902141043.27210-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902141043.27210-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_100528_969947_217D23C3 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-riscv@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 hch@lst.de, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 04:10:39PM +0200, Nicolas Saenz Julienne wrote:
> By the time we call zones_sizes_init() arm64_dma_phys_limit already
> contains the result of max_zone_dma_phys(). We use the variable instead
> of calling the function directly to save some precious cpu time.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
