Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF7FA11ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 08:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWhx1UY9AFB+BDQp9+GBD4A9lwAkz/Dm2vPrusGk27M=; b=pVIKLynkTpaVZ9
	Ik1SAE9j1SOdDSyP5CwkK7IhK3D+l7BFK5XS3b3tmVpafYRteH3n4v+yiAhU1Pv6P3Qo8oJlAqPok
	UVExbEzk/KZ4/HC17vhqBmTF176yoBwTLfMAXnJG/bJah2eU0X4acbJdhWc/p4OWg8NPDtiibllMi
	8xhQOWYrjPnp4BRaOsdoIB0Uq4R45s1GeMuQm/5sB2gxwqZ9zWPflOp4gkzQHZdWIrX9JDDi6h+2f
	9CezjT8gmri9Gp6kLFpfX/qPBx5hxHuxhlpGvYkue54JWoGVnFI1tou2RJFUhsf/lPLZNjT1jYMMi
	7MvTHo+X0Gygx+be5QtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3E9Z-0000NA-TG; Thu, 29 Aug 2019 06:43:29 +0000
Received: from mail-yw1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3E9P-0000Mi-3m
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 06:43:20 +0000
Received: by mail-yw1-xc2b.google.com with SMTP id u141so783440ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 23:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Ohsp9R0iDzGBNjfj3NvgmAdcX6+omVgNShVoJ2V3b9Y=;
 b=NM1Bw/5XZWLEvDV472pQ8cdfBris9s23ecPcpeH5ZrPMONlk6VdZXIFhbHBXvhJkAG
 /Mv3din8JNzt4g1M//RRfTRSfvju0qzXz4CjkR70gFAP3gD+DdrGv9LK5FnPc+RdWK2+
 mgEzfcRwwI+DntvvJkzOIXlIKML1m571BjWoSxZi5oyyojRFRJfgE8rG3qikz6SJeTEZ
 W8z4ohG6Fyf3Aav2+3PYrb1CJoE7/EOAli+bt/R0P8sYi17wGh2PkeF4+zGfgUhVghQm
 wK1QFlQhNtJQbXuo2TxWOjzSayHDjsXVHCJG/GJIvbm3S3mLB3Hf7iNexx1fT4hixhXd
 gw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ohsp9R0iDzGBNjfj3NvgmAdcX6+omVgNShVoJ2V3b9Y=;
 b=PfGbp71dc+1Si/xSOOL7X68KG3qqPGVBbUk+0GLy6uaF9U5chAyfjZysg62L6i15QL
 uubSk0ZA172p5SdRmpYtM7STAbHWnOqLNrLbpmAtTxeHWyUt/RGDEQ7mflg3OcN9ryWi
 V3u64hFMC+TRf/IsJLfVci5TUOykRPVuz0bua7dVMsc2yvxqsZ37LWdvflftyxkY2mBT
 d/NOIgd5SsS7uO8lfwQEYtZLb4iQJWBLSXN/uCmnlZc/PDBG9KurbK91ny5m0tLCjBnN
 g3IGINhaRx6tcFQCnJBZZLnV4Ufa0GJbY/6UKSUv7Mh7p+gjF9VBJbddV8gDoEkSAcpB
 TesQ==
X-Gm-Message-State: APjAAAUIPiQyALq7SIOp47JC3KOr3cHsX1HXZnoVipDbYY+iBDojx/Fc
 bCtWIOUR2M+o+2d336a8vLp7jg==
X-Google-Smtp-Source: APXvYqxUW3bgRQMvTAuKyl+jI8w30Ew/2ZrIS5MISrev+vSsPx2fSixhuZME4au120vXWGI3NRNqow==
X-Received: by 2002:a81:a909:: with SMTP id g9mr1801464ywh.190.1567060997610; 
 Wed, 28 Aug 2019 23:43:17 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id j20sm387975ywa.106.2019.08.28.23.43.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Aug 2019 23:43:16 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:43:10 +0800
From: Leo Yan <leo.yan@linaro.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [arm:for-next 13/25] include/linux/error-injection.h:7:10: fatal
 error: asm/error-injection.h: No such file or directory
Message-ID: <20190829064310.GC10583@leoy-ThinkPad-X240s>
References: <201908290809.FsnDYulr%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201908290809.FsnDYulr%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_234319_213333_8BD0B04F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Will Deacon <will@kernel.org>,
 kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, Aug 29, 2019 at 08:49:16AM +0800, kbuild test robot wrote:
> tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git for-next
> head:   d0d54dc04e37be14a9e51d9a2e431f302948e99d
> commit: 566c290c6498b2fdc04a54556c4e8747f0298c7b [13/25] ARM: 8899/1: arm/arm64: Add support for function error injection
> config: arm-allmodconfig (attached as .config)
> compiler: arm-linux-gnueabi-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 566c290c6498b2fdc04a54556c4e8747f0298c7b
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from include/linux/module.h:22:0,
>                     from drivers/pps/pps.c:11:
> >> include/linux/error-injection.h:7:10: fatal error: asm/error-injection.h: No such file or directory
>     #include <asm/error-injection.h>
>              ^~~~~~~~~~~~~~~~~~~~~~~
>    compilation terminated.

This building error is caused by there have a dependent patch:
error-injection: Consolidate override function definition
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/error-injection&id=45880f7b7b19e043ce0aaa4cb7d05369425c82fa

This patch has been picked up by Will in one of arm64's next branch:
https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/error-injection

I don't know what's the best practice for the dependency between
two branches, if need me to follow up anything, please let me know.

Thanks,
Leo.

> vim +7 include/linux/error-injection.h
> 
> 540adea3809f61 Masami Hiramatsu 2018-01-13  6  
> 540adea3809f61 Masami Hiramatsu 2018-01-13 @7  #include <asm/error-injection.h>
> 540adea3809f61 Masami Hiramatsu 2018-01-13  8  
> 
> :::::: The code at line 7 was first introduced by commit
> :::::: 540adea3809f61115d2a1ea4ed6e627613452ba1 error-injection: Separate error-injection from kprobe
> 
> :::::: TO: Masami Hiramatsu <mhiramat@kernel.org>
> :::::: CC: Alexei Starovoitov <ast@kernel.org>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
