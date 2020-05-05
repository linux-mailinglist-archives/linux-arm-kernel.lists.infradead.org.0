Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69731C5CC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqWPqp/96mZj3E93EQU0Bf4Zlmr1CBTTOmGC58VHS68=; b=VWcm6fVmkQvzUB
	ljPkENbueKaEbqv22CAkb3zz7etiv15vmak/1xCE6x400BfQ/yYnx+E6UkXYzxCxfo0dvUHmiWbCu
	29XL20uCqhMzIGlLNEXzELhF0CW7JRKZXBSHqbDxSPjKkHy2jWFSI4KJkCZw6RholtWLAKjwDBeU0
	b/m5ZJAIFglCFKuQ7zzACuKYJtAZYJ/Gw2/CxdGWyhxMRO/+WdMN/nn9CQRS7y/3RfspVdSN7OUvA
	l/5PVQkMtht4dpCG5pk16tLEGljZXYhh4ZXLFK3O+745oJtFMpq0lWPCvU4p/I5sVknJCyFCNOiiL
	+e/Y/pX0Fop7WJ4BfCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzyD-0008KH-K1; Tue, 05 May 2020 15:58:57 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzy6-0008Jk-H8
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:58:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id k110so2092546otc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 08:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C4mPz/AyaPVad8cEUAI9z6a1p2b2WhQ+aPmzaXcvCIw=;
 b=rYKUmlTfqhdfT3L4SgKChMI8dz0BCb6uw49U2Xpc30Aki6B5qqL4FKn8QIHN9dKTd9
 jGnTrJB7XZSlVmVCDMOIMsRnm9dagkq4yDcK01xyk7LynglBxEiqBS2qQUWECMD4I3hr
 XqIHPlXPQ7MgJs+90+CLSZxC90JYWL/oLY6/+De5vgBOTUCfG5DEELp1R/teCzn7Dv5T
 0N5EjsDYSqrEFctCsMRzmekMlb4s1kMtFxP3Lx9TJ5mNWSIzO08ZV9rRMgWu76nuJWPd
 ERLJxkzNO1y3eYjJirFEgGdyZwq0FOUAxziSQzEc7g3aRvHeNmB0LWEUJSJrnVBgTaIP
 9VXQ==
X-Gm-Message-State: AGi0PuYg9E+Fyax/0nttedKyZynMBI0A7/eh55Lfwm3SuuxKJknZ1Mgn
 /EynV9JTHkbNnAJdOzaz9w==
X-Google-Smtp-Source: APiQypLHsZTLt/aKBMC4QCDg85LU7bi2M/1CCJwS+nndEH4aqg7dBPb/xUhAfI63wXxh4ar1wMmnnw==
X-Received: by 2002:a05:6830:3112:: with SMTP id
 b18mr2596278ots.97.1588694328410; 
 Tue, 05 May 2020 08:58:48 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l37sm687951ota.68.2020.05.05.08.58.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:58:47 -0700 (PDT)
Received: (nullmailer pid 31936 invoked by uid 1000);
 Tue, 05 May 2020 15:58:46 -0000
Date: Tue, 5 May 2020 10:58:46 -0500
From: Rob Herring <robh@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v7 08/10] dt-bindings: ufs: Add DT binding documentation
 for ufs
Message-ID: <20200505155846.GA28360@bogus>
References: <20200426173024.63069-1-alim.akhtar@samsung.com>
 <CGME20200426174219epcas5p460c8637629afd930313ae0fa936593cd@epcas5p4.samsung.com>
 <20200426173024.63069-9-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200426173024.63069-9-alim.akhtar@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_085850_566245_3B6765BF 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Sun, Apr 26, 2020 at 11:00:22PM +0530, Alim Akhtar wrote:
> This patch adds DT binding for samsung ufs hci
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../bindings/ufs/samsung,exynos-ufs.yaml      | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> new file mode 100644
> index 000000000000..954338b7f37d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ufs/samsung,exynos-ufs.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SoC series UFS host controller Device Tree Bindings
> +
> +maintainers:
> +  - Alim Akhtar <alim.akhtar@samsung.com>
> +
> +description: |
> +  Each Samsung UFS host controller instance should have its own node.
> +  This binding define Samsung specific binding other then what is used
> +  in the common ufshcd bindings
> +  [1] Documentation/devicetree/bindings/ufs/ufshcd-pltfrm.txt
> +
> +properties:
> +
> +  compatible:
> +    enum:
> +      - samsung,exynos7-ufs
> +
> +  reg:
> +    items:
> +     - description: HCI register
> +     - description: vendor specific register
> +     - description: unipro register
> +     - description: UFS protector register
> +
> +  reg-names:
> +    items:
> +      - const: hci
> +      - const: vs_hci
> +      - const: unipro
> +      - const: ufsp
> +
> +  clocks:
> +    maxItems: 2
> +    items:
> +      - description: ufs link core clock
> +      - description: unipro main clock
> +
> +  clock-names:
> +    maxItems: 2
> +    items:
> +      - const: core_clk
> +      - const: sclk_unipro_main
> +
> +  interrupts:
> +    items:
> +      - description: interrupt signal for various ufshc status

Just 'maxItems: 1' is fine for single item cases.

> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      phandle of the ufs phy node

Can drop description.

> +
> +  phy-names:
> +      const: ufs-phy

Not much point to a name when only 1 entry.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - phys
> +  - phy-names
> +  - clocks
> +  - clock-names

additionalProperties: false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/exynos7-clk.h>
> +
> +    ufs: ufs@15570000 {
> +       compatible = "samsung,exynos7-ufs";
> +       reg = <0x15570000 0x100>,
> +             <0x15570100 0x100>,
> +             <0x15571000 0x200>,
> +             <0x15572000 0x300>;
> +       reg-names = "hci", "vs_hci", "unipro", "ufsp";
> +       interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
> +       clocks = <&clock_fsys1 ACLK_UFS20_LINK>,
> +                <&clock_fsys1 SCLK_UFSUNIPRO20_USER>;
> +       clock-names = "core_clk", "sclk_unipro_main";
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
> +       pclk-freq-avail-range = <70000000 133000000>;
> +       phys = <&ufs_phy>;
> +       phy-names = "ufs-phy";
> +    };
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
