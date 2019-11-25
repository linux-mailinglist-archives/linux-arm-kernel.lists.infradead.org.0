Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3E108FBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:18:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qI+i1SWjYyhxxLCPKU6Hq1XectQ2zIR9TFrBP/rfF7k=; b=nLWHQT8p99JRPB
	aUAL0qD8+I1BiaXCDn2fbAFhpB+FxDKjhSM5Ps3aAAVPp7HtCqX+vIDvAuZ0glp7HiqxlXD7kHUGL
	rfiAQMyqfINQg4h7juVwp+J/GBoLlfjlgfYcnCmxb05EvqZhf82C2qAPFZiLoQFws9ENRIxjLwpjm
	uLtu3zQNqyEF4znMX/EdnoH4hYzaw0iIuoSwILyDTNRrbJRj/90UIKnU6BnXtp0z1i4AzB7r8pFZN
	n8fB6SP1tE3WmnwbheTyriJHWGm+ZCBMWmXS4QaHy894wabCgPcPfPx3/mowWDN4HZY92jN99exwE
	Sh7mmFM4xF68HU149G3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFBm-0004TO-CT; Mon, 25 Nov 2019 14:18:06 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFBb-0004Sd-Bq
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:17:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574691472;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=r/C4z8eqmf4EqK6PYy8WsArzStWXQ+mb5cSxKvoTl4Q=;
 b=suA2PJ3jDlQH99gUhnYShabSmPpsbHIoLjqHj9kenZK+NQD2U4awE0X74gyRpyHGnG
 p1clLwJBuRoinsT6asagDL+Ukm5F7UIHg7UEBVRe8dbOJcnO+9aJhIpdaFpWPs7tBRO+
 cuMJgHtW0P0UUXNQ+GgfHmuGmE1eS6NXjr9bUIh7CbmddeVJ2ew9/eRIysyzAFhnOc3X
 GiFCClZ0hG6xl/YF2hPgrnlNunwy8Q1q/5xjzSgbVfWeVe0JyUnHzUpG4OooI84Jjgr4
 cPZhxpJZz8a+l4pOXoOTCjRl6JstBZstULNA6zwelVxODUuoJoaXx0WwUKosU/BtYq/q
 pAyg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266HpF+ORJDYrryYBhveg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPEHn0tU
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 15:17:49 +0100 (CET)
Date: Mon, 25 Nov 2019 15:17:40 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 4/5] ARM: dts: ux500: Add pin configs for UART1 CTS/RTS
 pins
Message-ID: <20191125141740.GA55734@gerhold.net>
References: <20191125122256.53482-1-stephan@gerhold.net>
 <20191125122256.53482-4-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125122256.53482-4-stephan@gerhold.net>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_061755_729759_757C156A 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:10 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 01:22:55PM +0100, Stephan Gerhold wrote:
> UART1 an be optionally used with additional CTS/RTS pins.

s/an/can, duh.
I will fix this if a v2 is needed for some reason; otherwise,
can you fix this when applying the patch?

Thanks!

> The pinctrl driver has an extra "u1ctsrts_a_1" pin group for them.
> 
> Add a new pin configuration to configure them correctly if needed.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 26 +++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> index b6d0a60e9aed..e85a08ad2ea7 100644
> --- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
> @@ -65,6 +65,32 @@
>  				ste,config = <&slpm_out_wkup_pdis>;
>  			};
>  		};
> +
> +		u1ctsrts_a_1_default: u1ctsrts_a_1_default {
> +			default_mux {
> +				function = "u1";
> +				groups = "u1ctsrts_a_1";
> +			};
> +			default_cfg1 {
> +				pins = "GPIO6_AF6"; /* CTS */
> +				ste,config = <&in_pu>;
> +			};
> +			default_cfg2 {
> +				pins = "GPIO7_AG5"; /* RTS */
> +				ste,config = <&out_hi>;
> +			};
> +		};
> +
> +		u1ctsrts_a_1_sleep: u1ctsrts_a_1_sleep {
> +			sleep_cfg1 {
> +				pins = "GPIO6_AF6"; /* CTS */
> +				ste,config = <&slpm_in_wkup_pdis>;
> +			};
> +			sleep_cfg2 {
> +				pins = "GPIO7_AG5"; /* RTS */
> +				ste,config = <&slpm_out_hi_wkup_pdis>;
> +			};
> +		};
>  	};
>  
>  	uart2 {
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
