Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB865504A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SmA65E19EmuJCRpuaBuWsD3m2VZKAJ5VKlo0lC31aE=; b=LwoFBqMdqQk90N
	c0ojkmDWel2xtyYh5GuNBi/+Gu5hapPAww7OvsZXPskJH8s2yaoL9VqJVB0u3jmT+MVJbe69Vk+G5
	JGk/kGVL+GwHZ3goYFpohHUvIhhg0Wdk8Zi/tAIJHjWp1QwsL551jq7cjCwqEYzo84oSds0hKFP3C
	izYndDCSi6wKnZPx2UsVyBhx1dMvPyMCe7a439eDDUBwtFkiBX8hR2cxJKQSjevimR+IdZMQiHlZI
	avOxO0eYtMzS+mrvcdXAE7UTZnSZZkwFO9NSuJmA8ZPr6I1wTGAWwszdUGsPUNK7a52hr71WewKkT
	jEVyIQ0xl/8Fxg2EcXFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflSw-000843-1G; Tue, 25 Jun 2019 13:26:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hflSm-000834-Tn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:26:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 177542B;
 Tue, 25 Jun 2019 06:26:18 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7E8E73F718; Tue, 25 Jun 2019 06:26:17 -0700 (PDT)
Date: Tue, 25 Jun 2019 14:26:15 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] arm64: Expose ARMv8.5 CondM capability to userspace
Message-ID: <20190625132614.GA32618@arrakis.emea.arm.com>
References: <20190618181055.31576-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618181055.31576-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_062621_012876_633797D8 
X-CRM114-Status: GOOD (  11.20  )
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
Cc: Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 07:10:54PM +0100, Mark Brown wrote:
> ARMv8.5 adds new instructions XAFLAG and AXFLAG to translate the
> representation of the results of floating point comparisons between the
> native ARM format and an alternative format used by some software. Add
> a hwcap allowing userspace to determine if they are present, since we
> referred to earlier CondM extensions as FLAGM call these extensions
> FLAGM2.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Will Deacon <will.deacon@arm.com>
> ---
>  Documentation/arm64/elf_hwcaps.rst  | 4 ++++
>  arch/arm64/include/asm/hwcap.h      | 1 +
>  arch/arm64/include/uapi/asm/hwcap.h | 1 +
>  arch/arm64/kernel/cpufeature.c      | 1 +
>  arch/arm64/kernel/cpuinfo.c         | 1 +
>  5 files changed, 8 insertions(+)

I queued both patches but changed them to apply to the elf_hwcap.txt
file instead of .rst (arm64 for-next/core is based on 5.2-rc3).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
