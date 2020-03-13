Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD7D185176
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 23:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vj4C2td0782MPAChf94jcB35hC3EQwZVcE41aCZwP3w=; b=PJGod/ccj5o21W
	PTeccJMQi2lIYAFS958Gu2h8XBqTlkxcOwabF8O1QsirCeCVO5vGaBo38k+Uu6IrHpzznP/jeDRvK
	owQy1a5cXhEz1pAaKhiUYdFOOV4Y6ba2Zczm0hShfXUzyAVE6jmODtoLYjuoN4ofTvSGt2haGxw3j
	EMLd1+Ez0RWTkKSzPzyOXbL6OBibWsSVu+tunZzrxIb0yvsnpongJ45Amtzge/cUVCuIP+5ipNVZK
	5khXv7NA5uiRqQSM2O2lGDf5/R3fwiPPcMmeMHPRWgpgMjjhfCd9B64GkF8XZ5reiP6AUVXswOIHL
	hQOb7VNsXbZl4qtCro2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCsLn-0001iw-FL; Fri, 13 Mar 2020 22:00:15 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCsLf-00019o-1V
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 22:00:08 +0000
Received: by mail-oi1-f172.google.com with SMTP id d62so11044096oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 15:00:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TVkybssqDWjwLerq8jhj8SF+k5jpdyCgdrT+O+aW7Hk=;
 b=gjN6qOkMKYZcAf5oCL8y53uJHTXvzZo/3XednfC5foYlVtAvFQ68b+k8+4buh7lUcG
 H71mng2vOLvPYRAT8emA5s4ZstSUEG+StHNmIG64g2Kzzr00Sg7V4TmGJsHpuqWafHPi
 +7Lw992vuuV1T/+3EwT8wn9IaIOSlCmPCPbiQ74lW2kYFgqcSLI5bSrV58Rx1+VXYvyJ
 dd7og5hHn47Htxs25+37AgGFZKS02eU1OZjEa3ondJhj9A54Rz8VQi5QOuWlUievn+Hi
 pZGcpW5xa4VGGfoytb6pGy9xmz/HPzBGaS8Hvfo4NiQCNBhEfFT/Nlo9YX5P/W1uTUm2
 Y9gw==
X-Gm-Message-State: ANhLgQ2FhvpAEyR4icD7j13ek5+fwhrt/sdegHZAGv3PTRlz15xdeYuP
 8fMmMvsc6YzRTcRdAiroIg==
X-Google-Smtp-Source: ADFU+vvD7pkfAG68OdNj/jO4fB2W3uBtGliVneJu4/Kb/0djYQ6eqwv1N6WfcVv5x9z1WO/Gbr9vpg==
X-Received: by 2002:a54:408d:: with SMTP id i13mr2298979oii.42.1584136804853; 
 Fri, 13 Mar 2020 15:00:04 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e22sm20340907ote.32.2020.03.13.15.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 15:00:04 -0700 (PDT)
Received: (nullmailer pid 23358 invoked by uid 1000);
 Fri, 13 Mar 2020 22:00:03 -0000
Date: Fri, 13 Mar 2020 17:00:03 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200313220003.GA21160@bogus>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110350.10864-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_150007_093576_3B489A3D 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.172 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.172 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 12:03:48 +0100, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v4:
>   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
>   * Add clock-lanes property to example
>   * robher: Fix syntax error in devicetree example
> 
> - Changes since v3:
>   * robher: Fix syntax error
>   * robher: Removed maxItems
>   * Fixes yaml 'make dt-binding-check' errors
> 
> - Changes since v2:
>   Fixes comments from from Andy, Tomasz, Sakari, Rob.
>   * Convert text documentation to YAML schema.
> 
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
> 
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 133 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/media/i2c/ov8856.example.dts:22.13-26: Warning (reg_format): /example-0/camera-sensor@10:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/media/i2c/ov8856.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/i2c/ov8856.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/media/i2c/ov8856.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'

See https://patchwork.ozlabs.org/patch/1254346
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
