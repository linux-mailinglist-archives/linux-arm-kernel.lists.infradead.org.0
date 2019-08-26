Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4710E9CE44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCj2j8k2AkpjuwLkJ3g4WVtzl7p4rRTjO8xDRnvH+Pw=; b=THAFDXF9MJT/q8
	CEGMvLF5I6twHFZEqFLE1EnBvFO70c+iUmg30EEzogJgLaWHG1idHZPCJN/laJRiZgO4jbNCp7+ID
	QGNg44V0wiWpfbRI/48iMS6IdkeXlJEKJdIzXZD2SxnNQUX4nVStw9GffBy2eUWmJKQy0y9mRA1P+
	maxzQPbJnlZlaDtmKTy6YfR58hs/6V0XqyguodWrIxNgDab7fTJs1gHmu52WQ5Q1/N4CtxjJAAkwC
	q9oICP+q+zZNfNx9RZZDODoh3HTqUGQLSZSGtNnuC+GEJBrzT5/kdWCTTNxdX9wUpagUGhhumAxPR
	S10Y2L83rjHqnGFHkSDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DK8-0002Gc-LM; Mon, 26 Aug 2019 11:38:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DK0-0002Fr-S2
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:38:06 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C658822CF5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566819483;
 bh=pPU7Oq6YBXwlfSpisXUSN7O/E9G4jOkzVz+PI2hUrds=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YVVkeqCGrG3RnXOr6Gj+t4zHOIB+BlcZI5yyr6HPo3yZJzIqmToqczkqCm9j4iU5m
 lBHTgRoC7bhbhO9gFftmcJJYi0hmi5yEgD2avu6Q2AMUK5XXsvxVRGd496PE3SUSY+
 hh+ONrjTKnrsJmIEt3wP6wh030ihBpf+X0tIGFCI=
Received: by mail-qk1-f174.google.com with SMTP id s14so13718411qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 04:38:03 -0700 (PDT)
X-Gm-Message-State: APjAAAV7GFU/ebk6qOanVD63I/LHpoovl+mJ3Dr/cGHhYsBkrJwIH32G
 su7UzT6GMFuOYJYog4e9BzEnjv3DiubJ1ZmSAw==
X-Google-Smtp-Source: APXvYqxFdFrhr6QC432iXohr425U9ALeyY0/jK/ZTob9D6kmp205upnoTXJdzQJK7UQEdHEAqtMAyO/qvMbS4UVFyYM=
X-Received: by 2002:a37:4941:: with SMTP id w62mr14495060qka.119.1566819482797; 
 Mon, 26 Aug 2019 04:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190823145356.6341-1-krzk@kernel.org>
In-Reply-To: <20190823145356.6341-1-krzk@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 26 Aug 2019 06:37:50 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+5MpPSjRtFp-xf8P0rBuArMFbum7yadcHNBQz_N=Ergg@mail.gmail.com>
Message-ID: <CAL_Jsq+5MpPSjRtFp-xf8P0rBuArMFbum7yadcHNBQz_N=Ergg@mail.gmail.com>
Subject: Re: [RFC 1/9] dt-bindings: arm: samsung: Convert Samsung board/soc
 bindings to json-schema
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_043804_954306_DFFD941F 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Olof Johansson <olof@lixom.net>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 notify@kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 9:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Convert Samsung S5P and Exynos SoC bindings to DT schema format using
> json-schema.  This is purely conversion of already documented bindings
> so it does not cover all of DTS in the Linux kernel (few S5P/Exynos and
> all S3C are missing).
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> If the schema looks sensible, I will continue on converting other
> SoC and driver bindings and later adding missing schemas (S3C
> SoCs).

Looks pretty good.

> ---
>  .../bindings/arm/samsung/samsung-boards.txt   |  83 --------
>  .../bindings/arm/samsung/samsung-boards.yaml  | 188 ++++++++++++++++++
>  2 files changed, 188 insertions(+), 83 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/samsung-boards.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml


> diff --git a/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> new file mode 100644
> index 000000000000..e963fd70c436
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/samsung/samsung-boards.yaml
> @@ -0,0 +1,188 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/samsung/samsung-boards.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos and S5P SoC based boards
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: S5PV210 based Aries boards
> +        items:
> +          - enum:
> +              - samsung,fascinate4g             # Samsung Galaxy S Fascinate 4G (SGH-T959P)
> +              - samsung,galaxys                 # Samsung Galaxy S (i9000)
> +          - const: samsung,aries
> +          - const: samsung,s5pv210
> +
> +      - description: Exynos3250 based boards
> +        items:
> +          - enum:
> +              - samsung,monk                    # Samsung Simband
> +              - samsung,rinato                  # Samsung Gear2
> +          - const: samsung,exynos3250
> +          - const: samsung,exynos3
> +
> +      - description: Samsung ARTIK5 boards
> +        items:
> +          - enum:
> +              - samsung,artik5-eval             # Samsung ARTIK5 eval board
> +          - const: samsung,artik5               # Samsung ARTIK5 module
> +          - const: samsung,exynos3250
> +          - const: samsung,exynos3
> +
> +      - description: Exynos4210 based boards
> +        items:
> +          - enum:
> +              - insignal,origen                 # Insignal Origen
> +              - samsung,smdkv310                # Samsung SMDKV310 eval
> +              - samsung,trats                   # Samsung Tizen Reference
> +              - samsung,universal_c210          # Samsung C210
> +          - const: samsung,exynos4210
> +          - const: samsung,exynos4
> +
> +      - description: Exynos4412 based boards
> +        items:
> +          - enum:
> +              - friendlyarm,tiny4412            # FriendlyARM TINY4412
> +              - hardkernel,odroid-u3            # Hardkernel Odroid U3
> +              - hardkernel,odroid-x             # Hardkernel Odroid X
> +              - hardkernel,odroid-x2            # Hardkernel Odroid X2
> +              - insignal,origen4412             # Insignal Origen
> +              - samsung,smdk4412                # Samsung SMDK4412 eval
> +              - topeet,itop4412-elite           # TOPEET Elite base
> +          - const: samsung,exynos4412
> +          - const: samsung,exynos4
> +
> +      - description: Samsung Midas family boards
> +        items:
> +          - enum:
> +              - samsung,i9300                   # Samsung GT-I9300
> +              - samsung,i9305                   # Samsung GT-I9305
> +              - samsung,n710x                   # Samsung GT-N7100/GT-N7105
> +              - samsung,trats2                  # Samsung Tizen Reference
> +          - const: samsung,midas
> +          - const: samsung,exynos4412
> +          - const: samsung,exynos4
> +
> +      - description: Exynos5250 based boards
> +        items:
> +          - enum:
> +              - google,snow-rev5                # Google Snow Rev 5+
> +              - google,spring                   # Google Spring
> +              - insignal,arndale                # Insignal Arndale
> +              - samsung,smdk5250                # Samsung SMDK5250 eval
> +          - const: samsung,exynos5250
> +          - const: samsung,exynos5
> +
> +      - description: Google Snow Boards (Rev 4+)
> +        items:
> +          - enum:
> +              - google,snow-rev4

const here as I wouldn't expect this list to grow.

> +          - const: google,snow
> +          - const: samsung,exynos5250
> +          - const: samsung,exynos5
> +
> +      - description: Exynos5260 based boards
> +        items:
> +          - enum:
> +              - samsung,xyref5260               # Samsung Xyref5260 eval
> +          - const: samsung,exynos5260
> +          - const: samsung,exynos5
> +
> +      - description: Exynos5410 based boards
> +        items:
> +          - enum:
> +              - hardkernel,odroid-xu            # Hardkernel Odroid XU
> +              - samsung,smdk5410                # Samsung SMDK5410 eval
> +          - const: samsung,exynos5410
> +          - const: samsung,exynos5
> +
> +      - description: Exynos5420 based boards
> +        items:
> +          - enum:
> +              - insignal,arndale-octa           # Insignal Arndale Octa
> +              - samsung,smdk5420                # Samsung SMDK5420 eval
> +          - const: samsung,exynos5420
> +          - const: samsung,exynos5
> +
> +      - description: Google Peach Pit Boards (Rev 6+)
> +        items:
> +          - enum:
> +              - google,pit-rev16

const

> +          - const: google,pit-rev15
> +          - const: google,pit-rev14
> +          - const: google,pit-rev13
> +          - const: google,pit-rev12
> +          - const: google,pit-rev11
> +          - const: google,pit-rev10
> +          - const: google,pit-rev9
> +          - const: google,pit-rev8
> +          - const: google,pit-rev7
> +          - const: google,pit-rev6
> +          - const: google,pit
> +          - const: google,peach
> +          - const: samsung,exynos5420
> +          - const: samsung,exynos5
> +
> +      - description: Exynos5800 based boards
> +        items:
> +          - enum:
> +              - hardkernel,odroid-xu3           # Hardkernel Odroid XU3
> +              - hardkernel,odroid-xu3-lite      # Hardkernel Odroid XU3 Lite
> +              - hardkernel,odroid-xu4           # Hardkernel Odroid XU4
> +              - hardkernel,odroid-hc1           # Hardkernel Odroid HC1
> +          - const: samsung,exynos5800
> +          - const: samsung,exynos5
> +
> +      - description: Google Peach Pi Boards (Rev 10+)
> +        items:
> +          - enum:
> +              - google,pi-rev16
> +          - const: google,pi-rev15
> +          - const: google,pi-rev14
> +          - const: google,pi-rev13
> +          - const: google,pi-rev12
> +          - const: google,pi-rev11
> +          - const: google,pi-rev10
> +          - const: google,pi
> +          - const: google,peach
> +          - const: samsung,exynos5800
> +          - const: samsung,exynos5
> +
> +      - description: Exynos5433 based boards
> +        items:
> +          - enum:
> +              - samsung,tm2                     # Samsung TM2
> +              - samsung,tm2e                    # Samsung TM2E
> +          - const: samsung,exynos5433
> +
> +  firmware:

This should be moved to its own file.

> +    type: object
> +    description:
> +      node specifying presence and type of secure firmware
> +    properties:
> +      compatible:
> +        enum:
> +         - samsung,secure-firmware
> +      reg:
> +        description:
> +          address of non-secure SYSRAM used for communication with firmware
> +        maxItems: 1
> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    firmware@203f000 {
> +      compatible = "samsung,secure-firmware";
> +      reg = <0x0203F000 0x1000>;
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
