Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44499E73D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1BdYi7eXNHLIEcYNW4DR/QHCnzQ1maLFGq3DsWT+W8=; b=qNRr3286xtL6o2
	TWKTRytFs7rx/LFSQKmYIfODop1zS8W9ep7MgjL9V/G4PVQPOVJTclPvbf9LF+LI9NyfTCKKDuZKc
	UnMZYRL/bzHSrOWhzAvKGgvxLc/cLYTlrUcPs6iWTdRJ3/SH1tCu60PvkzcpLtAnSRZrm9oLtE6VI
	uF/9QN3D2gao9Cq7PLclkd8VT/V40BSoiEGUHX/pbTdbNncPYvvPo1yYkbVnxtLdqqrb9Oz1HqiqH
	GcwHo9kkg1k6xePIROKfAk0K9hwcQfHYC+YDRD81Fh3ipzMrvueMnBjJHAwhRvIxupgziuHi3AJSG
	1pUPgVh/weecDEntkFOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2a98-0005QL-Lp; Tue, 27 Aug 2019 12:00:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2a8k-0005K0-LT
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:00:00 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3280F22CBB
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 11:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566907198;
 bh=cojGaPwwiuNAb/W4vwUgL1AZRj1AsasbQrMb/I1e6iI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T0pJ99OEmlQBr7pPoQJoDHmOtqwMOKuEXwbmbigauW6MlUwHMiCooYtqwR8OgpAnS
 Z8xNy1gdTVGPI3MkG+btJusN57WfVBUu3E5qOHKl96b73LRExbxcxFew7In4KKhx+o
 T/avNFZxabrlaVvNYxVFrq6mQ0633EAHtFlX4mVU=
Received: by mail-qt1-f170.google.com with SMTP id z4so20991823qtc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 04:59:58 -0700 (PDT)
X-Gm-Message-State: APjAAAV4rAAG+mTz7y+sKt3xlYnWCkKoBIJXwoRJmrA4sfNLJyKMg9Sy
 ic3wg54MRZu3bAg4numcnOzPInF6M+PFzKF1/A==
X-Google-Smtp-Source: APXvYqxzLkdUJzCt/zWOg6IuhiGFBaSLvGFnC+KgLNTyvxF+vcnBvHOa0oGv5spSX6RPZ8f6ZyHhXNAQ/NwAtPhzuWs=
X-Received: by 2002:aed:22b3:: with SMTP id p48mr20191755qtc.136.1566907197288; 
 Tue, 27 Aug 2019 04:59:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-3-lkundrak@v3.sk>
In-Reply-To: <20190822092643.593488-3-lkundrak@v3.sk>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 06:59:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ4_h+M=6L-nzK2N+A9TAy-N8SoiFv1SSTk_kCcKt0eXw@mail.gmail.com>
Message-ID: <CAL_JsqJ4_h+M=6L-nzK2N+A9TAy-N8SoiFv1SSTk_kCcKt0eXw@mail.gmail.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: arm: Convert Marvell MMP board/soc
 bindings to json-schema
To: Lubomir Rintel <lkundrak@v3.sk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_045958_744651_165CD7E4 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 4:27 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
>
> Convert Marvell MMP SoC bindings to DT schema format using json-schema.
>
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
>
> ---
> Changes since v1:
> - Added this patch
>
>  .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 ---------
>  .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 31 +++++++++++++++++++
>  2 files changed, 31 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> deleted file mode 100644
> index 951687528efb0..0000000000000
> --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -Marvell Platforms Device Tree Bindings
> -----------------------------------------------------
> -
> -PXA168 Aspenite Board
> -Required root node properties:
> -       - compatible = "mrvl,pxa168-aspenite", "mrvl,pxa168";
> -
> -PXA910 DKB Board
> -Required root node properties:
> -       - compatible = "mrvl,pxa910-dkb";
> -
> -MMP2 Brownstone Board
> -Required root node properties:
> -       - compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> new file mode 100644
> index 0000000000000..dc9de506ac6e3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/mrvl/mrvl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell Platforms Device Tree Bindings
> +
> +maintainers:
> +  - Lubomir Rintel <lkundrak@v3.sk>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: PXA168 Aspenite Board
> +        items:
> +          - enum:
> +              - mrvl,pxa168-aspenite
> +          - const: mrvl,pxa168
> +      - description: PXA910 DKB Board
> +        items:
> +          - enum:
> +              - mrvl,pxa910-dkb

Doesn't match what's in dts file:

arch/arm/boot/dts/pxa910-dkb.dts:       compatible =
"mrvl,pxa910-dkb", "mrvl,pxa910";

> +      - description: MMP2 Brownstone Board

If this entry is only for this board...

> +        items:
> +          - enum:
> +              - mrvl,mmp2-brownstone

...then this can be a 'const' instead. Same for the others.

> +          - const: mrvl,mmp2
> +...
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
