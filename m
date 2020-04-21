Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7631B2D8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=co2/93dI6j61zlpzT7zuiHSeer4r/lbguPgd91vP3zw=; b=cFyVXpsOjk94o8
	nUKLe+ydUUyxnX2FlmbLdshZHVfPBSOFkjStoWEUjndhDJLRehnjTfCGW9Hc6Zu6OsI8SL7QWXkWy
	VGYZCTaTZXzXE3yhe1hNrZcwak2Br2rlARRTbrpVQI+CzTlspRD3xDU62M3W8jzk6QaRKPD3ht4CE
	eGaYMLxofwTZCiaUL6BfrJ5WIUeyPmL0nQM2WAXHp8gkUVhDrehN5EKUSoPwdkB0DmD6D5t1U9PzI
	X+YIueM+5/HdA3wg+cxhdesYC8lSkPTpr/Rea/L7ANogkM//7M+vyz+MOvbPCWcsolbaZkvAFKo4e
	8BBDT2LCCj1SCmM2O6Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwCq-0007CE-LD; Tue, 21 Apr 2020 16:57:08 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwCg-0007Au-Ub
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:57:00 +0000
Received: by mail-ua1-x944.google.com with SMTP id g10so5325504uae.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+roaZY0aQq5IerWYrtAtqtTIyLi3/oukkignYdqQ2gM=;
 b=OoQpa52k6Fd4P7opyBenigG8zgeRF6Am+UbnctENdxTHpjt3uX/wsSqtr+hw2usoNW
 +wzlwcoFKjhAphlxohZZ7wpwF5Qrc9fV8XHooELQipt2XAUOhINX8t+af9K/NAe/1ouI
 9B5rYdBhepuERj8H1W00szQjqhiZ71Zijh3deNhrAUcIYTzkpt3TrImmmRojGpU7e4I5
 dlqQFXd3nIKJ1xY2u/LfU+WMZ3ldnJh6TD+T0KVTo0n8k6aPAK9y7J8ulWGGHuYr6+/U
 +AeUSSRpOYhzyNyrNpH11Hnjn80OeP68bBoIu46OSmWBeuBfK0PCUDwO6ffn01bzJe6L
 Z6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+roaZY0aQq5IerWYrtAtqtTIyLi3/oukkignYdqQ2gM=;
 b=SrCpOgDg2cS7+OZYdZsthhoLAY5sBkXye9nxPMpe5PkKq7Qf4aIQM0OKAO+Est3BUU
 bSrkX9cuiyeTMxdypCnZHyE+/VVgKjMbrSQ5RtzEClHKdDQ7NnxSAkVWCs0Pt+3VGIPJ
 6ETnopil9XRkqEIlKhkVSvD65hxtoLiuaWonJ/tLrGjFbvXKr+O7FWEEMUYi93YzoXXD
 c6IRb/S14t5KGkX+HSODc/q+4qud5NpKFeyLRq6vg10zMcAt5fOrsxohP/Py1kithVon
 THG193pmQerAQYtPbk1jc9DrGQRiyvyO5B3j1W0RphvtipI0wmU5oyx5Yg+j9hKQC06d
 PD3Q==
X-Gm-Message-State: AGi0PuZ8b97iQPWKPJQbMCqMHToSxA5ml+yjWzpvL6bIymM+6JuZVuv0
 LlSJFfiOU+oDZ8M0/rGsRqawWUQZAHyw2RseGFw=
X-Google-Smtp-Source: APiQypIpbVZ62pOPQuT8rk9YlJ0othDRtz8/TGgGxaOQSXcQd4x9m2DNm9aXz3E3Sig+Sy4/vsuBK0ISisEBtxdsnGY=
X-Received: by 2002:ab0:7298:: with SMTP id w24mr13269756uao.95.1587488217689; 
 Tue, 21 Apr 2020 09:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20200417181022epcas5p1f83138da6e76ff0917de88e913ef8e32@epcas5p1.samsung.com>
 <20200417175944.47189-1-alim.akhtar@samsung.com>
 <20200417175944.47189-9-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-9-alim.akhtar@samsung.com>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Tue, 21 Apr 2020 22:26:21 +0530
Message-ID: <CAGOxZ52mQ=H5DR7nWJY3RMBuJMr9SXERukJs1UK_Wr1XHP9TZg@mail.gmail.com>
Subject: Re: [PATCH v6 08/10] dt-bindings: ufs: Add DT binding documentation
 for ufs
To: Alim Akhtar <alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_095658_988130_9CD9053C 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alim.akhtar[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh <robh@kernel.org>, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 devicetree@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kiwoong Kim <kwmad.kim@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Can Guo <cang@codeaurora.org>,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob
Request to comment on this dt-bindings documentation.
Thanks

On Fri, Apr 17, 2020 at 11:41 PM Alim Akhtar <alim.akhtar@samsung.com> wrote:
>
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
> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      phandle of the ufs phy node
> +
> +  phy-names:
> +      const: ufs-phy
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - phys
> +  - phy-names
> +  - clocks
> +  - clock-names
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


-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
