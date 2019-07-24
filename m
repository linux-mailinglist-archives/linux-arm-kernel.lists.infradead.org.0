Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7E874057
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqNh7Ig3IWds1/NF01NDb3h7RTfCjZslVW/nmBPloTQ=; b=NLLtUPik8IqRbi
	UgBUie/b+1H56STTme8RhX1qhKvPCQdSoLJBYz8+4Imhk6RK0687nWfRhLpkr6WuNErAirtYrInwl
	brfotftsLpjE3GWPSasXXBuY/SmWygCtIZsUA8JL0XZrbTORZFTnFcXGfMimx0CMq5zEPt0OoqMEo
	zQz0rW2VMNIgHJ6wjOyXhLHaz2pigyiD0WELVPHVsHoHNGIWbf14eCmhTMpfE35K+Gn4NX/PSYG0x
	tpxpMM1hMmrP8XkniWbWcjunIi1ztekyLXlfZPHRXeZH3M6d13UKL+up5+6c9SkEqHJuB6BYYaAUc
	Yztdr6vUQ4uu/5hITvyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqO8n-0005GX-AR; Wed, 24 Jul 2019 20:45:37 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqO8W-0005Fr-NT; Wed, 24 Jul 2019 20:45:22 +0000
Received: by mail-io1-f66.google.com with SMTP id z3so92561297iog.0;
 Wed, 24 Jul 2019 13:45:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CCC83gvr3zUqrHBBE2tCcnx8FJnOWLoIpaVrcWkgVNI=;
 b=tZvy8089L87C0XQV3CRD8G6oJxs3qBGaTVtlk8qYZY1+8uKStuIYRxt2ZcGYugnHQn
 OC9NJSsL8U8wz4StUclcjVbzObQIqbuLDcbHKEPWB57l6hadLDGRVK4U4go3RtHt+L0E
 0yiZeFSu0zUiIaqpBybPsNqRSytEEM+5g1qgFCikKAsSyTTi39nN9fl57x69D67i+d2E
 6t8I5CueZSwRRqUs7ow0SetVuWRkbT+kmNSUDxnJzJPW2WF1Al4CvekKHBDpXus3Fh0p
 00LWWdHxqWyshvj4APnjT+6Fdxltf7cvRgYbXRJHVlF1iyavCrRo4VKtCuaalrAIIB7q
 NRNQ==
X-Gm-Message-State: APjAAAWNaPTIvktrdsgxcCIcIuVR2BpAhYulgoHWGvZt6CYsitPwP6Tk
 +m0BLg5LtbvgjVfQUomqhw==
X-Google-Smtp-Source: APXvYqzZIXBI6PBNyEYZPD4Zfoy1oC3HcF0imTkHY6VNLfMnea8dJ9IXUk/wVjvDBjbfoxK8Wbqb/Q==
X-Received: by 2002:a5d:9703:: with SMTP id h3mr11500009iol.152.1564001119366; 
 Wed, 24 Jul 2019 13:45:19 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id m20sm44917837ioh.4.2019.07.24.13.45.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:45:18 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:45:18 -0600
From: Rob Herring <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: clock: mediatek: document clk
 bindings for Mediatek MT6765 SoC
Message-ID: <20190724204518.GA6997@bogus>
References: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
 <1562924653-10056-2-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562924653-10056-2-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_134520_772735_53F45F50 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 wsd_upstream@mediatek.com, Marc Zyngier <marc.zyngier@arm.com>,
 Sean Wang <sean.wang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 CC Hwang <cc.hwang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>,
 linux-serial@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Owen Chen <owen.chen@mediatek.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 05:43:37PM +0800, Macpaul Lin wrote:
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
>  10 files changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> index 161e63a6c254..5f2757e0f844 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,apmixedsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-apmixedsys"
>  	- "mediatek,mt2712-apmixedsys", "syscon"
> +	- "mediatek,mt6765-apmixedsys", "syscon"
>  	- "mediatek,mt6797-apmixedsys"
>  	- "mediatek,mt7622-apmixedsys"
>  	- "mediatek,mt7623-apmixedsys", "mediatek,mt2701-apmixedsys"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> index f3cef1a6d95c..243db5275438 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.txt
> @@ -7,6 +7,7 @@ Required Properties:
>  
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-audsys", "syscon"
> +	- "mediatek,mt6765-audsys", "syscon"
>  	- "mediatek,mt7622-audsys", "syscon"
>  	- "mediatek,mt7623-audsys", "mediatek,mt2701-audsys", "syscon"
>  	- "mediatek,mt8183-audiosys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> index d8930f64aa98..17acc4c5402c 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,camsys.txt
> @@ -6,6 +6,7 @@ The MediaTek camsys controller provides various clocks to the system.
>  Required Properties:
>  
>  - compatible: Should be one of:
> +	- "mediatek,mt6765-camsys", "syscon"
>  	- "mediatek,mt8183-camsys", "syscon"
>  - #clock-cells: Must be 1
>  
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> index e3bc4a1e7a6e..4e7b617acfb6 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,imgsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-imgsys", "syscon"
>  	- "mediatek,mt2712-imgsys", "syscon"
> +	- "mediatek,mt6765-imgsys", "syscon"
>  	- "mediatek,mt6797-imgsys", "syscon"
>  	- "mediatek,mt7623-imgsys", "mediatek,mt2701-imgsys", "syscon"
>  	- "mediatek,mt8173-imgsys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> index a90913988d7e..6a6ffb61dd29 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.txt
> @@ -9,6 +9,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-infracfg", "syscon"
>  	- "mediatek,mt2712-infracfg", "syscon"
> +	- "mediatek,mt6765-infracfg", "syscon"
>  	- "mediatek,mt6797-infracfg", "syscon"
>  	- "mediatek,mt7622-infracfg", "syscon"
>  	- "mediatek,mt7623-infracfg", "mediatek,mt2701-infracfg", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> new file mode 100644
> index 000000000000..49313055e574
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> @@ -0,0 +1,28 @@
> +Mediatek mipi0a (mipi_rx_ana_csi0a) controller
> +============================
> +
> +The Mediatek mipi0a controller provides various clocks
> +to the system.

Is that all it does?

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
> +mipi0a: mipi0a@11c10000 {

if so, then clock-controller@...

Same question on the next one.

> +	compatible = "mediatek,mt6765-mipi0a", "syscon";
> +	reg = <0 0x11c10000 0 0x1000>;
> +	power-domains = <&scpsys MT6765_POWER_DOMAIN_CAM>;
> +	#clock-cells = <1>;
> +};
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> index 545eab717c96..0c7b1698b98e 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-mmsys", "syscon"
>  	- "mediatek,mt2712-mmsys", "syscon"
> +	- "mediatek,mt6765-mmsys", "syscon"
>  	- "mediatek,mt6797-mmsys", "syscon"
>  	- "mediatek,mt7623-mmsys", "mediatek,mt2701-mmsys", "syscon"
>  	- "mediatek,mt8173-mmsys", "syscon"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,pericfg.txt
> index 4c7e478117a0..b49b40741be1 100644
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
> index a023b8338960..21ad416bfeec 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,topckgen.txt
> @@ -8,6 +8,7 @@ Required Properties:
>  - compatible: Should be one of:
>  	- "mediatek,mt2701-topckgen"
>  	- "mediatek,mt2712-topckgen", "syscon"
> +	- "mediatek,mt6765-topckgen", "syscon"
>  	- "mediatek,mt6797-topckgen"
>  	- "mediatek,mt7622-topckgen"
>  	- "mediatek,mt7623-topckgen", "mediatek,mt2701-topckgen"
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
> new file mode 100644
> index 000000000000..83f7f8634943
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
> +venc_gcon: venc_gcon@17000000 {
> +	compatible = "mediatek,mt6765-vcodecsys", "syscon";
> +	reg = <0 0x17000000 0 0x10000>;
> +	power-domains = <&scpsys MT6765_POWER_DOMAIN_VCODEC>;
> +	#clock-cells = <1>;
> +};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
