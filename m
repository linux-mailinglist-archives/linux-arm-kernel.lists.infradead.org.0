Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345E67C16E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:35:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVDU2gVdWMGQhOK3+E/aBrKksfZhdgUgJku34f0S/84=; b=Z6tGnSz+jeZvIp
	ObD8CGkJkeMa2M8530vX+1DggpDUfEfo///MaXTyw+6OOo8Aern7r9jmaXwE6rcR2b1hPwZyUi4Pj
	1wUNjqfL/VqALaIOhKLwgSFquT9vJTxW7uH4w2jeMBMf4ln+CiSbHeJ7+kSWECfSE8MLP0T6OQZRu
	3YoUUUDLm2TkCh/qFRnlgDDOGXIHSl+ywMQnnFPu1kLHU7JJx9fM17r46jXlHGCiWvUQcsponsy9b
	VLqANcyttGtolQFWT3UtvNReeTtBuv1jOVljX3hcVBL48rizjhTXD2FeUXKqD5RmrFQ/LvY4dRypM
	jK9MuDKi+CJ4Wz/nEETg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnpb-0005BM-B4; Wed, 31 Jul 2019 12:35:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnpU-0005B2-EF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:35:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22F17344;
 Wed, 31 Jul 2019 05:35:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFE023F575;
 Wed, 31 Jul 2019 05:35:37 -0700 (PDT)
Date: Wed, 31 Jul 2019 13:35:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 15/43] arm64: Move cpu_die_early to smp.c
Message-ID: <20190731123532.GA39768@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <dd031e0851c01a0cfe275c05dc24935580d2fd78.1562908075.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd031e0851c01a0cfe275c05dc24935580d2fd78.1562908075.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053540_524775_5EB98149 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 10:58:03AM +0530, Viresh Kumar wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> commit fce6361fe9b0caeba0c05b7d72ceda406f8780df upstream.
> 
> This patch moves cpu_die_early to smp.c, where it fits better.
> No functional changes, except for adding the necessary checks
> for CONFIG_HOTPLUG_CPU.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Acked-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ Viresh: Resolved rebase conflict ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

> +void cpu_die_early(void)

> +	asm(
> +	"1:	wfe\n"
> +	"	wfi\n"
> +	"	b	1b");
> +}

Rather than open-coding this loop differently from upstream and the
v4.9.y backport, please backport commit:

  c4bc34d20273db69 ("arm64: Add a helper for parking CPUs in a loop")

... as a prerequisite of this patch.

Otherwise, this looks fine to me.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
