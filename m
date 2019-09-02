Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6315AA5467
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 12:51:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wl8B/iAcKXCzYTnGNnyu6pa/QsxUWoQ0fBGG9fUNgx8=; b=ZK9O8vNLfnIM0j
	G9KuyXvRMB/FfaGNwFYJM6k/g2TVpSIGhREXtuI1m57rAnBSRA9h4Pom36E4r4GMvdtD5GzIrqURr
	z9tjr5HArkVm3d34+dUSB8QdlIxl3atXWRbf9TCQmFakdRddSE+5kedodjXko/K4e2iUYYUiP0qIM
	aDdeVdSYNbVT5YDwkzJdlXTICA27RuXi27nbSq3qJ2MyldJbBjCYhW6WeRrlt0sekjh6RW2HhAa3e
	yjzbijjB6TYIiwxb9kXvCN5sMF18PybDxCP97FWyka99lzMp1W1cfE5o2H8f/ohGDRKLSr2pVC68+
	7B1LVDZkTrghowAwOa7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4jvV-00018B-2d; Mon, 02 Sep 2019 10:51:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4jvH-000179-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 10:51:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E7AF28;
 Mon,  2 Sep 2019 03:50:59 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AA023F246;
 Mon,  2 Sep 2019 03:50:58 -0700 (PDT)
Date: Mon, 2 Sep 2019 11:50:56 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190902105056.GF9720@e119886-lin.cambridge.arm.com>
References: <20190901142303.27815-1-repk@triplefau.lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901142303.27815-1-repk@triplefau.lt>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_035059_964338_6A737CD4 
X-CRM114-Status: GOOD (  18.49  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 01, 2019 at 04:23:03PM +0200, Remi Pommarel wrote:
> advk_pcie_wait_pio() can be called while holding a spinlock (from
> pci_bus_read_config_dword()), then depends on jiffies in order to
> timeout while polling on PIO state registers. In the case the PIO
> transaction failed, the timeout will never happen and will also cause
> the cpu to stall.
> 
> This decrements a variable and wait instead of using jiffies.
> 
> Signed-off-by: Remi Pommarel <repk@triplefau.lt>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  drivers/pci/controller/pci-aardvark.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index fc0fe4d4de49..1fa6d04ad7aa 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -175,7 +175,8 @@
>  	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))	| \
>  	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
>  
> -#define PIO_TIMEOUT_MS			1
> +#define PIO_RETRY_CNT			10
> +#define PIO_RETRY_DELAY			100 /* 100 us*/
>  
>  #define LINK_WAIT_MAX_RETRIES		10
>  #define LINK_WAIT_USLEEP_MIN		90000
> @@ -383,17 +384,16 @@ static void advk_pcie_check_pio_status(struct advk_pcie *pcie)
>  static int advk_pcie_wait_pio(struct advk_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
> -	unsigned long timeout;
> +	size_t i;
>  
> -	timeout = jiffies + msecs_to_jiffies(PIO_TIMEOUT_MS);
> -
> -	while (time_before(jiffies, timeout)) {
> +	for (i = 0; i < PIO_RETRY_CNT; ++i) {
>  		u32 start, isr;
>  
>  		start = advk_readl(pcie, PIO_START);
>  		isr = advk_readl(pcie, PIO_ISR);
>  		if (!start && isr)
>  			return 0;
> +		udelay(PIO_RETRY_DELAY);
>  	}
>  
>  	dev_err(dev, "config read/write timed out\n");
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
