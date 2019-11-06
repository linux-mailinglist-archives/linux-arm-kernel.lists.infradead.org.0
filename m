Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C946F22DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 00:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bt2+RD6PNW9LgSs+NgPSmR2KnVZtopbZhgRvZNsYFYI=; b=Tnmkg2zXgGS+Tw
	DqKOjQbhnqHry+nCPCH3RnglnjhHyosi8b7qQvsrjQWfT4DUncAhMgvR7bOS5Gevq7Xy0PlJaySKZ
	TRQjeyUZrvozJm2NQixV14aA/wjXjMXHbnBFDuFLO4tETMJxMUq7sdic7ziO4cGXSp6SxBMxq+guh
	FuzPfRfjQpCfzj5Bz8RH2ue40yOUo1hWhmUPFC4qvtoXwQEFW95FsIiqAXumr9p8nDy1FoZ9FWv9Y
	P08rFH95Cy1QwuduvTYChdmxIvtA8yZVvmq1SogTBdxy1fsCw+buiJiT/bYs9npWFEsl61ulLkmiF
	LjSlJW4aLH8dXxMTxTBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSV1w-0002iF-4G; Wed, 06 Nov 2019 23:48:04 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSV1g-0002dr-9z; Wed, 06 Nov 2019 23:47:49 +0000
Received: by mail-ot1-f67.google.com with SMTP id b16so365747otk.9;
 Wed, 06 Nov 2019 15:47:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YghF0O9CdijziXRtYqs4rBgfocxRjD2jrxaldxrfZPA=;
 b=L4jO9pCHKwI6d21uIsZ0AJ65GTVXdpK1qfMqRsJR7ztiffZUw9nuOiPRz5DCIVUPvT
 1nczISNnXkA08DU+wc1iNE/fXYz/RaRGBNl9cPwg8apm+QxSROus99KZuO/eSr47PWDw
 DZs3BMduHWm/bsUJhpfF/1w+S9CvNrMNQWjOBVfh3/zsrsFx/4dpt8i76z3WewmweycY
 fsIbffyZLHkFE9cujaeMk3GFeSFO5d6xAXsiCzJ7TDr9GGqPW0oBgYvRUG6kt9kipcKn
 J6DeGDebGVbwt+0c16o5PokzzhVyUEIE2H6UJb4k+r/iNHqeXa0nVAa8PDuz86I/GEba
 tE7Q==
X-Gm-Message-State: APjAAAUuy7Mt2QTm5B8darf/uCvV2ik3PNAaHLGuWFY7fLxibLmV2Rzu
 OGcK5Zm0g9PA3issYm7dHg==
X-Google-Smtp-Source: APXvYqwgUlLWV9jHJ0xyKT6tWKqUtqWriZJeI42q4NAZ1iSZ8g0t2OjEoqRReV7onJSmLDH/dWe6Lw==
X-Received: by 2002:a05:6830:232c:: with SMTP id
 q12mr319872otg.168.1573084066922; 
 Wed, 06 Nov 2019 15:47:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm150529otl.71.2019.11.06.15.47.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 15:47:46 -0800 (PST)
Date: Wed, 6 Nov 2019 17:47:45 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v1 7/7] dt-bindings: PCI: Use IRQ flags for legacy PCI
 IRQ interrupts
Message-ID: <20191106234745.GA29524@bogus>
References: <20191104163834.8932-1-andrew.murray@arm.com>
 <20191104163834.8932-8-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104163834.8932-8-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_154748_375015_52E04364 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Toan Le <toan@os.amperecomputing.com>, Fabio Estevam <festevam@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@axis.com,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Linus Walleij <linus.walleij@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 rfi@lists.rocketboards.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  4 Nov 2019 16:38:21 +0000, Andrew Murray wrote:
> Replace magic numbers used to describe legacy PCI IRQ interrupts
> with #define.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  .../devicetree/bindings/pci/83xx-512x-pci.txt | 18 ++---
>  .../devicetree/bindings/pci/aardvark-pci.txt  | 10 +--
>  .../devicetree/bindings/pci/altera-pcie.txt   | 10 +--
>  .../bindings/pci/axis,artpec6-pcie.txt        | 10 +--
>  .../bindings/pci/cdns,cdns-pcie-host.txt      | 10 +--
>  .../bindings/pci/faraday,ftpci100.txt         | 68 +++++++++----------
>  .../bindings/pci/fsl,imx6q-pcie.txt           | 10 +--
>  .../bindings/pci/hisilicon-pcie.txt           | 20 +++---
>  .../bindings/pci/host-generic-pci.txt         | 10 +--
>  .../devicetree/bindings/pci/kirin-pcie.txt    | 10 +--
>  .../bindings/pci/layerscape-pci.txt           | 10 +--
>  .../devicetree/bindings/pci/mediatek-pcie.txt | 40 +++++------
>  .../devicetree/bindings/pci/mobiveil-pcie.txt |  8 +--
>  .../devicetree/bindings/pci/pci-rcar-gen2.txt |  8 +--
>  .../bindings/pci/pci-thunder-pem.txt          | 10 +--
>  .../devicetree/bindings/pci/pcie-al.txt       |  4 +-
>  .../devicetree/bindings/pci/qcom,pcie.txt     | 20 +++---
>  .../bindings/pci/ralink,rt3883-pci.txt        | 18 ++---
>  .../bindings/pci/rockchip-pcie-host.txt       | 10 +--
>  .../devicetree/bindings/pci/ti-pci.txt        | 10 +--
>  .../devicetree/bindings/pci/uniphier-pcie.txt | 10 +--
>  .../bindings/pci/v3-v360epc-pci.txt           | 34 +++++-----
>  .../devicetree/bindings/pci/versatile.txt     | 40 +++++------
>  .../devicetree/bindings/pci/xgene-pci-msi.txt | 10 +--
>  .../devicetree/bindings/pci/xgene-pci.txt     | 10 +--
>  .../bindings/pci/xilinx-nwl-pcie.txt          | 10 +--
>  .../devicetree/bindings/pci/xilinx-pcie.txt   | 20 +++---
>  27 files changed, 224 insertions(+), 224 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
