Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD06411570B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXVMzlgTjFeXFifnot01+UaSsfJPWvPo9p4ZBMTNVmQ=; b=MYb8fNXrat+QYJ
	EQJCH4MyWhgK7aKw2YLgXuXF3hDPscX2OSoc/OiF35RZ1VQNAAEkJaHsx/n2UOqI7LjgSnyVXa0sk
	lyVAab/kcyTocxvVxBtJGtfUwHKkCvu7TaH1qS95Pab/c5wYAbWzNPT9dRE79eTApuCQCwLbGH3r8
	NRidZaysQkIA89UtJWkcPDnbMqkURqiNEIxOeGtiXFGhTUpQam4m6EftxxKtAx2/Gs1W8STpjBE3I
	80O7r1t34YUUf/hDntFm979wRWJcil8+7I9ZF6WRQQgIi5Xp0UBfzIzSe9YZ/tZzwOQ6Cr9pm0i4o
	YXyFLPBnReUQnRjrQjZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIAD-0001Ad-0W; Fri, 06 Dec 2019 18:17:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIA5-00019m-Kh
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 18:17:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFE2931B;
 Fri,  6 Dec 2019 10:17:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 895B93F52E;
 Fri,  6 Dec 2019 10:17:01 -0800 (PST)
Date: Fri, 6 Dec 2019 18:16:56 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Thomas Renninger <trenn@suse.de>
Subject: Re: [PATCH v5 0/3] sysfs: add sysfs based cpuinfo
Message-ID: <20191206181655.GA35318@lakrids.cambridge.arm.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206165803.GD21671@lakrids.cambridge.arm.com>
 <2898795.Dnvf4huJ59@skinner.arch.suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2898795.Dnvf4huJ59@skinner.arch.suse.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_101705_723137_E3396F78 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, gregkh@linuxfoundation.org, x86@kernel.org,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 fschnitzlein@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 06:29:39PM +0100, Thomas Renninger wrote:
> On Friday, December 6, 2019 5:58:03 PM CET Mark Rutland wrote:
> > On Fri, Dec 06, 2019 at 05:24:18PM +0100, Thomas Renninger wrote:

> > For arm64 we already expose the MIDR and REVIDR register values under
> > /sys/devices/system/cpu/cpu*/regs/identification, and that's the bulk of
> > the useful information above
> 
> I'd like to come up with an extra CONFIG which parses:
> 
> arch/arm64/include/asm/cputype.h:
> 
> #define ARM_CPU_PART_AEM_V8             0xD0F
> #define ARM_CPU_PART_FOUNDATION         0xD00
> #define ARM_CPU_PART_CORTEX_A57         0xD07
> #define ARM_CPU_PART_CORTEX_A72         0xD08
> 
> and
> 
> #define ARM_CPU_IMP_ARM                 0x41
> #define ARM_CPU_IMP_APM                 0x50
> #define ARM_CPU_IMP_CAVIUM              0x43
> #define ARM_CPU_IMP_BRCM                0x42
> #define ARM_CPU_IMP_QCOM                0x51
> #define ARM_CPU_IMP_NVIDIA              0x4E
> 
> and converts the defines to strings, same as here:

A similar approach for /proc/cpuinfo has been NAK'd repeatedly in the
past. While some arguments against that don't apply here, I don't think
that we want to have to maintain an ever-growing list of strings that
end up being ABI which we cannot manage in a forwards-compatible manner.

When it is necessary to reliably and unambiguously identify a CPU, it'll
always end up being necessary to look at the MIDR (and possibly REVIDR),
so that's what applications should always do, and it's what users will
necessarily have to do when the kernel doesn't have a string for a CPU,
as is the case for all existing kernels.

I don't think that in-kernel stringification of the MIDR is a good idea,
and I would suggest not wasting your time on that.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
