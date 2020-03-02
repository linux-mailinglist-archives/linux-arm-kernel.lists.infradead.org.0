Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB356176352
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKDlwqRfQDwfZTQZM3jKbWcoc/xeP29PNem5FNklgns=; b=AhW/HjXPsuULPA
	MPi+Kesp2CZDdAeB5h1xgMu1tWLBaWCE9yh9M9GioxA4Rb8SdhCtK6SRvW99rVLVIWNHFWcvLEc74
	IMLjEKFFY8cjbSwX0g4+viNm6BJDpSWwbuAq7im5ouFLcrpskmh4rMP9PI0++XlIlbnu7F8X1RX1G
	WJnnS8NPkRBSPSti/4pynXJwwNxjuS/+4otzJhAiN+xlnGPYpx5ct4dqzhQKpkfim5H3qEfNGmLG9
	4Vi+ooDA7wewtXvIcztWTMBqdPh9c9Bcx8bzkGDf3+nVnXTwrIqWOkUzkoQP+5NAcBaQhGliBPUZz
	P5hOvILJjLqCmJlWzJCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qDb-00076T-W9; Mon, 02 Mar 2020 18:55:07 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qCu-0006n8-UH; Mon, 02 Mar 2020 18:54:36 +0000
Received: by mail-oi1-f193.google.com with SMTP id r16so295207oie.6;
 Mon, 02 Mar 2020 10:54:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=azLo3QGLGJyP5HRfRWmkTZHyFOBCcHiq0HFCES3HCjQ=;
 b=lA5L1UeFYu3vHuOJVUjCPNQZuGW8XWsGu9Dqrt7ieX9jfC9g71utO8wy2eBDY3DJD/
 PR2q8qgPthCB7y1KeeAAA5l+Oi7AJmCYxo17zxafJdBi+2sXQIs1RZ9CSAauXvCcSKbU
 FZAyPgEJ796g2CBvKKuh3MQ0zm7IvjyjGc2h6CnA4U1x2z6NnBbfEA9h18xZEaPgN0mW
 FR4U6Eg0bQJz+0YTBEx6gco/Z5cdRWE6aHU6eslWTTfbNPpSzJgy3Z52SuItUL66zpXO
 PuSUVLhRObDZq0++Nch4aMWrZUY28ScvF1tleELpUlsrgHWnSrjwhVv78dsTY/I47WFf
 tkkw==
X-Gm-Message-State: ANhLgQ3Eps9f7SlFm1iyoyoF+LRolAoVKG8sm5TDCq/iEKFJiBtSWK1s
 YupIlNKfKUgvQ9smAMuxxg==
X-Google-Smtp-Source: ADFU+vvfubqUlzmH5eWYI1D5Jft/lIpMtECPbLNGVBuawGuLFLFxvD3bdyL1NoKnop7MocC44hue/Q==
X-Received: by 2002:a54:4011:: with SMTP id x17mr1020oie.35.1583175263204;
 Mon, 02 Mar 2020 10:54:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u3sm6838355ote.50.2020.03.02.10.54.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 10:54:22 -0800 (PST)
Received: (nullmailer pid 32444 invoked by uid 1000);
 Mon, 02 Mar 2020 18:54:21 -0000
Date: Mon, 2 Mar 2020 12:54:21 -0600
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V3, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Message-ID: <20200302185421.GA31928@bogus>
References: <20200228155958.20657-1-dongchun.zhu@mediatek.com>
 <20200228155958.20657-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228155958.20657-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_105425_366813_081E8F31 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 28 Feb 2020 23:59:57 +0800, Dongchun Zhu wrote:
> This patch is to add the Devicetree binding documentation and
> MAINTAINERS entry for dw9768 actuator.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 55 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.example.dts:19.13-26: Warning (reg_format): /example-0/camera-lens@0c:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

See https://patchwork.ozlabs.org/patch/1246607
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
