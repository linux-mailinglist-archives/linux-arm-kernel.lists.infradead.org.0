Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FF11E9236
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 16:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjVk0/IPyb66KYhKM+15uE0BOouSCxsgvFqN2WC83vE=; b=GxOeJXxcHivbH2
	IsnYF6vnJW31Oxq/I96l0j2/yxPKGuwhLf54JwwzoBAEmuvg02QPuSUnsUnIz/CMe/Om2Wwd9SN+i
	SsyaduIAN0Aom/9+vXfxWLmO1N7RxX/C3xZaD7b4IrKzFcehG9EFMIuRzMuqh8ycCDyHrMypNGBcP
	Nhv6iFGXEtT8hMnTP1mLQqd1dPmA6W3/RnVAzujNHyPPRqg/pFNYoukAHkAep5NuH7iKdLvKA+PvX
	1G/aUGf+pEwBHWqI5wpXEHPWLIU5P9H8OlVZQ52f0Z4MXpP3FE9gB1hxepib/IfzPTbQU2UrRt9Me
	wzV3aHTta9lsgs5iP+ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf2xc-0004LJ-IN; Sat, 30 May 2020 14:59:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf2xR-0004Ke-R1
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 14:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q+dWUhTcb1T2zwpRVnTRa6gA3hfl11OJa+yQ18DEkbc=; b=wlhYNCzReqJ0Yd2vFdHgwfPrb
 mIFkfReuPgrp38MaHQItAN0M2zMsMvXbkij3TwO4VrmLn3AOiOP0SQq/rTHRin5lYKfAhRwMmpwu4
 h9g061YQHLl2cF6uZ+uqSaRLelVCtMpLSkWu0fP4quZArq6H6va9P8f8Rq+DGUX5cgJHd37bWHG44
 NLNE+g7BaKekneA9aJ7VZPuFGSTWHK2Tj0p5nJhy5ygfECuz9ZcvCEsRz1MrraOuO2sd0DZ31nQ+Y
 E7v4h+C74/nx2cRmmrUt+tZ0TUl23F4PjphDZ283bX1Kg5NTOTEYous+heJsOe6C3yzLF5CW+yRML
 8aYomTp5Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:47058)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jf2xK-0002Oj-H5; Sat, 30 May 2020 15:59:26 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jf2xI-00019V-1W; Sat, 30 May 2020 15:59:24 +0100
Date: Sat, 30 May 2020 15:59:24 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] ARM: VDSO: Fix incorrect clock_gettime64
Message-ID: <20200530145923.GF1551@shell.armlinux.org.uk>
References: <20200409050508.96753-1-jaedon.shin@gmail.com>
 <b17b74eb-1ca9-8af4-6564-3874c97d5ae7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b17b74eb-1ca9-8af4-6564-3874c97d5ae7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_075933_874646_FE964050 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Jaedon Shin <jaedon.shin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 30, 2020 at 03:51:35PM +0100, Robin Murphy wrote:
> On 2020-04-09 06:05, Jaedon Shin wrote:
> > __vdso_*() should be removed and fallback used if CNTCVT is not
> > available by cntvct_functional(). __vdso_clock_gettime64 when added
> > previous commit is using the incorrect CNTCVT value in that state.
> > __vdso_clock_gettime64 is also added to remove it's symbol.
> 
> Tested-by: Robin Murphy <robin.murphy@arm.com>
> 
> Turns out this is what was making my RK3288 box virtually unusable since its
> last couple of updates - it would be nice to get the fix merged and
> backported ASAP. I suspect it's also the same underlying thing for the
> Raspberry Pi thread over here:
> 
> https://lore.kernel.org/linux-arm-kernel/CAK8P3a2Tw2w73ZkK-W6AA9veMK4-miLUx-TL1EuOdP7EdW-AmQ@mail.gmail.com/

Does this mean I need to do something with this patch? It's not been
put in the patch system, so I'm afraid it's missed the boat for 5.7.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
