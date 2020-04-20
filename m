Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEB31B07F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaRfDwLa7aQRGzHlxJiSCmqOJS6pcCjkbc3M/07WyEw=; b=ViRx/imqDYLEA1
	bR4fKs0DdfzxymJFMH0poTTYFJJzuTkDkW7RaoCjFYoQuGIKPRk85R+5ZPApIKcaH6LOZYGh6ysrN
	kgWX+qAfIifW5LXgR7oJpTtyinrZL1VN1GiIjJmt6CgJzLWjAdzNpAZS1kfLBk/8LmjC6w09iDJnb
	NE1wkpDHiOn6H81ZaH3Fs/zb0xZ9uijq/ITVESFVdBnQrxvXE6wBfDgtmgkYoUDJzmCMcakjI9ieV
	vQDphYpoluGSGqLWE88jyKOe5mIzKib7Cz/phLbGE+cAdUsMuBsTDoQ1r9FtqMLJXP6zAgqvMVclq
	tW3LaWYEPyoi3iJmJ7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUs5-0001WH-PR; Mon, 20 Apr 2020 11:45:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUrv-0001VC-71
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:45:44 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC6AC20724;
 Mon, 20 Apr 2020 11:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587383142;
 bh=wABszUiKC+9GnVORubiyNHHzTm5AHEnPJbHOJRIArfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QpJwyvDoKUdVT1tPO452DOepBmSKEejmCLkw8mVa7E4VJfypEoE7zbNXHPoQmS4WF
 ca3oDam9DlUg9s2vGjn42nLXFUgfcOBNrMtiOnfiExMHO7hBG2r9BgUIVmILNnNFTr
 NYdrK0C2xy19+52e+9nr7euh8N0iSmGtn6hpdX0o=
Date: Mon, 20 Apr 2020 13:45:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 13/17] bus: vexpress-config: Merge vexpress-syscfg into
 vexpress-config
Message-ID: <20200420114540.GA3908919@kroah.com>
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-14-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419170810.5738-14-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_044543_266831_B3B1947E 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 12:08:06PM -0500, Rob Herring wrote:
> The only thing that vexpress-syscfg does is provide a regmap to
> vexpress-config bus child devices. There's little reason to have 2
> components for this. The current structure with initcall ordering
> requirements makes turning these components into modules more difficult.
> 
> So let's start to simplify things and merge vexpress-syscfg into
> vexpress-config. There's no functional change in this commit and it's
> still separate components until subsequent commits.
> 
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/mach-vexpress/Kconfig |   1 -
>  drivers/bus/vexpress-config.c  | 283 +++++++++++++++++++++++++++++++--
>  drivers/misc/Kconfig           |   9 --
>  drivers/misc/Makefile          |   1 -
>  drivers/misc/vexpress-syscfg.c | 280 --------------------------------
>  include/linux/vexpress.h       |  17 --
>  6 files changed, 274 insertions(+), 317 deletions(-)
>  delete mode 100644 drivers/misc/vexpress-syscfg.c


Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
