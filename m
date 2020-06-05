Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC161EF674
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 13:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4uCb2FP/QctpxShs1WsvbfHermiCPAc8frX0hqZZ4j4=; b=rqYn5HiXaFTaz6fe0xaoHvcE2
	s2jFT/sAEmIYFCuIzVugkUfyZFX1JPDA1WDylhV7f0kT6EoB8Noa2FIe75Ji2YL7LaL0ky3PzYS0h
	LWrbCO0DdbFJ5Digq6Gx6yCTBe0r5c3HV0zIJAHlPnlNUwk+PN0FR7eKytWgcaMMHuOCaeaBM3vfZ
	Yt5v2CKugloZmkW2Rkuujez4hK8xQxbprdmsnPL96C/xNdAtlOJMBjyxVJ3e4C2+5vBFN8IoiKu9w
	snG/JLWuFyMVOal4JyUJTERNKftnDzVclIogRFvPYUFzn0Hbgl2ZTVvhJtUNXiHGx1nLPOa+xCiSl
	Vu2F6t+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhAcd-0005y2-Gd; Fri, 05 Jun 2020 11:34:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhAcU-0005wq-U1; Fri, 05 Jun 2020 11:34:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38EEA2B;
 Fri,  5 Jun 2020 04:34:40 -0700 (PDT)
Received: from [10.57.10.23] (unknown [10.57.10.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 739DB3F52E;
 Fri,  5 Jun 2020 04:34:37 -0700 (PDT)
Subject: Re: [PATCH v2] spi: bcm2835: Enable shared interrupt support
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
References: <20200604212819.715-1-f.fainelli@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <142d48ae-2725-1368-3e11-658449662371@arm.com>
Date: Fri, 5 Jun 2020 12:34:36 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200604212819.715-1-f.fainelli@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_043443_055987_C46C4B5D 
X-CRM114-Status: GOOD (  32.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 lukas@wunner.de, Ray Jui <rjui@broadcom.com>, Mark Brown <broonie@kernel.org>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Martin Sperl <kernel@martin.sperl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-04 22:28, Florian Fainelli wrote:
> The 4 SPI controller instances added in BCM2711 and BCM7211 SoCs (SPI3,
> SPI4, SPI5 and SPI6) share the same interrupt line with SPI0.
> 
> For the BCM2835 case which is deemed performance critical, we would like
> to continue using an interrupt handler which does not have the extra
> comparison on BCM2835_SPI_CS_INTR.

FWIW, if I'm reading the patch correctly, then with sensible codegen 
that "overhead" should amount to a bit test on a live register plus a 
not-taken conditional branch - according to the 1176 TRM that should add 
up to a whopping 2 cycles. If that's really significant then I'd have to 
wonder whether you want to be at the mercy of the whole generic IRQ 
stack at all, and should perhaps consider using FIQ instead.

> To support that requirement the common interrupt handling code between
> the shared and non-shared interrupt paths is split into a
> bcm2835_spi_interrupt_common() and both bcm2835_spi_interrupt() as well
> as bcm2835_spi_shared_interrupt() make use of it.
> 
> During probe, we determine if there is at least another instance of this
> SPI controller, and if there is, then we install a shared interrupt
> handler.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> Changes in v2:
> 
> - identify other available SPI nodes to determine if we need to set-up
>    interrupt sharing. This needs to happen for the very first instance
>    since we cannot know for the first instance whether interrupt sharing
>    is needed or not.
> 
>   drivers/spi/spi-bcm2835.c | 61 ++++++++++++++++++++++++++++++++-------
>   1 file changed, 50 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
> index 237bd306c268..0288b5b3de1e 100644
> --- a/drivers/spi/spi-bcm2835.c
> +++ b/drivers/spi/spi-bcm2835.c
> @@ -361,11 +361,10 @@ static void bcm2835_spi_reset_hw(struct spi_controller *ctlr)
>   	bcm2835_wr(bs, BCM2835_SPI_DLEN, 0);
>   }
>   
> -static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
> +static inline irqreturn_t bcm2835_spi_interrupt_common(struct spi_controller *ctlr,
> +						       u32 cs)
>   {
> -	struct spi_controller *ctlr = dev_id;
>   	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
> -	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
>   
>   	/*
>   	 * An interrupt is signaled either if DONE is set (TX FIFO empty)
> @@ -394,6 +393,27 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
>   	return IRQ_HANDLED;
>   }
>   
> +static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
> +{
> +	struct spi_controller *ctlr = dev_id;
> +	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
> +	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
> +
> +	return bcm2835_spi_interrupt_common(ctlr, cs);
> +}
> +
> +static irqreturn_t bcm2835_spi_shared_interrupt(int irq, void *dev_id)
> +{
> +	struct spi_controller *ctlr = dev_id;
> +	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
> +	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
> +
> +	if (!(cs & BCM2835_SPI_CS_INTR))
> +		return IRQ_NONE;
> +
> +	return bcm2835_spi_interrupt_common(ctlr, cs);
> +}
> +
>   static int bcm2835_spi_transfer_one_irq(struct spi_controller *ctlr,
>   					struct spi_device *spi,
>   					struct spi_transfer *tfr,
> @@ -1287,12 +1307,37 @@ static int bcm2835_spi_setup(struct spi_device *spi)
>   	return 0;
>   }
>   
> +static const struct of_device_id bcm2835_spi_match[] = {
> +	{ .compatible = "brcm,bcm2835-spi", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
> +
>   static int bcm2835_spi_probe(struct platform_device *pdev)
>   {
> +	irq_handler_t bcm2835_spi_isr_func = bcm2835_spi_interrupt;
>   	struct spi_controller *ctlr;
> +	unsigned long flags = 0;
> +	struct device_node *dn;
>   	struct bcm2835_spi *bs;
>   	int err;
>   
> +	/* On BCM2711 there can be multiple SPI controllers enabled sharing the
> +	 * same interrupt line, but we also want to minimize the overhead if
> +	 * there is no need to support interrupt sharing. If we find at least
> +	 * another available instane (not counting the one we are probed from),
> +	 * then we assume that interrupt sharing is necessary.
> +	 */
> +	for_each_compatible_node(dn, NULL, bcm2835_spi_match[0].compatible) {
> +		err = of_device_is_available(dn) && dn != pdev->dev.of_node;
> +		of_node_put(dn);

This is in the wrong place - it should only be where you terminate the 
loop early and thus bypass the "of_node_put(from)" call in the iterator 
itself.

> +		if (err) {
> +			flags = IRQF_SHARED;

Is there really any harm to setting IRQF_SHARED even when the interrupt 
isn't shared in hardware? Sure, it means you lose a degree of API-level 
validation and some other driver might also be able to simultaneously 
claim it on bcm283x, but in that case the DT would be wrong and 
*something* isn't going to work correctly anyway, so does this one 
driver really need to care about trying to be the DT police?

Robin.

> +			bcm2835_spi_isr_func = bcm2835_spi_shared_interrupt;
> +			break;
> +		}
> +	}
> +
>   	ctlr = spi_alloc_master(&pdev->dev, ALIGN(sizeof(*bs),
>   						  dma_get_cache_alignment()));
>   	if (!ctlr)
> @@ -1344,8 +1389,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
>   	bcm2835_wr(bs, BCM2835_SPI_CS,
>   		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
>   
> -	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
> -			       dev_name(&pdev->dev), ctlr);
> +	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_isr_func,
> +			       flags, dev_name(&pdev->dev), ctlr);
>   	if (err) {
>   		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
>   		goto out_dma_release;
> @@ -1400,12 +1445,6 @@ static void bcm2835_spi_shutdown(struct platform_device *pdev)
>   		dev_err(&pdev->dev, "failed to shutdown\n");
>   }
>   
> -static const struct of_device_id bcm2835_spi_match[] = {
> -	{ .compatible = "brcm,bcm2835-spi", },
> -	{}
> -};
> -MODULE_DEVICE_TABLE(of, bcm2835_spi_match);
> -
>   static struct platform_driver bcm2835_spi_driver = {
>   	.driver		= {
>   		.name		= DRV_NAME,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
