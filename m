Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E0D19800D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 17:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdi9TWHCWqHgKo77iRnaQiOan4EmqEO4EVwLYPfk1pk=; b=BCR15Mn0scoV91
	1RUjT2+hop1TEp2RVC8gdKCauybvC7okSYFc+RJVmjYKX//uAmvwAXIIjy6g3Y5yA/W7wymJ26VCG
	+yLjpVPE+vK/kn2f9Elda1AL6TExzT2cO+cYrVtht8bDKCuP7rNVv/EF5JatY1XcKMeqK3BWAiMzK
	kvQO5OzxbTaUBt4AuDBueWSVwAZlOEqQAX3kM6zpvRdlFVgNurCYQsqB5bFF4RifOW0FbbbvM/Vgu
	4eBpbM077bYdZPGBEvHV2/oNNKtmnMMtypjjVimU9TWn7699R45gknO865sN4GXBUy7Zyd2fepCHF
	hKus9P4OYJzNWBk29bLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwaG-0001Wv-KU; Mon, 30 Mar 2020 15:44:16 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwa7-0001W8-DB; Mon, 30 Mar 2020 15:44:09 +0000
Received: by mail-il1-f196.google.com with SMTP id k29so16231156ilg.0;
 Mon, 30 Mar 2020 08:44:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6L0zwcu6TJpBy8ROIw82e95a8IhAis774QnwFUUDei4=;
 b=PhjUnwer6ysG1oz9PQVaXiKkfawqnx1fD961yqsZxYsOTlcceIhqQin2g7iBFAfG6e
 GO/9orMy4NCxQRuwVk2IU9/b2IzLAbzq1AtNVn8jWkryA8AUkeQbGSX2/8fXS/B08lRX
 EoNavWXHIZ/ooSAc5YZohjtx9Alk+U3bJDXaWW85F4ZHELWh3bh6nk1jXzEuzprS4QGy
 3RRE2nWVFLcz8L5PyVlrO7ToC46ztRZrmLfW5Zv++gr6mNTyULJQ61GZ2RexCByHbo9j
 /ritmH28tDjWb9QCD3Vb6Kg/FOwNapmSpra5FFdfuzSSKMSy9l4Z2cbeYIS8fplnXtZk
 aIxg==
X-Gm-Message-State: ANhLgQ0vwr9pD1VvPBnvvo6DeLc/KhHQAmwFHlesW2nktPTP9vNHPv5E
 WBtX5Ya6yIbwkNYPwcodeQ==
X-Google-Smtp-Source: ADFU+vtLzoK7bLF3KNLPQffJzUbWf20WdfYgGwLo68WhEGLJBcEYEu+x/FRUoIOGhBcqWrVUOHXMcg==
X-Received: by 2002:a92:8d0e:: with SMTP id s14mr11505607ild.117.1585583046446; 
 Mon, 30 Mar 2020 08:44:06 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id c88sm4970096ill.15.2020.03.30.08.44.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 08:44:05 -0700 (PDT)
Received: (nullmailer pid 27458 invoked by uid 1000);
 Mon, 30 Mar 2020 15:44:04 -0000
Date: Mon, 30 Mar 2020 09:44:04 -0600
From: Rob Herring <robh@kernel.org>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v5 5/5] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
Message-ID: <20200330154404.GA26389@bogus>
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-6-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330113542.181752-6-adrian.ratiu@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_084407_447656_0488FF50 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 14:35:42 +0300, Adrian Ratiu wrote:
> This provides an example DT binding for the MIPI DSI host controller
> present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> Changes since v4:
>   - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
>   and addressed received binding feedback (Rob)
> 
> Changes since v3:
>   - Added commit message (Neil)
>   - Converted to yaml format (Neil)
>   - Minor dt node + driver fixes (Rob)
>   - Added small panel example to the host controller binding
> 
> Changes since v2:
>   - Fixed commit tags (Emil)
> ---
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 134 ++++++++++++++++++
>  1 file changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts:34.21-31: Warning (reg_format): /example-0/dsi@21e0000/ports/port@1:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts:33.24-38.19: Warning (avoid_default_addr_size): /example-0/dsi@21e0000/ports/port@1: Relying on default #address-cells value
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts:33.24-38.19: Warning (avoid_default_addr_size): /example-0/dsi@21e0000/ports/port@1: Relying on default #size-cells value
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts:33.24-38.19: Warning (graph_port): /example-0/dsi@21e0000/ports/port@1: graph node '#address-cells' is -1, must be 1
Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.example.dts:33.24-38.19: Warning (graph_port): /example-0/dsi@21e0000/ports/port@1: graph node '#size-cells' is -1, must be 0

See https://patchwork.ozlabs.org/patch/1263893

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
