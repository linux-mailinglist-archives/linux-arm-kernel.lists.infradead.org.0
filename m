Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FBB4E5E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2TRC8fUErTBFOW2rjGAgHtT8+Y26rLJ81PjnauTYxs=; b=cATI5K4l3Ipo1x
	SGHsvf3QDSNGYSEeZs/b7gGLH11e8SaPEQDQ/Z15nJuAalmj2WyZD/4ISE0OWKXwxwCQqJXYvRuqb
	3ho/fYn8Ec0N91VUHczGGVMvDjluKW8Tj2l0A3PXqRT6vz8Lx+Eyzu6gcGNJYxziUtwtteTVE0SPr
	bj3fZ327OLCZ18slqVggHVelFsw7GymOG6zMwJ8kvuoQ6CUCSy+eNyOMoeBUUeISR+gnozoQe4hAF
	nZ1rwEwy0CoWxBf6Kqh5mE6j02T/iz2Ki5OVdNX+N1usIz58nCtT+j9qvM2ZRIdu/7NCBXj1svagO
	5wyhuJMr+U9mZ/bf7YUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGm8-0005qP-EJ; Fri, 21 Jun 2019 10:28:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGlq-0005pY-92
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:27:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB399147A;
 Fri, 21 Jun 2019 03:27:47 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 69C6D3F718; Fri, 21 Jun 2019 03:27:46 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:27:44 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4 0/8] arm64: IRQ priority masking and Pseudo-NMI fixes
Message-ID: <20190621102743.GE18954@arrakis.emea.arm.com>
References: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_032750_359170_AE322307 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 10:38:05AM +0100, Julien Thierry wrote:
> Julien Thierry (7):
>   arm64: Do not enable IRQs for ct_user_exit
>   arm64: irqflags: Pass flags as readonly operand to restore instruction
>   arm64: irqflags: Add condition flags to inline asm clobber list
>   arm64: Fix interrupt tracing in the presence of NMIs
>   arm64: Fix incorrect irqflag restore for priority masking
>   arm64: irqflags: Introduce explicit debugging for IRQ priorities
>   arm64: Allow selecting Pseudo-NMI again
> 
> Wei Li (1):
>   arm64: fix kernel stack overflow in kdump capture kernel

I queued these patches for 5.3 (and should appear in next soon). Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
