Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51EB1C1B89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 19:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ7e5DoScHBfVSQa0B1le4w13gszhUCSEhm7v2YddgQ=; b=Tu+lTIkzDCjnpE
	dSID3OQgHuRuj7i5EmaiCfDOsZUfxh4VtFoe6l/rr/thsGP1gEjzVjipcLZ/aXbxpZS6yr71jUW/I
	1UJg/fkPghbUZ3y6PPNZ5dxOHwk6c6d1RJOCXYCnbqVw9KwqDhddY+yb7ZA2jnwBwURxP/qaPJPkW
	DMvmva51pS5QsrNJ9/6jGWSaqXnIR5wtwy/4FU/Ejy1ChidI7Ibil063xkcXtXdHuT7wXIveZlOxv
	c+HtAXC5JDuCxHuIiASxoJ3adZF5mT7XUXRH0jmxDxHzrGF4HbCJ7OAnmztga0xODtl+XCCZ8vO3e
	bjfjdIjh2iGrRTvLnSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZLB-0004B2-KG; Fri, 01 May 2020 17:20:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZL2-0004A0-QP
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 17:20:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B2D930E;
 Fri,  1 May 2020 10:20:36 -0700 (PDT)
Received: from bogus (unknown [10.37.12.80])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 764B23F305;
 Fri,  1 May 2020 10:20:32 -0700 (PDT)
Date: Fri, 1 May 2020 18:20:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 00/17] Modularizing Versatile Express
Message-ID: <20200501172029.GM14018@bogus>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_102036_899453_57E6EF4E 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sebastian Reichel <sre@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 03:58:09PM -0500, Rob Herring wrote:
> This series enables building various Versatile Express platform drivers
> as modules. The primary target is the Fast Model FVP which is supported
> in Android. As Android is moving towards their GKI, or generic kernel,
> the hardware support has to be in modules. Currently ARCH_VEXPRESS
> enables several built-in only drivers. Some of these are needed, but
> some are only needed for older 32-bit VExpress platforms and can just
> be disabled. For FVP, the pl111 display driver is needed. The pl111
> driver depends on vexpress-osc clocks which had a dependency chain of
> vexpress-config --> vexpress-syscfg --> vexpress-sysreg. These
> components relied on fixed initcall ordering and didn't support deferred
> probe which would have complicated making them modules. All these levels
> of abstraction are needlessly complicated, so this series simplifies
> things a bit by merging the vexpress-config and vexpress-syscfg
> functionality.
>
> There's a couple of other pieces to this which I've sent out separately
> as they don't have dependencies with this series. The cross subsystem
> dependencies in this series are mainly the ordering of enabling drivers
> as modules.
>
> A complete git branch is here[1]. Tested on Fast Model FVP Rev C.

I am assuming you will send pull request to ARM SoC guys directly. Let
me know what's the plan if that's not the case.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
