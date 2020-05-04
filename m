Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0298F1C34B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:In-reply-to:Subject:To:
	From:References:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49hpyNLAkM5GJsDN35PFZ/w8QL/2vuzkWzbw18b5v9s=; b=dRuaAhFgqR50xfkIEcob9seA1
	cUh19r/G+b7Mi2SSVeXvE+0AwcsTgCHUsLuVpXqJSvPxviNLlPOmfhqGU/6eZVQNU8neOzbHtv0Nk
	m6/8pA0wDs0qp/xCZMUJLYKE1j2Fdh4LsX3GjdAocCHyKb8XEa0M0qDkSgXv+UiXIgEj//HRurLPM
	5usFhEQo7M1myJZb5dy7gR9BTDBhkteuggceEijLrDjbGhAqAQ+WtXgmVNsPiAEpwFbBsOzzFtM40
	khhqkMp/s2+CKqUtgFz19IvOv7Z9jdYOmkRComKe0UvVPwTCcuNZAHdEVtQT1AlyzRtcwo4O+2qx7
	6dcvgWLlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVWhY-00009Y-FY; Mon, 04 May 2020 08:43:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVWhR-00008x-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:43:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=leviathan.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <s.trumtrar@pengutronix.de>)
 id 1jVWhP-00048L-SB; Mon, 04 May 2020 10:43:39 +0200
References: <20200326095357.23841-1-s.trumtrar@pengutronix.de>
 <20200326095357.23841-2-s.trumtrar@pengutronix.de>
User-agent: mu4e 1.4.1; emacs 28.0.50
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: Re: [PATCH v3 2/2] ARM: dts: socfpga: Add fpga2hps and fpga2sdram
 bridges
In-reply-to: <20200326095357.23841-2-s.trumtrar@pengutronix.de>
Date: Mon, 04 May 2020 10:43:37 +0200
Message-ID: <87k11s2ipy.fsf@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_014341_415839_37494012 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dinh Nguyen <dinguyen@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Steffen Trumtrar <s.trumtrar@pengutronix.de> writes:

> Add the remaining two bridges on the Cyclone-V SoCFPGA SoCs.
>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boot/dts/socfpga.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm/boot/dts/socfpga.dtsi 
> b/arch/arm/boot/dts/socfpga.dtsi
> index 7f0480354ee6..c2b54af417a2 100644
> --- a/arch/arm/boot/dts/socfpga.dtsi
> +++ b/arch/arm/boot/dts/socfpga.dtsi
> @@ -542,6 +542,20 @@ fpga_bridge1: fpga_bridge@ff500000 {
>  			status = "disabled";
>  		};
>  
> +		fpga_bridge2: fpga-bridge@ff600000 {
> +			compatible = 
> "altr,socfpga-fpga2hps-bridge";
> +			reg = <0xff600000 0x100000>;
> +			resets = <&rst FPGA2HPS_RESET>;
> +			clocks = <&l4_main_clk>;
> +			status = "disabled";
> +		};
> +
> +		fpga_bridge3: fpga-bridge@ffc25080 {
> +			compatible = 
> "altr,socfpga-fpga2sdram-bridge";
> +			reg = <0xffc25080 0x4>;
> +			status = "disabled";
> +		};
> +
>  		fpgamgr0: fpgamgr@ff706000 {
>  			compatible = "altr,socfpga-fpga-mgr";
>  			reg = <0xff706000 0x1000

friendly reminder.

Last time (on version 2) the discussion ended with "leave it to 
the board files, because accessing the bridges without FPGA 
firmware is bad". Which is correct of course. I still don't see 
why the bridges nodes shouldn't be in the socfpga.dtsi and will 
then be just enabled in the board files without having to define 
the resets and all.


Best regards,
Steffen Trumtrar

-- 
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
