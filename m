Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4A0EC531
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgdWVWN2gm1aYOw6Ak+XP0yImZ57uhk+n39kXTnWpXo=; b=EzKpiOG++AR67C
	dYW9hCOfTgmD6F5eYPqo/8BnfcLOpeVgC870bf0b3XH8MepzNrQNVzvZUKZS0ix7srZVvLu/NYWj+
	BOvoUWUWIh1Do9+jrS6F/BLCoCcDMSbFo2KLV8uvkrK6fLaOngNsqq+qPJ/U69M8diotzzCdnrWus
	71qWOQoYJEx7ZaeyuMtCRKb+pLUqpzmLR1AN6KjdjEUjbsJn0hD91ehv0H3dG43b+/AWbeMQMiaJk
	w/beoABlTix5ia7r7siVTWm8Uph3NFusW9xTj0Z8dNztU54cR3Rvrz3p+KGvPI1iuZSqNLkP9A2C8
	ARO16s+6yAyDQiLs7jWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYNd-0000ON-QD; Fri, 01 Nov 2019 14:58:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYNW-0000NS-UX
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:58:20 +0000
Received: by mail-pg1-x543.google.com with SMTP id e10so6635592pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 07:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=o3PotZZzGd3n0vtfT41UhnCQaaRUmL4E0PRscYzEIDo=;
 b=I1/WHsVyWQVAH+7YIQ9FJxjw/3+UZ4eJ1j/SDFWtIEofNsreSoGawixnCPLXHfjS4I
 xlDwa3u66eEwoOJUAPlHK0dUeT0aet3AJF7Hh7vmKlsgkC0XBk6UfewUnoYtCFXoeX5g
 7fSank49zBRoLLYkoib3osby1hKIjugYLT3XialA5XwBx2NicKvLZ0AL8HaA0MYN2gGJ
 6I7li89dPySlSyjub59Y1gl2eGkUAndynwIHLXQ4f01kEq7g1XzQ0k9tdlQaGRx6v+Xw
 shsJV6s6wDw/l6GpKrmsUj23FJcOIaobHKjzfOKXCDKJMXhdUTkbzBcGYz4z5yGtH0e+
 thcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=o3PotZZzGd3n0vtfT41UhnCQaaRUmL4E0PRscYzEIDo=;
 b=QlC2dH5WQkDf274LsQp+vrce0U68x0TEOzafAcQ7cUHFt4FLupq7I9iblfFCV9hyV0
 e1P/EPaGCahX35aBVPlvotNpFFbTxRMU41ixlCpdR3nlb6Xka+Vrh5sx3q/hz8eyWFk9
 GbozOfqO/57NedDQe9ik106kYBNmNpzB8B1SByK/AXX7lGwlI9f7M30dsMYmNHkkqcSF
 ij96ICUZSRm2s9c1x4YsQJ7iq7F+Ev02f45qS8H9UHtFmP6qHZg4SkQd0zV1vqI+i7Jz
 VUgw6repBgEhHztg26i3U7FzNt5Tkfxcx2tTlSO9/wpy7DQlfEydCro2lWlCNy6ANpSW
 RzrA==
X-Gm-Message-State: APjAAAUq54yjkrGaOIOXxEjQ63aC4HXeJyDeyIw5bXzf9TtqT7DxQ9dU
 uQ5QwEtPJ3jEq9mVN3kwZYtK
X-Google-Smtp-Source: APXvYqyyHMBHWz8vbhnckMVAipVVWfbs6zJpy+GNzFBfp8NvRJbt08PIocOSMFo+vTjHOv8EaNNmig==
X-Received: by 2002:a05:6a00:51:: with SMTP id
 i17mr14214665pfk.8.1572620297826; 
 Fri, 01 Nov 2019 07:58:17 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6413:fc8c:9538:d2ea:eab:d2c0])
 by smtp.gmail.com with ESMTPSA id z21sm6644869pfa.119.2019.11.01.07.58.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 07:58:17 -0700 (PDT)
Date: Fri, 1 Nov 2019 20:28:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191101145806.GB13101@Mani-XPS-13-9360>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_075818_991161_59B9ECA6 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, festevam@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tudor,

On Fri, Nov 01, 2019 at 01:48:17PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 10/30/2019 11:01 AM, Manivannan Sadhasivam wrote:
> > External E-Mail
> > 
> > 
> > Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> > supports dual/quad I/O mode with 512 blocks of memory organized in
> > 64KB sectors. In addition to this, there is also small 4KB sectors
> > available for flexibility. The device has been validated using Thor96
> > board.
> > 
> > Cc: Marek Vasut <marek.vasut@gmail.com>
> > Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> > Cc: David Woodhouse <dwmw2@infradead.org>
> > Cc: Brian Norris <computersforpeace@gmail.com>
> > Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> > Cc: Richard Weinberger <richard@nod.at>
> > Cc: Vignesh Raghavendra <vigneshr@ti.com>
> > Cc: linux-mtd@lists.infradead.org
> > Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> > [Mani: cleaned up for upstream]
> 
> Can we keep Darshak's authorship? We usually change the author if we feel that
> we made a significant change to what was originally published.
> 
> If it's just about cosmetics, cleaning or rebase, you can specify what you did
> after the author's S-o-b tag and then add your S-o-b, as you did above.
> 

I'd suggest to keep Darshak's authorship since he did the actual change in
the bsp. I have to clean it up before submitting upstream and I mentioned
the same above.

> The patch looks good.
> 

Thanks,
Mani

> Cheers,
> ta
> 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/mtd/spi-nor/spi-nor.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> > index 1d8621d43160..2c25b371d9f0 100644
> > --- a/drivers/mtd/spi-nor/spi-nor.c
> > +++ b/drivers/mtd/spi-nor/spi-nor.c
> > @@ -2482,6 +2482,8 @@ static const struct flash_info spi_nor_ids[] = {
> >  	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >  	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
> >  			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> > +	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
> > +			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
> >  	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
> >  			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
> >  
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
