Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA1E19E86C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 03:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v1elyesCGe82CedfEnVuJfoFT2aFXABpzHubupU4cQ=; b=cifIzpJLvmkWjv
	ajLnMLAeZK5nYznDVWGGNinoizTrgof8oA/20ctA4lzqH6+keKUjALc8UgQu5iU6buPj/r3mQKA3W
	dkvmy1hl+oT+H1Hk7uHsbsXHHctsd2e89Pc+3PLVrW1hN5rsP/wajYM6F7oRfTVaK7M8YxG/MgMfZ
	wXCx6Kki30qHmtzd/TxgWUwb3FmLcVxfHl5KNLhg3MVqtYTRCFwz2FoiuLxLH/jToDlpzS+HPlVdO
	ob4CKvlUMk3jbKd+/2XTW8/shP9KmF2cB2TPYnU3aF3ooInTOTKfB3EgEkwuXSby8DlZO3ayse1hZ
	OhINY/TWrFp5SnUZtLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKuUY-0006Dx-PY; Sun, 05 Apr 2020 01:54:30 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKuUS-0006D2-2r
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 01:54:25 +0000
Received: by mail-io1-f67.google.com with SMTP id y14so11921580iol.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 18:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WGZ1QR60q1jU80/fYr0WWBey1aNSa19nwxnAnET5oVo=;
 b=S/InwKbNAANURKTVyqAVCTWSvz1pjcQuzIzc0vbPIdEXsay/BZA3iOqoUmk+dElL69
 i5NNVrgmRuDLwwoP8tsvF01Qvw5UBwT+eG/DNm1+ldLMN5dTq7UBHqfV2IqbSuMoSrBs
 RYA0zSBe8by2ZfjTVt9aSU4Bu5ih4o+RH0Af8G883EsiCEe9sN2O5ekEoxl7BzEjBOyY
 Mtg/dpflfH76Pzvu32ZBp0VfmfS4wdTngwSEIsp7TSfsbccNXVDbfl+DAkjuLr3SiQNN
 7go5LqxkzqPisW0kkYEyMJbzGZWKjxfBNpO60Itqsxwz3Txb5tN7N2f9JL83pElCtSEk
 2aDg==
X-Gm-Message-State: AGi0PuY0lsjv/SSdwU/8tvRCfnjzJ50yJJ7Rsr2+3DH/CBcw1WHg97KA
 KCb3jPrV3T3+nyYJhpZQaQ==
X-Google-Smtp-Source: APiQypImWqTBdmNG/vwTJJkqNRHISPAzw3peoR+pvIb61So8Pv/Sabd7lThe+FpmDbwepybmiIZcQA==
X-Received: by 2002:a6b:e316:: with SMTP id u22mr13881852ioc.1.1586051658393; 
 Sat, 04 Apr 2020 18:54:18 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id x10sm4570896ili.88.2020.04.04.18.54.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 18:54:17 -0700 (PDT)
Received: (nullmailer pid 22378 invoked by uid 1000);
 Sun, 05 Apr 2020 01:54:16 -0000
Date: Sat, 4 Apr 2020 19:54:16 -0600
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Document Samsung UFS PHY bindings
Message-ID: <20200405015416.GA16616@bogus>
References: <20200327170638.17670-1-alim.akhtar@samsung.com>
 <CGME20200327171414epcas5p1460e932c0bc98f31ebdd115218b4fd49@epcas5p1.samsung.com>
 <20200327170638.17670-2-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327170638.17670-2-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_185424_125602_C69595BB 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 10:36:34PM +0530, Alim Akhtar wrote:
> This patch documents Samsung UFS PHY device tree bindings
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../bindings/phy/samsung,ufs-phy.yaml         | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> new file mode 100644
> index 000000000000..41ba481ecc76
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0)

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/samsung,ufs-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SoC series UFS PHY Device Tree Bindings
> +
> +maintainers:
> +  - Alim Akhtar <alim.akhtar@samsung.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - samsung,exynos7-ufs-phy
> +
> +  reg:
> +    maxItems: 1
> +    description: PHY base register address
> +
> +  reg-names:
> +    items:
> +      - const: phy-pma
> +
> +  clocks:
> +    items:
> +      - description: PLL reference clock
> +      - description: Referencec clock parrent
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk_parent
> +      - const: ref_clk

Doesn't match what 'clocks' says.

Also, why do you need the parent in DT? Just use clk_get_parent(). DT 
should reflect actual h/w clock connections (not what the driver 
happens to need). Also, there's the assigned-clocks binding.

> +
> +  samsung,pmu-syscon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: phandle for PMU system controller interface, used to
> +                 control pmu registers for power isolation

We have a binding for power domains. Use that for power isolation.

> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - samsung,pmu-syscon
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/exynos7-clk.h>
> +
> +    ufs_phy: ufs-phy@15571800 {
> +        compatible = "samsung,exynos7-ufs-phy";
> +        reg = <0x15571800 0x240>;
> +        reg-names = "phy-pma";
> +        samsung,pmu-syscon = <&pmu_system_controller>;
> +        #phy-cells = <0>;
> +        clocks = <&clock_fsys1 MOUT_FSYS1_PHYCLK_SEL1>,
> +                 <&clock_top1 CLK_SCLK_PHY_FSYS1_26M>;
> +        clock-names = "ref_clk_parent",
> +                      "ref_clk";
> +    };
> +...
> 
> base-commit: fb33c6510d5595144d585aa194d377cf74d31911
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
