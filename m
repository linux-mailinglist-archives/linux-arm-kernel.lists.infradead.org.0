Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E0F1B4B43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb+PRw9A7bG0TDdhSEq1m8GP4kssHAJDLEY0F0KkDqI=; b=eVcn52qvdQ8CLw
	izNyEGyO/K5P+u4d5bBheDAHdQsH7Z9L0RRMI8WWvm4U/4ZjiqywRh60uGGcxvnO5gK1DvxBDITfX
	x0ffFTCUcpo8fgR7TGB9sXxJqNCLsDDKsAVF68MoMiywqwhhleyB1Z2CR/Vf0dPAXj/smVl/JszK4
	7yjGttL+gfMEqSCLhEjGToaABYoJsMF00n5sUJltZwM+LOeq8EG9cBYkdTq6XN2ItWPsKIS20VnXx
	uX1hxvXEHdud3NyYox9qeC4l7ayaougi9uPa8rVaKTS9STs+sgvtVBvX9FcNNVGaTpV00A5NHqUI0
	aLIN1Oz2u5H9xbzeXWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRInQ-0007E5-7N; Wed, 22 Apr 2020 17:04:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIn8-00077X-NY
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:04:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3F82568C4E; Wed, 22 Apr 2020 19:04:04 +0200 (CEST)
Date: Wed, 22 Apr 2020 19:04:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [RESEND PATCH v2 2/2] amba: Initialize dma_parms for amba devices
Message-ID: <20200422170403.GB28781@lst.de>
References: <20200422101013.31267-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422101013.31267-1-ulf.hansson@linaro.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_100406_938403_C324378D 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haibo Chen <haibo.chen@nxp.com>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, stable@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 12:10:13PM +0200, Ulf Hansson wrote:
> It's currently the amba driver's responsibility to initialize the pointer,
> dma_parms, for its corresponding struct device. The benefit with this
> approach allows us to avoid the initialization and to not waste memory for
> the struct device_dma_parameters, as this can be decided on a case by case
> basis.
> 
> However, it has turned out that this approach is not very practical. Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
> 
> For these reasons, let's do the initialization from the common amba bus at
> the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
