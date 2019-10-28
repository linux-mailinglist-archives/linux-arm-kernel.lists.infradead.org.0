Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4725E73B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kW1xUO7f2dQvpuAjrI3pJMQN6Y1fDktbJ/lpW84WWq8=; b=F5ltuakyGgcNtW
	x3lqqHDvYzEqkKTgA7B6PCXVbfYEr3Fp4Bp8nAXqZanzHvbbq3CF8t/OH5Ivvywm+ZZavAIaAJnQ1
	PNjdNA+Sf21cbZwRhAm0O+qjLjBNMALvONIBei92sTaoG5MleHT2AsnvB8KymbiFK2SNv6L8Asr4M
	PKLNrpLXiskFeLuYdTdT3Kn+lkLsEjkTvxo/dy3NPQoy03CR2F+ooyPyFna3luu65BmEuPNagoQOu
	CHD4HUIc8yXqueX0Gf0cgWiLeYTCUtg775g0YknHaifLvEO5zbtJefLwI9Zz3N1nZTxYJUTHCFQ1Q
	iDKTtagw86qjrHix1+Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP65W-0008JS-AG; Mon, 28 Oct 2019 14:33:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP65J-0008IK-N7
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:33:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id 21so6980465pfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 07:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jRXui8mziHn1dHv5sVSn9Ol454G9W6p0Jp5i7su5XVo=;
 b=irsXVZVgMMIM/IxRyTrk/qvcpBGoyEqBd5lsDi83dqdq4Ij85W6nXIMi6d68nrg5mP
 m6dlG15ZtcjLhwSGfAy8IBHJm0XFBTuLkMkcujDc+Jz1uFwMhqmA7fHXnnoH/eWLwHO6
 e9l/L2TkOw6FadXSJL0Je2cED/hKn7LLI0rEqqOzKqUSSuDmRm3Y94/BFnNdOFgvlK/u
 r6m3dcKiBjkSkA+6OC//ADulFoKMPfhnqdWnsN6mlCplwyHpgndtLX09a4EKzsqzZNF5
 inPLg24/mKcrAVmYDM9nEN9k7aOUFGcU2NUl/TD0RloUuibGiFYlPXJ91nIEUl6FoBJN
 QFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jRXui8mziHn1dHv5sVSn9Ol454G9W6p0Jp5i7su5XVo=;
 b=gM42tVdTJGga1zktDyx8XvKDj+pbv8PeZ4B9D04KZRJ2etaoRIDnv6li8rLe9NzkVl
 gj/oionDU3AI0ddyPsgAR+hWu7eV1GYgM0K9VNg1fQ8YINt8c2niM88TA7S48JQVLOA0
 yVlNi3GNsyc9t0VyTVHOPQCXx+QTUuiQ0aZNGARdty9yVZtLTLdAujMmYaXZ+dnNYckw
 SnZi4YegiBfHPH8C446smmwd+/OdjKAhe4lkx+J+/zaYGVFsB904BEXZ+cG9jYRU3pGQ
 a7PrhMzEz41oDr8XV1DLzO5gAgXCfCfHt8TAOSZRbf5AhUxWY5uLZb7nRBtao3WpJQ/x
 DE8A==
X-Gm-Message-State: APjAAAWAss0Nm+PRCfLYHR4kYKAQ1WiK1iIKy0AFA84vTkTSmAWifbeM
 CFsuXyAItNTh7UJqJp298HZt
X-Google-Smtp-Source: APXvYqzGnQ3oWUKcqs6cX+pDXEkapuTymujVJwAUXj1ZSC41/Q+HtHirj1nbVtMWKAisgsEBnI8rUA==
X-Received: by 2002:a63:4553:: with SMTP id u19mr20936350pgk.436.1572273208969; 
 Mon, 28 Oct 2019 07:33:28 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6004:d1fe:706d:952a:57bd:23b6])
 by smtp.gmail.com with ESMTPSA id o7sm5154561pjo.7.2019.10.28.07.33.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 07:33:28 -0700 (PDT)
Date: Mon, 28 Oct 2019 20:03:17 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 3/3] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191028143317.GB29312@Mani-XPS-13-9360>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-4-manivannan.sadhasivam@linaro.org>
 <bf435b43-f118-f3cb-73ed-5fa67905c4aa@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf435b43-f118-f3cb-73ed-5fa67905c4aa@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_073329_753964_FAC0AAD2 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Marek Vasut <marek.vasut@gmail.com>, shawnguo@kernel.org,
 s.hauer@pengutronix.de, Tudor Ambarus <tudor.ambarus@microchip.com>,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>, festevam@gmail.com,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vignesh,

On Mon, Oct 28, 2019 at 05:20:40PM +0530, Vignesh Raghavendra wrote:
> Hi,
> 
> On 24/10/19 8:12 PM, Manivannan Sadhasivam wrote:
> > Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> > supports dual/quad I/O mode with 512 blocks of memory organized in
> > 4KB sectors. 
> 
> 512 blocks of memory organized into 64KB sector, right? In additional
> flash also supports 4KB small sector.
> 

Yeah, the wording is wrong here. Will fix it.

Thanks,
Mani

> Regards
> Vignesh
> 
> > The device has been validated using Thor96 board.
> 
> 
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
