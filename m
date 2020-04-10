Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A411A3EDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 05:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+IYYW7VqF6WPCG8eWCq/I6M4B8FKiJfsAEXM9fjmhE=; b=g3TztgzXDTVAwZ
	cA2OdIweRuQDcvZ1LyfinGBoPZU6VE26f19KR6ugxL3Nlu3PwdatS6r+jZ0Ev0AH6bE+IoXLstJ90
	Ov+TsJ9q2eF4yhryEIWOqLxTJb+1dJyLS25eEzNaNaE91Jtl4DfvNfx03k5KeSCftYu9CFC5ygGCE
	jirrKzotVl7IbPQPpw5lHFwFAmis1yF31aJ6mnY8Ykn0IbKWRtduNScw/nHLSOnTeCUcWfwU6M51Z
	wNs9oyt43Vfk3AsBtnWKv2Q8SPOTLn6KtdTLRp5l97wMroSFldQ5XaovjgqJzGcqbFDrVD+EdfmAY
	GMecyM0vg3o1zBvvQzTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkcF-0001bj-Te; Fri, 10 Apr 2020 03:46:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMkc8-0001aQ-7p
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 03:45:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id 65so899319wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 20:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xTD8jqLlyYTauiGbffTw5JArkDLk+kEpu+J7BOSObAA=;
 b=jIrHtHD3eVDB4o2K9fZ6SYpFWqv66O3QgKUSr9wLyIIOFI+xwEQUUB0RoJRKoWu/lk
 3N22KRkgVpUHZmji3bKQJqgtBcxAuM3vonhAc+4Cc+ZIzo+qy/QUfH4QqPP3KMra3jsj
 BFVcmTUYnRpJKzoNNQ2vUZFejdAGXf8mFDGYYehjcisndSDRtU56VO1qcGOrBLdR97A+
 KEYaUo78t31Lwf4AyPipPLcAvynfo9yYnzn5J4FIP67FR0R9w/qevYR9XnGRDMnY83pk
 5wRXYwL7YbG3nF8/al4qhGIQ5IjxlA/zg1sgpa3DVhURe24NBqwE0MZ3ouTlQH597qwn
 vZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xTD8jqLlyYTauiGbffTw5JArkDLk+kEpu+J7BOSObAA=;
 b=FIbcr7A+6dqXFbk5wuwUNsy7hxWmF6mT2H3xt56C5zqY9GKAyk9JDGQ7aE0oEp6QU0
 O2/DK2lS6jvthXICWME2wgPk+ZDfQanCYCwf20hT3DqPVBO4dK/n3waDGhNkeIz0wXaW
 6kn+uOcFyYLsNgazrmbjAObFYAsAutpHP1QBC7vWyZw41H3Ivq9ojr+O7clKDjzpwyUi
 TSPrFIF2xsSYOkEd3ipXR5un21mUGA4ELQ7I3mDZxIVS4RUODyhxKlKsS04ZgqbPjrdj
 vRfT6pUVuGMCN5fkxRuqhKMn4meOswfLKboMa3o9pO7nyTQvupgwsqh50LvfRUosis1H
 yVQQ==
X-Gm-Message-State: AGi0PuanB+3lox9WBsVQ2KHSaj69gU4/LqAS2RSJjbH4MzwjM/5sBq6d
 g628+gu4vLEc9xaEiISZdisokhEoHq+a66bsi6A=
X-Google-Smtp-Source: APiQypK+6oiYdmYVei4clXzwDHywzqlfmDFgVXzV+CwMdP3SEr9xkQ9HbMDkBCL7vxLBY781R9P01r8CZgBU69TJAtM=
X-Received: by 2002:adf:e98a:: with SMTP id h10mr2420186wrm.370.1586490353317; 
 Thu, 09 Apr 2020 20:45:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200408160044.2550437-1-arnd@arndb.de>
 <CABOV4+UocLs3jLi7-vTi8muiFqACVdxH7Td8=U1ABveLnmyCuw@mail.gmail.com>
 <CA+nhYX0H-czfJ6Kg+FK7X2=hHQK185UOLGoPdEP3nqWQWcA+bg@mail.gmail.com>
In-Reply-To: <CA+nhYX0H-czfJ6Kg+FK7X2=hHQK185UOLGoPdEP3nqWQWcA+bg@mail.gmail.com>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Fri, 10 Apr 2020 11:45:16 +0800
Message-ID: <CAAfSe-s=dZe=6y7UH8CBcddL1BKoLOAvi24RekgdmVv0StxTTA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] clk: sprd: fix compile-testing
To: Sandeep Patil <sspatil@android.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_204556_284535_3BDC018F 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhang.lyra[at]gmail.com]
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
Cc: Android Kernel Team <kernel-team@android.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>, Chunyan Zhang <chunyan.zhang@unisoc.com>,
 Orson Zhai <orson.zhai@unisoc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Apr 2020 at 04:17, Sandeep Patil <sspatil@android.com> wrote:
>
>
>
> On Wed, Apr 8, 2020 at 11:09 PM Chunyan Zhang <zhang.lyra@gmail.com> wrote:
>>
>> Hi Arnd,
>>
>> Thanks for finding out this and fixing it, but we have a minor concern
>> for changing ARCH_APRD back to bool.
>>
>> On Thu, Apr 9, 2020 at 2:57 AM Arnd Bergmann <arnd@arndb.de> wrote:
>> >
>> > I got a build failure with CONFIG_ARCH_SPRD=m when the
>> > main portion of the clock driver failed to get linked into
>> > the kernel:
>> >
>> > ERROR: modpost: "sprd_pll_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_comp_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_sc_gate_ops" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_clk_probe" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_clk_regmap_init" [drivers/clk/sprd/sc9863a-clk.ko] undefined!
>> > ERROR: modpost: "sprd_pll_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
>> > ERROR: modpost: "sprd_div_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
>> > ERROR: modpost: "sprd_mux_ops" [drivers/clk/sprd/sc9860-clk.ko] undefined!
>> >
>> > This is a combination of two trivial bugs:
>> >
>> > - A platform should not be 'tristate', it should be a 'bool' symbol
>> >   like the other platforms, if only for consistency, and to avoid
>> >   surprises like this one.
>>
>> After a discussion, we decided to change ARCH_SPRD to tristate, the
>> idea was that we hope we can simply switch all sprd drivers' configs
>> (whose default is ARCH_SPRD) to 'm' by setting ARCH_SPRD=m, or switch
>> all them to 'y' by setting ARCH_SPRD=y, instead of changing them one
>> by one. This requirement originally came from that Google GKI project
>> asks all vendor drivers to be built as modules.
>
>
>
> Unfortunately, even if ARCH_SPRD can be tristate, we found out (like Ard did here) that none of the other platform symbols can be tristate :(.
>
> So, we are going to enable all CONFIG_ARCH_XXXX in our defconfig[1]. Chunyan, Please feel free to submit that patch to AOSP for that.
>
> This does present us with a problem. We found that a bunch of drivers are  'default y if ARCH_XXX'. A lot of them have no symbol dependencies on the code that gets compiled with ARCH_XXX. They depend on it only because "the driver is only needed for the XXX SoC or the family".
>
> For example, enabling CONFIG_ARCH_MEDIATEK, will end up building almost all drivers in drivers/pinctrl/mediatek as far as I can see.
>
> This does add up. It increases the size of the kernel considerably. I have plans to send out the comparison in the future (later this year) once we are done collecting all def configs and see how bad that is.
>
> The only sane way I can see that can be resolved (if people agree that's a problem), is to make the ARCH_XXX code tristate-able and make the ARCH_XXX Kconfig select every driver it needs, instead of the other way round.

If we making the ARCH_XXX Kconfig select all drivers it needs, we will
not have chance to custom the kernel Image for debug purpose. For
example we can bringup a minimum system with only serial driver on
sprd platforms.

>
> All that being said, It is obviously not ok to have the allmodconfig broken like this without adding explicit dependencies as suggested above, or revert CONFIG_ARCH_SPRD to be a 'bool'.

We see this broken because I shouldn't leave clk Makefile a tristate
compile [1] after changing ARCH_SPRD to be tristate.

If we will make ARCH_SPRD tristate-able in the future and you all
aggree that, I would like to do it now, and pay more attention to
Makefiles and dependencies.

I can also make a change like below:

diff --git a/drivers/clk/sprd/Kconfig b/drivers/clk/sprd/Kconfig
index e18c80fbe804..9f7d9d8899a5 100644
--- a/drivers/clk/sprd/Kconfig
+++ b/drivers/clk/sprd/Kconfig
@@ -2,6 +2,7 @@
 config SPRD_COMMON_CLK
        tristate "Clock support for Spreadtrum SoCs"
        depends on ARCH_SPRD || COMPILE_TEST
+       depends on m || ARCH_SPRD != m
        default ARCH_SPRD
        select REGMAP_MMIO

Arnd, Stephen, Sandeep, what do you think? Does that make sense?

Thanks,
Chunyan

[1] https://elixir.bootlin.com/linux/v5.6.3/source/drivers/clk/Makefile#L108

>
> So fwiw,
>
> Acked-by: Sandeep Patil <sspatil@android.com>
>
> - ssp
>
> 1. https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4/arch/arm64/configs/gki_defconfig#45

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
