Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B71489E54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=notsFuiOBDsxcw+Q9uvFs62Q2GEKw5de1VzbQIoAFvs=; b=l5/0FEPlAMTRA/
	TKNzOMjkHlwcZH9Y6uUdDL4u3YrvgIKkJ55gFmK2hhi1Ug/Z5D7t2yGF+lUjFrKs1bMMaGUO5ELnw
	q54nC7PdNKSbIDTbd6Cw/y0+n67A5hlzz1Gw7wKTNttfwy4lomfUCqR1fsEXX9Sc/v8ndp8X8tZUV
	cXqWO7H4Squxs1QJNFqkaGbAgzCuY2fBPYG8WBjk3XayijSfrveBResend0txaccXh6NMgB+pT9/5
	Ba7OypJbSlcwBw/wIICfdzLU9qu0KI6lNEz2KS4B0jR31Cxy42lORhJoMnQsj+xIZdRzBj7xrfPRy
	lqJ4ETaF3gYbFNtYIRfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9TX-0002rn-Tq; Mon, 12 Aug 2019 12:31:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9TL-0002qw-3p
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:30:48 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E61D021744;
 Mon, 12 Aug 2019 12:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565613043;
 bh=Ijmr7L4rj9fAdpDTeN+I568sFcwLmUT8CgsOo/en4AA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S4GKmEuU3TYlyUYRKAnckZZb1Qg5JvWhhhH8O5Io14pQ48FHhe12HFwxtUuZ3BNdu
 ez6RpxAdFpRTHYvheWx7FPUhY1lC76AZL6SSJARrmIXW+34fMtPid+LMjcRkNZd4Bh
 HF/vN8apPq1sJgZbMgDe36lbuDhZq6p/TcEpc8EI=
Date: Mon, 12 Aug 2019 14:30:28 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 4/4] dt-bindings: arm: imx: Add the soc binding for
 i.MX8MQ
Message-ID: <20190812123026.GA27041@X250>
References: <20190619022145.42398-1-Anson.Huang@nxp.com>
 <20190619022145.42398-4-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619022145.42398-4-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_053047_186142_BA78AACA 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, bhaskar.upadhaya@nxp.com,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 andrew.smirnov@gmail.com, Linux-imx@nxp.com, u.kleine-koenig@pengutronix.de,
 devicetree@vger.kernel.org, pramod.kumar_1@nxp.com, s.hauer@pengutronix.de,
 j.neuschaefer@gmx.net, robh+dt@kernel.org, vabhav.sharma@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 10:21:45AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> This patch adds the soc & board binding for i.MX8MQ.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> No changes.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index b35abb1..f944df8 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -183,6 +183,12 @@ properties:
>                - fsl,imx8mn-ddr4-evk            # i.MX8MN DDR4 EVK Board
>            - const: fsl,imx8mn
>  
> +      - description: i.MX8MQ based Boards
> +        items:
> +          - enum:
> +              - fsl,imx8mq-evk            # i.MX8MQ EVK Board
> +          - const: fsl,imx8mq
> +

We already have this with e126417ff1b1 (dt-bindings: arm: fsl: Add the
imx8mq boards).

Shawn

>        - description: i.MX8QXP based Boards
>          items:
>            - enum:
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
