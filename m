Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5A5EE1F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uw6ET2F7VAuZ1g4lhBkkO1hRUrOuklKehbx2Yy5q5jA=; b=spz2E76eEZnkD+
	Q8e/RUWBMHAhCihqyxBGYHEiFU+dpGHSRfE+BhkY7AwvyfLWIU6lQTuw44woEgkbyPX4ABoQkR/2d
	gDPhzhyqlmNImlKBGnoN7aR2iIG8JYC1ZhdhOFVgdGHfmdhFr7aIzD109C00Uxul55laYa+6Rkx1q
	CS5vU8Ic653B7wUxAylTe1hjqIu3lfbgtdLg/0YchzqRic2N+aZ9//+B+GqesrYSjXOgr1xqJ0dLA
	Sxr5f6uHpM4WjFBB3/t5Q7PPV83rxnVeAfgRNTkmnfwACDpEjS0sRMgX6zUtl3Nl70HZPJKQ3tDgS
	5L8M8a9X5sXOjEFvdvHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRd7z-00031H-Vh; Mon, 04 Nov 2019 14:14:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRd7s-00030F-Cc; Mon, 04 Nov 2019 14:14:37 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iRd7j-0001gt-I1; Mon, 04 Nov 2019 15:14:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
Date: Mon, 04 Nov 2019 15:14:26 +0100
Message-ID: <7600269.ktiZa05prH@diego>
In-Reply-To: <17c7c736-46a2-fee6-9bf3-f351a7871e20@fivetechno.de>
References: <17c7c736-46a2-fee6-9bf3-f351a7871e20@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_061436_580625_AA4D1A94 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Markus,

Am Montag, 4. November 2019, 15:08:55 CET schrieb Markus Reichl:
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
> v2: Add new compatible string for roc-pc with mezzanine board.
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   7 +-
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3399-roc-pc-mezz.dts  |  72 ++
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 757 +----------------
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 770 ++++++++++++++++++
>  5 files changed, 850 insertions(+), 757 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezz.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index bf86e8237363..e46af071a5fe 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -87,11 +87,16 @@ properties:
>            - const: firefly,roc-rk3328-cc
>            - const: rockchip,rk3328
>  
> -      - description: Firefly ROC-RK3399-PC
> +      - description: Firefly ROC-RK3399-PC standalone
>          items:
>            - const: firefly,roc-rk3399-pc
>            - const: rockchip,rk3399
>  
> +      - description: Firefly ROC-RK3399-PC with mezzanine
> +        items:
> +          - const: firefly,roc-rk3399-pc-mezz
> +          - const: rockchip,rk3399
> +

Please do this similar to like the NanoPC boards, so like

      - description: Firefly ROC-RK3399-PC
         items:
          - enum:
              - firefly,roc-rk3399-pc
              - firefly,roc-rk3399-pc-mezzanine
           - const: rockchip,rk3399

including using the full name (-mezzanine) here and in the
actual dts filename+compatible.

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
