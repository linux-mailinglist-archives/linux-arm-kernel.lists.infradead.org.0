Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D599619FBC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 19:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwS1HhNEQGwSB/0oRh08gE6xa+9BITB3h3LxR3cq6cM=; b=kfMQTzOq65X+RH
	TZbDdKgbHtxbpKt7wul/2jFz4EUN5NLjIIjcRAlbXZXFvM+U0HAccspkRmDGp0fm11U57Db9kd09P
	LyD2EM+tLsXvxTzEU1xw9H41JU8RsmNg80RSVGWipoNFDCCrW25dADP4qrYOH/YrUFFVW2D2BWEJm
	GeIZ8uxmAkn8HBoH1JKZCLyL4ZUGR9hF/d/eNibrA11a5LrHBCrabcXwADYM0FD2qEoljIOv9x8Fy
	VnHMqKJAZxfpPLWpSszXGLQB10IeQmodfoua9KFiitUmGeaf34yjY/5n3a9sHhapv5e9N11oBlsEM
	HlI9dTXM9E8YfO7j50dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLVhT-0005sk-Bn; Mon, 06 Apr 2020 17:38:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLVhJ-0005sA-HZ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 17:38:10 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 66AE5F8D;
 Mon,  6 Apr 2020 19:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1586194211;
 bh=swkdVcdC2H1+7+6XfdlSPcf9t/No80pcQTnku5aQfJ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ckj6jk129jCHFALj+3tmXctBu5SN4Fh7d8H4kR+tW9Fgwp2TwdNJds+nOif2fa/id
 8TUP5EaZl4s3sxpNa88rr7p6Tn6wygC92QlrjXqxaWHJDd6dV9hhP4jhLllagayKd+
 eccAUhkdwlDgkwnwhbsEN9sfie3z98DEmTSVWRdU=
Date: Mon, 6 Apr 2020 20:30:02 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: media: i2c: Deprecate usage
 of the clock-frequency property
Message-ID: <20200406173002.GC16885@pendragon.ideasonboard.com>
References: <1586191361-16598-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586191361-16598-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_103809_724875_C95F617C 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

Thank you for the patch.

On Mon, Apr 06, 2020 at 05:42:37PM +0100, Lad Prabhakar wrote:
> OV5645 sensor supports input clock frequency ranging from 6MHz to 27MHz
> but the driver strictly expects this to be 24MHz (with tolerance of 1%)
> with this restrictions let the driver enforce the clock frequency

Maybe s/with/With/ ?

> internally to 24MHz rather then being passed as dt-property.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/media/i2c/ov5645.txt | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov5645.txt b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> index 72ad992f77be..a55bb728ea48 100644
> --- a/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> +++ b/Documentation/devicetree/bindings/media/i2c/ov5645.txt
> @@ -8,7 +8,6 @@ Required Properties:
>  - compatible: Value should be "ovti,ov5645".
>  - clocks: Reference to the xclk clock.
>  - clock-names: Should be "xclk".
> -- clock-frequency: Frequency of the xclk clock.
>  - enable-gpios: Chip enable GPIO. Polarity is GPIO_ACTIVE_HIGH. This corresponds
>    to the hardware pin PWDNB which is physically active low.
>  - reset-gpios: Chip reset GPIO. Polarity is GPIO_ACTIVE_LOW. This corresponds to
> @@ -37,7 +36,6 @@ Example:
>  
>  			clocks = <&clks 200>;
>  			clock-names = "xclk";
> -			clock-frequency = <24000000>;
>  
>  			vdddo-supply = <&camera_dovdd_1v8>;
>  			vdda-supply = <&camera_avdd_2v8>;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
