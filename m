Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8716F90E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1A5/7qhZtmqlySHH08wD2MHqCdeKDetchNp523xli9c=; b=NRWdMM2kUCxY03
	KD+CCKr6iZJeKyYYguoOJdm7aWypEsoSGlLg2wplfqkHpsOC/iV43sCDDfMSjnRhb1EgFaANH4Yh7
	GcZdERCfe8QG/UhIPguGYyR+zBsxcgop+9YsWxPlJ2/qjKqgVnMUnloFeRjaIUMXHY1+4wwfZoGVA
	FQRrPi8r9CvQjRPjSqEtYymfqLXYw7BK0nQ7DrEp3Z5FFT2LtxyCsStfWgbEhtF6wk+fqUnMV9THF
	fs4/mfIbhNMbELwqljtKrE8Dg5w4ZLZi9WzffLQIMkRxOuCZVHWt62drSrdzSyQ1zxo6HQIIGB9XD
	B9SMpnnv+Gbs1yAIOUUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRGG-0003k2-Iv; Mon, 22 Jul 2019 05:53:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRG2-0003jL-0C
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:53:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 647DA344;
 Sun, 21 Jul 2019 22:53:02 -0700 (PDT)
Received: from [10.162.41.186] (p8cg001049571a15.blr.arm.com [10.162.41.186])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EAC293F71F; Sun, 21 Jul 2019 22:55:02 -0700 (PDT)
Subject: Re: [PATCH] arm64: Force SSBS on context switch
To: Marc Zyngier <marc.zyngier@arm.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Neeraj Upadhyay <neeraju@codeaurora.org>
References: <20190719171651.26165-1-marc.zyngier@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <643cbd73-7397-ac4b-b199-100c7fe8d288@arm.com>
Date: Mon, 22 Jul 2019 11:23:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190719171651.26165-1-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225310_093688_839083D4 
X-CRM114-Status: GOOD (  13.51  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/19/2019 10:46 PM, Marc Zyngier wrote:
> +static void ssbs_thread_switch(struct task_struct *next)
> +{
> +	if (likely(!(next->flags & PF_KTHREAD)) &&
> +	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
> +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
> +		struct pt_regs *regs = task_pt_regs(next);
> +
> +		if (compat_user_mode(regs))
> +			set_compat_ssbs_bit(regs);
> +		else if (user_mode(regs))
> +			set_ssbs_bit(regs);
> +	}
> +}

While still trying not to get confused between SSBD/SSBS and possible
inverted polarity between them I assume that the cleared flag TIF_SSBD
on the next user thread prompts setting SSBS bit on it's regs->pstate
for later.

Now when this next task moves to a non-supporting CPU, restoring SSBS
bit from it's stored regs->pstate is inconsequential because its RES0
on that CPU's pstate. But when the next CPU supports SSBS it will just
enable it. SSBD/SSBS context needs to be moved from thread flags into
the saved pstate. Is that correct ?

Also the commit message should include some description about how SSBS
bit was getting lost during task migration.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
