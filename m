Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCD6CCD98
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 03:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOa1VdamG3HH6g0oAjeLVl7gVC0JwhU3Zv+KndTKrW0=; b=UEcsc7V2q2rYw/
	DZTDnobCxgUhdTkSGOBZmnAoM1hU3SEcFK2H65LP2qberwoXUugI1jGQ0SRlmSZUykhTh7Qu1L25L
	hqOJlnLO4E5Oi4wqNB+i4BUJhnbVkO0Bk0XfaMEambbhBT1d9+5gQM8aepIkcQHUzL/ABjXCOjcB1
	QCH1V7JkFC912tDC5rwIKaO1w/8Aw4T1I/vkzMOpYYttVy0sJKdib2nqX97coqE2UL3pPAQ2DFnC5
	b33oAdT2HV5rIOL1PBPLYua+kgXNlH+dlaXszN96hjQRLC5op97MvH/lzvCzkCsUJR2W3iLJ7yC1N
	yK7zj9yi7OmoNn/qMD6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGuvi-0001Qq-5w; Sun, 06 Oct 2019 01:01:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGuvY-0001Pu-G3
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 01:01:37 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41778222C5;
 Sun,  6 Oct 2019 01:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570323695;
 bh=u9QvhR9lqJ6StmNv8NAJZHc+hhhHyZb4CxaNHiDBHbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WTlXc+UR6+Nug1PPV4pT6l8dVEOguUDilWaamNP4vKos9Hm1wt/z8pvA1g2xjY8Ru
 b0evmTcy66sQg1h8ni8+cntfTbYTg6cluAVCQiXBX5l6HrKbSc2ee2MjpDuHZcmk3W
 KHyhcAn43L3AaJSR4iIVgIIwmwvJWbqsWvipz2JU=
Date: Sun, 6 Oct 2019 09:01:24 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: arm64: ls1028a-qds: correct bus of rtc
Message-ID: <20191006010123.GF7150@dragon>
References: <20190904085104.44709-1-biwen.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904085104.44709-1-biwen.li@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_180136_556610_2F736BD2 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 04:51:04PM +0800, Biwen Li wrote:
> The rtc is on i2c2 bus(hardware), not on i2c1 channel 3,
> so correct it
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>

This looks a like a fix.  Do we need a Fixes tag for it?

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index de6ef39f3118..6c0540ad9c59 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -133,11 +133,6 @@
>  				vcc-supply = <&sb_3v3>;
>  			};
>  
> -			rtc@51 {
> -				compatible = "nxp,pcf2129";
> -				reg = <0x51>;
> -			};
> -
>  			eeprom@56 {
>  				compatible = "atmel,24c512";
>  				reg = <0x56>;
> @@ -166,6 +161,14 @@
>  	};
>  };
>  
> +&i2c1 {
> +	status = "okay";

Please have a newline between properties and child node.

Shawn

> +	rtc@51 {
> +		compatible = "nxp,pcf2129";
> +		reg = <0x51>;
> +	};
> +};
> +
>  &sai1 {
>  	status = "okay";
>  };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
