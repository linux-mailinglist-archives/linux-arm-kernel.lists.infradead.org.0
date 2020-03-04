Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A352178D35
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXDpYfIqrBYe6rhMCmGbf4Gw54mjpfHXQZMmcOVXB0A=; b=oznsauqOhtv3TC
	nnSBIf8ir+eyUrHCsdeYZpgiRg28+TYgagpqJAw+WuRlisIgoxdObsjiJv5w50sQzh3tqptQDyNcb
	R15n/pSwJfOnxZ5mUlnkIjGJTDEjI3k4VpSjcqS/bTrayJOxYK50P1W5/L3XsVXG0xg4Js3q13fLj
	EU5FkxMy1KAnHw8/6p7s5t1+UkrxWaJPnLeMT9MJzP7v8AP2CY9df/O1fmMotSY4p+oCW0ObMzqG/
	lBR2v9HYvvFDALMVbnrFYrp3SCeK8LuxHUsxU69isUh6KdvkNLU7ZzDfOPIUtSGIhV27PYbRK/Um0
	5UNQe/Zn6peowS5LjNFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Q84-0004oc-9A; Wed, 04 Mar 2020 09:15:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Q7w-0004nS-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 09:15:42 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j9Q7q-0002le-4g; Wed, 04 Mar 2020 10:15:34 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1j9Q7o-0004aA-7T; Wed, 04 Mar 2020 10:15:32 +0100
Message-ID: <4d0e0f3ec4a883889f3abfb1d222abe8e137af2a.camel@pengutronix.de>
Subject: Re: [PATCH 2/4] dt-bindings: reset: imx7: Document usage on i.MX8MP
 SoC
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>, robh+dt@kernel.org,
 mark.rutland@arm.com,  shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de,  festevam@gmail.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 04 Mar 2020 10:15:32 +0100
In-Reply-To: <1582708431-14161-2-git-send-email-Anson.Huang@nxp.com>
References: <1582708431-14161-1-git-send-email-Anson.Huang@nxp.com>
 <1582708431-14161-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_011540_999625_6759A478 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Wed, 2020-02-26 at 17:13 +0800, Anson Huang wrote:
> The driver now supports i.MX8MP, so update bindings accordingly.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/reset/fsl,imx7-src.txt     |  4 +-
>  include/dt-bindings/reset/imx8mp-reset.h           | 50 ++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/reset/imx8mp-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> index 38ac251..e10502d 100644
> --- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> @@ -10,6 +10,7 @@ Required properties:
>  	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
>  	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src", "syscon"
>  	- For i.MX8MN SoCs should be "fsl,imx8mn-src", "fsl,imx8mq-src", "syscon"
> +	- For i.MX8MP SoCs should be "fsl,imx8mp-src", "syscon"
>  - reg: should be register base and length as documented in the
>    datasheet
>  - interrupts: Should contain SRC interrupt
> @@ -51,4 +52,5 @@ For list of all valid reset indices see
>  <dt-bindings/reset/imx7-reset.h> for i.MX7,
>  <dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
>  <dt-bindings/reset/imx8mq-reset.h> for i.MX8MM and
> -<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN
> +<dt-bindings/reset/imx8mq-reset.h> for i.MX8MN and
> +<dt-bindings/reset/imx8mp-reset.h> for i.MX8MP
> diff --git a/include/dt-bindings/reset/imx8mp-reset.h b/include/dt-bindings/reset/imx8mp-reset.h
> new file mode 100644
> index 0000000..ee37769
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8mp-reset.h
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0-only

Thank you, I've changed this to

/* SPDX-License-Identifier: GPL-2.0-only */

and applied patches 1, 2, and 4.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
