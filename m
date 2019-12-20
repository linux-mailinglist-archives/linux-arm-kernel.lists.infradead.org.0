Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE711274ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 06:10:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JZzFW2NZek3svWaVwkASzfH/y9I8beodHwjO7gwTeY=; b=nO0yCBVnCDwXzy
	t9v+maOy2+FdRIkrEHApoqQpsYhDHgh/LO1OfaeY2lcjAqNQOVxg4ytiWUNGPnUCKRnWTwmzEZgP/
	dLJd5ifjwHlPAV3BaDJBRQrv9BNVdYY8hN23ing5Gd/L90vRlG5CCIW8q6zvKZE0l5NaG6+YKGdZM
	Gu7M37S1ixwtzBrOp+TW34S3MXyrfZXTP7/6+gPBq8z8pEHP6JkUxy6JXctY94CCi6fExuf3+lSpQ
	4ZZXToaAznxxhOrpZwjjHdEDa7DCjjYR10zQbms6winH6G9yF+rzCho6cK8NNu1J+Zafz2rzSV/L2
	0e07XHOn0LQgnNPILsEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiAYn-0002bu-Na; Fri, 20 Dec 2019 05:10:45 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiAYN-0002Lr-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 05:10:21 +0000
Received: by mail-lj1-f195.google.com with SMTP id l2so8646746lja.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 21:10:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kLySkqD/LApGvm4F01o6HLsM+dST2BfCFVYrBB8urA8=;
 b=ClArrJq2YCBEayxXfXId3t6eUtEf7u8S94ty7rAQpJ3lZNEIKRYL10VIRymt2S2Kgw
 +Oasn052NuBQGKHG74eNiDA05H6aoh5s1GTkBtJvPgw/MarGb4wvlqW6c1TXZL4pZHR6
 UK6SRp2TC1m+HU1bwFUdbjruF6x6rCg3wRS/qVM5OL1OSuBvrr0vBtBxtj1etM9VzJLd
 QDjJtNLurNuY6L4IzLMFD9CHnDsjVBuK/1Qhg+Ba0YcLPizrNBCBuuKXe8p9Z7CIjte0
 /HsH/1LpyknXD0D4PJ/Xjeoz2ZOroNYbroapFE2mMItyK61MGTZ6Pfcv4PWHjrTe+cZW
 3ldA==
X-Gm-Message-State: APjAAAXWny9tiwmNxhjtjulyLQ8YNWwJX4x7zG0Pg7HCmH5fEsuU+A0w
 z8770z8KW3Vsgpj6UcIn2ic=
X-Google-Smtp-Source: APXvYqwT/scfxUoqxxaSzUcn6Q7kYRhDPvctLjzlJ+YEwuVAiS4OIEi2ROw/CrHGZ2kBcaj4C3pJbA==
X-Received: by 2002:a2e:9cd8:: with SMTP id g24mr8328286ljj.243.1576818616049; 
 Thu, 19 Dec 2019 21:10:16 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id m8sm3408222lfp.4.2019.12.19.21.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 21:10:15 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1iiAYH-0004MT-P2; Fri, 20 Dec 2019 06:10:13 +0100
Date: Fri, 20 Dec 2019 06:10:13 +0100
From: Johan Hovold <johan@kernel.org>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] clocksource/drivers: Fix memory leaks in
 ttc_setup_clockevent and ttc_setup_clocksource
Message-ID: <20191220051013.GT22665@localhost>
References: <20191220000923.9924-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220000923.9924-1-navid.emamdoost@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_211019_994770_B2D5754D 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 emamd001@umn.edu,
 =?iso-8859-1?Q?S=F6ren?= Brinkmann <soren.brinkmann@xilinx.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 06:09:21PM -0600, Navid Emamdoost wrote:
> In the implementation of ttc_setup_clockevent() and
> ttc_setup_clocksource(), the allocated memory for ttccs is leaked when
> clk_notifier_register() fails. Use goto to direct the execution into error
> handling path.

No, that memory was never leaked since that function did not return on
registration errors before your patch.

> Fixes: 70504f311d4b ("clocksource/drivers/cadence_ttc: Convert init function to return error")

Perhaps you meant to fix the actual leak that was added by this commit
in a different function, ttc_setup_clockevent(), when returning on
notifier-registration errors?

Also should the clock be left enabled on errors?

> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/clocksource/timer-cadence-ttc.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/clocksource/timer-cadence-ttc.c b/drivers/clocksource/timer-cadence-ttc.c
> index c6d11a1cb238..46d69982ad33 100644
> --- a/drivers/clocksource/timer-cadence-ttc.c
> +++ b/drivers/clocksource/timer-cadence-ttc.c
> @@ -328,10 +328,8 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>  	ttccs->ttc.clk = clk;
>  
>  	err = clk_prepare_enable(ttccs->ttc.clk);
> -	if (err) {
> -		kfree(ttccs);
> -		return err;
> -	}
> +	if (err)
> +		goto release_ttcce;
>  
>  	ttccs->ttc.freq = clk_get_rate(ttccs->ttc.clk);
>  
> @@ -341,8 +339,10 @@ static int __init ttc_setup_clocksource(struct clk *clk, void __iomem *base,
>  
>  	err = clk_notifier_register(ttccs->ttc.clk,
>  				    &ttccs->ttc.clk_rate_change_nb);
> -	if (err)
> +	if (err) {
>  		pr_warn("Unable to register clock notifier.\n");
> +		goto release_ttcce;
> +	}

Johan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
