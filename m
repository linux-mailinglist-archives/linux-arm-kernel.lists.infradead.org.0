Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C85531917E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hycqeI+2DlTU2qwPAqi3uaWDMI2LPcqd1wNYSKcM3uY=; b=f87n5HyLS0SVOf
	RGq1jPXoOJ/9aENCAJA/I0yYCOKSG9wcAtWioliFtR7vrsDvn44lI0fHWjDU/TcGodfnBw1rEonjN
	wFENVYoqRHwXyzv7QWyYj/1KdUuuVrSIybq5rj+8VbzhPbKp00+261SIoQ9/Om09YV7Li7/jshVj+
	E9fHJPZgCMyGOtiBupqviBk5pl8jOubgM5jI5BXbYtvFvWIocV8Ysyg8qLhhcdWZsY5OU+38JbQLg
	o0D3OpOEbQNF3J1+TMX1uXh+HRTUe1iDJCjPeO8OtRarZ2VZtSAi9a3z/uJsD/drGdPNi3BJ+vOaN
	PvJcQVZhqFKeWSLqfl7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnYk-0001f1-98; Tue, 24 Mar 2020 17:41:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnYZ-0001eP-O2
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:41:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27F291FB;
 Tue, 24 Mar 2020 10:41:39 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14E383F71F;
 Tue, 24 Mar 2020 10:41:37 -0700 (PDT)
Date: Tue, 24 Mar 2020 17:41:35 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: peng.fan@nxp.com
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Message-ID: <20200324174134.GH3901@mbp>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_104139_830001_B6F75FB5 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: will@kernel.org, linux-kernel@vger.kernel.org, nsaenzjulienne@suse.de,
 linux-imx@nxp.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 08:48:46PM +0800, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory
> will be occupied by ZONE_DMA, this will cause CMA allocation
> fail on some platforms, because CMA area could not across
> different type of memory zones.
> 
> Make CONFIG_ZONE_DMA configurable without EXPERT option
> could let people build non debug kernel image with
> CONFIG_ZONE_DMA disabled.

While I see why you need to toggle this feature, I'd rather try to
figure out whether there is a better solution that does not break the
single kernel image aim (i.e. the same config works for all supported
SoCs).

When we decided to go ahead with a static 1GB ZONE_DMA for Raspberry Pi
4, we thought that other platforms would be fine, ZONE_DMA32 allocations
fall back to ZONE_DMA. We missed the large CMA case.

I see a few potential options:

a) Ensure the CMA is contained within a single zone. How large is it in
   your case? Is it allocated by the kernel dynamically or a fixed start
   set by the boot loader?

b) Change the CMA allocator to allow spanning multiple zones (last time
   I looked it wasn't trivial since it relied on some per-zone lock).

c) Make ZONE_DMA dynamic on arm64 and only enable it if RPi4.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
