Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A310EB17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ePGdPBC8LedVfVcr0H9PDqUUdbUswTGgrq3sF1dsXY=; b=hUcEiE7l64jg2E
	DMgL+0IJ7zBq5OuRC233sXjsk3yD7zE3yyR++vIp4pZ/4sMTCT2xQ5mnNdUxbHktlOf0Ao50sjh3W
	4F/2wEz7jhBt84dmCmoA29VmuyEiGViy1Ea+th/nvbN2M6twD9M+O8RyP7kmRpGJPyUSlbqtiryba
	UQ0/Tut3BowGSod8r/xptiWgk5fE1Btz5qVWRdcOdtO7N4lJAicjY4SMQe3iqXSxPJjRNKUWKJCMq
	bVqjgSjOylUNojOAOaiNrwTE9Fwz3GB0EX19Q/CcsO/upUwaqQw/UgxJTAB8/0LEmGmCVSd4lVwDG
	FGc4yBlXMQJHBudWJToA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibm3n-0007yX-Pf; Mon, 02 Dec 2019 13:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibm3h-0007y9-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:48:14 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A73332053B;
 Mon,  2 Dec 2019 13:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575294493;
 bh=68gVpj7OMA9BcFgcDkkN8ZgFocPqY7k3fD758PWkQZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TpzXSedQXEBTjAuBHm2WPPu+7DthlU4UXTfJNyoz8bG/sk0Di+Dl684WtoB9RsQ9o
 w9M0Lv9xK4Cif9eBB3qP7GqLn6Mgo8tSrwOb194G8+w6QHwEJ63x0YYgwX8FLvW1NE
 k5Zv8qqC8bsA6zQhMdkWxRGDf3U1L2DiLjt3QIYI=
Date: Mon, 2 Dec 2019 21:47:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7ulp: Add cpu clock-frequency property
Message-ID: <20191202134748.GB21897@dragon>
References: <1572918578-13544-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572918578-13544-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_054813_538998_758BFEA6 
X-CRM114-Status: GOOD (  14.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 09:49:38AM +0800, Anson Huang wrote:
> Add "clock-frequency" property to avoid below warning on i.MX7ULP:
> 
> [    0.011762] /cpus/cpu@0 missing clock-frequency property
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm/boot/dts/imx7ulp.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index d37a192..87b2237 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -41,6 +41,7 @@
>  			compatible = "arm,cortex-a7";
>  			device_type = "cpu";
>  			reg = <0>;
> +			clock-frequency = <500210526>;

I cannot find the binding doc for this property.  What is the
definition of it, the maximum frequency that the cpu could possibly run
at?

Shawn

>  		};
>  	};
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
