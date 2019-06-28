Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A35759171
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGII0tgIpsPeJeFMuJOYn+zQYCENBw4001GkVnsuwKM=; b=tMElZ11KKQB2sE
	5g/UIzyxRsUpPbnz0gAE8sKCd0I2TI7xmBDntSDZZdtOCkYAT8/dHrkDRqYNTWDoU8uXSCIU9DowA
	czNt07iYv/Z0eyyVuwaCWVvmCVhgt32ad3NPsR8AThJ6S1tAh6w02Ku4ePS9+7MYAy8l+LmIqGNdF
	s/4caBibau5uUZ3vuMpq46XBnIHV+sD2m0FTXtmlWfoYxQ9Kyw5GGJ13/5dI5dYHaVNY21iCeKIyP
	K88Miq0twR24i2DEIYl1GyzmDgfDjX49B15Le3HNQesgAePhTbbmA/t9yunfa3SOMYo4BxQEj6Hbv
	T7bAGfvF85ZRg8GCzs1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggte-0007cQ-0k; Fri, 28 Jun 2019 02:45:54 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggtQ-0007bv-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:45:41 +0000
Received: by mail-oi1-x241.google.com with SMTP id l12so3177094oil.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 19:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PMKZ8BEHKvEYdxNcG4BmGK541+ZJ0zqQanPAbjMM/80=;
 b=d+NvPoVQLAcSwFaypnYtbksDd4NeutRV0QFkGivUk8+1RIoDVBfvXTKXHMnKX5ACMg
 SSABdjUbVVqcIy6QgYQVE3BHBhp4WJCoQecMvjaDW7+JWDS+678zjU0FkbRvKhh0xuZj
 WiQ/BOirHtW4sj7HZC+prOsT7vZDKsadxBxH5Hq/sT55KWk1iHYw30yE9FWM5sAJquR4
 HUBVK1PANQGGAYjUyHa4NXq/fIY9b4UeJG5MhkYkJV9SJ7gTfqZDCU4WNWhuteXUtDwY
 XLEBsXPF75cYOSvRDGkLEE7qYAerv1M5CNiA4l0U7lf0Z+gmqKB9FwgP2BEiPS9i605o
 WXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PMKZ8BEHKvEYdxNcG4BmGK541+ZJ0zqQanPAbjMM/80=;
 b=Z46HWXVuHMA7PYvS59bZ64MtKi0s5Wea2KtbNUfa8GvFQfnyzER/l6BhBcBiu0S1e3
 Npw/rmvXQ6d1EkYUNzfoqteJW7pjCqjHK5Zqci3tLvkQ+0iUE5rxWYy7PoeOJyWNgeCE
 EWj0r9uq+vqJyuXuFVHoTS2lCh0C4tTavEcDKyoXRQbfD4+qE6sQDbYWefVBZLVzH2UQ
 iMGd0nUzX86chz8DteYEo9pnmeIdSr56+TaSenOjj3QnHrRnh29mwA3GVGj0UXCNeUjm
 DTwOQJGXP/iQfOSzFr1T+P1Jm93b3Ag9dEjsyliLv14+y/hv3y8h8FSZHd6+d8aEgeLo
 3pqQ==
X-Gm-Message-State: APjAAAX3qwbt/LdkLdCiNZ5SkunMNV60Lu6K528T0SUKazbiiEeyQ3cK
 B+qSwaCUL2mK1QhyNB52VUwYDw==
X-Google-Smtp-Source: APXvYqyaI8LbpjqN2Z+o/n9LADwl2AElxmchikVcZ7H9wSMGZMuKlk0AhN20VWhwhEutViRPfwDLQA==
X-Received: by 2002:aca:a896:: with SMTP id r144mr367546oie.105.1561689937963; 
 Thu, 27 Jun 2019 19:45:37 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id f39sm432863otb.57.2019.06.27.19.45.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 19:45:36 -0700 (PDT)
Date: Fri, 28 Jun 2019 10:45:29 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 2/5] coresight: etm4x: use explicit barriers on
 enable/disable
Message-ID: <20190628024529.GC20296@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627083525.37463-3-andrew.murray@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_194540_098374_74D740E4 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, stable@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Thu, Jun 27, 2019 at 09:35:22AM +0100, Andrew Murray wrote:
> Synchronization is recommended before disabling the trace registers
> to prevent any start or stop points being speculative at the point
> of disabling the unit (section 7.3.77 of ARM IHI 0064D).
> 
> Synchronization is also recommended after programming the trace
> registers to ensure all updates are committed prior to normal code
> resuming (section 4.3.7 of ARM IHI 0064D).
> 
> Let's ensure these syncronization points are present in the code
> and clearly commented.
> 
> Note that we could rely on the barriers in CS_LOCK and
> coresight_disclaim_device_unlocked or the context switch to user
> space - however coresight may be of use in the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> CC: stable@vger.kernel.org
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index c89190d464ab..68e8e3954cef 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -188,6 +188,10 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
>  		dev_err(etm_dev,
>  			"timeout while waiting for Idle Trace Status\n");
>  
> +	/* As recommended by 4.3.7 of ARM IHI 0064D */
> +	dsb(sy);
> +	isb();
> +

I read the spec, it recommends to use dsb/isb after accessing trace
unit, so here I think dsb(sy) is the most safe way.

arm64 defines barrier in arch/arm64/include/asm/barrier.h:

  #define mb()            dsb(sy)

so here I suggest to use barriers:

  mb();
  isb();

I wrongly assumed that mb() is for dmb operations, but actually it's
defined for dsb operation.  So we should use it and this is a common
function between arm64 and arm.

>  done:
>  	CS_LOCK(drvdata->base);
>  
> @@ -454,7 +458,8 @@ static void etm4_disable_hw(void *info)
>  	control &= ~0x1;
>  
>  	/* make sure everything completes before disabling */
> -	mb();
> +	/* As recommended by 7.3.77 of ARM IHI 0064D */
> +	dsb(sy);

Here the old code should be right, mb() is the same thing with
dsb(sy).

So we don't need to change at here?

Thanks,
Leo Yan

>  	isb();
>  	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
>  
> -- 
> 2.21.0
> 
> _______________________________________________
> CoreSight mailing list
> CoreSight@lists.linaro.org
> https://lists.linaro.org/mailman/listinfo/coresight

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
