Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB54ABE2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KI5J9GVcYtqriArD376WddUJBxL8reCvJ+WBnNdyA84=; b=K2Ny7Aq2+T7miP
	Klms43Ok/vDWBkIWiNEKQKZCX3VGzH1Yoj1pL9QLpHMRKbtPyWICOO/aMtQoPfnEadBQMQjTSmPVt
	RkKw3Z7uIO/S8v6Yo/w2VgxY+y/3DCYRUIP7KRd3taO3+TleD3UezUYlDN6P8dOYUFQYJb2e3fMF0
	3CdOHmpM7DjHe5nVL4/07urXSxSA+kvPbYWmRyl3jloxC6rtsd/kxJh2SZ1JSct3ufbFhxQ11wFtg
	wwL7teJOcQnnmLZxTVRjOIFQ1IApj3Hvl5SPETCfQ1aR1WoMUicPpXetLzBmFptoEGg+3Qw7xPF6E
	Ufvu6hjeEzKLuC4mUeXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6HbP-0000H8-AS; Fri, 06 Sep 2019 17:00:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6HbC-0000Gl-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:00:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7271720693;
 Fri,  6 Sep 2019 17:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567789238;
 bh=edmt0mWAVzMrncvBSTQ4sSM8tDFkQPsUZ6bHredUyAE=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=VOiJ/CZaGT0AlatZpumHMBvaMiBcMzchXIfHDZjECNtalH9Q/tYgJwBBpJMH9j7Vu
 vyt4vnSi8a9QhBbzQGl+cTeDrbvt1Wnh+XIoqmWAtE82Cy+YcE+/aJOxSLhg+vQUgQ
 0yKMiTrlSt/+Fjs1U16kGKAL/gFjslxK7mLMMgkc=
MIME-Version: 1.0
In-Reply-To: <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to
 parse clocks from device tree
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:00:37 -0700
Message-Id: <20190906170038.7271720693@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100038_959298_DA4167D3 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 mturquette@baylibre.com, Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-08-20 04:13:16)
> MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
> in different subsystems across CPUs and also vary a bit on the availability.
> 
> Same as SCU clock, we want to move the clock definition into device tree
> which can fully decouple the dependency of Clock ID definition from device
> tree and make us be able to write a fully generic lpcg clock driver.
> 
> And we can also use the existence of clock nodes in device tree to address
> the device and clock availability differences across different SoCs.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

> ChangeLog:
> v3->v4:
>  * change bit-offset property to clock-indices
>  * use constant macro to define clock indinces
>  * drop hw-autogate property which is still not used by drivers
> v2->v3:
>  * no changes
> v1->v2:
>  * Update example
>  * Add power domain property
> ---
>  .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 36 ++++++++++++++++++----
>  include/dt-bindings/clock/imx8-lpcg.h              | 14 +++++++++
>  2 files changed, 44 insertions(+), 6 deletions(-)
>  create mode 100644 include/dt-bindings/clock/imx8-lpcg.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> index 965cfa4..cad8fc4 100644
> --- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> +++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
> @@ -11,6 +11,21 @@ enabled by these control bits, it might still not be running based
>  on the base resource.
>  
>  Required properties:
> +- compatible:          Should be one of:
> +                         "fsl,imx8qxp-lpcg"
> +                         "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
> +- reg:                 Address and length of the register set.
> +- #clock-cells:                Should be 1. One LPCG supports multiple clocks.
> +- clocks:              Input parent clocks phandle array for each clock.
> +- clock-indices:       An integer array indicating the bit offset for each clock.
> +                       Refer to <include/dt-bindings/clock/imx8-lpcg.h> for the
> +                       supported LPCG clock indices.

This is an interesting solution.

> +- clock-output-names:  Shall be the corresponding names of the outputs.
> +                       NOTE this property must be specified in the same order
> +                       as the clock-indices property.
> +- power-domains:       Should contain the power domain used by this clock.
> +
> +Legacy binding (DEPRECATED):
>  - compatible:  Should be one of:
>                   "fsl,imx8qxp-lpcg-adma",
>                   "fsl,imx8qxp-lpcg-conn",

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
