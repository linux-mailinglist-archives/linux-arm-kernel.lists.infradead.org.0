Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E345D164FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:50:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NkGGxdw4bKTizsJeIg9ae74e/PU7Y25x8k1wUjfATM=; b=YIkbQyJf8BQtUh
	u4WdpHH4nrUP5pOr4Hzviw2S6TUN6xZ2ZxzYyzbqiUGawmBoQQU2rNsaBggci5iWbpYl/ZRxdNU+R
	ojyUPNOuZ2xGL1HLwRAw2xk6UW3/GTb7JNNIdIV0xPPP0YVVAGvO5Qaz4lXuoYnIblY9Ls49Y+ffq
	8GrLbX+Bw3iKu+2F5u6h/jdwd9Uxy2nz+44YiBH5VgVsZa0PKvzUVyWVbX+ZY6YslebrUVwzh9OO9
	OPJkZlfrdQWZKXL7LQP+1VfNr/zs/+2MindaLRVtt3mjE9mBSXXhvo8fiHfKnqEVSL56NpSL5zDTf
	Lpm7E83DSSC5EHGyRr+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Tu-0000Mq-S4; Tue, 07 May 2019 13:50:06 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Tk-0000MV-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:49:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so8353446pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S8BQEP1OV6vKoSe5VDyJlLX4UR1XhupCQW202rhq/sQ=;
 b=oMQjJcPiNX92IlwTDMAW4qr/DdkOFqHLv0mxlbPfOeLaWsnqFZadYEibjkDIgY2NoM
 /65COGgPxkzIo+amIzo6LPYgGDGhJxntl4IHC1R/RwjQFVpiP4UXGWuwbHOfyZ8euQcE
 ir9EJkZF9XcN0WR7nfl/JhEl0+MZHZx/FFJIdaszpfSQ9rsW7hA8LTHBLq1t+IWpekyS
 iyEd6m3PD3RorhuG5Xmkci0vdJw7KlYnHW5KDkeG+yBLz7q4YH3GU/dqJHBkQriNNSBe
 xEnRNdM5sxiM7Y2G+ogZwJCOOm3oWbLZc2p+U6WW1oVu9v/vdRNQ/7P9oOscBiCmAEP7
 h3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S8BQEP1OV6vKoSe5VDyJlLX4UR1XhupCQW202rhq/sQ=;
 b=a1vKIFV9LTM85xmDczVt80il1bYf12nCpKP/RtBCSjAsJtLlWy7egnLG6Psvum2Bsj
 6cLuO6LpXvrSSymah2Y6FOTmRWOUwgeojU5kU7/MOCbki3oi4BVx0QTLkVlp4clqKZoA
 gfcVbM3BBBCf4D2K3drcJOAYZhjGnVr5B3Jq1w3bHi+VvzMTWb+15hpg9gNkTGeiH+ip
 1uYqob/kAuRe4PFKU63tdkKWvHRu07JREO+Wi2vVKLVNc+4VttOzojLs7Xcwlgq8rFK5
 dr4GNSYRZwUcLtTCcsqVX1gfKpmiilMSOBHsi0uafBBy2n2weYU3QpfqdVJYnfpoPmMg
 ZpSw==
X-Gm-Message-State: APjAAAVDFahYr2BkEbiC5y7kyHa8dca09cz/0mCJaLaPP0dh03o+au1v
 Lc0cEf1iFoVn1XU8Fw1quj+auKHO
X-Google-Smtp-Source: APXvYqwNMrdvjlCOgIU9TBbSh3DwQp1FscE2sA0W7mHk+F+dufo6InfjIlXwfy6OIa5H5Al1dkWeIA==
X-Received: by 2002:aa7:98c6:: with SMTP id e6mr2436297pfm.191.1557236995744; 
 Tue, 07 May 2019 06:49:55 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id v6sm8275551pgk.77.2019.05.07.06.49.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 06:49:54 -0700 (PDT)
Date: Tue, 7 May 2019 06:49:52 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Po Liu <po.liu@nxp.com>
Subject: Re: [PATCH v1] timer:clock:ptp: add support the dynamic posix clock
 alarm set for ptp
Message-ID: <20190507134952.uqqxmhinv75actbh@localhost>
References: <1557032106-28041-1-git-send-email-Po.Liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557032106-28041-1-git-send-email-Po.Liu@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064956_859809_EC87DCF7 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Roy Zang <roy.zang@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Mingkai Hu <mingkai.hu@nxp.com>, "Y.b. Lu" <yangbo.lu@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "deepa.kernel@gmail.com" <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 05, 2019 at 05:02:05AM +0000, Po Liu wrote:
> Current kernel code do not support the dynamic posix clock alarm set.
> This code would support it by the posix timer structure.
> 
> 319  const struct k_clock clock_posix_dynamic = {
> 
> 320         .clock_getres   = pc_clock_getres,
> 321         .clock_set      = pc_clock_settime,
> 322         .clock_get      = pc_clock_gettime,
> 323         .clock_adj      = pc_clock_adjtime,
> 324 +       .timer_create   = pc_timer_create,
> 325 +       .timer_del      = pc_timer_delete,
> 326 +       .timer_set      = pc_timer_set,
> 327 +       .timer_arm      = pc_timer_arm,
> }
> 

Sorry, NAK, since we decided some time ago not to support timer_*
operations on dynamic clocks.  You get much better application level
timer performance by synchronizing CLOCK_REALTIME to your PHC and
using clock_nanosleep() with CLOCK_REALTIME or CLOCK_MONOTONIC.

> This won't change the user space system call code. Normally the user
> space set alarm by timer_create() and timer_settime(). Reference code
> are tools/testing/selftests/ptp/testptp.c.

That program still has misleading examples.  Sorry about that.  I'll
submit a patch to remove them.

> +static int pc_timer_create(struct k_itimer *new_timer)
> +{
> +	return 0;
> +}
> +

This of course would never work.  Consider what happens when two or
more timers are created and armed.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
