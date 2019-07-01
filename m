Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3D9249D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EdiOT80VThPlo/OTW8uRGLHi0sanWAfdZ4gYrOsKmk=; b=DQUStzwa8oDRqp
	q8h+QnRd5D8K8hiZ4DGFjvNi1a5myaZqQAtCKU5G86VHF8+UjuHgIRSNSZVgiAz+JQgLnCyVWCMDN
	IzVd0fb0XD70lY/HcPPijQtz+9QkBe2DFkps9g2BrKZpTc4mWnvF0XTms9T2XPC/GsDcDTbpwYwg+
	ZfG/wQoVLxlGHYDq8dGH9piDy4ZeTLokUlGw2sC0qj73Tz0NkJmsMOfatdAZvrJXZmRvK8Ne1A3j4
	sHoBewRSjfFX5z5AwSNiegXbwFHtBHPU0fcoCzVhEw78GMMXimMOIXzKX4mB3/swKjZlSgAQFT9g7
	xxRv7wK4Smu9Qf/S8fFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzqd-0001j2-It; Tue, 21 May 2019 08:10:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzqR-0001id-HK
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:10:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6AE0121773;
 Tue, 21 May 2019 08:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558426199;
 bh=/004y5rsgjqXUQAztnJ6E7c2FQLI5fNa1XatRR1RBJ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qxt3kyP+2/0jOC5auPLGolZjJwNUYFnVqo8URgLmXqKLDdgVhmY+QfZjeNNl0XxHe
 Zpu0RScCf2gxmWEwnOoSdsAiS5q7wjdz/CMomlSBpsbFA7ZsuRVZcwhotSgBnGCVKc
 4uH4rYcfD4GNrtql+4Hh/IXt0fxznh2x7NfGHuts=
Date: Tue, 21 May 2019 16:09:01 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8qxp: Add gpio alias
Message-ID: <20190521080900.GC15856@dragon>
References: <1557809536-749-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557809536-749-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_010959_584341_0C2B0A41 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 04:57:17AM +0000, Anson Huang wrote:
> Add i.MX8QXP GPIO alias for kernel GPIO driver usage.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index b17c22e..923705e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -22,6 +22,14 @@
>  		mmc2 = &usdhc3;
>  		serial0 = &adma_lpuart0;
>  		mu1 = &lsio_mu1;
> +		gpio0 = &lsio_gpio0;

Okay, it's already out of alphabetical order, but let's not make it
worse.

Shawn

> +		gpio1 = &lsio_gpio1;
> +		gpio2 = &lsio_gpio2;
> +		gpio3 = &lsio_gpio3;
> +		gpio4 = &lsio_gpio4;
> +		gpio5 = &lsio_gpio5;
> +		gpio6 = &lsio_gpio6;
> +		gpio7 = &lsio_gpio7;
>  	};
>  
>  	cpus {
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
