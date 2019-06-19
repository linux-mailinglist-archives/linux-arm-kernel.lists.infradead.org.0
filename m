Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726C64BDD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWxBilKsE9bSklMvuSJe4DyXVJtr8lNoBR/9ax0Hvpc=; b=gLCycBlRxM2g9c
	104rli/2E21N6Gg7q+Q0FXTQ6EM98rkTD6QVjSHx4ShMxLCIdoaup1WwZR+U3QT3bZ3apLXTFJi9o
	G7sydU3QjtkiG0GPgUGEOWmm895CndD3kAquFkf3uNQup+7qoxhGbiSiv0NdX4O+STnLqnQeoZYVS
	ZeSRkLF3wVOCWwO1hzSRF/v1Dt38zt8wWpQsJE0y1OuqMhDtb4LnYh5eMfdH5yNE3S0wqhV+cEPR+
	VkmKL3+UR2v104ZdobGFm++t1drj7m/KFBNcVQd8UD3vu6FAXWSsRxfuRTXtBhetz1Z1KiT9zkpz0
	wnfaahJehq/LNVxH1LYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddEj-00075h-4u; Wed, 19 Jun 2019 16:15:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddEH-0006l4-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:14:35 +0000
Received: by mail-lf1-x143.google.com with SMTP id y13so43238lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2XlCzdrOV1N4r0Eag10wke89cyAvht52gNzSPoPzweQ=;
 b=u/6RsoTiIWKUEGQvEqDJNgblrBF6Evg22hClToBNFGt4RZcJzZ1BwSH3TtfwS2Yrle
 x4xP7nrvw6cXBHBhR8WFtrJbOcaPxJZzrysteFqNdIJ6QCKWU9MRECDBC8vsSX4ciY2H
 jTUt2eS/SnPYFUHCyJ4n9tplsCGUjmkms1lpxQKdwGuoL12Uw/ybD3jB/vI1ve7939X0
 jsJAh66NXD3aqYnvSS41GiZv0snFOIDXoV6e20wtUR3/+7gIo/eA8/Ch88qYkVKkFSkr
 kAmC2HhvrwsHnyyzm1WaIm9r0Qax9nPH65N3QVXUjsXFwkWSXdTEkQt71aW65qSWQueP
 G1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2XlCzdrOV1N4r0Eag10wke89cyAvht52gNzSPoPzweQ=;
 b=WmqRPmO/zP2dVmZ3iMpBff1T0aA5tykJJ6FQiOEAGXxTp3jVHWgkbr9/tzVxRV6Y4b
 lW6lUKdAgtznO7a5MAJHGBjMlvOEw2NI5PyKx8CsxsAYlHS7kv5ajAjEdiaxUTQXCFI5
 +/55g1+C8YfOHsfs5NVjXfxkupSKEjjOFPuBQ8K04tjZUUPuTTbX3xnYgPkuBndnRUKt
 9aZw3ZPPVbKXzBemhN/R2ZM5cqA3NdnOeTNxzQA1v6P7PMaC+twAr0+zC3NPk0BSo9tz
 2eNiDDItZ6YOtc8erG5n+GZ1GDWT/TwscHCs/6SlMPeT1SY6PfyR2PA1F5uy+++bVQlG
 aWMg==
X-Gm-Message-State: APjAAAVjzLFj+6DtmYl0+5B1b2bTXBUZHaU+tbFeJdYRk7Q4gKTKgjjr
 8N2AojPuaV3yWxGvCY/w9Mrn8Q==
X-Google-Smtp-Source: APXvYqwOlegIflmyClB5afeHXoNn4Dq9AuYoo5OOJ22QmFQ6VO5pH0Gn23U2axjHwbgMPAB2T7B++w==
X-Received: by 2002:a19:7f17:: with SMTP id a23mr20376446lfd.49.1560960871207; 
 Wed, 19 Jun 2019 09:14:31 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s1sm1335389ljd.83.2019.06.19.09.14.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 09:14:30 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:13:12 -0700
From: Olof Johansson <olof@lixom.net>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: Re: [GIT PULL] pxa for v5.2
Message-ID: <20190619161312.gurj3tqkg6rohapf@localhost>
References: <87o9321uk3.fsf@belgarion.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o9321uk3.fsf@belgarion.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_091433_464394_C87E329A 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: arm@kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Mack <zonque@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Wed, Jun 12, 2019 at 09:18:36PM +0200, Robert Jarzmik wrote:
> Hi Arnd, Kevin, and Olof,
> 
> This is the pxa pull request for 5.2. Can you please consider pulling ?
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/rjarzmik/linux.git tags/pxa-for-5.3
> 
> for you to fetch changes up to e0c5facc5bbfcae6fce6ce11b78981ede1535276:
> 
>   ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view (2019-06-12 12:17:48 +0200)
> 
> ----------------------------------------------------------------
> This is the pxa changes for 5.2 cycle :
>  - a simple cleanup for lubbock
>  - devicetree pinmux support for bias on pxa3xx
>  - devicetree pinmux bias usage for raumfeld
> 
> ----------------------------------------------------------------
> Daniel Mack (5):
>       ARM: pxa3xx: dts: Add defines for pinctrl-single,bias-pull{up,down}
>       ARM: pxa: raumfeld-controller: fix 'dock detect' GPIO key
>       ARM: pxa: raumfeld-controller: add pinctrl for charger pins
>       ARM: pxa: raumfeld-common: fix comments in gpio_keys pinctrl node
>       ARM: dts: pxa300-raumfeld-speaker-one: add channel output mapping for STA320
> 
> Russell King (1):
>       ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global view
> 
>  arch/arm/boot/dts/pxa300-raumfeld-common.dtsi     |  6 +++---
>  arch/arm/boot/dts/pxa300-raumfeld-controller.dts  | 21 ++++++++++++++++++++-
>  arch/arm/boot/dts/pxa300-raumfeld-speaker-one.dts |  3 +++
>  arch/arm/boot/dts/pxa3xx.dtsi                     |  8 ++++++++
>  arch/arm/mach-pxa/include/mach/lubbock.h          |  4 ----
>  arch/arm/mach-pxa/lubbock.c                       |  3 +--
>  6 files changed, 35 insertions(+), 10 deletions(-)

We usually separate changes to mach-* and DTS into separate branches unless
they have some dependencies (and even then, we usually try to base one on the
other for visibility's sake).

Would you mind respin these into two pull requests?


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
