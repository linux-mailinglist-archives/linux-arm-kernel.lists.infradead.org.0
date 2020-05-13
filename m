Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D5A1D0B39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKjRy7WCXElw1SvxC1+L42jK1wvGlPIBMZ7F6W5HoPE=; b=Nu5NBpmp9k7luk
	Oy8xpJSfeh6KwUxCamYrLQFbR7it1+/BMrhB1/t4axp8kwlEKvg2LFu9y0ot5qcIlHVa/c/9v44sk
	5KPu1FNgi5135gnr60NM7itpwWlYKwKFp81hXjk8UWqhhun+AYxUWVUIpXy+o3lul2jx9rnuxITKr
	TdrAGejPg7223LQyiDn+AowzscANsm5bmGf2T+dbqrVEiGJ47Dmdv/tJg4/iuB7RzkvEfYdFW0QvK
	mqh/wU3Sqo3HMUOndtktZefYvYxOo/giB9bJQ8OV+WI+8AYDpJSVoq7r6CY5SPu/KkrxRJ5pDEDYz
	vz7B69h0attaDlNmC9gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYn5I-0002sX-DJ; Wed, 13 May 2020 08:49:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYn5B-0002sD-0v
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:49:42 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91BAF206F5;
 Wed, 13 May 2020 08:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589359780;
 bh=Qauh/VwoTNTJSJLEJKWQMbLlhyJq/zOthvGyPHoKN80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rxgeSGbpGJGcIZyG6xdYlVcNjSvCvtsQUe79QDaTpoIoMwNBen7tL/1ZtaQHXC0ch
 alUNBeEp82sfVe4/75o6xYhC3CjgHss9Gj8a8aZNBwYNqyKdg1I63Hks+Bhz244xxE
 2Ux1qlhTs5J0tBfy2TuK2JRKaZqDxUaZgwyqNk4s=
Date: Wed, 13 May 2020 16:49:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: fugang.duan@nxp.com
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: add "fsl,imx6sx-fec" compatible
 string
Message-ID: <20200513084933.GF26997@dragon>
References: <1588154654-13684-1-git-send-email-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588154654-13684-1-git-send-email-fugang.duan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_014941_085085_3965244C 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, Anson.Huang@nxp.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 06:04:14PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add "fsl,imx6sx-fec" compatible string for fec node, then
> i.MX8MP EVK ethernet function can work now.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 9b1616e59d58..b5df957c5063 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -615,7 +615,7 @@
>  			};
>  
>  			fec: ethernet@30be0000 {
> -				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec";
> +				compatible = "fsl,imx8mp-fec", "fsl,imx8mq-fec", "fsl,imx6sx-fec";

In this case, "fsl,imx8mq-fec" can be dropped?

Shawn

>  				reg = <0x30be0000 0x10000>;
>  				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
>  					     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
