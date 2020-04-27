Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45C1B970D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 08:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCiyssemjbolEJrcvu0C8+vWL4IRPXjcgd71tS3rtXY=; b=JUY4mSiyCcDVQO
	8RoR5Uzj5PMgjBBPmoVvzX3r92oK4jz1tJR2cBQ7vI4M+KaYGEZ/A8VT7KQqkGOchr2BE5Ywt8uUU
	T21D5S4P/VFut/EK0MJNOCUw35nfnmpAazaj+3kYNCWUU9jJW8Bn1PEOGcvg8zv3qEcuJVHSK0/ru
	3o4iWtVIGKmZ4Rfn00FqE4ogwhp7sxveGfYK7yynDK2mMxXhLFfQACofim5bzCoMcFfJMUK/NraRr
	ceAxFsCdx5xlLUh1Rj85NUh2BBktBr3Aw/tlJd0KCSxeA8gh5QUN52pIFtrvFNU9gJIPphw7jSU7S
	ezgGzdDbVXjyk5y47Iog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSwza-0001Jf-Ut; Mon, 27 Apr 2020 06:11:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSwzS-0001Ih-Ul
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 06:11:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jSwzJ-0005L3-RD; Mon, 27 Apr 2020 08:11:29 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jSwzB-0003QW-8g; Mon, 27 Apr 2020 08:11:21 +0200
Date: Mon, 27 Apr 2020 08:11:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V5 1/2] dt-bindings: firmware: imx: Move system control
 into dt-binding headfile
Message-ID: <20200427061121.tsybnbqrzjpy7f3a@pengutronix.de>
References: <1587888704-7158-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587888704-7158-1-git-send-email-Anson.Huang@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:10:13 up 163 days, 21:28, 173 users,  load average: 0.13, 0.18,
 0.12
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_231138_992707_ED383994 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, daniel.lezcano@linaro.org, peng.fan@nxp.com,
 linux@rempel-privat.de, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 rui.zhang@intel.com, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

sorry for jumping in..

On 20-04-26 16:11, Anson Huang wrote:
> From: Dong Aisheng <aisheng.dong@nxp.com>
> 
> i.MX8 SoCs DTS file needs system control macro definitions, so move them
> into dt-binding headfile, then include/linux/firmware/imx/types.h can be
> removed and those drivers using it should be changed accordingly.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V4:
> 	- Use another patch for new added system controls and PM clock types.
> ---
>  drivers/firmware/imx/imx-scu.c          |  1 -
>  drivers/thermal/imx_sc_thermal.c        |  2 +-
>  include/dt-bindings/firmware/imx/rsrc.h | 51 ++++++++++++++++++++++++++
>  include/linux/firmware/imx/sci.h        |  1 -
>  include/linux/firmware/imx/types.h      | 65 ---------------------------------
>  5 files changed, 52 insertions(+), 68 deletions(-)
>  delete mode 100644 include/linux/firmware/imx/types.h
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index f71eaa5..f3340fa 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -8,7 +8,6 @@
>   */
>  
>  #include <linux/err.h>
> -#include <linux/firmware/imx/types.h>
>  #include <linux/firmware/imx/ipc.h>
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/interrupt.h>

You don't need this anymore here or was it a needless include?

Regards,
  Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
