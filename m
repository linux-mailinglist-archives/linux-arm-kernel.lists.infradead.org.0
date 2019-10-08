Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DE2D003B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 19:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TCZKIBLbolH48ebSpVSNqndkZS2Epa/7LtvZt7tOXJQ=; b=u90sJLA0IBoiXH2s3smYBJ6rt
	VUyI4idIqcw6lx2OaQaJV84YSAhItzpbLY6C1xZLpfJGBK8/EG8wV3QgqYr9yFdhAWSZeNCExzlDd
	5GeQ1omM9tkg2h1GglUZNN3Vn8axETJr7tjNtC0BCS+dMPM7LrqRw2IOO3dl5nDQ8CjSgMvs5e0QT
	+BqJ7hQiSomRRxyt3wdPqMCvqgr0D81rB7qKdChYgpz0THH5Dr8/fr8BTd69Z8adCjIzAd7j2WWlN
	Fg1aSi49iAnUZHAJ501SZieGokU3gHlRm9UV7ZpaMpqfN2FoPUSaJsfkS/+xMbX8LET8o909EdjnV
	4iyh9nb9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtjW-0002vV-DA; Tue, 08 Oct 2019 17:57:14 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtjN-0002v3-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 17:57:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id p1so8889177pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 10:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=98iK+/CdBsCSShogyL3OIK0oonIPWwP7Gqwnow5m/IY=;
 b=OgMBRw27JGI83nLf5vpKKY6E3SrhNWr4/oTXa1z9c207GNzUNDbv+P8I0DaCES8uLw
 DnyJff4l7s4aIqBZTFanqbXifLLLqeAUEHY1H70+arw/lHlqr+SMeVxJHRZjSwPkJsIh
 wIY76U2RzFcGnXY6DJXaIUc4Q2lXX8DDw7nuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=98iK+/CdBsCSShogyL3OIK0oonIPWwP7Gqwnow5m/IY=;
 b=k/GXhEpHdDSf7MyWCjrPaIt3n9oHTrHSRYLINXR7Klp4cpYL8uR8nFvNXN+rIpTOWn
 IVFYTBUp8JTJ6YkZ5HSFKXxzOutold1X7PiK8eJqC8KkeWrZsn9l9rYkQz6pnmWRFls7
 AtK4IhcQymOcGabUt0wzvWwPzyOYtwWU6UW79hRYRl0nVTAni1aoU3w5M+DWjowTS7Qp
 Sg5ptjKHwZ0ec5mdW6tV59kAEakbqLN+IYORqmbng/xsUpjTvlP73bwiS/Giuf465ziE
 EKUPHtzFJk9PF2Uxd+3fNHXb7mfxfZjpRPN997loVbGtwH0OPoIvvftYxXID63HFRVH1
 5qgQ==
X-Gm-Message-State: APjAAAUpU6Xs46/TnOf6I+8+LOWIzVqvow/X4NEF5lUlz6ererMirE2A
 Mriig0exaab+6Mol1BjNTqw1W+a9qGAp5g==
X-Google-Smtp-Source: APXvYqyMU6ZvQUU/Lwt1ux+tmnh1Gn1AZwE8a4euWayX4ZX1pCUrxuVSo3aAguQjB/uaSuvwrymHHg==
X-Received: by 2002:a17:90a:9201:: with SMTP id
 m1mr7392140pjo.42.1570557424145; 
 Tue, 08 Oct 2019 10:57:04 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id k65sm9550206pga.94.2019.10.08.10.57.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 10:57:03 -0700 (PDT)
Subject: Re: [PATCH 01/11] ARM: bcm2836: include local platsmp.h for
 bcm2836_smp_ops
To: Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <29088760-2551-17b2-3eea-ae0538ef0e54@broadcom.com>
Date: Tue, 8 Oct 2019 10:56:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_105705_374201_73F08603 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@lists.codethink.co.uk, Ray Jui <rjui@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Scott Branden <sbranden@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019-10-08 5:34 a.m., Ben Dooks wrote:
> Include platsmp.h for the definition of bcm2836_smp_ops to fix
> the following warning:
>
> arch/arm/mach-bcm/platsmp.c:334:29: warning: symbol 'bcm2836_smp_ops' was not declared. Should it be static?
>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
Acked-by: Scott Branden <scott.branden@broadcom.com>
> ---
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> ---
>   arch/arm/mach-bcm/platsmp.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/mach-bcm/platsmp.c b/arch/arm/mach-bcm/platsmp.c
> index 47f8053d0240..21400b3fa5fe 100644
> --- a/arch/arm/mach-bcm/platsmp.c
> +++ b/arch/arm/mach-bcm/platsmp.c
> @@ -22,6 +22,8 @@
>   #include <asm/smp_plat.h>
>   #include <asm/smp_scu.h>
>   
> +#include "platsmp.h"
> +
>   /* Size of mapped Cortex A9 SCU address space */
>   #define CORTEX_A9_SCU_SIZE	0x58
>   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
