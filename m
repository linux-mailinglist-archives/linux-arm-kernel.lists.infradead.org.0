Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4431BC00ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pNR0l+sUpAb/1t4axUOGYbDAYyI9+OtF91FD1Vdaz4=; b=neeiiuJY8Y3jrk
	lX2mKpN5pgelTVsfCRvoXnkfziDcoQpD/rDoXUJk5FxhkPFfcFuXB3ebvq4BDMX9ByswIR7g2q7pX
	oGKAuXl8l6uVj93maZLSQz4IcUMOITWg6Qc7PpKFvykqIIYlHEDia/UH2dAsVBsS350SMXBLiPm6h
	bkIULQgPFo0BZFJAA9nlAh+cGjA/C5hntpiYO/rYvZRk7K3546cBU1viwo6Mz6i0RqNv8+JyaBdEB
	rOcEehdVQMIEhCWNBbKLfQ0/wb/q7zq8bigXRNcanrJ6j/dBxfxamWI+wpx+iXVSA3fvyvIN3sVws
	OUupQVTSRDkb45XDwFBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlR1-0004AE-N4; Fri, 27 Sep 2019 08:17:03 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlQt-00048R-6S
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:16:57 +0000
X-Originating-IP: 65.39.69.237
Received: from localhost (unknown [65.39.69.237])
 (Authenticated sender: repk@triplefau.lt)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 629F0240003;
 Fri, 27 Sep 2019 08:16:45 +0000 (UTC)
Date: Fri, 27 Sep 2019 10:25:09 +0200
From: Remi Pommarel <repk@triplefau.lt>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] PCI: aardvark: Don't rely on jiffies while holding
 spinlock
Message-ID: <20190927082508.GB1208@voidbox.localdomain>
References: <20190901142303.27815-1-repk@triplefau.lt>
 <20190925113351.0b53d2e9@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925113351.0b53d2e9@windsurf>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_011655_538058_3860A97A 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

Thanks for the review.

On Wed, Sep 25, 2019 at 11:33:51AM +0200, Thomas Petazzoni wrote:
> Hello Remi,
> 
> Thanks for the patch, I have a few comments/questions below.
> 
> On Sun,  1 Sep 2019 16:23:03 +0200
> Remi Pommarel <repk@triplefau.lt> wrote:
> 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index fc0fe4d4de49..1fa6d04ad7aa 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -175,7 +175,8 @@
> >  	(PCIE_CONF_BUS(bus) | PCIE_CONF_DEV(PCI_SLOT(devfn))	| \
> >  	 PCIE_CONF_FUNC(PCI_FUNC(devfn)) | PCIE_CONF_REG(where))
> >  
> > -#define PIO_TIMEOUT_MS			1
> > +#define PIO_RETRY_CNT			10
> > +#define PIO_RETRY_DELAY			100 /* 100 us*/
> >  
> >  #define LINK_WAIT_MAX_RETRIES		10
> >  #define LINK_WAIT_USLEEP_MIN		90000
> > @@ -383,17 +384,16 @@ static void advk_pcie_check_pio_status(struct advk_pcie *pcie)
> >  static int advk_pcie_wait_pio(struct advk_pcie *pcie)
> >  {
> >  	struct device *dev = &pcie->pdev->dev;
> > -	unsigned long timeout;
> > +	size_t i;
> 
> Is it common to use a size_t for a loop counter ?

It was for me but seem not to be used that much. I can change that to an
int.

> >  
> > -	timeout = jiffies + msecs_to_jiffies(PIO_TIMEOUT_MS);
> > -
> > -	while (time_before(jiffies, timeout)) {
> > +	for (i = 0; i < PIO_RETRY_CNT; ++i) {
> 
> I find it more common to use post-increment for loop counters rather
> than pre-increment, but that's a really nitpick and I don't care much.
> 

Will change that to post-increment.

> >  		u32 start, isr;
> >  
> >  		start = advk_readl(pcie, PIO_START);
> >  		isr = advk_readl(pcie, PIO_ISR);
> >  		if (!start && isr)
> >  			return 0;
> > +		udelay(PIO_RETRY_DELAY);
> 
> But the bigger issue is that this change causes a 100us delay at
> *every* single PIO read or write operation.
> 
> Indeed, at the first iteration of the loop, the PIO operation has not
> completed, so you will always hit the udelay(100) a first time, and
> it's only at the second iteration of the loop that the PIO operation
> has completed (for successful PIO operations of course, which don't hit
> the timeout).
> 
> I took a measurement around wait_pio() with sched_clock before and
> after the patch. Before the patch, I have measurements like this (in
> nanoseconds):
> 
> [    1.562801] time = 6000
> [    1.565310] time = 6000
> [    1.567809] time = 6080
> [    1.570327] time = 6080
> [    1.572836] time = 6080
> [    1.575339] time = 6080
> [    1.577858] time = 2720
> [    1.580366] time = 2720
> [    1.582862] time = 6000
> [    1.585377] time = 2720
> [    1.587890] time = 2720
> [    1.590393] time = 2720
> 
> So it takes a few microseconds for each PIO operation.
> 
> With your patch applied:
> 
> [    2.267291] time = 101680
> [    2.270002] time = 100880
> [    2.272852] time = 100800
> [    2.275573] time = 100880
> [    2.278285] time = 100800
> [    2.281005] time = 100880
> [    2.283722] time = 100800
> [    2.286444] time = 100880
> [    2.289264] time = 100880
> [    2.291981] time = 100800
> [    2.294690] time = 100800
> [    2.297405] time = 100800
> 
> We're jumping to 100us for every PIO read/write operation. To be
> honest, I don't know if this is very important, there are not that many
> PIO operations, and they are not used in any performance hot path. But
> I thought it was worth pointing out the additional delay caused by this
> implementation change.

Good catch thanks for the measurements, will move to a 2us delay.

-- 
Remi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
