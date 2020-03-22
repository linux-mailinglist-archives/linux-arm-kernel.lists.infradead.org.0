Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F9018E9DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 16:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RuG48LXH2zL4DU2OtnSZvkkGD3/92pF8jN6YQ2vBozk=; b=CVItwgRnvEoaOD
	XkoRd6Qc7QWCDNFHAOcnNgzqWdiPInaPF/UiPJkUs3nO22OoogKY72KxSqgzL301lm7uIwHpSqsfO
	XL7z1R9HJ8nlEPSU7cWktNVnbLgznqNKIQES9dPXVyfIqssNLyknt7TfLfrXPhIzzC8NQ+z4e9qoH
	ywZmsMD7sf/SLS8TpZVAzhq+eP2v/mwz0Y8hsKdlxUmsWsv4xfXSUM6O81vLjGp5mU54ziaun6jFh
	PAmFmpwH7ztC4xaJhXksflktjQNhs/AG5zxbsUNMsc7eIFBoQOTgudcIwqXy6ryBIKELLWASo6R6n
	f9ed26CLS9wbkVe0amJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG2nR-000269-PF; Sun, 22 Mar 2020 15:45:53 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG2nI-00024O-ID; Sun, 22 Mar 2020 15:45:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so13532087wrc.8;
 Sun, 22 Mar 2020 08:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oW0vYewmMm0M3PXQVGqM0DMXOo8Xcl8P8bGj8WAcz1s=;
 b=UZAlZvIAW51LULMnDZHiLUIyOPiuB672JgdsY9xSfZmPxy9rSKsc2mRMp26i4Uv2Nm
 ByT7sJUTHNxolCeVb7eNDxWXO1BvR6+ZwFHcZxr9gHN8Vkac3Zd3B7DKjYykBp+GOABq
 T74BZntD5uAnvoQ3JlOfihftY9JeoXu0n8g6YdqPErGdkWIDmsNJGUTZ/a3m5CxP8t2f
 Wm2stFjip8ht8zH3nq0kba+vMB8i4avKJsePBOY2kIopk/amvbvEc0TAZ5aYMYUUOGy5
 4i9GaJXboD41m6m6h13rDonxBTFGTwN3i/luyjrBH1qfV3/xg4s6v2qj0j3nvvecqnqc
 H30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oW0vYewmMm0M3PXQVGqM0DMXOo8Xcl8P8bGj8WAcz1s=;
 b=NV8OT8g0sWEwm0kU/7yZDRvs7bqGvNDHdlkPxY+pNdqqyJdpuUTsq38UfjSzfADGEr
 hrWQdniQsB3AmanJ4X1eGzWPNom8+zGJUVcJ8VEzwV2wranu9RVxdUVCUTyRn5Pz9nfP
 SrNxpHAvG63Z6Mu+gAy1sydl4jCkugLyl3LDY0jaaa4CoYWYdDXscpL0GafvPl3nPblq
 /ksLIh09FdZsPSh03b4PvcfptyLFDh++d1uK4nr2LJfz9EbU4f+AM6nNyUAaJl/TtqPn
 0dJqSHrbzIYWMndfU96FoMcbIy8NXZwGr7/7VOH7VoAhYHAyIid7V9mbl3xHHFc4YLch
 saSQ==
X-Gm-Message-State: ANhLgQ0Ky9okUj87mXk8gHsQcx+4tpGMRR3rcSq3eyUFdrnQtUmbnAz3
 J/W0MQyqenGh6OI46ZHIru6D/0b+
X-Google-Smtp-Source: ADFU+vuLfqJLTVWgtE2gxmF3zyW7/5g33LYY933B6JEG7gw8iL8V704y0dGVTMbKy7oXYEW3aN89ag==
X-Received: by 2002:adf:e60b:: with SMTP id p11mr23245914wrm.140.1584891942005; 
 Sun, 22 Mar 2020 08:45:42 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x17sm17685351wmi.28.2020.03.22.08.45.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Mar 2020 08:45:41 -0700 (PDT)
To: jbx6244@gmail.com
References: <20200322140046.5824-1-jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix defines in pd_vio node for
 rk3399
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <48a91cc1-7751-4df0-a2cd-940eb829fa16@gmail.com>
Date: Sun, 22 Mar 2020 16:45:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200322140046.5824-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_084544_605770_49B54F2B 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The RK3399 TRM uses both

'pd_tcpc0, pd_tcpc1'

as

'pd_tcpd0, pd_tcpd1'.

What should we use here?

Thanks.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 8aac201f0..3dc8fe620 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1087,12 +1087,12 @@
>  					pm_qos = <&qos_isp1_m0>,
>  						 <&qos_isp1_m1>;
>  				};
> -				pd_tcpc0@RK3399_PD_TCPC0 {
> +				pd_tcpc0@RK3399_PD_TCPD0 {
>  					reg = <RK3399_PD_TCPD0>;
>  					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
>  						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
>  				};
> -				pd_tcpc1@RK3399_PD_TCPC1 {
> +				pd_tcpc1@RK3399_PD_TCPD1 {
>  					reg = <RK3399_PD_TCPD1>;
>  					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
>  						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> -- 
> 2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
