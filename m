Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C33104343
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:24:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0n2lEGKx7QPCmaJoRogffivvR5w1OBa9vkSJtxfa9A=; b=jYsSNsPSwy0b0l
	DVZmbu6P7WZOw6AXSTHmgHqxELpi0VV4my7yh09If/3QaqBZ3ewBnVS9XidVtVJGDrLOBWvpbZvJ9
	bUrEFfoH0u4qa2Lnit3jZufnQ/KCbQ/0o9uVSnby0bCM/h/g3hFaqPILWB7GCt24/aWyRGcVpb43b
	uel5kQ3W3+HfZg0IK1m3+DtkekWBr/RiEoDn7zYj4L1gabWVcFLgmO5OG/nVr0LOszaAG4uR6LyzM
	TmMP5j4yeVpRoWzBHcEO/cYyqplceaOVOgVPQifHM5Sry9vwL3JSS/cfJNLX7y7y96IP2deW/wggw
	3xAQOLjWBABnYCSz1XLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUeG-0000sq-5F; Wed, 20 Nov 2019 18:24:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUe4-0000rW-9B
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:24:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id b17so735715wmj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ctnDyGHzcexXd+oP584wBl9d7IxFFJWy5ZdVe62LHoE=;
 b=VL1V16VFQxZ8XMocZhWLNpaqWaciq49VEDgTT20hTZ2yyx5FJ/yiZs0L9Sk1ZjgBEK
 ZQFwsDZMY4sQSyrSluU//F0W/SafTb60GaqzxPcYnMCkdKMrxsYxLv64vtUBgUSaN+vY
 rUZY5N3I4wP8T67v1xbS7tpahYg9M2b2njujgRU8RfCo8J3Gs5m7wX6mbOLkOnJtXhYm
 vFjCIbWxIQaLARPh3facBK7DFjrAUs4xeHXTq3ABYGeq5h8eJL1wagohiNRUwtReZ66b
 acMMAu4ox1rvuHa12fYh4vee2/XbX6/7G80yZi5E8zAG5bw9D6eqf2OrPEgCs1eE4PzL
 pNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ctnDyGHzcexXd+oP584wBl9d7IxFFJWy5ZdVe62LHoE=;
 b=uhmuTwpTXjmEr1JWrYTHCrAg7kYk3+BhUqci3llXhNgzBahUlUxg5lTTBYagJXfnqv
 6Sv4+1/S7HCOcxCojUOAdVlUHDlnIxAcYWDM5J3vhkQIRJLtDThWQmvmE0+zxjofrEyp
 ZQ9EGqjbpK/uOjmun6HyTpeziN7fP0Zsu24udWewnDi/16UGpF4+R0JBauu/jkKXaeoB
 M/lXMlncTxN+Wnottt1/N5/juk/dh4gTFUv6+JB9h8cYaiD9CpqsYl8CMzUPCNh+7vFw
 Chc9cQihv+K8w8a1A9A7kqIQbTnjATkhaJrHaY/9s+i7wCLYQKvS4DUUda64xN+dc3oB
 efJQ==
X-Gm-Message-State: APjAAAWuQPeqAWArJWWrm5Bo1dtgwJIcTvWcUck7qd8CRK1nG+EP9O79
 mssBxDcHlo40J17hS9ZO4uY=
X-Google-Smtp-Source: APXvYqwt5vSje349iw69oqaDAMKixDjb6/bUVwR02G1KgTftbQDyi/rylGLW1hUSGLsUrQbk95hTpQ==
X-Received: by 2002:a1c:4907:: with SMTP id w7mr4848109wma.62.1574274241330;
 Wed, 20 Nov 2019 10:24:01 -0800 (PST)
Received: from giga-mm ([62.68.23.15])
 by smtp.gmail.com with ESMTPSA id g184sm154611wma.8.2019.11.20.10.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:24:00 -0800 (PST)
Date: Wed, 20 Nov 2019 19:23:58 +0100
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] ARM: Fix Kconfig indentation
Message-Id: <20191120192358.389c43da67a4d07c0d19b90d@gmail.com>
In-Reply-To: <20191120133734.12345-1-krzk@kernel.org>
References: <20191120133734.12345-1-krzk@kernel.org>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_102404_333441_A2ECFE94 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Barry Song <baohua@kernel.org>, linux-omap@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linusw@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Hartley Sweeten <hsweeten@visionengravers.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, linux-samsung-soc@vger.kernel.org,
 Imre Kaloz <kaloz@openwrt.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

for the EP93xx part,

On Wed, 20 Nov 2019 21:37:34 +0800
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
>

Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm/Kconfig-nommu        | 10 +++++-----
>  arch/arm/Kconfig.debug        |  4 ++--
>  arch/arm/mach-ep93xx/Kconfig  |  8 ++++----
>  arch/arm/mach-ixp4xx/Kconfig  | 16 ++++++++--------
>  arch/arm/mach-mmp/Kconfig     |  2 +-
>  arch/arm/mach-omap1/Kconfig   | 14 +++++++-------
>  arch/arm/mach-prima2/Kconfig  |  6 +++---
>  arch/arm/mach-s3c24xx/Kconfig |  4 ++--
>  arch/arm/mach-s3c64xx/Kconfig |  6 +++---
>  arch/arm/plat-samsung/Kconfig |  2 +-
>  10 files changed, 36 insertions(+), 36 deletions(-)
> 

[...]

> diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
> index f2db5fd38145..bf81dfab7f1b 100644
> --- a/arch/arm/mach-ep93xx/Kconfig
> +++ b/arch/arm/mach-ep93xx/Kconfig
> @@ -126,10 +126,10 @@ config MACH_MICRO9S
>  	  Contec Micro9-Slim board.
>  
>  config MACH_SIM_ONE
> -        bool "Support Simplemachines Sim.One board"
> -        help
> -          Say 'Y' here if you want your kernel to support the
> -          Simplemachines Sim.One board.
> +	bool "Support Simplemachines Sim.One board"
> +	help
> +	  Say 'Y' here if you want your kernel to support the
> +	  Simplemachines Sim.One board.
>  
>  config MACH_SNAPPER_CL15
>  	bool "Support Bluewater Systems Snapper CL15 Module"


-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
