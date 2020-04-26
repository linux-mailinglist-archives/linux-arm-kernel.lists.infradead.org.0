Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195B11B93AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 21:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aUK1PEG9xQKs9qyvCYBozxC8ipikeiUymsId891ZcNI=; b=KBUlyFNrSv8aLgL12aiNnGRB7
	87LHXfRxpLHk6WZ5IdHYRM7od+rEkBjezlWhBTRVi7fLSNv3GI2If5iLPBolVhbrKpkro9eIou7uF
	ykNVvWIrT00gTOywL/qa3WaO3Eyc8s+WpkZjJ8KQvM4bq/BNZNXlUAUlrVGwtpDtwVfUGqXTVycyn
	Gl4D2lFF3fhReyxNglbE0g21IVAM2WH26ySXEZ1duWOg7mEgHpeDBS+ZPFGvQuCs1VYc6oUUFYq51
	B9bg0AfHQ0onGruUduxevSKWQ1ajaNZfB5AzIPVjbkLv95UHpfh1Ha7/K1CNWHS2vBkchcfKNo5YE
	0KLweWojg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSn5o-0001O0-7g; Sun, 26 Apr 2020 19:37:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSn5e-0001N8-6N
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 19:37:23 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so17925616wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 12:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gynnlawwP2L58lK7U6nOs2p5nD3J7jQ46S/46O9Sglk=;
 b=N9KWcFUX8Mo/Kasy1wW9DyZlzZceVD/CE6XLQh316tO+ezDNx6lxerDWRM/EUjewsb
 4J6UUjQVwoQZoMogoMySyTkErWUdm6SGsSbkDApKXQgCp2pamxe0toej7Q9ucGa5Gnm+
 eyeiVusmZD1eHS0aHgb+8Vd//q3bCIKayqqkJfAniMmlEtfl8hi8vOsomkq+Z51LPgD6
 42K5gO6TEH+vJnmiIm9m1+lLbqOQOEigtxE9AsFksajKLQtUPtFpwqYx2WEqqcMq2ps5
 ugdFvLiH4WejoukGnW7oEvK94R4t7p3Mv082cGW82m+xC2av6Qby6gQLO/lQbETB7Iy4
 VC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gynnlawwP2L58lK7U6nOs2p5nD3J7jQ46S/46O9Sglk=;
 b=BJadL5L0+ABRcAhWXJEBQxrmM2Cs+qA+rzG/3C5rKZMvgRgbVXPNaRMcDt9JfjCrDm
 g8gGskMXM4uhgeVFUfbGVQBXolfrKV5DdftyzBjKKZ+RMgFwH4m3P/TFNn0V17hmDpO7
 t7JaJERhOUsyEz0wWg1sHiaor1+jBXnOSJRXEnSYryllRexOvGNJ3QJDbYuCY57P/Y8I
 N8VtQTdJqYr+OMUm5kaWJZflNAzH/hjPpXR8JYL8vN4GTvQlWGxISDg3OsoL2sKT8F+T
 r+GxwjwT9nQWjzoVxRZzM2cLRxWuqEaIAXVxYUU7928OQHJV4pkKjl9z1oLj69nV3OFa
 +0rA==
X-Gm-Message-State: AGi0PuZMv1YdLC1bYnup5KHTpQoS1UswSn1xygY868fkWExtbX/zKXdK
 yhk1pmJ1LYsKbEvkIsRPlCo=
X-Google-Smtp-Source: APiQypJ4XTrddxqN2RyHulQ7/hn1xjaKln3zjHBlhZG5Q7i33l263UZT1BbEIAIIf8Ni9zos7CKCXg==
X-Received: by 2002:a1c:6241:: with SMTP id w62mr21919075wmb.27.1587929840265; 
 Sun, 26 Apr 2020 12:37:20 -0700 (PDT)
Received: from ?IPv6:2a02:810d:340:2e50:10d8:ba05:5002:2dff?
 ([2a02:810d:340:2e50:10d8:ba05:5002:2dff])
 by smtp.gmail.com with ESMTPSA id y10sm12138259wma.5.2020.04.26.12.37.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Apr 2020 12:37:19 -0700 (PDT)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img, pvrsgx.yaml for Imagination
 GPUs
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
From: Philipp Rossak <embed3d@gmail.com>
Message-ID: <9d9998cc-33bf-7d8f-658b-8d6218338135@gmail.com>
Date: Sun, 26 Apr 2020 21:36:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_123722_260121_18BE0B89 
X-CRM114-Status: GOOD (  23.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [embed3d[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Jonathan Bakker <xc-racer2@live.ca>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 kernel@pyra-handheld.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nikolaus,

On 24.04.20 22:34, H. Nikolaus Schaller wrote:
> The Imagination PVR/SGX GPU is part of several SoC from
> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
> Allwinner A83 and others.
> 
> With this binding, we describe how the SGX processor is
> interfaced to the SoC (registers and interrupt).
> 
> The interface also consists of clocks, reset, power but
> information from data sheets is vague and some SoC integrators
> (TI) deciced to use a PRCM wrapper (ti,sysc) which does
> all clock, reset and power-management through registers
> outside of the sgx register block.
> 
> Therefore all these properties are optional.
> 
> Tested by make dt_binding_check
> 
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>   .../devicetree/bindings/gpu/img,pvrsgx.yaml   | 150 ++++++++++++++++++
>   1 file changed, 150 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
> new file mode 100644
> index 000000000000..33a9c4c6e784
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/img,pvrsgx.yaml
> @@ -0,0 +1,150 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/img,pvrsgx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Imagination PVR/SGX GPU
> +
> +maintainers:
> +  - H. Nikolaus Schaller <hns@goldelico.com>
> +
> +description: |+
> +  This binding describes the Imagination SGX5 series of 3D accelerators which
> +  are found in several different SoC like TI OMAP, Sitara, Ingenic JZ4780,
> +  Allwinner A83, and Intel Poulsbo and CedarView and more.
> +
> +  For an extensive list see: https://en.wikipedia.org/wiki/PowerVR#Implementations
> +
> +  The SGX node is usually a child node of some DT node belonging to the SoC
> +  which handles clocks, reset and general address space mapping of the SGX
> +  register area. If not, an optional clock can be specified here.
> +
> +properties:
> +  $nodename:
> +    pattern: '^gpu@[a-f0-9]+$'
> +  compatible:
> +    oneOf:
> +      - description: SGX530-121 based SoC
> +        items:
> +          - enum:
> +            - ti,omap3-sgx530-121 # BeagleBoard A/B/C, OpenPandora 600MHz and similar
> +          - const: img,sgx530-121
> +          - const: img,sgx530
> +
> +      - description: SGX530-125 based SoC
> +        items:
> +          - enum:
> +            - ti,am3352-sgx530-125 # BeagleBone Black
> +            - ti,am3517-sgx530-125
> +            - ti,am4-sgx530-125
> +            - ti,omap3-sgx530-125 # BeagleBoard XM, GTA04, OpenPandora 1GHz and similar
> +            - ti,ti81xx-sgx530-125
> +          - const: ti,omap3-sgx530-125
> +          - const: img,sgx530-125
> +          - const: img,sgx530
> +
> +      - description: SGX535-116 based SoC
> +        items:
> +          - const: intel,poulsbo-gma500-sgx535 # Atom Z5xx
> +          - const: img,sgx535-116
> +          - const: img,sgx535
> +
> +      - description: SGX540-116 based SoC
> +        items:
> +          - const: intel,medfield-gma-sgx540 # Atom Z24xx
> +          - const: img,sgx540-116
> +          - const: img,sgx540
> +
> +      - description: SGX540-120 based SoC
> +        items:
> +          - enum:
> +            - samsung,s5pv210-sgx540-120
> +            - ti,omap4-sgx540-120 # Pandaboard, Pandaboard ES and similar
> +          - const: img,sgx540-120
> +          - const: img,sgx540
> +
> +      - description: SGX540-130 based SoC
> +        items:
> +          - enum:
> +            - ingenic,jz4780-sgx540-130 # CI20
> +          - const: img,sgx540-130
> +          - const: img,sgx540
> +
> +      - description: SGX544-112 based SoC
> +        items:
> +          - const: ti,omap4470-sgx544-112
> +          - const: img,sgx544-112
> +          - const: img,sgx544
> +
> +      - description: SGX544-115 based SoC
> +        items:
> +          - enum:
> +            - allwinner,sun8i-a31-sgx544-115
> +            - allwinner,sun8i-a31s-sgx544-115
those two bindings are wrong.
It should be allwinner,sun6i-a31-sgx544-115 and 
allwinner,sun6i-a31s-sgx544-115. I did a copy paste error in the patches 
that I provided for this series.


Cheers,
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
