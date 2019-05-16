Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A3207E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9ljLrMCVojNzm1HVAX2oYWqm1pDBXOXhIbJq4X4kEU=; b=PKZhabeUmoSsxn
	51qDvBKqHwLWDieZ4lvWNVq6im/eF9ptYbQx6rKZCWRfVRt9aG5G96H3bjFTJiXwRVHSmibVuuX1X
	xPaLGMOswwM5SIJJttRf2MObljp7wqdV/9BwNO2WEOV+R93+nrc6gtMZbeOcIPGmlhbmo1yOT3iAm
	Qyz47/0s3lDZU1xIOLMjvdUIsuRJaYHrIOSvNHfd8NvYY8RzGgP7+eA6i7qnzEkAk1jUnNraO+7LU
	olfnqUSf02PV1XoRmZp7j+H9unOBxB9ES86JUpskp4jsFATu/jdXcdGwIY4RFjBgYCNZCoAaVW+ic
	XrGk361w18uH0J6bgmzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGKU-00065T-DQ; Thu, 16 May 2019 13:21:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGKM-00064T-3V
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:21:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2C4F1715;
 Thu, 16 May 2019 06:21:39 -0700 (PDT)
Received: from [10.1.196.69] (e112269-lin.cambridge.arm.com [10.1.196.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 625313F703;
 Thu, 16 May 2019 06:21:37 -0700 (PDT)
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring
 <rob.e.herring@gmail.com>, =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?=
 <peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
 <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
 <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
 <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
 <CAJiuCcd=gCQJ4mxn3wNhHXveOhFLnYSEs+cnOMHcALPvd7bQZw@mail.gmail.com>
 <CAC=3edbn1yXih5vP0SwsDkqRB0j5q0c4FL0jhCq9DQ9Wt2-hAA@mail.gmail.com>
 <e8618889-9b22-7f9f-7451-3c08a80a0f9b@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <fa434575-5576-aff5-8705-1f93eefa209c@arm.com>
Date: Thu, 16 May 2019 14:21:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e8618889-9b22-7f9f-7451-3c08a80a0f9b@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062142_153358_FDD4EF26 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019 12:19, Robin Murphy wrote:
[...]
> I was expecting to see a similar behaviour to my T620 (which I now
> assume was down to 64-bit job descriptors sort-of-but-not-quite working)
> but this does look a bit more fundamental - the fact that it's a level 1
> fault with VA == head == tail suggests to me that the MMU can't see the
> page tables at all to translate anything. I really hope that the H6 GPU
> integration doesn't suffer from the same DMA offset as the Allwinner
> display pipeline stuff, because that would be a real pain to support in
> io-pgtable.

Assuming you mean the case where the physical address (as seen by the
CPU) is different from the dma address (as seen by the GPU), then I
highly doubt it because mali_kbase doesn't support it:

[from kbase_mem_pool_alloc_page() in mali_kbase_mem_pool.c]:

	dma_addr = dma_map_page(dev, p, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
	if (dma_mapping_error(dev, dma_addr)) {
		__free_page(p);
		return NULL;
	}

	WARN_ON(dma_addr != page_to_phys(p));


That being said it's quite possible there could be something in the bus
which needs configuring to make this work - in which case your best bet
is to look at the vendor kernel and see if anything extra is poked when
the Mali driver is loaded.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
