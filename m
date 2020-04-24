Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25CD1B7054
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GvpbXTMOyanWqrQOtJW36NN4cAjmtuR1mFL3JesieHg=; b=SZhUq8RG3FlImQ8uuxMO3AZs5
	X99cPVjGgPZApfLQdU9keOV4XnSacu6V3cPtgZbHANchu9W3OWJI85DQT+FgV9tsiq/DBKnAA+5Bl
	+oy2CG8BM6HTOB7CXxId6k0hELOH1GDlPTSuNyRMOmGSwjMkHLgRnl4coQxvBup2rPDeie/pRTf1V
	iX9Sk8f2WcH/4iI2ymHrxX8v+l5g6o2oMOxpbJ37pGacuZuW3CPi4ZSenkszXo2eb4Dnp4XVhBHV8
	12nx3OHVOqROEnSLELxg5TP68HDXBpjPzvVGazbcMTTSqn3uwfIxlQk+L89Q7049tbimbsgH7nJYZ
	/as4Jtpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRuNw-0000mM-FJ; Fri, 24 Apr 2020 09:12:36 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuNp-0000le-5j
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:12:31 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 24 Apr 2020 18:12:26 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 5A66E60057;
 Fri, 24 Apr 2020 18:12:26 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 24 Apr 2020 18:12:26 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 2AD8F1A12D0;
 Fri, 24 Apr 2020 18:12:26 +0900 (JST)
Received: from [10.212.22.225] (unknown [10.212.22.225])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 6F879120131;
 Fri, 24 Apr 2020 18:12:25 +0900 (JST)
Subject: Re: [PATCH] dt-bindings: spi: Convert UniPhier SPI controller to
 json-schema
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <1587087014-14598-1-git-send-email-hayashi.kunihiko@socionext.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <1243a377-cb88-3fa5-fcf9-75da200d9a9c@socionext.com>
Date: Fri, 24 Apr 2020 18:12:24 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1587087014-14598-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_021229_325971_8ABF71FB 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/04/17 10:30, Kunihiko Hayashi wrote:
> Convert UniPhier SPI controller binding to DT schema format.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>   .../bindings/spi/socionext,uniphier-spi.yaml       | 55 ++++++++++++++++++++++
>   .../devicetree/bindings/spi/spi-uniphier.txt       | 28 -----------
>   2 files changed, 55 insertions(+), 28 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
>   delete mode 100644 Documentation/devicetree/bindings/spi/spi-uniphier.txt
> 
> diff --git a/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
> new file mode 100644
> index 0000000..bab8bcc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/socionext,uniphier-spi.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/socionext,uniphier-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier SPI controller
> +
> +description: |
> +  UniPhier SoCs have SCSSI which supports SPI single channel.
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +  - Keiji Hayashibara <hayashibara.keiji@socionext.com>
> +
> +allOf:
> +  - $ref: spi-controller.yaml#
> +
> +properties:
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +  compatible:
> +    const: socionext,uniphier-scssi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - resets

According to spi-controller.yaml, the "#address-cells" is required.
And the "#size-cells" is also required because it specifies "const: 0".
I'll add them in v2.

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
