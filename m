Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42DD1B0FD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:19:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcL6RFHgBFvhjAlwavzBmXL4aMgM2+E9n7QL6lERAzk=; b=iRQHNw/7mBI7mt
	x0QqxYEsFPMaeiTt4cQsY28nRCEouYE0RfQ0KMnLwO9A2WzixfOBq3e93+FmSah8VTLX10VFJqO5S
	YQUQUyTVBmAidz+4WLvpNQSXsRqwjIyVy+kg3sxtBjUQlS1wnmY35ailrWXBQJfqle7FnZrh44hSb
	sS+FmPjHKblCxTAsPUg6h7kVefPN2Fbd30Y1ko/hk3P0Vi/mDtfmrIovddYcSCVJPjb1ViDfl63az
	Efq0/isC3BxnstGKxkWo6+hW1DkKE9HTB9hZSe3OtJodrwvhnyOAhB/ianV9mfoDAL7af275Tf0iP
	aZ15eP9Ogd7Kg5ozZmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYCe-0004dD-14; Mon, 20 Apr 2020 15:19:20 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYCP-0004aE-F1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:19:07 +0000
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MLA2e-1jilnw3Iw6-00IFW1 for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:19:02 +0200
Received: by mail-qt1-f170.google.com with SMTP id z90so8702934qtd.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:19:02 -0700 (PDT)
X-Gm-Message-State: AGi0PuaH+Bo3oR9WuLyYzPfS8kDT2vy94qN5oJiCmKmiFdjyJ/nthrT1
 qp/JWvZvxImvFf8LwFSfEAzxurL1ZXZ3sPql0DU=
X-Google-Smtp-Source: APiQypKRQPodylxbd8chSbVFgKzdE7lNTya9nK+Z/s8JVlEEwwh1pZNKLYQ4UcTIU2WPOGLZm5LTvsBN53rY/0ul88E=
X-Received: by 2002:ac8:6757:: with SMTP id n23mr16431371qtp.304.1587395941298; 
 Mon, 20 Apr 2020 08:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-4-robh@kernel.org>
In-Reply-To: <20200419170810.5738-4-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:18:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0x5+2mitmecfTeph_XYfUwcLeER_W5_n3iC=bEDdY+wA@mail.gmail.com>
Message-ID: <CAK8P3a0x5+2mitmecfTeph_XYfUwcLeER_W5_n3iC=bEDdY+wA@mail.gmail.com>
Subject: Re: [PATCH 03/17] arm64: vexpress: Don't select CONFIG_VEXPRESS_CONFIG
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:drN4ONKQW6b1291jSapKntPybREsRm9ITY7kahHSKZsy3zdJ07m
 4oYPzFVwgrhDdBCRedKfZ01MJsZ3CAgVanf77UrfD1NNkhrux+jCga2Ls4zGNso80R5Pins
 GkFnMdUlTpNyAShQDF9Zi1DU1OmYQaX94Y+xikZ2hFywSv47Ryv5BJ6nyttK4Ll1t7JOKzM
 Mu7v0wtK+1ZL+eHhd8FCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fF0IRbLNWVo=:2mgqdwZ6uwIxAafkz92GZl
 Qpx6OmD3rN646pARUB4r1GpFgVboSgHqb8Ssz0jwDCPdHriedzQZUfhMce1VP+ZKMLblMWfqh
 C/2nQY+tfjEKIConXD38mHo3kKwzLFmTSaBr7oApcSAJjVvS729P9FfIkwKvCU7KBpe6szOaJ
 eGT6tLSJaFdW+vlH9Ob2yGl780Lzfmk2WjZjJ9xmUS0k5Ql0QYAQrLaWs+gSHm6iby40S5ATL
 R0t5fsUTCwGkS5wU4ymSb+rshLdea6VegEyH8s6ywr2JQ1wQ8v9kDudz1D+YWMNdBlu7tJgbv
 P/H5xhxGfz0pUcAPGWkwYyYCsVmIoqG+xUDSQyLIcJJP8nFsfKJe7xlZXogYqMb2JIVlaJ9AY
 JFTWqTa0XgSeL7hFq1F4lJHVN8kh+r7madtfkJd/PVW7PKb4jeyHYEe+uuaSAhZ3jy/011kOk
 4sd2APNEXW6CM6+RkxUtg0lmI1oQlkd8DZIeYprXeAo4Q+WlxU8xYYmR7MZK5qt2yIsnAolHK
 IB1lOkjHSyQKxmQBxE+9nAgIzJx/Skbdc9EGME5skLsTLcgevsIVY/mTX1+0tblsJtKY0gLEM
 uGj1PS2YAlRtYKE72qx8Fbg1qWort0SBLeh3nyC/MvdjJrnjAn+rlvIerAFWo7V9xXfq3BKbs
 geIrFCkkfLQbjx5kjrAdepD7+tXwaXClCCkhhOuvBqlRBboQLkil4/MPLG+CuAqaBLtCnlbpW
 Zc/G5tRwEd+hOBVO+zk9lfTee++IOqIlP43GkBddB/cRrD0ZvXAwSqqq327gUJr8dRl7/ipde
 z4NS4moXaxh0uc55Tm0smCc9NQk/aU41JLEHVvcf1n25ARvz6g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081906_095602_EB1DFFF4 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> CONFIG_VEXPRESS_CONFIG has 'default y if ARCH_VEXPRESS', so selecting is
> unnecessary. It also prevents setting CONFIG_VEXPRESS_CONFIG to a module.
>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm64/Kconfig.platforms | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 9c084f995e0f..5c38dc56b808 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -278,7 +278,6 @@ config ARCH_VEXPRESS
>         select GPIOLIB
>         select PM
>         select PM_GENERIC_DOMAINS
> -       select VEXPRESS_CONFIG
>         help
>           This enables support for the ARMv8 software model (Versatile
>           Express).

Nothing wrong with this change, but I'd fold it into the previous patch,
as this 'select' was clearly meant to avoid a build failure on the
previous one.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
