Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B445186180
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HobiSwAzLR0Qsv7H5FST3lfgNiYYUVB+KFLvTdwIxI=; b=MGDb1rfMzBKS1S
	d0o6sMs8EqWAqwefx8uoDEcXH9S1V1M0uIF+2kwyxcoABKa8gI8yZZR5NznF7RilpMgKFUegSEn8L
	+JEklf3EITm30pJYpDXJ6+FQFC8oaHWETaWyUFXLzNdIQkA5qsGttIgEdLhZ9o7zFAOfdDoAN0lPJ
	TCWrndo/TkGineDGEhtSEF+NmzCZuS2DXrHeNz0uVEAGf1EwI3L5QeLgvqRyX16N8G6CzQnO9dejx
	01RIv3O3pKv0VgESXyMmOFPclzXtH0i+G63Jquj9IoEKZOB7/ybB20JAneeor8SwQu7HWdvdw5ADE
	aq9HbwAsriE7LY9CJddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfKD-0004QL-0a; Mon, 16 Mar 2020 02:17:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDfK4-0004Pv-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:17:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id t3so7252346plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 19:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qWjBZjkx/KY8oeosSpB9MAxoMYpT7Z/9Dd9HUziHQCo=;
 b=TGqbQ6O1HzIXJAmUYkTcbObT8QAmErwTVdiAxeK7pZ4bDCI/CJ6m6H8xDzUP9gz0+i
 fSCRDMrYZhHgvU9DLCpfWsQSHZO7Nn7OtKE2CBchARrdH7O39In+Zfodd1y1ZSRtj93E
 R3bVRUQyv1JPlang3KriuWWgp0LjMks4SJKtbIcueuV+fX/T1x++8AWlSR/p7K3wQLnA
 tnTbJSpaPsPfQuPjctU9EzmBPo363wshN7EhePGon5nhS9kh3aT/SRJs2cfjhkVl3i8n
 pjKgydM/sfBWG9mNJOFv0mrdM1EOws14tO37iMVZeXDpLzi7YNgDhfsLdoZB+93jusqP
 6VdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qWjBZjkx/KY8oeosSpB9MAxoMYpT7Z/9Dd9HUziHQCo=;
 b=JTZ/YLvJOaqMiSFc9bvOP/Qf0FMnfVBWwU35dTt7fJJakgRahATNdeV75lD7fmgjIs
 dZ47B2FXba0BMD6d+qdgRKAwA4IpxHZBTtHXy10RjbAW20rpGiz6RxXdEXYDbckwOW6x
 JWgf+WaEacapiwPDMeEWp28bBE8OkQzYTGXR4uRedp/a7utWcWNzQjt3Eis+Aohb9pf6
 3lIhI4zdwqABUSln7RCOUGnsQj5VBiDtvtpVo9vIMWDsc5MrC+uaHLXAe6qmEw+foCTt
 OizUbeSJzOxC8wIeUNVfEvDHJuB/kASOik36KWNf/HEaTfsCcupWRXyfdJkVh2ugS6Ko
 8OYQ==
X-Gm-Message-State: ANhLgQ3ncyOtFDJ/KxrXrfUH/9cByKbLhTzEB66KUaS9BLstXTW4yERD
 FAIw3H38iIYxyXCwZZmSCHg=
X-Google-Smtp-Source: ADFU+vvSlXruOq6QGZEaPnd9d+OEhOdhxSx/jKZA5JkbYveY8eFrZeTezL22IYW2GE+BrhiktXdAsw==
X-Received: by 2002:a17:902:bb92:: with SMTP id
 m18mr24764047pls.46.1584325063169; 
 Sun, 15 Mar 2020 19:17:43 -0700 (PDT)
Received: from localhost (216.24.188.11.16clouds.com. [216.24.188.11])
 by smtp.gmail.com with ESMTPSA id s25sm4830589pgv.70.2020.03.15.19.17.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Mar 2020 19:17:42 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:17:40 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH net-next v2 1/2] net: stmmac: use readl_poll_timeout()
 function in init_systime()
Message-ID: <20200316021740.GA3024@nuc8i5>
References: <20200315150301.32129-1-zhengdejin5@gmail.com>
 <20200315150301.32129-2-zhengdejin5@gmail.com>
 <20200315182504.GA8524@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200315182504.GA8524@lunn.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_191745_015027_F5D12A03 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [216.24.188.11 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhengdejin5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zhengdejin5[at]gmail.com]
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

On Sun, Mar 15, 2020 at 07:25:04PM +0100, Andrew Lunn wrote:

Hi Andrew and David :

> On Sun, Mar 15, 2020 at 11:03:00PM +0800, Dejin Zheng wrote:
> > The init_systime() function use an open coded of readl_poll_timeout().
> > Replace the open coded handling with the proper function.
> > 
> > Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
> > ---
> > v1 -> v2:
> > 	- no changed.
> > 
> >  .../net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c  | 14 ++++++--------
> >  1 file changed, 6 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> > index 020159622559..2a24e2a7db3b 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_hwtstamp.c
> > @@ -10,6 +10,7 @@
> >  *******************************************************************************/
> >  
> >  #include <linux/io.h>
> > +#include <linux/iopoll.h>
> >  #include <linux/delay.h>
> >  #include "common.h"
> >  #include "stmmac_ptp.h"
> > @@ -53,8 +54,8 @@ static void config_sub_second_increment(void __iomem *ioaddr,
> >  
> >  static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
> >  {
> > -	int limit;
> >  	u32 value;
> > +	int err;
> >  
> >  	writel(sec, ioaddr + PTP_STSUR);
> >  	writel(nsec, ioaddr + PTP_STNSUR);
> > @@ -64,13 +65,10 @@ static int init_systime(void __iomem *ioaddr, u32 sec, u32 nsec)
> >  	writel(value, ioaddr + PTP_TCR);
> >  
> >  	/* wait for present system time initialize to complete */
> > -	limit = 10;
> > -	while (limit--) {
> > -		if (!(readl(ioaddr + PTP_TCR) & PTP_TCR_TSINIT))
> > -			break;
> > -		mdelay(10);
> > -	}
> > -	if (limit < 0)
> > +	err = readl_poll_timeout(ioaddr + PTP_TCR, value,
> > +				 !(value & PTP_TCR_TSINIT),
> > +				 10000, 100000);
> > +	if (err)
> >  		return -EBUSY;
> 
> Hi Dejin
> 
> It is normal to just return whatever error code readl_poll_timeout()
> returned.
> 
> 	Andrew

You are right. I will modify it. Thanks!

BR,
Dejin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
