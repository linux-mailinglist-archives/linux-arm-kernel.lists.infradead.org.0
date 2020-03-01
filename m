Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0333174A8B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 01:42:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJATy6AgX9bcFsITiAMG7bw8NECZmStPYMbV9zGhmwo=; b=qX0EfnSw7FBiA4
	en8Ap+I4K8vBj4Drs0gnS5gbSnbQh9VtWVNAdysB1tpdFh4K8ky/sWGudApLiXfLYAMtgLmW59xnr
	+cnjbnsSMkGaAETMurHSq2ApIw605pGDuqLYCqjaW4vGnOn9Hb4OjzC1g1xjnrVvSGto6OCBYC3vo
	/g6EUAzULe+a10QVS4TCYbwSRYB2x7BUR41fou31wTZfoKNOenLn1VYuU9R+NBUPoxPU78p0gILel
	RE4e29emVGVyWsk1ju/eMqScElmgsDeLj1TIIZCFsFpBokgDSuUIhAl571MA3R5Pe6ZOIXCpNfeL8
	0YlKpazE7E/DwM3oJfEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Cgz-0002KK-27; Sun, 01 Mar 2020 00:42:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Cgn-0002Js-B4; Sun, 01 Mar 2020 00:42:38 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CgT-00052P-9b; Sun, 01 Mar 2020 01:42:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: Add doc for pine64 Pinebook Pro
Date: Sun, 01 Mar 2020 01:42:16 +0100
Message-ID: <2852313.2ZqhBMtFLq@phil>
In-Reply-To: <20200229144817.355678-2-t.schramm@manjaro.org>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-2-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_164237_532108_54504DE6 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 29. Februar 2020, 15:48:16 CET schrieb Tobias Schramm:
> This commit adds a compatible for the Pinebook Pro.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>

The old patch from Emmanuel already got an

Reviewed-by: Rob Herring <robh@kernel.org>

and as this is the same binding, this should just be kept :-)

[Mainly for me to remember as well]

Heiko

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 874b0eaa2a75..482a0cbfb18a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -402,6 +402,11 @@ properties:
>            - const: phytec,rk3288-phycore-som
>            - const: rockchip,rk3288
>  
> +      - description: Pine64 Pinebook Pro
> +        items:
> +          - const: pine64,pinebook-pro
> +          - const: rockchip,rk3399
> +
>        - description: Pine64 Rock64
>          items:
>            - const: pine64,rock64
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
