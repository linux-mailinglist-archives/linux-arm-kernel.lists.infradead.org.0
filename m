Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7D51A31E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKH/UQD+ukSGvSwObhme6FI5HtiK83bnQ/MJveF+2Wc=; b=uliEE8eBgo7WkG
	WK2zSRmCQZg13MrPYGIg0ZUwgi4Sv/Qu6PVlqCl2Xq/LLVEq6lvndtiLm64UinmLWjU1LXttHddq5
	TKwX/swVXNx77U2iLesZhY7dsjlNyyMwQwtXtrzN4EhyaRdgaNRl7fOfe7ZuNWgvMah6ZFGWIavUB
	qFTM8IkOiOzfpD57CTYaNN4/reDwdbIQRSSoDNpAh4Tz+ARfpLxuwJYJXIGTz4dSUaKfXpQcOCWWl
	qbXjOEghMz/1zXfczFUQhygaUByQKjSqBvLiPqXZG6L8or7TrXd1pajUIKOaZfV3+Tah7XolUcc+Q
	oRH1qlzLVeCYMEuzMoWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTdj-0006r6-9A; Thu, 09 Apr 2020 09:38:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTdZ-0006qG-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RGFwgNOxy2c5vC5HpDYOZgBADwWmZdC/mr6ZrB/I1+o=; b=vWxBeDjoSh9OhHIils63Rrjju
 X/UBHlDShAXNcg2MZNhY2NIIxfBNU+JSAlmkVRvUgQTBlghcFNPpiUHZowfdnxdTq/fb/Gxa7Jvrj
 e1vCU5nLZN0NfaVhjPldRoZYQtw2ngYAd7Lu8YqTLNyziLFO/NDGA27gn3k1O5gkRSYjpcxRk9b6d
 yCA6MyIqCWhIXGJubHG302XX8XoW9PQpkhvI06Af6M5D/f9NwvXvPOmvp+/vX/NlrfNQVYrev9aSU
 dV3Qb/227TVaUkKHkKyOxPUZMgLbaPl04sL9OuxGSqtBG+Vy83yj7vHALT3TTgPgDk6j2DWgKIrFN
 O+3l+XINw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47690)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jMTdC-00035R-OS; Thu, 09 Apr 2020 10:37:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jMTdA-0002hb-Ax; Thu, 09 Apr 2020 10:37:52 +0100
Date: Thu, 9 Apr 2020 10:37:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH] gpio: mpc8xxx: Add shutdown function.
Message-ID: <20200409093752.GV25745@shell.armlinux.org.uk>
References: <20200409090259.13126-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409090259.13126-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_023818_717322_E064967A 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Apr 09, 2020 at 05:02:59PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> When the kexec command is executed, the memory area will be re-paginated.
> The shutdown function needed to make interrupt handler to be NULL.If
> not, an interrupt will be generated during this period. When the interrupt
> handler is executed,the handler function address changed and crash will
> occur.

I still don't think this is adequate.

When kexec takes effect, the existing kernel is shutdown and replaced
with the new kernel, and it completely takes over the system.  The
dynamically allocated structures (which include pointers for the parent
interrupt for mpc8xxx) are irrelevant, as they will need to be
reallocated.  It feels like you're just putting a band-aid over a real
problem.

I think rather than producing a patch, you need to give details of the
crash you are seeing.  Probably having the kernel message log across
the kexec and into the new kernel up to the point where the crash occurs
would be a good idea.

> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>
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
