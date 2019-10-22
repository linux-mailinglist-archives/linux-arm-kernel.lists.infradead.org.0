Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7EE04F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 15:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0B2z9w57eeJNEJzmFVbWpi2cUSAbl3jW4sUa5chgE9E=; b=n1b64u6EPMxI/5
	uPXTdZbxqhd89ciTRMDz5wHpoEHnS4p2H0Og3+x0p2ArgDOxVwisxLzwQMmHqUWLywzirRb+lmT2s
	vAzttEO7RW4yWenVmAutA2l7rampxcUvCoaZu7040O4ilVd/ksE6AFlR9hNBhRc5WeZbWEfI0eA8K
	mEX+LWS0JK89kdnMW7ROl6uULDHTQ1ye/6s8BdxSStpfqW+Ln9Gj91Oyzk1NvhLYfeWIPmrMkMJ0B
	dsr3HA/O/Lt/oGXYx9YuDtumKhbSupbae883yeaFh4GEALvR9WU4gNbrYKkmub4lFIzexyftiOCQa
	QVAbKQ2wb0uawRWGBjTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuDA-0006Wq-Ic; Tue, 22 Oct 2019 13:28:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuCo-0006Kx-Fn; Tue, 22 Oct 2019 13:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BfwiuuPKHEAB6UXs1psPKJrzASEoQWQlyqAomDErXHw=; b=tmVMGgmQrw7/IZtl0Kep0rxiw
 P+KoF2qV5mTw52BBoiv9h9jYJmMgnu0LlOlrAb58vTgS6giWJsVi9ma4cPPoLdCTLb1wBFDRfqjvb
 uyymMd1eqQCusoHwdzBKEqVdq4/VKzfv7D8T5JuK+bV2Sa+jSMOisBEjb2bCFiBjAIHPMAhWZ9wDS
 wSfdQqSUqMMo9aAzLSpINCJNtQy18qsym1bMR7VMljzOXpyDQuTISW7m0QOS+8k4WtMm3nhxHA93G
 fgtoiEBuyQ4tglzOmZUjJ3AzOjxQ9ogmktV6qYpJXCaRHSXEVAd1WJUqqGd3Ort2r89uWIBrDsmLY
 IaG/3puUw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:45990)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iMuCX-0007SK-80; Tue, 22 Oct 2019 14:27:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iMuCQ-0004b0-2T; Tue, 22 Oct 2019 14:27:46 +0100
Date: Tue, 22 Oct 2019 14:27:46 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2] mtd: spear_smi: Fix Write Burst mode
Message-ID: <20191022132745.GT25745@shell.armlinux.org.uk>
References: <20191022131918.17668-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022131918.17668-1-miquel.raynal@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_062810_693822_AB443185 
X-CRM114-Status: GOOD (  33.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, stable@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 03:19:18PM +0200, Miquel Raynal wrote:
> Any write with either dd or flashcp to a device driven by the
> spear_smi.c driver will pass through the spear_smi_cpy_toio()
> function. This function will get called for chunks of up to 256 bytes.
> If the amount of data is smaller, we may have a problem if the data
> length is not 4-byte aligned. In this situation, the kernel panics
> during the memcpy:
> 
>     # dd if=/dev/urandom bs=1001 count=1 of=/dev/mtd6
>     spear_smi_cpy_toio [620] dest c9070000, src c7be8800, len 256
>     spear_smi_cpy_toio [620] dest c9070100, src c7be8900, len 256
>     spear_smi_cpy_toio [620] dest c9070200, src c7be8a00, len 256
>     spear_smi_cpy_toio [620] dest c9070300, src c7be8b00, len 233
>     Unhandled fault: external abort on non-linefetch (0x808) at 0xc90703e8
>     [...]
>     PC is at memcpy+0xcc/0x330
> 
> The above error occurs because the implementation of memcpy_toio()
> tries to optimize the number of I/O by writing 4 bytes at a time as
> much as possible, until there are less than 4 bytes left and then
> switches to word or byte writes.
> 
> Unfortunately, the specification states about the Write Burst mode:
> 
>         "the next AHB Write request should point to the next
> 	incremented address and should have the same size (byte,
> 	half-word or word)"
> 
> This means ARM architecture implementation of memcpy_toio() cannot
> reliably be used blindly here. Workaround this situation by update the
> write path to stick to byte access when the burst length is not
> multiple of 4.
> 
> Fixes: f18dbbb1bfe0 ("mtd: ST SPEAr: Add SMI driver for serial NOR flash")
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Boris Brezillon <boris.brezillon@collabora.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> 
> Changes in v2:
> ==============
> * This time I think the patch really fixes the problem: we use a
>   memcpy_toio_b() function to force byte access only when needed. We
>   don't use the _memcpy_toio() helper anymore as the fact that it is
>   doing byte access is purely an implementation detail and is not part
>   of the API, while the function is also flagged as "should be
>   optimized".
> * One could argue that potentially memcpy_toio() does not ensure by
>   design 4-bytes access only but I think it is good enough to use it
>   in this case as the ARM implementation of this function is already
>   extensively optimized. I also find clearer to use it than 
>   adding my own spear_smi_mempy_toio_l(). Please tell me if you disagree
>   with this.
> * The volatile keyword has been taken voluntarily from the _memcpy_toio()
>   implementation I was about to use previously.
> 
>  drivers/mtd/devices/spear_smi.c | 25 ++++++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mtd/devices/spear_smi.c b/drivers/mtd/devices/spear_smi.c
> index 986f81d2f93e..84b7487d781d 100644
> --- a/drivers/mtd/devices/spear_smi.c
> +++ b/drivers/mtd/devices/spear_smi.c
> @@ -592,6 +592,19 @@ static int spear_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
>  	return 0;
>  }
>  
> +static void spear_smi_memcpy_toio_b(volatile void __iomem *dest,
> +				    const void *src, size_t len)
> +{
> +	const unsigned char *from = src;
> +
> +	while (len) {
> +		len--;
> +		writeb(*from, dest);
> +		from++;
> +		dest++;
> +	}
> +}
> +
>  static inline int spear_smi_cpy_toio(struct spear_smi *dev, u32 bank,
>  		void __iomem *dest, const void *src, size_t len)
>  {
> @@ -614,7 +627,17 @@ static inline int spear_smi_cpy_toio(struct spear_smi *dev, u32 bank,
>  	ctrlreg1 = readl(dev->io_base + SMI_CR1);
>  	writel((ctrlreg1 | WB_MODE) & ~SW_MODE, dev->io_base + SMI_CR1);
>  
> -	memcpy_toio(dest, src, len);
> +	/*
> +	 * In Write Burst mode (WB_MODE), the specs states that writes must be
> +	 * incremental and of the same size, so we cannot use memcpy_toio() if
> +	 * the length is not 4-byte aligned because in order to increase the
> +	 * performances, it would proceed as much as possible with 4-byte access
> +	 * and potentially finish with smaller access sizes.
> +	 */
> +	if (len % sizeof(u32))
> +		spear_smi_memcpy_toio_b(dest, src, len);
> +	else
> +		memcpy_toio(dest, src, len);

It's worse than that - you need to also check whether dest is properly
aligned as we may use byte accesses initially to align the destination.
So, you also need to check the alignment of the destination address.

>  
>  	writel(ctrlreg1, dev->io_base + SMI_CR1);
>  
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
