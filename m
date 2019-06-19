Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07FD4C012
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jBvCgUDn+1u6WHCGvL13VZMIbYspb8BTH5+qxilg2Y=; b=ePVgaHKWiBl0OR
	Jg1jaBpgOgpK8o05DcpBg+D/SwilNQ9jADnRMaDQ5MVUuVdbWh6HnIVBSVNUawN9yeIKLLzDejRsC
	W8WeNhp53oV3bzGVJT0XGGbQI9HX+hQbOorWlvNBAqOYuIIA0DrRch770tkqnmRUz5jKEUsmy4KnR
	W44RofUmgwzftO+tsUvOTonUcXBfIhITn0UNOY6cWkjtszyhC5jAcYLcw8yt6X+0R3LYLZwEoYm0F
	9bYsxMpAWwBY6LBK3Spe0xMl5ebIhHXZTGfetDF7ay8tE6wbEmo1pmBaQ+6aBD0mQ+RfA4xQjy+Ye
	Vj7m0Bv+j3qagHRJR+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeeI-0001jj-Ih; Wed, 19 Jun 2019 17:45:30 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeUD-0003nk-3i
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:35:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id p17so45165ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=htP0r9H4Ug/hMWstSFNELmZ5mjTD+8H5I4sHYA1uA1o=;
 b=Wd86yREJsjvOnqdXLgJP1v+h2vrhJ2IEHn0raqMpzzpFi0uO59iXALOtxzAk/IQwmR
 Plu1ZW/HIz385hiVY+P4EFqoEdXf6Ek73vu+zYzBuIF2JcNb/03Qxq7LGLjPwS/HA6B6
 SBfNZha08W1x1Yl3dx65ddk8DyU5kyfqyDx575BK8uBjnhd6HkF8nbHntQqYRUEFGIPx
 zuusCCdrtWF9ZCW50WSd08ikGjrjIxiyU/L0qVnzrfV6fJYXUHvkpq4WBpdyVD7bMRd1
 XyQlq0hlq0Sp0uGDI+IAToaJKpAGraaH7sMFr0YM1WEaVgLsNTsXEqrxgK5vpbZvbzb1
 tgJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=htP0r9H4Ug/hMWstSFNELmZ5mjTD+8H5I4sHYA1uA1o=;
 b=lVOQ4WDtJVz0hoAqIgkWU8IMzjk4vsB4t52ZvbtavJlJBv1kaBx0vw7mtu3eeU+HUw
 8v9rDPViDtrLrbNnsqqHR5VLOJeVvrUa7/Po5/eeAoMrX8g1F1deqPC+HZSSIXaQzjHg
 8nkkoYorHOnzR8OmRhujVcc9a/CZ5yyQwP22/RD+Kg2Ck+wbSG5cACI4cHqW/qEh+5A+
 7VTVCDrbiPNeJ0kjEhQ/3lEBxiHOIMeZMM913x0TolF+yCSCzWBC94+23TnVqpO5jsM2
 dRX086s7VYmdWWS575xt5h28ohDYZaSs61SDjG4PQQXLTzJ98G4/HsNRuQACDUBFRaqx
 olAg==
X-Gm-Message-State: APjAAAVjwWe1XEZb3cpJRph2+Z3+T4TOoAdW9taIglxDKPWtB90haU3m
 kxIWnMWUnA3Y8HxaPPtpbUJDBQ==
X-Google-Smtp-Source: APXvYqx5vPzt9fwBNRIGVD3LR7cVv7o1RMylfxjY+n7FD0xWq4OCme9GFyKfPKlPT67lSrCDBhMvGQ==
X-Received: by 2002:a2e:29d:: with SMTP id y29mr57904265lje.134.1560965702770; 
 Wed, 19 Jun 2019 10:35:02 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v2sm2773214lfi.52.2019.06.19.10.35.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 10:35:01 -0700 (PDT)
Date: Wed, 19 Jun 2019 10:33:54 -0700
From: Olof Johansson <olof@lixom.net>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v4 1/2] ARM: use arch_extension directive instead of arch
 argument
Message-ID: <20190619173354.z5znqao6iveoffc7@localhost>
References: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c0ca465daa7c7663c19b0bcb848c70e8da22baff.1558996564.git.stefan@agner.ch>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103505_256412_29AC43D9 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, mans@mansr.com, tony@atomide.com, robh@kernel.org,
 f.fainelli@gmail.com, gregory.clement@bootlin.com, linux@armlinux.org.uk,
 krzk@kernel.org, arm@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 sebastian.hesselbarth@gmail.com, jason@lakedaemon.net, arnd@arndb.de,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com, nico@fluxnic.net,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, kgene@kernel.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 12:40:50AM +0200, Stefan Agner wrote:
> The LLVM Target parser currently does not allow to specify the security
> extension as part of -march (see also LLVM Bug 40186 [0]). When trying
> to use Clang with LLVM's integrated assembler, this leads to build
> errors such as this:
>   clang-8: error: the clang compiler does not support '-Wa,-march=armv7-a+sec'
> 
> Use ".arch_extension sec" to enable the security extension in a more
> portable fasion. Also make sure to use ".arch armv7-a" in case a v6/v7
> multi-platform kernel is being built.
> 
> Note that this is technically not exactly the same as the old code
> checked for availabilty of the security extension by calling as-instr.
> However, there are already other sites which use ".arch_extension sec"
> unconditionally, hence de-facto we need an assembler capable of
> ".arch_extension sec" already today (arch/arm/mm/proc-v7.S). The
> arch extension "sec" is available since binutils 2.21 according to
> its documentation [1].
> 
> [0] https://bugs.llvm.org/show_bug.cgi?id=40186
> [1] https://sourceware.org/binutils/docs-2.21/as/ARM-Options.html
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> Acked-by: Mans Rullgard <mans@mansr.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
> Changes since v1:
> - Explicitly specify assembler architecture as armv7-a to avoid
>   build issues when bulding v6/v7 multi arch kernel.
> 
> Changes since v2:
> - Add armv7-a also in mach-tango
> - Move .arch armv7-a outside of ifdef'ed area in sleep44xx.S
>   to make the kernel compile also without CONFIG_SMP/PM.
> 
> Changes since v3:
> - Rebase on top of v5.2-rc2

Thanks, applied to arm/soc.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
