Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC0E1E0D97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERtTTBriS6BXbItgIL+sd9zjZjU10+jFw3EWNCSEn+k=; b=QiRbOWbQhnaPwM
	I/J6foh83gG8gkyz918/McCrhP4sfCjXMUUzc8imwiIfKZ3J9uaXlRDb5Ps+jbJlCxruyy/k/cpgZ
	uNaTm8s0DXMlnV7nwi1U1qswKMdlYAR4lxQcEBbE36G2jvl9x3vBkbeaqVhBBKi/Unic4yqRgYy9E
	JZwPUDHb/4ScqhD3XcKiA/RCXUbpH/2fLr8P1OnkgzB00bQVsWbr6ZgeCXr19oaf8RsAG2g85vW8M
	IZOfvzVPaTi4bB+L/6biQy3EJcDDtVWkBW77Jj/c2dvYeABWJGChYULVvArT8NyGHzhH87KFJyz5d
	1g0maA71SGKLvGD3TzZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBYI-0004cf-Hp; Mon, 25 May 2020 11:45:54 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBXq-0004TP-Ks
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:45:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id k5so20395739lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 04:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=af45aeWHxzz993GasxJ2DfBZasYWxwmTraiJoDa1HtjC3H6cGOoc5djQcGZWp9j4hA
 a/iuVLiJp66aBK3hh8y4MxJNezOdhe01gGy/45Z2i6q7few2H3GBY3tnmcLrWfnUsyAj
 Hcl4cHaKt0ENhoc1YgRIw5gRA6qs5UtxluRbnaegqVPQ5IuEAQOZmahjqWKar9NkL4p5
 Z5Ux+5Sxd1ABeVqvEtzAhK+BS874PGhMOGm3ERC444bvO7ahff/poQUda55cWsFB48SZ
 cePiHFj6PcHe70HeknCWC5xjEt3puYRpHJWplNCXR9sXYSyH1eDODeekPFYRJLCZHOyn
 6YhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtZVEMzdq38fu53lZDWzc8NBLCjAY5aGK/W4AvmImNs=;
 b=RvK/FhaoBsSnMmHDifvRbp9a6YcWWfJU/R9gSgWpW55ssMsU5xlDXImbMTrOLukFHm
 XyrCr0tRoRHc2+Qad0ATRpiLmcS17g+/8xm2yyC5jicNaPdMq8bxtIOhwbAAyqWRfrzj
 kQaM0+BINkyT29MzQPQuVppwRe4sopIZLAer+MDU+n2JJgVzXdtPgQw1Z8kok/Ok/Q+J
 7Y8ojdTA385i+vIE6L8sl0UsGBdCJ90DIO1XAnKCyeQ2QlwZAxcwJ4/WCE0HQDLLjl9F
 PBUumCvPfeuC9BUgPIRpO/tGPDtZqo7d5CONULm8HUgDztEg5ICpe/I+wEugLlsWfg1n
 E7tg==
X-Gm-Message-State: AOAM532QoFwwZtPnqFKBmvuX4NKkdX1gjh9CuMmGky4/0h7DsQDnXWSM
 Er8aVruUdDegcn6zQFlaawabXCl3xkBUT9fRtbzhGM2UeSE=
X-Google-Smtp-Source: ABdhPJxhvU1HCj31oOWfftM9cD+lFUmkL14Hjg1dfXYGtguHDYzH8w3FOiQ8yj1s+WPLO2gWt/U+JdwJVsZw7ohD1BM=
X-Received: by 2002:a2e:3818:: with SMTP id f24mr10564628lja.338.1590407124209; 
 Mon, 25 May 2020 04:45:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200523170859.50003-1-sudeep.holla@arm.com>
 <20200523170859.50003-3-sudeep.holla@arm.com>
In-Reply-To: <20200523170859.50003-3-sudeep.holla@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 13:45:13 +0200
Message-ID: <CACRpkdbye2akEc+bm_Ox92N_bJbH5uh3rnGEpD0UZHu23kLB8w@mail.gmail.com>
Subject: Re: [PATCH 2/8] soc: realview: Use custom soc attribute group instead
 of device_create_file
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044526_754979_9BAE41F3 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 23, 2020 at 7:09 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Commit c31e73121f4c ("base: soc: Handle custom soc information sysfs
> entries") introduced custom soc attribute group in soc_device_attribute
> structure but there are no users treewide. While trying to understand
> the motivation and tried to use it, it was found lot of existing custom
> attributes can moved to use it instead of device_create_file.
>
> Though most of these never remove/cleanup the custom attribute as they
> never call soc_device_unregister, using these custom attribute group
> eliminate the need for any cleanup as the driver infrastructure will
> take care of that.
>
> Let us remove device_create_file and start using the custom attribute
> group in soc_device_attribute.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
