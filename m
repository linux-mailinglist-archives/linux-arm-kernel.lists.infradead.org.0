Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C99D3DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 18:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOwsGfXRLXsh8Eyb1Uyu0RDC3gd8/J8s2VuOyY+phB0=; b=H+gbinO6p5jJff
	LKWa5F69Aiz2fNidGBo24DhF/S2WJxNsdqtE0EQd2ZQuTgVXVxPxXB3cUZb5irGTe0GAm7amereCw
	EiNWLkB/hcBll/luTkQ2YDXtn+7G8ZfPa1TFaiMqupGumg+tD/mlT1fObZOKJ5YfiJSwOvhrC3wiq
	LmVycshxUaZN5EPNssMXmDOGjjEdfuKBG2MGUoRDThtqNRcLL+2SY0OO+mJu49B47X7N2WSyvyYf4
	V2+93w6jkmDq71OF9pLyHCgzW6Zym+/1+kTzI33N4tJ+OBY30WbHXV8yoTr731qB0MZDohJLGX7h3
	yxlhZPaWj0TRGpfRbNig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Hji-00048Q-0D; Mon, 26 Aug 2019 16:20:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2HjH-00047a-4R
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 16:20:28 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6611780AA;
 Mon, 26 Aug 2019 16:20:53 +0000 (UTC)
Date: Mon, 26 Aug 2019 09:20:21 -0700
From: Tony Lindgren <tony@atomide.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] ARM: omap2: move platform-specific asm-offset.h to
 arch/arm/mach-omap2
Message-ID: <20190826162021.GW52127@atomide.com>
References: <20190823025808.11875-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823025808.11875-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_092027_218195_71BB7357 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-omap@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Masahiro Yamada <yamada.masahiro@socionext.com> [190822 19:59]:
> <generated/ti-pm-asm-offsets.h> is only generated and included by
> arch/arm/mach-omap2/, so it does not need to reside in the globally
> visible include/generated/.
> 
> I renamed it to arch/arm/mach-omap2/pm-asm-offsets.h since the prefix
> 'ti-' is just redundant in mach-omap2/.
> 
> My main motivation of this change is to avoid the race condition for
> the parallel build (-j) when CONFIG_IKHEADERS is enabled.
> 
> When it is enabled, all the headers under include/ are archived into
> kernel/kheaders_data.tar.xz and exposed in the sysfs.
> 
> In the parallel build, we have no idea in which order files are built.
> 
>  - If ti-pm-asm-offsets.h is built before kheaders_data.tar.xz,
>    the header will be included in the archive. Probably nobody will
>    use it, but it is harmless except that it will increase the archive
>    size needlessly.
> 
>  - If kheaders_data.tar.xz is built before ti-pm-asm-offsets.h,
>    the header will not be included in the archive. However, in the next
>    build, the archive will be re-generated to include the newly-found
>    ti-pm-asm-offsets.h. This is not nice from the build system point
>    of view.
> 
>  - If ti-pm-asm-offsets.h and kheaders_data.tar.xz are built at the
>    same time, the corrupted header might be included in the archive,
>    which does not look nice either.
> 
> This commit fixes the race.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Tested-by: Keerthy <j-keerthy@ti.com>

Applying into omap-for-v5.4/soc thanks. The commit is on top of
v5.3-rc1 so it can be merged into other branches if needed after
it's been sitting in Linux next for few days with no issues.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
