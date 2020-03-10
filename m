Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B3317F037
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 06:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYA4Qh14Z7gz1oSShuiOZq9SCASyqvwUyTAlRlnFPTw=; b=cc//18Sb8DTGOs
	B7VuiJZeB3DKU2wNrbCzIzuvsakYU/nY8bpYxykYwvxWAaSB5WjFbulSpGCAEhbAUSmbRCAptkjTk
	QgacHV0hds7/luejR8qejPvIfV2kZch3+NcB3A8600l9qW4VUygly5UhMgrfpRC2EdhOn09QGk95L
	71ykSVLpJ12B88VUY5XuxYnNxiGoZUbOvmfEBTBpVm5NjBYVrvikhMuDw/6O5hPLQ8X8YagcJswkY
	qZKB2cyIU4vkY7XYmmg2RuDqFpZJAySkx74Co8ri/RrGF/ZKv4cF/C6PPbiFUdeuWgbfYXoEKf3qF
	bSQQS9bXmICMD3UrX60A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXmD-00014r-UE; Tue, 10 Mar 2020 05:50:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXm5-00014L-TR
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 05:49:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D8972464B;
 Tue, 10 Mar 2020 05:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583819392;
 bh=BkVtYbEL7jQXYjPwzqGSfq30uw8E2tp1PNvu20vn5gk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=shPr6w5QC++tYZlE0GQrDIG7OdSGlKl6yHDpSXTd+SNtOVYI9MAhyn7VRnGQ3Wlza
 e+rDK63LmB/i3YfkF7S7PrhT6VZvf/M8H4dWC7oKROWRb/4vjp/kNjDxlXVlXiyITx
 5sBLUeEVcbGBQN6nqAW2G8eQJzkW+maEfsNsiGZs=
Date: Tue, 10 Mar 2020 13:49:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 01/14] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Message-ID: <20200310054945.GE15729@dragon>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-2-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-2-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_224953_974515_7A946527 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 03:59:44PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX7ULP Power Management Controller binding doc
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

This is a new binding, and I would like get an ACK from Rob on it.

> ---
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> new file mode 100644
> index 000000000000..992a5ea29d39
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/arm/freescale/imx7ulp_pmc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: i.MX7ULP Power Management Controller(PMC) Device Tree Bindings
> +
> +maintainers:
> +  - Peng Fan <peng.fan@nxp.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - fsl,imx7ulp-pmc0
> +          - fsl,imx7ulp-pmc1

We usually do not encode number suffix in the compatible string.  Do
they really have different programming model?

Shawn

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    pmc0: pmc0@410a1000 {
> +        compatible = "fsl,imx7ulp-pmc0";
> +        reg = <0x410a1000 0x1000>;
> +    };
> +...
> -- 
> 2.16.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
