Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559F71E5247
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 02:34:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PB+7oZmxRpBqC00l3WuS4Tc27bR/yBLPjNs0cdVSBRg=; b=fT5rRX3MrAglWz
	yuXoMavsNQgDM52aMdxNbq8KWT+B/qTOLrjGGsJT0TXWaKTFLvUe6MW/54lOTXYk8rPHobTtUfbSR
	+kdKkW9UXByHzFyjC+RSdpil586CknmyyzDsOOWzztsmNDLeSKUv7RrXl5GprMlObzNACl1MYfrq3
	t+fw/fe/dTB0PLstavjDthkeWPz1pOb2JM9MnGOw/AEr3bnxu4C36AVucQ+qocp5Tbu6pgeNItzqs
	RfBpvGWR86kDZYPphrWclkE7H3oTh/vXU97aOqIEhlZ3u/fcTzNsTIMYq5CbxXCDJvhqvU3nF+X68
	hPy/+gj5hiqydkpkK6XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6VP-0004ON-W1; Thu, 28 May 2020 00:34:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6VE-0004NZ-LN
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 00:34:34 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E7C7207CB;
 Thu, 28 May 2020 00:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590626070;
 bh=CNHtDH7CXmj5PPGFhcPIQ0giZ2MYP3VRo+LSzcUtMTE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=zBXQUK1mLH6dnoDGcZM90MZ85YVbAGo1PE9HJM/SAHxTI5AzwfTK8s63gSvwrHd/B
 /wSI0mtaHYn+SyKqsaWSdS9SOvkqqYA8QDxfet+nh1YJfu7PEkymP91SIvRLVcP1Eu
 91TJ5eUvjKkEAlEr0wHHb41xxTMLNsvhWIyj1fHI=
MIME-Version: 1.0
In-Reply-To: <20200527134043.807045-1-arnd@arndb.de>
References: <20200527134043.807045-1-arnd@arndb.de>
Subject: Re: [PATCH] clk: versatile: undo some dependency changes
From: Stephen Boyd <sboyd@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>
Date: Wed, 27 May 2020 17:34:29 -0700
Message-ID: <159062606969.69627.15005677857751012104@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_173432_719356_1B8E3883 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Arnd Bergmann (2020-05-27 06:40:33)
> SP810 and ICST are selected by a couple of platforms, most but
> not all in the versatile family:
> 
> WARNING: unmet direct dependencies detected for CLK_SP810
>   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
>   Selected by [y]:
>   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] ||
> ARCH_MULTI_V7 [=y])
> 
> WARNING: unmet direct dependencies detected for ICST
>   Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
>   Selected by [y]:
>   - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
>   - ARCH_VEXPRESS [=y] && ARCH_MULTI_V7 [=y]
>   - ARCH_ZYNQ [=y] && ARCH_MULTI_V7 [=y]
> 
> Change back the Kconfig logic to allow these to be selected
> without the main option.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---

Is this similar to
https://lore.kernel.org/r/20200527181307.2482167-1-robh@kernel.org
?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
