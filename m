Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C621CC261
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 17:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmRcv7qsrVEzfj7omlxamymTYv6R91bhrNIVFtUB/AA=; b=JikBZQ8kqGhbuX
	ljf5CdPs8TrfIrqGess9xoYf34X7ql+bBKvNV1ZoOECn+tIkb/TnZy/IwulkJ4M3ROtbJD/JgcmmZ
	NvG/VIVfuiBzEA/Wtq34TE7RVbUJo9RzpN8pRP+QZTiLynIw4WR7SHhDfuR2isezmsXggN6eJRt2U
	T3C8kkUzduHNT5EnFyF/b57ux9xoSsXqGU7MPtBNo/zEr5B6s5eJPBsjGEcjlWXUa7dhfyPVCFnU/
	aDn3DfXy8pLS73RgeI8xwf9YK54G9JVrEEf7eaX4UOSL2vwwbxwCyaQUmfH5ljk1gYVlizQeSZgJ9
	3B5gGTtf8FicUQ2HijIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRKp-00078C-Pv; Sat, 09 May 2020 15:24:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRKi-00077f-1Q
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 15:24:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DxMBxCTCZ7e8xucmtxia3JjQpAhXwTssvS4Ui38O4Ro=; b=xesHzv1t0P3roD+z20qiny9ZCj
 VVrO6R+X7EsZyyQ2pW3vBHG/N6TxU6ui9qxR4MOgLt1wnfPhy6VG6xkO3HOjUhIrE4NEBRdtOL708
 E0TbvHVBXmh+e2IDDll8KYFQPoYwinLHvt3m+h8KCnUVwS5obMQWgo2XtOdITW51c0hI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jXRKd-001Vxd-Gw; Sat, 09 May 2020 17:24:03 +0200
Date: Sat, 9 May 2020 17:24:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1 1/3] gpio: mpc8xxx: support fsl-layerscape platform.
Message-ID: <20200509152403.GQ208718@lunn.ch>
References: <20200509103956.26038-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509103956.26038-1-hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_082408_079779_F7C4BFA2 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: u-boot@linux.nxdi.nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 06:39:54PM +0800, Hui Song wrote:
> From: "hui.song" <hui.song_1@nxp.com>
> 
> Make the MPC8XXX gpio driver to support the fsl-layerscape.
> 
> Signed-off-by: hui.song <hui.song_1@nxp.com>
> ---
>  drivers/gpio/mpc8xxx_gpio.c | 59 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/drivers/gpio/mpc8xxx_gpio.c b/drivers/gpio/mpc8xxx_gpio.c
> index 1dfd22522c..466f5f50cf 100644
> --- a/drivers/gpio/mpc8xxx_gpio.c
> +++ b/drivers/gpio/mpc8xxx_gpio.c
> @@ -12,6 +12,8 @@
>  #include <dm.h>
>  #include <mapmem.h>
>  #include <asm/gpio.h>
> +#include <asm/io.h>
> +#include <dm/of_access.h>
>  
>  struct ccsr_gpio {
>  	u32	gpdir;
> @@ -20,6 +22,7 @@ struct ccsr_gpio {
>  	u32	gpier;
>  	u32	gpimr;
>  	u32	gpicr;
> +	u32	gpibe;
>  };
>  
>  struct mpc8xxx_gpio_data {
> @@ -49,31 +52,51 @@ inline u32 gpio_mask(uint gpio)
>  
>  static inline u32 mpc8xxx_gpio_get_val(struct ccsr_gpio *base, u32 mask)
>  {
> +#if CONFIG_ARM
> +	return in_le32(&base->gpdat) & mask;
> +#else
>  	return in_be32(&base->gpdat) & mask;
> +#endif
>  }

Hi Hui

Did the hardware engineers really change the endinness of the
register? Forget about the CPU here, did the register change
endinness? In general, you should not need to use #if like this, so
long as the register itself is still the same. There are functions
which will do the correct thing depending on if the CPU is big or
little endian.

> @@ -147,13 +183,29 @@ static int mpc8xxx_gpio_ofdata_to_platdata(struct udevice *dev)
>  {
>  	struct mpc8xxx_gpio_plat *plat = dev_get_platdata(dev);
>  	fdt_addr_t addr;
> +	u32 i;
> +#if CONFIG_ARM
> +	u32 reg[4];
> +
> +	dev_read_u32_array(dev, "reg", reg, 4);
> +#else
>  	u32 reg[2];
>  
>  	dev_read_u32_array(dev, "reg", reg, 2);
> +#endif
> +
> +#if CONFIG_ARM
> +	for (i = 0; i < 2; i++)
> +		reg[i] = be32_to_cpu(reg[i]);
> +#endif
>  	addr = dev_translate_address(dev, reg);
>  
>  	plat->addr = addr;
> +#if CONFIG_ARM
> +	plat->size = reg[3];
> +#else
>  	plat->size = reg[1];
> +#endif
>  	plat->ngpios = dev_read_u32_default(dev, "ngpios", 32);

So you are extending the DT binding. You need to document this. And it
should really have a different compatible string, since the binding is
not compatible between the two variants.
>  
>  	return 0;
> @@ -187,6 +239,7 @@ static int mpc8xxx_gpio_platdata_to_priv(struct udevice *dev)
>  static int mpc8xxx_gpio_probe(struct udevice *dev)
>  {
>  	struct gpio_dev_priv *uc_priv = dev_get_uclass_priv(dev);
> +	struct device_node const  *np = dev->node.np;
>  	struct mpc8xxx_gpio_data *data = dev_get_priv(dev);
>  	char name[32], *str;
>  
> @@ -198,6 +251,12 @@ static int mpc8xxx_gpio_probe(struct udevice *dev)
>  	if (!str)
>  		return -ENOMEM;
>  
> +	if (of_device_is_compatible(np, "fsl,qoriq-gpio", NULL, NULL)) {
> +		unsigned long gpibe = data->addr + sizeof(struct ccsr_gpio);
> +
> +		out_be32(gpibe, 0xffffffff);

That is an odd way to determine the address of a register.

     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
