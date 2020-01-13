Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A32138D84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yvkAYHiGGJwBitHmma+nxB33DXuUrybfMN/xQsOWT8w=; b=avmqd7SHir76gevmQdwoN4bvI
	n9k/UhhyH/tIV0498Vf6A43//cSmWQko4bl4iYvlBE5XGimnth1jM7xD2/B/xpMjruWCRf6nbfcao
	w4X4kjKdBhTT7iZ47NsJRNKuGitqZEkYz3vEgKXHrT9GRs3mB6vTIcIXdnr1AKfMtbEDI1fRGD3Bq
	Wgr+o3y5iKcn39ZyT/zFgVNcvBJPd91E+8WiMxsPz6JcFc5xNSe29YA1dVIkDD2fKSpqOPkGMzOP6
	C7/SfBG9WvymIH07RiJcexBewPivBchn8BvNiG+b9ZoQYe1WMHi2nH/NA5T3lXO+0swt8hS2A+c+5
	eOPUXir1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvqR-00024d-HQ; Mon, 13 Jan 2020 09:17:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvpd-0001dA-UR
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:16:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 216982080D;
 Mon, 13 Jan 2020 09:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578906980;
 bh=yyz9OX86kAKLtZA2YLPwxpuQedHX3W7gDr+3r11s6RA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NXZQsHqvj0GqJ7z0FoNq9LhYhpeo1fRRkyX9bNYtcDjqHQxe6Og3APlOGHTRJlowR
 x7I8ZOmWGEjERbE+qB8iYa57JA7cvouAsSkDqPYh+WtNtNpPL+FYre471Qqx47xQYp
 x5rItNwbxcLVPCXtoYhVK25h0DoY1wIRcWSIrGpg=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iqvpa-00016r-4Q; Mon, 13 Jan 2020 09:16:18 +0000
MIME-Version: 1.0
Date: Mon, 13 Jan 2020 09:16:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH V4 RESEND 1/2] dt-bindings/irq: add binding for NXP INTMUX
 interrupt multiplexer
In-Reply-To: <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
References: <1578899321-1365-1-git-send-email-qiangqing.zhang@nxp.com>
 <1578899321-1365-2-git-send-email-qiangqing.zhang@nxp.com>
Message-ID: <e5aa95d7fd1c2d9c0586b7d8689cbfa0@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: qiangqing.zhang@nxp.com, jason@lakedaemon.net,
 tglx@linutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com, fugang.duan@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011622_179254_38687170 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, fugang.duan@nxp.com,
 jason@lakedaemon.net, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-13 07:08, Joakim Zhang wrote:
> This patch adds the DT bindings for the NXP INTMUX interrupt 
> multiplexer
> for i.MX8 family SoCs.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  .../interrupt-controller/fsl,intmux.yaml      | 77 +++++++++++++++++++
>  1 file changed, 77 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> 
> diff --git
> a/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> new file mode 100644
> index 000000000000..4dba532fe0bd
> --- /dev/null
> +++ 
> b/Documentation/devicetree/bindings/interrupt-controller/fsl,intmux.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: 
> http://devicetree.org/schemas/interrupt-controller/fsl,intmux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale INTMUX interrupt multiplexer
> +
> +maintainers:
> +  - Marc Zyngier <maz@kernel.org>

Err... No. I have absolutely no desire to maintain this binding on its 
own.
Feel free to add yourself as the maintainer for this file, as I'm merely
the conduit for updates to irqchip DT bindings.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
