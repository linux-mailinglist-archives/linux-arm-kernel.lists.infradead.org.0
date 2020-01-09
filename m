Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264A9135B54
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:26:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tcKcAvjH8WOOmP6iH1VQWPA2I09oa1El/6Adlm2uxek=; b=JOWMGpIVTrdJ4R
	2crIZqgEvptdT6uXzhxuu+Cz3Zv5MIYWO5BgrpefOXr2VIyrgPCHDGkh6X8VOgfzrOHUh+TX7pnXB
	sS8vKADplb3Ith6UaGse0g/5W6lFqrBUId45X7FpjfL6tcs+pVE5cFaT/piwG8PI9MTB28uyJVWW4
	0Qha2WGl7UOfW0BBXAGwz+0sNZZsEYGa9oCQTgOSQzO+C1XQFo+29KlTfGig1vPASISWSIHR1kLdT
	C/n5R+c4Qc/viBI5ZytqIO6oESK5zKT1a92v9tnRL6x1DFXMullod+D/VpAwcV+0PYfFVhXNhv8iv
	mDKzMKky3GQKePsyGPTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYld-0008Ip-Mu; Thu, 09 Jan 2020 14:26:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYlW-0008Hp-78; Thu, 09 Jan 2020 14:26:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5E0F22934FF
Subject: Re: [PATCH 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and
 hana
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200109101042.201500-1-hsinyi@chromium.org>
 <20200109101042.201500-2-hsinyi@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <46ccc713-5951-62ee-1909-f572772217c2@collabora.com>
Date: Thu, 9 Jan 2020 15:26:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200109101042.201500-2-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_062626_389505_33DCCBB9 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hsin-Yi,

Thanks for sending this patch upstream, one comment below ...

On 9/1/20 11:10, Hsin-Yi Wang wrote:
> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> SoC.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  .../devicetree/bindings/arm/mediatek.yaml      | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 4043c5046441..a27b22f264a2 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -86,6 +86,24 @@ properties:
>            - const: mediatek,mt8135
>        - items:
>            - enum:
> +              - google,elm
> +              - google,elm-rev1
> +              - google,elm-rev2
> +              - google,elm-rev3
> +              - google,elm-rev4
> +              - google,elm-rev5
> +              - google,elm-rev6
> +              - google,elm-rev7
> +              - google,elm-rev8

Did you run dtbs_check [1] after having patch 2 applied? I think that will
trigger some errors. I am not sure if this should be a const instead of an enum
like we have in rockchip.yaml?

[1] make ARCH=arm64
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/mediatek.yaml dtbs_check

Thanks,
 Enric

> +              - google,hana
> +              - google,hana-rev0
> +              - google,hana-rev1
> +              - google,hana-rev2
> +              - google,hana-rev3
> +              - google,hana-rev4
> +              - google,hana-rev5
> +              - google,hana-rev6
> +              - google,hana-rev7
>                - mediatek,mt8173-evb
>            - const: mediatek,mt8173
>        - items:
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
