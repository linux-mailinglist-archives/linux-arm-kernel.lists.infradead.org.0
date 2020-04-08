Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEC71A1F41
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 12:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGUm3xI3JMujG9F8ZIjY37PO3w2SbnUxrvO/yHo03bM=; b=kqngx8RUiCnsi7
	4Ilm3GVUn0Ng7PrXOKqKmjTm5O8GuNYBc1EHarlIFOwBnWGEaTGXsJEmNoUe7QQ7dNoqPz3sLGEex
	ialFREB+pByJKGOwr12mbnZxnrUMd3GvfVNYpNo6jatoCPJAUntWSKnesNrVKfGUAZ6gKV+A+z1wR
	N7m+HmG8zWD1jfIUxiOX2eex/c7Y2ydZcvLw1M9YN/EBRlxuxn+PEhPbkzHHvxk1SkMurgULmXh2i
	Qqcpu+TP+FRW1Qq3Gn7oC6ebSZ8PJnmF8gXhWMs1DxW/eJ+GUZNznIpAY1Mr+49v9yht95cuFH7fZ
	9AuyJEWi/nIai7H14TZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8NI-0004Pj-Su; Wed, 08 Apr 2020 10:56:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8NB-0004O8-NG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 10:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w6dHPYMv2i9dm01SaFUvBAnpyuM/9O8Vy7ZNYT4fAcY=; b=HpNs0wdn7sIB4LHpoFt4EPV2v
 ugIr1QFTho4/bn6ATMEWn/ThHaK3CzQqQX1yYflUUX7BTC4wiB+EmHxzWF0CJrly9cZK1uLca/RZs
 /SbuAkNVXidImBiJRAWZ40Cf39MVWTyEkXLmYLqCza7ufVHCV3KO+QMqzNe4piJv7pYKWWv3St+BV
 ir7kkXkdJkNpBkP0ycIJ/q+pejyz/D3ndwa02/VkX/z9OwGn5jb5IxUb95LK9+XEQ/5JHOmMZNmS+
 /OizKNwKIM0oBYRYpDTTc0uohJEIOKRoXtBzSdxRCnW/JL30g5ZwWIT3PQv27Pj4tddYvUlHjjEud
 IMX7H5geg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43136)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jM8Mn-0005RT-IU; Wed, 08 Apr 2020 11:55:33 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jM8Mk-0001mF-Ry; Wed, 08 Apr 2020 11:55:30 +0100
Date: Wed, 8 Apr 2020 11:55:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1] gpio: mpc8xxx: Add shutdown function.
Message-ID: <20200408105530.GR25745@shell.armlinux.org.uk>
References: <20200408102118.17572-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408102118.17572-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_035557_759848_5E59C2C9 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 06:21:17PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> The shutdown function needed to make interrupt handler to be NULL
> when kexec execute.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Please improve the commit message.  You describe what change the patch
is making (which we can see from reading the patch), but you don't
explain why it is necessary, or really what problem the patch is
solving.  I'm not aware of other implementations needing this for
kexec to work.

Thanks.

> ---
>  drivers/gpio/gpio-mpc8xxx.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
> index 604dfec..a24e6c5 100644
> --- a/drivers/gpio/gpio-mpc8xxx.c
> +++ b/drivers/gpio/gpio-mpc8xxx.c
> @@ -446,9 +446,21 @@ static int mpc8xxx_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int mpc8xxx_shutdown(struct platform_device *pdev)
> +{
> +	struct mpc8xxx_gpio_chip *mpc8xxx_gc = platform_get_drvdata(pdev);
> +
> +	if (mpc8xxx_gc->irq) {
> +		irq_set_chained_handler_and_data(mpc8xxx_gc->irqn, NULL, NULL);
> +		irq_domain_remove(mpc8xxx_gc->irq);
> +	}
> +
> +	return 0;
> +}
>  static struct platform_driver mpc8xxx_plat_driver = {
>  	.probe		= mpc8xxx_probe,
>  	.remove		= mpc8xxx_remove,
> +	.shutdown	= mpc8xxx_shutdown,
>  	.driver		= {
>  		.name = "gpio-mpc8xxx",
>  		.of_match_table	= mpc8xxx_gpio_ids,
> -- 
> 2.9.5
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
