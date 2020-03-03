Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E60177087
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:54:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+5P8hwiMtw9TZ+9oc64H5houIYHqbH4vDNCvxW1yFXs=; b=oZ8Kvmtws5gueAxk2LKKjSez1
	33f6qrVA+LrYCeS7LEkE3Bg9AH/W+k+18Sqg5KwJ6ox/Hrgyx1gDRBvKaaciK99SAZXlVgBr/fp0d
	UhUL6SqYfa7RSf+EnzJ8iMtM55C6Jgvkc78gP8oIx1zLsvTMm3uAsZRgBFzi6UNp3TTDQqQ45JxWm
	tdTxbtGPQtbQ+uGRJv6uedBHZDRdYKXmr+5lhAaaaA9aWL5CZFfWhgD0AnswLvyU4sCA2ODYr9+Sh
	7QIIPkexiqOU/uBo62QglnF/zmTjcTpYPrh1VDrpQPzwQzy6mlpuCnph4bl+snkNinsr9jUnsKfV+
	yDwNJHThQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Nv-0005pu-Us; Tue, 03 Mar 2020 07:54:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92No-0005pX-Ql
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:54:30 +0000
Received: from soja.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:13da])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <o.rempel@pengutronix.de>)
 id 1j92Nn-0003u7-2P; Tue, 03 Mar 2020 08:54:27 +0100
Subject: Re: [PATCH V5 1/4] dt-bindings: mailbox: imx-mu: add SCU MU support
To: peng.fan@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 jassisinghbrar@gmail.com
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
 <1583221359-9285-2-git-send-email-peng.fan@nxp.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <6f793db4-d4af-1cfa-4039-144e0ef20d28@pengutronix.de>
Date: Tue, 3 Mar 2020 08:54:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583221359-9285-2-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:13da
X-SA-Exim-Mail-From: o.rempel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_235428_869413_30B52698 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: aisheng.dong@nxp.com, Anson.Huang@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03.03.20 08:42, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8/8X SCU MU is dedicated for communication between SCU
> and Cortex-A cores from hardware design, it could not be reused
> for other purpose. To use SCU MU more effectivly, add "fsl,imx8-scu-mu"
> compatile to support fast IPC.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
> 
> V5:
>   None
> V4:
>   None
> V3:
>   New patch
> 
>   Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> index 9c43357c5924..31486c9f6443 100644
> --- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> +++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
> @@ -23,6 +23,8 @@ Required properties:
>   		be included together with SoC specific compatible.
>   		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
>   		compatible to support it.
> +		To communicate with i.MX8 SCU, "fsl,imx8-mu-scu" could be
> +		used for fast IPC
>   - reg :		Should contain the registers location and length
>   - interrupts :	Interrupt number. The interrupt specifier format depends
>   		on the interrupt controller parent.
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
