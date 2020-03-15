Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F4185EF2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 19:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBD7ES0AmKYv7BiGd3LtqLMfv9HLEtlqOeCaKyFTBxs=; b=QmmzpXgRJ3QmPo
	8F3VTD6Jcnc4JJ4RH+vXUQuLlHDF8NT9ssS1BBOuzhlREblcm+0XqHPsJPnWaweSUPSioJSUsP19Q
	m1My1ExCU8aIJblBBIJVFGjb1V5LdgxARYSj4aAhCW6Tn0ySGo6CyAToXjYtrtkNw/BH0OssLaa1m
	+Lzg2G220uk8ivQ7SHhy0HRg403DC89QbB7BuEx4OcR1gHfKA1enUgHWr83sT2DaXTy9y/9rSF/LX
	yiWvZ1EVw4AljDtI31S0hkfNSags3gWaCRAMihub1zzZGKwXcpa4+8umdJz7yMLitpw4/veLE5Lhy
	6G+yH+n9ttdfc24d+D2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDXx1-0001oo-2c; Sun, 15 Mar 2020 18:25:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDXwu-0001nz-2q
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 18:25:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=powrQRe80aGxECCk+dtKXN3HLIybmgxMPcgaJHiSaLo=; b=dAcfOEZLeXaGsh5vQBzTzYpWwQ
 QoBvIvwFJzEm7lg/gI+jxgbSj+tKI67zGiWkn2sB/cov0fXbMtF1TkZOn2UjLqKuMsIVoUZAgeqwq
 l/ChR1erxzLionAxTCXDjevryHRoejIn+qRqTo7H8NmWNNkTO2OIFi0ilnDo6ULD+noQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jDXwe-0002FB-B9; Sun, 15 Mar 2020 19:25:04 +0100
Date: Sun, 15 Mar 2020 19:25:04 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Dejin Zheng <zhengdejin5@gmail.com>
Subject: Re: [PATCH net-next v2 1/2] net: stmmac: use readl_poll_timeout()
 function in init_systime()
Message-ID: <20200315182504.GA8524@lunn.ch>
References: <20200315150301.32129-1-zhengdejin5@gmail.com>
 <20200315150301.32129-2-zhengdejin5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315150301.32129-2-zhengdejin5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_112520_128672_0C9B35CA 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 joabreu@synopsys.com, mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 15, 2020 at 11:03:00PM +0800, Dejin Zheng wrote:
> The init_systime() function use an open coded of readl_poll_timeout().
> Replace the open coded handling with the proper function.
> 
> Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
> ---
> v1 -> v2:
> 	- no changed.
> 
>  .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> index 020159622559..2a24e2a7db3b 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> @@ -10,6 +10,7 @@
>  *******************************************************************************/
>  
>  #include <linux/io.h>
> +#include <linux/iopoll.h>
>  #include <linux/delay.h>
>  #include "common.h"
>  #include "stmmac_ptp.h"
> @@ -53,8 +54,8 @@ static void config_sub_second_increment(void __iomem *ioaddr,
>  
>  static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
>  {
> -	int limit;
>  	u32 value;
> +	int err;
>  
>  	writel(sec, ioaddr + PTP_STSUR);
>  	writel(nsec, ioaddr + PTP_STNSUR);
> @@ -64,13 +65,10 @@ static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
>  	writel(value, ioaddr + PTP_TCR);
>  
>  	/* wait for present system time initialize to complete */
> -	limit = 10;
> -	while (limit--) {
> -		if (!(readl(ioaddr + PTP_TCR) & PTP_TCR_TSINIT))
> -			break;
> -		mdelay(10);
> -	}
> -	if (limit < 0)
> +	err = readl_poll_timeout(ioaddr + PTP_TCR, value,
> +				 !(value & PTP_TCR_TSINIT),
> +				 10000, 100000);
> +	if (err)
>  		return -EBUSY;

Hi Dejin

It is normal to just return whatever error code readl_poll_timeout()
returned.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
