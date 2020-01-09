Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2FB1351FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4H44Tk1X/rzIhUQsJ8xRR9UMxxrh7+r+9lKQwm2rgY=; b=t/I43nkmfRWwK9
	xchXdxrm4txSHssxo8BC+qNkw0KsC8jRhN/bEm0mBGlxxBGDpDEPJvVeuD9zNSDt/y3dD81+65pxC
	JV6WPVnfu6wOO9sQbwhmbEGBxrxtiF3YzPekqtxf2OPhyqsqParxzWz3Qy60cfw9dnL3pRJA9aOdr
	VsSmgAnokjFWk/MPsiN/0WpfYvVG9m99q8u1ExPR/JLszfmLO2M7TWWxvWFJYwgwfiRJ0vyFqi5rY
	OLGbxroMPRseAwg3vAgQ+/iDu3NAGioxEFhPgRiY0DjT5+CqQ+Fa3UgzCGIwq0NvBFCG3Z2lVm86y
	opTzGbnxgAAp/S3kV8ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOaB-0003cO-MO; Thu, 09 Jan 2020 03:34:03 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOa0-0003bS-Dt
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:33:54 +0000
Received: by mail-pj1-x1041.google.com with SMTP id bg7so506648pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 19:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UEKrA4j5xg849HgxG4ZgJ3CHls4ZaTF+OB+u2nBy33w=;
 b=jWLAJLZge6mjoh1B+Y+exKkX3xhYHt+O6tdsCcpbh8x45x/doL4BEYVF5JzTD65rh0
 kZzfZVBlcTWckd+6njdzCCC2QQe+eyMk0FbyNASLAZ0Rsgvj8LQ+Z7vQfJO1OHetV4fg
 Q3Ez3EgGL4mFqtojk2UnwqJM/KthIVG59SZ/7ORSUI8oGRJ1D2KXd9e4AJkY2f6ymYur
 ssnptz8InuRmPaKuppPx8J1X+hoEX4Z31wDuetK+BwVdMPrn5oz8vHd7D9D1ySQt8bx3
 iErcFc6+eppa5JicBfKErKsOinntQOstqc5Wu1agatr0LlLIjKIusMHeDLko5U4AeCnr
 6uJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UEKrA4j5xg849HgxG4ZgJ3CHls4ZaTF+OB+u2nBy33w=;
 b=B7JtPh6E/WInrvN+amlceaxplY3jFxtzVCHJE407OuroZLj65RTiRzGje1VGzN61ku
 ytXG7kpgh+bQgoijbFdWHBCIhExN8iuV389vcGnP+lNswXzokSls5bI/E8jA+22EKprO
 HpsMZ5gK2rkk8OtDBTeyaO5pMAN3lFKGAr3JtJqh6WtqYXdD+CeJic8sAWTBD/ufvGPG
 GITSoswsEIy8xdhX+OBz0G68jDpAY0S02mwnjHHLv37HMwYDp2Jf9bPOIBNrTrcwjMvL
 TR/3XpZU0QiOA481n0GdDmSDZPRRE1Y+Ayds4WLrEPPiFuVz5Gq0SuvXPfhTgfh9ODxv
 t8dA==
X-Gm-Message-State: APjAAAW6SLvi+WgqqHEz5dQIlh6bJ/0PwJHPsLIGjyXLjZpxQy9bEWS7
 CFPAqWrWIaii8fMv1tKautn4
X-Google-Smtp-Source: APXvYqyFA9CYznyRkR2hqVgK4ysMEuFUTXN+FNbeSuaIQzFbysYpCBVZUkL6I/LUt8KQkOVuDS6NTg==
X-Received: by 2002:a17:902:b709:: with SMTP id
 d9mr9348044pls.235.1578540831432; 
 Wed, 08 Jan 2020 19:33:51 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:795:afda:19cb:953c:6ae:6158])
 by smtp.gmail.com with ESMTPSA id z6sm5261493pfa.155.2020.01.08.19.33.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 19:33:50 -0800 (PST)
Date: Thu, 9 Jan 2020 09:03:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Subject: Re: [PATCH v2 0/4] Add support for Thor96 board
Message-ID: <20200109033342.GA3281@Mani-XPS-13-9360>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_193352_473672_B6AF257C 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 darshak.patel@einfochips.com, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Wed, Oct 30, 2019 at 02:31:20PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds support for Thor96 board from Einfochips. This board is
> one of the 96Boards Consumer Edition platform powered by the NXP i.MX8MQ
> SoC.
> 
> Following are the features supported currently:
> 
> 1. uSD
> 2. WiFi/BT
> 3. Ethernet
> 4. EEPROM (M24256)
> 5. NOR Flash (W25Q256JW)
> 6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion
> 
> More information about this board can be found in Arrow website:
> https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools
> 
> Link to 96Boards CE Specification: https://linaro.co/ce-specification
> 
> Expecting patch 1 to go through LED/Rob's tree, 4 through MTD tree
> and 2,3 through Freescale tree.
> 

Any update here? Patch 4 is already merged.

Thanks,
Mani

> Thanks,
> Mani
> 
> Changes in v2:
> 
> * Added patch for documenting commonly used LED triggers
> * Added Reviewed-by tags for bindings patch
> * Changed, fsl,uart-has-rtscts to uart-has-rtscts in dts
> * Modified the commit message of MTD patch
> 
> Manivannan Sadhasivam (4):
>   dt-bindings: leds: Document commonly used LED triggers
>   dt-bindings: arm: Add devicetree binding for Thor96 Board
>   arm64: dts: freescale: Add devicetree support for Thor96 board
>   mtd: spi-nor: Add support for w25q256jw
> 
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  .../devicetree/bindings/leds/common.txt       |  17 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
>  drivers/mtd/spi-nor/spi-nor.c                 |   2 +
>  5 files changed, 602 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
