Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F691B4B42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QRf8rLrd9ZjMrEF5ruUQmfWfukAcbkrF+FAMtAi3tA=; b=pGim6eWTY0Dr7W
	nOfduxotwznmHuYoqCeRxgbdcOa2mBE3sLqo7Ged/t9VczDuncA+SXpT6EOFyiDzJknfNm8JXF89q
	nrvhZV5faApU4DHuo/FxBbtW3P+2CTIESqiouNoOyWgJrsNknYvikX2Tjv5FyLpfYYGFY9300S2py
	bPrJivQli1O0bt3ag0qCqWGizmdWScZs31yJ0F7x0j9JcFlbXaC1ujtOvsqrJst/yQrw3cizA++4f
	nmZ4FMKZvZiU3untKvkrZOfMCfu4Zi3stlh8/6A0UH1AGI6ymOvj4ZfS0tKGGzo16yW28C2EZyya6
	FD9JEoFie/TYk7sEsOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRInB-00074E-BR; Wed, 22 Apr 2020 17:04:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIn1-00071c-Og
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:04:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id F271B68C4E; Wed, 22 Apr 2020 19:03:49 +0200 (CEST)
Date: Wed, 22 Apr 2020 19:03:49 +0200
From: Christoph Hellwig <hch@lst.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [RESEND PATCH v2 1/2] driver core: platform: Initialize
 dma_parms for platform devices
Message-ID: <20200422170349.GA28781@lst.de>
References: <20200422100954.31211-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422100954.31211-1-ulf.hansson@linaro.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_100359_950529_255C4D75 
X-CRM114-Status: GOOD (  13.01  )
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

On Wed, Apr 22, 2020 at 12:09:54PM +0200, Ulf Hansson wrote:
> It's currently the platform driver's responsibility to initialize the
> pointer, dma_parms, for its corresponding struct device. The benefit with
> this approach allows us to avoid the initialization and to not waste memory
> for the struct device_dma_parameters, as this can be decided on a case by
> case basis.
> 
> However, it has turned out that this approach is not very practical.  Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
> 
> For these reasons, let's do the initialization from the common platform bus
> at the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
> 
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: <stable@vger.kernel.org>
> Tested-by: Haibo Chen <haibo.chen@nxp.com>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
