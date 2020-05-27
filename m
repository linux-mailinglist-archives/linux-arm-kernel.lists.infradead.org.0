Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553431E3DB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9vIJ8xkPAbGEjnHBafHvqrgGZQLPiHsr7GXjS4+w50=; b=tUTJ0/4eOTtm4E
	93ds+sYVl3pocM7+MukvhRtERdLXllLhHOYo2oOwXaFUhR/hI0YXUZB5NtZiB7JpvyICqbt3qVrlM
	m9ekLOcUVMNtUQcpsHvE2jk9aFMX2KWINGAn5hvqnLWuTMHYig/2gCPXn8JEFlPpLY/DJTWAciRNX
	Vjdc55vGtq8QA8lrOebqVQeU+qchDCF00TK/36Qio7lwIINToSdrKPAN4Yf/EDvIAWGqX4u7j+2+R
	dLM/lVWOyHkl1g6XqhN5M/6gDu7BwRQXwx5scs2CHkSb0W9EBdKvKVicvwN+9bYQUlDpErrYkVkGW
	Aeo/nqr4Y3w9FlLPRE3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsY9-0000bD-IO; Wed, 27 May 2020 09:40:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsXz-0000aM-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:40:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jdsXn-0005nV-PP; Wed, 27 May 2020 11:40:15 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jdsXm-0000Kd-2L; Wed, 27 May 2020 11:40:14 +0200
Date: Wed, 27 May 2020 11:40:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH 2/2] MAINTAINERS: Add Purism Librem 5 section to the list
Message-ID: <20200527094014.nn4cupjrvcceo5lv@pengutronix.de>
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
 <20200514155737.12160-2-martin.kepplinger@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514155737.12160-2-martin.kepplinger@puri.sm>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:38:12 up 194 days, 56 min, 195 users, load average: 0.19, 0.17, 
 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_024027_952083_4B2FDE8A 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, mchehab@kernel.org, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-14 17:57, Martin Kepplinger wrote:
> Add development information for the devicetree files for hardware
> by Purism SPC.
> 
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0abba1aff1ae..176efec31010 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13775,6 +13775,14 @@ T:	git git://linuxtv.org/media_tree.git
>  F:	Documentation/admin-guide/media/pulse8-cec.rst
>  F:	drivers/media/cec/usb/pulse8/
>  
> +PURISM LIBREM 5
> +M:	Purism Kernel Team <kernel@puri.sm>
> +S:	Supported
> +B:	https://source.puri.sm/Librem5/linux-next/issues
> +T:	https://source.puri.sm/Librem5/linux-next
> +F:	arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> +F:	arch/arm64/boot/dts/freescale/imx8mq-librem5.dts

Is it okay to take care of all imx8mq-librem5* files? 

F:	arch/arm64/boot/dts/freescale/imx8mq-librem5*

Regards,
  Marco

> +
>  PVRUSB2 VIDEO4LINUX DRIVER
>  M:	Mike Isely <isely@pobox.com>
>  L:	pvrusb2@isely.net	(subscribers-only)
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
