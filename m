Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80B2160C22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nhBL4OAWpIFycATN0knsZDxnBW0zOTnmR2HFVyFw1iM=; b=OIUDCFVflKNHCVjngRa4n1nspd
	grScDl0civBzx28FcYkrG8ocAwAdYTPENnZ90ZP9O5TZ0y+3qsxIYlnqLIcNFRrh1cSYsTAlT4FFQ
	s3JP6aF2mYc4Skcah4JWHF5pxxe2bU95PXp4Ff337ThwJp/TXe8XLMqMwPNe7zK4ZMR6BMSX1eTY5
	DJ+Zug3RoeJ0Xc7XATRUnpdR1VlZBjd0LL7pxlqAbwlAK37A1DtgLHS4sxYcgMrbCr39ZQZ578EmS
	LFq7HC12GLcwE1smn+IhTQ0MX4+8Cra1aLy236GWKiSa6hWz/lntewLf4fNUTfHF3IFwKHVdV56L8
	IfXPb3/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bMV-0004z8-8s; Mon, 17 Feb 2020 08:02:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bMG-0004wz-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:02:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id a6so17295090wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 00:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=l3DKox+qqztb4asvNOVtIBlg1suTqH8KA57WcRUyDeo=;
 b=Dqjt/y5qO0gWAFA+/BwiQiNhQnAs5jTW/fatxUCIn40u9KvZm+xZrPas0dS2viq7bb
 jgSlXwD9Suu+XUxmUNuKB+d41jrMD77xnjTrLbSIqa4rpt4hTuG1Vg6Z4PZf7vfR1y6M
 PZ7Bpfk3t0Ys/yTJcz2WswnxPbn+B1ZTgALvyA457dZ3sb0WFxc3i2SkN30NVfhEsrKn
 yjwGuobhZJuIsBjIXOX9C/RFy5ppYs4HMjiUY1y0tl983Am6BGddtiyrE5ozmCY/CSRh
 f8d7UZvXyRjgawetaECG7ERoPthoDmHd7MBqGqypHgUVhTfvROhg73+BQ+lZcKll+QrN
 JRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=l3DKox+qqztb4asvNOVtIBlg1suTqH8KA57WcRUyDeo=;
 b=TLWgvlM5hPqaifbZek0UEWPb1/k5d68PuHgFIuH56M1Ke5QMSBoOqmJJgBqwre8mMC
 YxV5X3eu7lO4sl6HWlydVsTP3XO0M7B2OEvE5Jrd4Nzd3nE+1J+VD8JPCiUuzZdRHt6a
 nNYvi/utizk8e/cTdM+NSTcEAPnSK38qKsVctiAxK9DqIePy85eFwSFHHbb/9ssbVMk6
 jquO+KerrkVM24ik4sTlXYGx9Ua86+K2cnEigx/WzDpuQuvbPBKLBU+nc/p68fbKDUwU
 0/fhcfO7KgOCIWkJZEhD25db4lCPkcwRY8tCB2yYiEZz+OCm7o39+VthMmwzfuAIX/oa
 xw9A==
X-Gm-Message-State: APjAAAW6Fn/l0kRiPSV2tZEeDpAgywhoyvO/enb/P0af/EiZf1t5qloj
 /NZr54OkIVyvDDGhE1/eHbq6Cw==
X-Google-Smtp-Source: APXvYqx9LI03PNOr2Q02TPi4B2aVKc1GmmsYFLd4WBERnUA2AA8pCg4ZZaiDAl6iYjkK/uI2Jjh6JA==
X-Received: by 2002:a1c:bc08:: with SMTP id m8mr21757452wmf.189.1581926543185; 
 Mon, 17 Feb 2020 00:02:23 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id f11sm18834522wml.3.2020.02.17.00.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:02:22 -0800 (PST)
References: <20200216173446.1823-1-linux.amoon@gmail.com>
 <20200216173446.1823-4-linux.amoon@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCHv1 3/3] clk: meson: g12a: set cpu clock divider flags too
 CLK_IS_CRITICAL
In-reply-to: <20200216173446.1823-4-linux.amoon@gmail.com>
Date: Mon, 17 Feb 2020 09:02:21 +0100
Message-ID: <1jmu9hzlo2.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_000224_651067_ACDF95FA 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun 16 Feb 2020 at 18:34, Anand Moon <linux.amoon@gmail.com> wrote:

> Odroid N2 would fail to boot using microSD unless we set
> cpu freq clk divider flags to CLK_IS_CRITICAL to avoid stalling of
> cpu when booting, most likely because of PWM module linked to

Where did you see a PWM ?

> the CPU for DVFS is getting disabled in between the late_init call,

between the late_init call and what ?

> so gaiting the clock source shuts down the power to the codes.

what code ?

> Setting clk divider flags to CLK_IS_CRITICAL help resolve the issue.
>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Suggested-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>
> Following Neil's suggestion, I have prepared this patch.
> https://patchwork.kernel.org/patch/11177441/#22964889
> ---
>  drivers/clk/meson/g12a.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
> index d2760a021301..accae3695fe5 100644
> --- a/drivers/clk/meson/g12a.c
> +++ b/drivers/clk/meson/g12a.c
> @@ -283,6 +283,7 @@ static struct clk_fixed_factor g12a_fclk_div2_div = {
>  		.ops = &clk_fixed_factor_ops,
>  		.parent_hws = (const struct clk_hw *[]) { &g12a_fixed_pll.hw },
>  		.num_parents = 1,
> +		.flags = CLK_IS_CRITICAL,

This makes no sense for because:
* This clock cannot gate and none of its parents can either. IOW, the
output of this clock is never disabled.
* I cannot guess the relation between fdiv2 and the commit description

>  	},
>  };
>  
> @@ -681,7 +682,7 @@ static struct clk_regmap g12b_cpub_clk = {
>  			&g12a_sys_pll.hw
>  		},
>  		.num_parents = 2,
> -		.flags = CLK_SET_RATE_PARENT,
> +		.flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,

Why not. Neil what do you think of this ?
If nothing is claiming this clock and enabling it then I suppose it
could make sense.


>  	},
>  };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
