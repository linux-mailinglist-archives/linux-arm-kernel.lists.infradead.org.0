Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7803B45C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dL1vDrGzr+VsLWyuhaLjnB6H+Mrq5CVxrJmwA0SEp4=; b=rWLzL0BiMXxp0o
	ejWrxaQ6mxSI3tyWib321Csf7nMznYMqvs1s93wcAyZpyjDvK5TNJiXlSycM4MztiQL3r5xsfkoKe
	N+wFU4Vln9ZuA6c0kT1gTIKuur+AHU+lU83bwUscKR85VRsZNrRLAsUZp50lsE1k6axeTVx8dr+ME
	5G2C1oVommTsFlxZ40ojYeEjBdfGbguIxJp4j4a4CCMND8/Taz2ytLU34gEfpso8oiBIVVIJhu1py
	oKqJQTp8IxTnRC3OTYs5SuxY4wj0fwAsB6hMtH3rfpqTgZA8LW7JhfiV401uXGnzCoQ5XMly4fW5e
	E8RjdTQHP5fxUEfYhIXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJ6e-00006x-Uk; Mon, 10 Jun 2019 12:08:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haJ6S-00006U-3q
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 12:08:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3FFB337;
 Mon, 10 Jun 2019 05:08:42 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C85613F557;
 Mon, 10 Jun 2019 05:10:23 -0700 (PDT)
Date: Mon, 10 Jun 2019 13:08:39 +0100
From: Will Deacon <will.deacon@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH] clocksource/arm_arch_timer: extract elf_hwcap use to
 arch-helper
Message-ID: <20190610120839.GH15979@fuggles.cambridge.arm.com>
References: <20190430131413.10017-1-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430131413.10017-1-andrew.murray@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_050844_206174_3A171AE1 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 02:14:13PM +0100, Andrew Murray wrote:
> Different mechanisms are used to test and set elf_hwcaps between ARM
> and ARM64, this results in the use of #ifdef's in this file when
> setting/testing for the EVTSTRM hwcap.
> 
> Let's improve readability by extracting this to an arch helper.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> ---
>  arch/arm/include/asm/arch_timer.h    | 13 +++++++++++++
>  arch/arm64/include/asm/arch_timer.h  | 13 +++++++++++++
>  drivers/clocksource/arm_arch_timer.c | 15 ++-------------
>  3 files changed, 28 insertions(+), 13 deletions(-)

Acked-by: Will Deacon <will.deacon@arm.com>

I assume this is going via Marc Z.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
