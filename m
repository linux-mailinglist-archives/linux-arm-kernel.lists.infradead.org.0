Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1B81CC26F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 17:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=0oUFnmORrYEjzjsV+SO8zp1kVDIUVPb9oZGVtkbh3fc=; b=X6zdgNEcld6rhT
	+i6Muz/PuQ5Pbqamb5C1jlu2cnlEtmpPL2tyX6OU+P/AlCK9ae/Kr3dj+UQpklhgA8PKYQQX+aZg1
	rbNMbfN//Ykv9x/nIhxq7ajC3Uv7+tQKOKR1MWu8Sf/8JX+CIxbkRoIFmDWA034VYWDqbzhXgA00Q
	K80VQjOO/oaFJfmnAIxTbSKieWd4Atrya6YiFhRvY93iTbTeRZX2jrfUP/QewYGRF7xGCMakexfVD
	y6FJfAg2+68I8MWaoO0FagTwSOhs2qy28T9Tk6CvED9mJGEjM30+0PeolWkN1BDQz09Y9VOUUszU6
	l03fYnAV3gda4pnAlMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXRTh-0004rj-6V; Sat, 09 May 2020 15:33:25 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXRTY-0004r3-OI
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 15:33:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JgmA1XKh2hvtQmy33sPmh16aTHMDwUxJXCit/7l1/68=; b=Y1MBgsdLckmFXnnOd2KWaSLqct
 LeKw5X/AfbnevefC7rR3qIDml7EQDBp09/kaBW1OWVfDP1gUGUMkPKPmPyebhQdqMrujHBkNvj5sA
 jZ0p8yz+rIC1tIPu8+9LduuLqtDDwsokuurXwnoSwI+jVfTi4JH+H5Ak2P7oS94U0dZ0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jXRTX-001W1U-DD; Sat, 09 May 2020 17:33:15 +0200
Date: Sat, 9 May 2020 17:33:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v1 2/3] armv8: gpio: add gpio feature
Message-ID: <20200509153315.GR208718@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509103956.26038-3-hui.song_1@nxp.com>
 <20200509103956.26038-2-hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_083316_789314_CFB12D80 
X-CRM114-Status: GOOD (  11.34  )
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

On Sat, May 09, 2020 at 06:39:55PM +0800, Hui Song wrote:
> From: "hui.song" <hui.song_1@nxp.com>
> 
> add one struct mpc8xxx_gpio_plat to enable gpio feature.
> 
> Signed-off-by: hui.song <hui.song_1@nxp.com>
> ---
>  .../include/asm/arch-fsl-layerscape/gpio.h    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> 
> diff --git a/arch/arm/include/asm/arch-fsl-layerscape/gpio.h b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> new file mode 100644
> index 0000000000..d8dd750a72
> --- /dev/null
> +++ b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2014 Freescale Semiconductor, Inc.
> + */
> +
> +/*
> + * Dummy header file to enable CONFIG_OF_CONTROL.
> + * If CONFIG_OF_CONTROL is enabled, lib/fdtdec.c is compiled.
> + * It includes <asm/arch/gpio.h> via <asm/gpio.h>, so those SoCs that enable
> + * OF_CONTROL must have arch/gpio.h.
> + */

This does not seem right. You would expect each sub arch to have a
subdirectory in arch/arm/include/asm/ when in fact none do.

	     Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
