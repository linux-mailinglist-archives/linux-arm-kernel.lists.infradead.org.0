Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C21A57D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0EaVjMQkALqy0hoYjxO5dEna3coEHcyY9p/6rpqPGM=; b=CYUrooZgvrRDTX
	VRkXL6kdXTMGmptVwGRVjKdm/DHP1r5fFMwQFaqmpuuy4EekxNODSIFzEri7RF5inbgZL1GEAfliE
	C2mbXhGrld7AJNwBmE9JyRr0M1rfDLbDMFs7ekrwUepWwS6t9W75HpkJPdXGz1y76g8wkUGxHyKq+
	ht6kdX4tYmuQm2+eyFYYcqUD5W6dSZVcybEQuKlMa4QwT0fneZ0MYLtg3BxqLT8iNCeZEgcX6F2Vo
	7Hy+7g9h5RVjM4bHLxRnONQHtw46ajfJ9RuWStrilzq344Y2Hikh9RgSdU/YYRneAJZIWfu9GSbpV
	nAXvi6vpv9hMxVkkNvqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mYf-00021u-Gv; Mon, 02 Sep 2019 13:39:49 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXg-00018P-C7; Mon, 02 Sep 2019 13:38:49 +0000
Received: by mail-wm1-f66.google.com with SMTP id t17so14647288wmi.2;
 Mon, 02 Sep 2019 06:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lP+OoGEF7HmeKCtfc8mmDkbVMHD2nEU0wy8Yk5Uuck8=;
 b=hD2TzvINC6oWFskiTWQo2ZQbDvpJ02hjrP4skQwckbO1vgMEoLYFe3798huiFxZ1Tm
 F+VBj2ff8bNViHFB4n4+AAQV81+7QfPsHN3Tfwq8u2aKa1JSKxgHJVVO1C15V5uo/P/j
 d3D3pXsOtvGeUOgaal3N9qA2bdmiRzUk+QVsGeVnAqrLqbUxDouKvW4EOyZnNmrFTmv/
 NtbBc4VvrlWR1jdGl0IrRJbY7j1YsKrEGe3G78uZAvWMOOm9WusA6oBLCKzo+iH66VfI
 W+MSaZZBDknOkwRyeYcWOrXk8VbtpIkJa5b3UjusynyaTI9NIv2r0RHPrqu+ny6gAgX2
 IfSw==
X-Gm-Message-State: APjAAAVhs3dMAJ15Cec024cljWAvOH5/PZVCjRdG9aHthweEbSZV2H6C
 Te0J2wC1obRd+wxN0JjWrg==
X-Google-Smtp-Source: APXvYqyDb7iutaz5y4Tc0LmVuWNVw/82y5Rin3xTusZ5wHyki1kqxmyfgqmGSIYLq5xNG/JShwZX8w==
X-Received: by 2002:a1c:a003:: with SMTP id j3mr35873401wme.42.1567431527091; 
 Mon, 02 Sep 2019 06:38:47 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id t18sm11645053wrx.76.2019.09.02.06.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:38:46 -0700 (PDT)
Date: Mon, 02 Sep 2019 14:38:46 +0100
From: Rob Herring <robh@kernel.org>
To: Henry Chen <henryc.chen@mediatek.com>
Subject: Re: [PATCH V3 08/10] dt-bindings: interconnect: add MT8183
 interconnect dt-bindings
Message-ID: <20190902033045.GA10734@bogus>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
 <1566995328-15158-9-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566995328-15158-9-git-send-email-henryc.chen@mediatek.com>
X-Mutt-References: <1566995328-15158-9-git-send-email-henryc.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063848_680679_0CB8FF4A 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Ryan Case <ryandcase@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 08:28:46PM +0800, Henry Chen wrote:
> Add interconnect provider dt-bindings for MT8183.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  .../devicetree/bindings/soc/mediatek/dvfsrc.txt        |  9 +++++++++
>  include/dt-bindings/interconnect/mtk,mt8183-emi.h      | 18 ++++++++++++++++++
>  2 files changed, 27 insertions(+)
>  create mode 100644 include/dt-bindings/interconnect/mtk,mt8183-emi.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> index 7f43499..da98ec9 100644
> --- a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> +++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> @@ -12,6 +12,11 @@ Required Properties:
>  - clock-names: Must include the following entries:
>  	"dvfsrc": DVFSRC module clock
>  - clocks: Must contain an entry for each entry in clock-names.
> +- #interconnect-cells : should contain 1
> +- interconnect : interconnect providers support dram bandwidth requirements.
> +	The provider is able to communicate with the DVFSRC and send the dram
> +	bandwidth to it. shall contain only one of the following:
> +	"mediatek,mt8183-emi"
>  
>  Example:
>  
> @@ -20,4 +25,8 @@ Example:
>  		reg = <0 0x10012000 0 0x1000>;
>  		clocks = <&infracfg CLK_INFRA_DVFSRC>;
>  		clock-names = "dvfsrc";
> +		ddr_emi: interconnect {

The EMI is a sub-module in the DVFSRC? This is the DDR controller or 
something else?


> +			compatible = "mediatek,mt8183-emi";
> +			#interconnect-cells = <1>;
> +		};
>  	};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
