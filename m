Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4111A0556
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 05:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IT4UVf35xIdg12C/dDGVLi+XGmsH4xjwoXUE/hMEKXs=; b=nxoCPn54/6kl8r
	1NYUBwkxNk1E6oY9ph/OlH56thvXpHfYsPjeFge46xNUNax3GTRV7tbZR6PSeMvElDjVfRt9/vVfN
	4RBrWpQQUP1X8BcpYe3+8SA+Bc98bFzdkQOzYNC365frq+i4vNVQAHNEV/o8LcXNTW3IkJdWiNrmc
	Bo+G6AVvnPIQzKMOxdzLY5ckN2DSQbinyiqglBjTf1AWb4K8iF/CTZJx4OGZZRF2BbiVFOkdLWs92
	PgkoE59KZT6Hk1Xqa5wRDQISt1DLrV5Kz+83L6FhV/sdV1wOV9Q1PkB95vwgkmhDBVIX9O21Adjb2
	B3K3Tle6yDS0QqDtosEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLf3b-0004S1-Fy; Tue, 07 Apr 2020 03:37:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLf3V-0004Qa-UU; Tue, 07 Apr 2020 03:37:43 +0000
X-UUID: fcd245c14967473eb239ed9c9819860b-20200406
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xMyvElthjOstM9PdI/6GoHMLeRrsFL8BjfQEJHhLRDw=; 
 b=YXE3wXjpJWQYVGq1HVhR5nrZD+KFQL5wIhzLSw9wjnfIO0EN4WDZe66fBVCy5ZpJfnMSeyr36/Zf2syRUlQyPh+l8KfdJx05OPiI68Phil+DWQYsDo4xkHF79LCrzFdXIZAv5Y9BNnZbTsXqV7AZxLleOMVgtWxB9QAcatcWtL8=;
X-UUID: fcd245c14967473eb239ed9c9819860b-20200406
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 616529763; Mon, 06 Apr 2020 19:37:20 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 6 Apr 2020 20:37:17 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 7 Apr 2020 11:37:14 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 7 Apr 2020 11:37:13 +0800
Message-ID: <1586230628.28772.8.camel@mhfsdcap03>
Subject: Re: [PATCH] USB: mtu3: Use the correct style for SPDX License
 Identifier
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Nishad Kamdar <nishadkamdar@gmail.com>
Date: Tue, 7 Apr 2020 11:37:08 +0800
In-Reply-To: <20200404103728.GA6011@nishad>
References: <20200404103728.GA6011@nishad>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 455CD0340B1F1D8F978B7CFC18F4BFDB3E82DE13CD7AB8C93EAFAC02F918BEEB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_203741_985850_4622FA16 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-04-04 at 16:07 +0530, Nishad Kamdar wrote:
> This patch corrects the SPDX License Identifier style in
> header files related to MediaTek USB3 Dual Role controller.
> For C header files Documentation/process/license-rules.rst
> mandates C-like comments (opposed to C source files where
> C++ style should be used).
> 
> Changes made by using a script provided by Joe Perches here:
> https://lkml.org/lkml/2019/2/7/46.
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> ---
>  drivers/usb/mtu3/mtu3.h         | 2 +-
>  drivers/usb/mtu3/mtu3_debug.h   | 2 +-
>  drivers/usb/mtu3/mtu3_dr.h      | 2 +-
>  drivers/usb/mtu3/mtu3_hw_regs.h | 2 +-
>  drivers/usb/mtu3/mtu3_qmu.h     | 2 +-
>  drivers/usb/mtu3/mtu3_trace.h   | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
> index 6087be236a35..d49db92ab26c 100644
> --- a/drivers/usb/mtu3/mtu3.h
> +++ b/drivers/usb/mtu3/mtu3.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * mtu3.h - MediaTek USB3 DRD header
>   *
> diff --git a/drivers/usb/mtu3/mtu3_debug.h b/drivers/usb/mtu3/mtu3_debug.h
> index e96a69234d05..fb6b28277c9b 100644
> --- a/drivers/usb/mtu3/mtu3_debug.h
> +++ b/drivers/usb/mtu3/mtu3_debug.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * mtu3_debug.h - debug header
>   *
> diff --git a/drivers/usb/mtu3/mtu3_dr.h b/drivers/usb/mtu3/mtu3_dr.h
> index 5e58c4dbd54a..760fe7d69c6b 100644
> --- a/drivers/usb/mtu3/mtu3_dr.h
> +++ b/drivers/usb/mtu3/mtu3_dr.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * mtu3_dr.h - dual role switch and host glue layer header
>   *
> diff --git a/drivers/usb/mtu3/mtu3_hw_regs.h b/drivers/usb/mtu3/mtu3_hw_regs.h
> index 8382d066749e..bf34f784f84b 100644
> --- a/drivers/usb/mtu3/mtu3_hw_regs.h
> +++ b/drivers/usb/mtu3/mtu3_hw_regs.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * mtu3_hw_regs.h - MediaTek USB3 DRD register and field definitions
>   *
> diff --git a/drivers/usb/mtu3/mtu3_qmu.h b/drivers/usb/mtu3/mtu3_qmu.h
> index 9cfde201db63..66e1c0ab5a99 100644
> --- a/drivers/usb/mtu3/mtu3_qmu.h
> +++ b/drivers/usb/mtu3/mtu3_qmu.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*
>   * mtu3_qmu.h - Queue Management Unit driver header
>   *
> diff --git a/drivers/usb/mtu3/mtu3_trace.h b/drivers/usb/mtu3/mtu3_trace.h
> index 050e30f0fbd4..1b897636daf2 100644
> --- a/drivers/usb/mtu3/mtu3_trace.h
> +++ b/drivers/usb/mtu3/mtu3_trace.h
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.0
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /**
>   * mtu3_trace.h - trace support
>   *

Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
