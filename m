Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3216162B03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPcAUn8/1GkJdtpiFfpwGCnwvVQMeEtXNjxatIkaBpE=; b=VPqKYE92D3e+oy
	oLYnIXQoJcsbmGEKYplIRA1/3+hVdeAM7sIOP9wg6cpvZA4NhXBtUzHw/d/cZsL6maym6lbtMmvok
	rluISYG1eh78moDQTcHEoGStzVpLzDg/9deXdHjTVq7Cas1OfFlTnBVM60dYpgojbr8kGC3jzb4hs
	eEs8+cjVQ/99NE8OWJEnQJ0Ka7Rm+f8gbS+jFf0VaQeqRbOZrPWvQL7JTpww5EwrhSAUc7y+y52KQ
	sMh8pWb5VH6EuNGxsrhGDm6sfaFY9/Q6TbBFTlysx+5ApuOBsYAYiaUsUr8FugVkuB050y8AYMCS9
	RHSrt5/Ow8vsJlTwHSHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j462D-0007iW-Ei; Tue, 18 Feb 2020 16:47:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j461y-0007hJ-AX; Tue, 18 Feb 2020 16:47:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id u6so24857487wrt.0;
 Tue, 18 Feb 2020 08:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Sx6YwKFl3YqMD/hTP7T5HXGA6OKQSM6aKHU3VOHFlv8=;
 b=SEJMPd6c0R1BW2qbvcDyZkrZ3GTvH/RI5cLc1nF80cpGVRzDCMc/WrGlUHIr7OkGe1
 hy4+Kfp5OvfB62e8Q9nCD2AhdAO1GpLOIDJFyxjqYrXBcHS2lhE+pZTmkQgSalmRPmej
 bpwekFJYgff9tswGHXOvO8owLkokfTGWNCwZ78id52UoPUmgiZvEFJhAaqbKjortt37G
 XJLe/2Hxx14miqBKeUoOzlxUEJzz2Ta7CJRD8i/DNP8elQWCiz3ND4wsBdpASdfIRfoy
 Pnu3c3YdN5nCmmL2BUsfw+efJMYcEKJQ7ZRUCXghRI8ddfmX2tF6FPMjsh1NsmQcac6g
 cgyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Sx6YwKFl3YqMD/hTP7T5HXGA6OKQSM6aKHU3VOHFlv8=;
 b=adIr2qwQEDL+nBIShOBF4UoFdDuU10lULd1ZitWVOvhZUNQhUmTHJMWiwEZTHYRLzn
 xR1tvohwsje7cJ0U/nk0tKQ/o8IdAAwYmlzNJIlQ+XUZzlHd1Vc3sRvTXb4C2rjzZY3l
 /jnn+/aWRuuABwXbi+2oTFw71xx3wtp82ZxV4GIflF/wbLcf7TTt2VgsSMe90HymIaHj
 kLhnif5zGUoPjWqbVXyiRi3kAzup8dxPr11rJ6CGWB6xaXF5IFvo5teMKP08nQOeZFtp
 hwQn7tgFR/KjrwynrsGnDenkJr/yqo/pMwC1VRUqN1hAwBBfBtR6yEA/V6avnlj4WH6w
 6YBw==
X-Gm-Message-State: APjAAAWDiq/pmgH/jBFoiJ1SJqLKMGxx9T9Nzdgp2tPgg0KniN+jPsX1
 RtD1ny0ovaVWGluTTbKe+nU=
X-Google-Smtp-Source: APXvYqz897D/S/PVtRiJibdBa66nCSrINFYPqGU63Kaqj8Cko1oCSOhuU3xOlEgNweGJrw0yeL+nPg==
X-Received: by 2002:a5d:614a:: with SMTP id y10mr31309955wrt.73.1582044448645; 
 Tue, 18 Feb 2020 08:47:28 -0800 (PST)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id y7sm3534061wmd.1.2020.02.18.08.47.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 08:47:27 -0800 (PST)
Subject: Re: [PATCH v7 1/7] dt-bindings: clock: mediatek: document clk
 bindings for Mediatek MT6765 SoC
To: Macpaul Lin <macpaul.lin@mediatek.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, mtk01761 <wendell.lin@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Sean Wang <Sean.Wang@mediatek.com>,
 Owen Chen <owen.chen@mediatek.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Evan Green <evgreen@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <jroedel@suse.de>,
 Shawn Guo <shawnguo@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <Ryder.Lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <1581067250-12744-2-git-send-email-macpaul.lin@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d606aeb2-5327-ff13-0043-e70ef37522f5@gmail.com>
Date: Tue, 18 Feb 2020 17:47:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1581067250-12744-2-git-send-email-macpaul.lin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_084730_370565_0BB16FE8 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/02/2020 10:20, Macpaul Lin wrote:
> From: Mars Cheng <mars.cheng@mediatek.com>
> 
> This patch adds the binding documentation for apmixedsys, audsys, camsys,
> imgsys, infracfg, mipi0a, topckgen, vcodecsys
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  .../arm/mediatek/mediatek,apmixedsys.txt      |  1 +
>  .../bindings/arm/mediatek/mediatek,audsys.txt |  1 +
>  .../bindings/arm/mediatek/mediatek,camsys.txt |  1 +
>  .../bindings/arm/mediatek/mediatek,imgsys.txt |  1 +
>  .../arm/mediatek/mediatek,infracfg.txt        |  1 +
>  .../bindings/arm/mediatek/mediatek,mipi0a.txt | 28 +++++++++++++++++++
>  .../bindings/arm/mediatek/mediatek,mmsys.txt  |  1 +
>  .../arm/mediatek/mediatek,pericfg.txt         |  1 +
>  .../arm/mediatek/mediatek,topckgen.txt        |  1 +
>  .../arm/mediatek/mediatek,vcodecsys.txt       | 27 ++++++++++++++++++

I think it's OK to put all the bindings, that only add one compatible in onw
patch. But I think mipi0a and vcodesys should each go into a separate patch, as
we will need a Ack by Rob for that.

Regards,
Matthias

>  10 files changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> index ff000ccade78..bd7a0fa5801b 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-apmixedsys"
>  	- "mediatek,mt2712-apmixedsys", "syscon"
> +	- "mediatek,mt6765-apmixedsys", "syscon"
>  	- "mediatek,mt6779-apmixedsys", "syscon"
>  	- "mediatek,mt6797-apmixedsys"
>  	- "mediatek,mt7622-apmixedsys"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> index e4ca7b703123..38309db115f5 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> @@ -7,6 +7,7 @@ Required Properties:
>  
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-audsys", "syscon"
> +	- "mediatek,mt6765-audsys", "syscon"
>  	- "mediatek,mt6779-audio", "syscon"
>  	- "mediatek,mt7622-audsys", "syscon"
>  	- "mediatek,mt7623-audsys", "mediatek,mt2701-audsys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> index 1f4aaa15a37e..a0ce82085ad0 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> @@ -6,6 +6,7 @@ The MediaTek camsys controller provides various clocks to the system.
>  Required Properties:
>  
>  - compatible: Should be one of:
> +	- "mediatek,mt6765-camsys", "syscon"
>  	- "mediatek,mt6779-camsys", "syscon"
>  	- "mediatek,mt8183-camsys", "syscon"
>  - #clock-cells: Must be 1
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> index 2b693e343c56..1e1f00718a7d 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-imgsys", "syscon"
>  	- "mediatek,mt2712-imgsys", "syscon"
> +	- "mediatek,mt6765-imgsys", "syscon"
>  	- "mediatek,mt6779-imgsys", "syscon"
>  	- "mediatek,mt6797-imgsys", "syscon"
>  	- "mediatek,mt7623-imgsys", "mediatek,mt2701-imgsys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> index db2f4fd754e7..49a968be1a80 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> @@ -9,6 +9,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-infracfg", "syscon"
>  	- "mediatek,mt2712-infracfg", "syscon"
> +	- "mediatek,mt6765-infracfg", "syscon"
>  	- "mediatek,mt6779-infracfg_ao", "syscon"
>  	- "mediatek,mt6797-infracfg", "syscon"
>  	- "mediatek,mt7622-infracfg", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> new file mode 100644
> index 000000000000..8be5978f388d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> @@ -0,0 +1,28 @@
> +Mediatek mipi0a (mipi_rx_ana_csi0a) controller
> +============================
> +
> +The Mediatek mipi0a controller provides various clocks
> +to the system.
> +
> +Required Properties:
> +
> +- compatible: Should be one of:
> +	- "mediatek,mt6765-mipi0a", "syscon"
> +- #clock-cells: Must be 1
> +
> +The mipi0a controller uses the common clk binding from
> +Documentation/devicetree/bindings/clock/clock-bindings.txt
> +The available clocks are defined in dt-bindings/clock/mt*-clk.h.
> +
> +The mipi0a controller also uses the common power domain from
> +Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> +The available power doamins are defined in dt-bindings/power/mt*-power.h.
> +
> +Example:
> +
> +mipi0a: clock-controller@11c10000 {
> +	compatible = "mediatek,mt6765-mipi0a", "syscon";
> +	reg = <0 0x11c10000 0 0x1000>;
> +	power-domains = <&scpsys MT6765_POWER_DOMAIN_CAM>;
> +	#clock-cells = <1>;
> +};
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> index 301eefbe1618..4a712509bec2 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-mmsys", "syscon"
>  	- "mediatek,mt2712-mmsys", "syscon"
> +	- "mediatek,mt6765-mmsys", "syscon"
>  	- "mediatek,mt6779-mmsys", "syscon"
>  	- "mediatek,mt6797-mmsys", "syscon"
>  	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
> index ecf027a9003a..dcbd414c7fd7 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
> @@ -9,6 +9,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-pericfg", "syscon"
>  	- "mediatek,mt2712-pericfg", "syscon"
> +	- "mediatek,mt6765-pericfg", "syscon"
>  	- "mediatek,mt7622-pericfg", "syscon"
>  	- "mediatek,mt7623-pericfg", "mediatek,mt2701-pericfg", "syscon"
>  	- "mediatek,mt7629-pericfg", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
> index 0293d693ce0c..9b0394cbbdc9 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-topckgen"
>  	- "mediatek,mt2712-topckgen", "syscon"
> +	- "mediatek,mt6765-topckgen", "syscon"
>  	- "mediatek,mt6779-topckgen", "syscon"
>  	- "mediatek,mt6797-topckgen"
>  	- "mediatek,mt7622-topckgen"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
> new file mode 100644
> index 000000000000..c877bcc1a5c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
> @@ -0,0 +1,27 @@
> +Mediatek vcodecsys controller
> +============================
> +
> +The Mediatek vcodecsys controller provides various clocks to the system.
> +
> +Required Properties:
> +
> +- compatible: Should be one of:
> +	- "mediatek,mt6765-vcodecsys", "syscon"
> +- #clock-cells: Must be 1
> +
> +The vcodecsys controller uses the common clk binding from
> +Documentation/devicetree/bindings/clock/clock-bindings.txt
> +The available clocks are defined in dt-bindings/clock/mt*-clk.h.
> +
> +The vcodecsys controller also uses the common power domain from
> +Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> +The available power doamins are defined in dt-bindings/power/mt*-power.h.
> +
> +Example:
> +
> +venc_gcon: clock-controller@17000000 {
> +	compatible = "mediatek,mt6765-vcodecsys", "syscon";
> +	reg = <0 0x17000000 0 0x10000>;
> +	power-domains = <&scpsys MT6765_POWER_DOMAIN_VCODEC>;
> +	#clock-cells = <1>;
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
