Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE1BDB16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 11:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N61zz3WgDmNuwl8UJaDRuBBUazklC9rUnxkKg9eupZU=; b=Ky0mPK2wtPAtyZ
	fa5MqWIc9NPoOPhosfYOZBgr0iuQ7l1kfEnefssJ9QcT9NV5Bo870JxroUtlfPV1I7c2z04kGDbou
	EtoAHJTv5dO9RLekbQkp0GQeatKH8DWDrym1BE8di3wR7ZO58LtOWFJ12y756sBu+kO6xOFisgHwF
	+KB51XGBbsjr2Pjzs9IyGmaHISvUVmPvs0if9aRCps+scvBqGntFlqHv40efn/MGKzHyTU8c7zP9p
	sZBH1Axvtb0GjnYung8JzsMxt3AtQ6pdkK4lJYOeM+yEEQ/1SOqzCyBNC18pZXVuOA9zrkOxRc4pJ
	oIBdUqhLfQrdETHOSB4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD3hT-0000Yk-F5; Wed, 25 Sep 2019 09:35:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3h3-0000YK-CB
 for linux-arm-kernel@bombadil.infradead.org; Wed, 25 Sep 2019 09:34:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I5gTzuXDy/8qwwX89IA2df+C/IaAop2IZlhumCV2HZ4=; b=g9j53keC9WGbU4hVB1LpZD5j/5
 N5VMurcZbkY1OEL6gMufu41LNPwHnxwr4rmdFUxkFhgI6LzrYGejmKzU7rLjLyDPlR81y18wd1PzR
 ZFdG2O5lpJj4aCBIflrwxTQEuGxC6FGtsU+8kl04oJj2UGelXu/QxMWG8bYfHw5YtN/6+da3uW2SB
 toOMc8V9hd24RCeAQRpwAo70EanelNhYXT1mnj6nIjVGlZSrigt5HVnVQWwXwJkw5kqOvNX8bGczV
 1kuu/C1/0eRr1jh173m3zNGMWpyCnXq17W5c4nnxxyNWy3PhgQjMt8vPmE6LJOCv+i9Ny0yvLe3a6
 IsHDArIA==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD3h0-00028r-2Q
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 09:34:39 +0000
X-Originating-IP: 86.250.200.211
Received: from windsurf (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 30D7820005;
 Wed, 25 Sep 2019 09:33:52 +0000 (UTC)
Date: Wed, 25 Sep 2019 11:33:51 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190925113351.0b53d2e9@windsurf>
In-Reply-To: <20190901142303.27815-1-repk@triplefau.lt>
References: <20190901142303.27815-1-repk@triplefau.lt>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Remi,

Thanks for the patch, I have a few comments/questions below.

On Sun,  1 Sep 2019 16:23:03 +0200
Remi Pommarel <repk@triplefau.lt> wrote:

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

Is it common to use a size_t for a loop counter ?

>  
> -	timeout = jiffies + msecs_to_jiffies(PIO_TIMEOUT_MS);
> -
> -	while (time_before(jiffies, timeout)) {
> +	for (i = 0; i < PIO_RETRY_CNT; ++i) {

I find it more common to use post-increment for loop counters rather
than pre-increment, but that's a really nitpick and I don't care much.

>  		u32 start, isr;
>  
>  		start = advk_readl(pcie, PIO_START);
>  		isr = advk_readl(pcie, PIO_ISR);
>  		if (!start && isr)
>  			return 0;
> +		udelay(PIO_RETRY_DELAY);

But the bigger issue is that this change causes a 100us delay at
*every* single PIO read or write operation.

Indeed, at the first iteration of the loop, the PIO operation has not
completed, so you will always hit the udelay(100) a first time, and
it's only at the second iteration of the loop that the PIO operation
has completed (for successful PIO operations of course, which don't hit
the timeout).

I took a measurement around wait_pio() with sched_clock before and
after the patch. Before the patch, I have measurements like this (in
nanoseconds):

[    1.562801] time = 6000
[    1.565310] time = 6000
[    1.567809] time = 6080
[    1.570327] time = 6080
[    1.572836] time = 6080
[    1.575339] time = 6080
[    1.577858] time = 2720
[    1.580366] time = 2720
[    1.582862] time = 6000
[    1.585377] time = 2720
[    1.587890] time = 2720
[    1.590393] time = 2720

So it takes a few microseconds for each PIO operation.

With your patch applied:

[    2.267291] time = 101680
[    2.270002] time = 100880
[    2.272852] time = 100800
[    2.275573] time = 100880
[    2.278285] time = 100800
[    2.281005] time = 100880
[    2.283722] time = 100800
[    2.286444] time = 100880
[    2.289264] time = 100880
[    2.291981] time = 100800
[    2.294690] time = 100800
[    2.297405] time = 100800

We're jumping to 100us for every PIO read/write operation. To be
honest, I don't know if this is very important, there are not that many
PIO operations, and they are not used in any performance hot path. But
I thought it was worth pointing out the additional delay caused by this
implementation change.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
