Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E342A1A6631
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8R7Mxkvx4+FATBA70Hw/laC/jFUF4UxZpurKu+Wego=; b=NwIkM9H9InMljn
	e4H9UhMGZMLmZFTXTOJ27abP3cWm4msbRkFtIo1q6uutK9q5SaYzG+ATNMzG9mdjfztXwtC0IPN1R
	C0rxNT/Yu7HvrhgYAT053PHD6txVqfR7MMho9HxaGcwgEC1F1vBc5/7upeA+53iPf3rUCFNhU5DP5
	pP/38zIVf8pY1SosEAy9FLjEB3vbFYdVPdlsP3Fca/eipD5FO2Z0c3isnDtdesIwKl2xciryZ22Op
	tjZtYM6lEPUe0H6nMgB7tRKEVDg01vdfw+0JYbBxm0EqlwkFmyyg7mtRkhoKSStQu2JKxl9dnm7z4
	6sXQR5oYCfvR+1olKRQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNxwI-0005ez-RF; Mon, 13 Apr 2020 12:11:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNxw8-0005de-VL; Mon, 13 Apr 2020 12:11:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so9128336wmc.0;
 Mon, 13 Apr 2020 05:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sDwufY0StyILZp3PnMldwC+D1HdNes1kw0On06OjlNc=;
 b=QEzpxnaj561i77JZ7ZNh0LM/iLxJwlEiaDrn7dsRcTFkvaNFGcumBPUMQd05Ux0BYK
 F/LQz2RoIXPuCmlpR76yCbRN9I70l2370ijzF+kRxy9jalAJyGuw8oRjzV4dq6/WfQLA
 1b6dQQ6pHi4qr7xjcNZCPjIj9RwKCkhvRK2pG3DCLjtXA10xkqEBk2uXl3VuYdsFYv2c
 0SBzg344UBOVx8gVqvNXNFcHm3KwQz3sfbJCw/Xn2MhLH39M8TPPW92ksyfb0E6ZJnC+
 P6r4CBTAipE7aAh8117KNByDS8XzKiQ8VVF3+dlC6uAtij0JqI6dA3PtcT4d8n1vCPiH
 DRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sDwufY0StyILZp3PnMldwC+D1HdNes1kw0On06OjlNc=;
 b=T+WCnJ7/2Iy5eT1k6tWG41FmIU+KCiG6wODh2PRRRawv33QLW7vr2AupA0fIRC1sFB
 ZctVH6M9sgvTHEhDuKfetkIqXixPfq5oUsnmEpjm/TM6mcZHsjHb06unQqV5Alc2HdFN
 oqCJF6zEwM/AVsaTeBv5IXm1kmg3NNntrcDl8ADKm1uKJ+/9wvXEUxUAFwsFZWpMozWa
 gcYppJe920cnmzgRMj1pIroDRBNei1jUk2JhhyBTYxyiqhJAwbLSj2cQgoTHWNHxN0wb
 bd8v4x3iKvNJVmJWeO8Ks/trgrKh8PWz07tTsbqZEiRHC4WtcQGP/57u31bepAieXKqp
 mFMQ==
X-Gm-Message-State: AGi0Puau0QFFLhWuNY0I529eO1FhwAlLCpAJgjYqidlzObZZ6uuns5hI
 vLdKEkZVDeIwRv9AxO4o5Qo=
X-Google-Smtp-Source: APiQypJQ7DrprTjeXvq8sveC8OXT02qGyxyLpRoUKZrLIBevOvVFkBeHAB/K6XO4aeY6ZcAxdyiibQ==
X-Received: by 2002:a05:600c:21d6:: with SMTP id
 x22mr19342632wmj.95.1586779863908; 
 Mon, 13 Apr 2020 05:11:03 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id p16sm8136294wro.21.2020.04.13.05.11.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 05:11:03 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: mt8173: Add gce setting in mmsys and
 display node
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org
References: <20200409055012.199320-1-hsinyi@chromium.org>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <032911c9-ba57-4586-969b-90358be19a10@gmail.com>
Date: Mon, 13 Apr 2020 14:11:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200409055012.199320-1-hsinyi@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_051137_036345_641EF698 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/9/20 7:50 AM, Hsin-Yi Wang wrote:
> In order to use GCE function, we need add some informations
> into display node (mboxes, mediatek,gce-client-reg, mediatek,gce-events).
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---

Applied to v5.7-next/dts64

Thanks!

> change log:
> v1->v2: align with
> 19d8e335d58a ("dt-binding: gce: remove atomic_exec in mboxes property")
> 60fa8c13ab1a ("drm/mediatek: Move gce event property to mutex device node")
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index ccb8e88a60c5..8337ba42845d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -549,7 +549,7 @@ gce: mailbox@10212000 {
>  			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_LOW>;
>  			clocks = <&infracfg CLK_INFRA_GCE>;
>  			clock-names = "gce";
> -			#mbox-cells = <3>;
> +			#mbox-cells = <2>;
>  		};
>  
>  		mipi_tx0: mipi-dphy@10215000 {
> @@ -916,6 +916,9 @@ mmsys: clock-controller@14000000 {
>  			assigned-clocks = <&topckgen CLK_TOP_MM_SEL>;
>  			assigned-clock-rates = <400000000>;
>  			#clock-cells = <1>;
> +			mboxes = <&gce 0 CMDQ_THR_PRIO_HIGHEST>,
> +				 <&gce 1 CMDQ_THR_PRIO_HIGHEST>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
>  		};
>  
>  		mdp_rdma0: rdma@14001000 {
> @@ -996,6 +999,7 @@ ovl0: ovl@1400c000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL0>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
>  		};
>  
>  		ovl1: ovl@1400d000 {
> @@ -1006,6 +1010,7 @@ ovl1: ovl@1400d000 {
>  			clocks = <&mmsys CLK_MM_DISP_OVL1>;
>  			iommus = <&iommu M4U_PORT_DISP_OVL1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xd000 0x1000>;
>  		};
>  
>  		rdma0: rdma@1400e000 {
> @@ -1016,6 +1021,7 @@ rdma0: rdma@1400e000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xe000 0x1000>;
>  		};
>  
>  		rdma1: rdma@1400f000 {
> @@ -1026,6 +1032,7 @@ rdma1: rdma@1400f000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xf000 0x1000>;
>  		};
>  
>  		rdma2: rdma@14010000 {
> @@ -1036,6 +1043,7 @@ rdma2: rdma@14010000 {
>  			clocks = <&mmsys CLK_MM_DISP_RDMA2>;
>  			iommus = <&iommu M4U_PORT_DISP_RDMA2>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0 0x1000>;
>  		};
>  
>  		wdma0: wdma@14011000 {
> @@ -1046,6 +1054,7 @@ wdma0: wdma@14011000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA0>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA0>;
>  			mediatek,larb = <&larb0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x1000 0x1000>;
>  		};
>  
>  		wdma1: wdma@14012000 {
> @@ -1056,6 +1065,7 @@ wdma1: wdma@14012000 {
>  			clocks = <&mmsys CLK_MM_DISP_WDMA1>;
>  			iommus = <&iommu M4U_PORT_DISP_WDMA1>;
>  			mediatek,larb = <&larb4>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x2000 0x1000>;
>  		};
>  
>  		color0: color@14013000 {
> @@ -1064,6 +1074,7 @@ color0: color@14013000 {
>  			interrupts = <GIC_SPI 187 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR0>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x3000 0x1000>;
>  		};
>  
>  		color1: color@14014000 {
> @@ -1072,6 +1083,7 @@ color1: color@14014000 {
>  			interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_COLOR1>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x4000 0x1000>;
>  		};
>  
>  		aal@14015000 {
> @@ -1080,6 +1092,7 @@ aal@14015000 {
>  			interrupts = <GIC_SPI 189 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_AAL>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x5000 0x1000>;
>  		};
>  
>  		gamma@14016000 {
> @@ -1088,6 +1101,7 @@ gamma@14016000 {
>  			interrupts = <GIC_SPI 190 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_DISP_GAMMA>;
> +			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
>  		};
>  
>  		merge@14017000 {
> @@ -1193,6 +1207,8 @@ mutex: mutex@14020000 {
>  			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_LOW>;
>  			power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
>  			clocks = <&mmsys CLK_MM_MUTEX_32K>;
> +			mediatek,gce-events = <CMDQ_EVENT_MUTEX0_STREAM_EOF>,
> +                                              <CMDQ_EVENT_MUTEX1_STREAM_EOF>;
>  		};
>  
>  		larb0: larb@14021000 {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
