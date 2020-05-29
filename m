Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34E51E8B08
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 00:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJrngm4xs4a2Ei82l0TJH5t203nNZ+y7oCHoA8qA/08=; b=V7byjSsQBe6/ky
	U93lqRmmPc3ecbUDW+QKOng3JqAQFFs2AVl5Wy+Q6+gUU2KfxfArjRwxNDz4h6yEHFR8HNgkIaBod
	NhPVw2iP5847RW/IL6gcis8UfJggQi6jvBtKEEdAIJHVq7PqoiSd8oAZ+eyAkytHgBP3RCk4/4FCt
	d6hhpm0A805i1NfZ9u9aCwAzsvtB9NUuCPGSLBhXDxBa09nxe7S8tkwRV7PbFfHVjSGls8fBVHwTO
	85lJca4JApfJCaSD4uebk7+FDezzIvp+w09gTMsHNtl0cjuiGIBuW2ADrIGFDQCgmyAv5J0WRv2Do
	hwdaqI3xMSroHD/9/ePg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenE0-0008Qq-Ro; Fri, 29 May 2020 22:11:36 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenDs-0008QU-G0
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 22:11:29 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5A7778030;
 Fri, 29 May 2020 22:12:18 +0000 (UTC)
Date: Fri, 29 May 2020 15:11:24 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] [v2] ARM: omap2: fix omap5_realtime_timer_init definition
Message-ID: <20200529221124.GA37466@atomide.com>
References: <20200529220029.589078-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529220029.589078-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_151128_573678_10E13E67 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 linux-kernel@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200529 22:01]:
> There is one more regression introduced by the last build fix:
> 
> arch/arm/mach-omap2/timer.c:170:6: error: attribute declaration must precede definition [-Werror,-Wignored-attributes]
> void __init omap5_realtime_timer_init(void)
>      ^
> arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
> static inline void omap5_realtime_timer_init(void)
>                    ^
> arch/arm/mach-omap2/timer.c:170:13: error: redefinition of 'omap5_realtime_timer_init'
> void __init omap5_realtime_timer_init(void)
>             ^
> arch/arm/mach-omap2/common.h:118:20: note: previous definition is here
> static inline void omap5_realtime_timer_init(void)
> 
> As it turns out, the CONFIG_SOC_HAS_REALTIME_COUNTER option
> should never be disabled for OMAP5 as we realy on this to initialize
> the clocks and the timer. Just remove it here and make it the default.
> 
> Removing the guard around the set_cntfreq() definition, I noticed that
> this is not properly namespaced, so fix that as well.

Looks good to me, thanks for fixing it:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
