Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D32870580
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JuHzw/QLV6RCDIY8BlKby/rlusj5lYcCUFL6E8bNm3s=; b=JO8gBHPoDdnKkIGp3TN40OrIU
	gfJ4U4cgCYylceDBwWSlV6Qj5AcemQm6mqF8iw7hFIhmgORCVYOyO+tTIzWeqXaVIWAW2Ki8MAZww
	EwNOuoqHo5lVpFVc7CivWJx6LUxyR44OKkDsFMlg2MEdmyNgpBEKEJEOrG4y/x7uQjU11s8qs00xd
	LU805kFMXqWsQPWlE2ZJQz7UhqAsrd3CUKz5N9dPTq94b+BIpe3ug6VqcLss+V95pWywkjZklfRBR
	s789q0h1Kpmn5cXuTYFQ23iJzDJnmX75Bqqq+ymBozaYX2qvdc3Qk7rHAhbPgXQDDbqvULx24zxWW
	Ryc6VeaXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbFy-0004Qv-NH; Mon, 22 Jul 2019 16:33:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbEj-0004B6-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 16:32:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E527460FE9; Mon, 22 Jul 2019 16:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563813148;
 bh=FvrMJHRCOLmmPwFfYQKdgXN+b/dK0PJw2qs6twTLHzc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Kwd7+jRbtl41CdptBBt16swkCDlOLa8Qd+W4KPs6uO9joBjCYbxFBm9+Pj5M/75qa
 ye/fziuAkXn4jO+qFPYO5oytJFHHpQLj31CUp1OHBkgfxOTX20V65GjT1T01a8qjyR
 1L2dPcjhdKAIaIfKECjAHK2sRBxj52o1tPTDX+6k=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.204.78.89]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: neeraju@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B569A60E59;
 Mon, 22 Jul 2019 16:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1563813148;
 bh=FvrMJHRCOLmmPwFfYQKdgXN+b/dK0PJw2qs6twTLHzc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Kwd7+jRbtl41CdptBBt16swkCDlOLa8Qd+W4KPs6uO9joBjCYbxFBm9+Pj5M/75qa
 ye/fziuAkXn4jO+qFPYO5oytJFHHpQLj31CUp1OHBkgfxOTX20V65GjT1T01a8qjyR
 1L2dPcjhdKAIaIfKECjAHK2sRBxj52o1tPTDX+6k=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B569A60E59
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
Subject: Re: [PATCH v2] arm64: Force SSBS on context switch
To: Will Deacon <will@kernel.org>
References: <20190722135309.43186-1-marc.zyngier@arm.com>
 <8c89dbc4-50ba-6802-e582-d4fe54426261@codeaurora.org>
 <20190722160429.wasox4nfl6t5jrew@willie-the-truck>
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Message-ID: <10931ace-f5fb-43cc-77cb-a27f1f3704fe@codeaurora.org>
Date: Mon, 22 Jul 2019 22:02:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190722160429.wasox4nfl6t5jrew@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_093229_803591_D10755CB 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 7/22/19 9:34 PM, Will Deacon wrote:
> On Mon, Jul 22, 2019 at 08:28:15PM +0530, Neeraj Upadhyay wrote:
>> On 7/22/19 7:23 PM, Marc Zyngier wrote:
>>> +static void ssbs_thread_switch(struct task_struct *next)
>>> +{
>>> +	if (likely(!(next->flags & PF_KTHREAD)) &&
>>> +	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
>>> +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
>>> +		struct pt_regs *regs = task_pt_regs(next);
>>> +
>>> +		if (compat_user_mode(regs))
>>> +			set_compat_ssbs_bit(regs);
>>> +		else if (user_mode(regs))
>>> +			set_ssbs_bit(regs);
>>> +	}
>>> +}
>>> +
>>>    /*
>>>     * We store our current task in sp_el0, which is clobbered by userspace. Keep a
>>>     * shadow copy so that we can restore this upon entry from userspace.
>>> @@ -471,6 +485,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>>>    	entry_task_switch(next);
>>>    	uao_thread_switch(next);
>>>    	ptrauth_thread_switch(next);
>>> +	ssbs_thread_switch(next);
>>>    	/*
>>>    	 * Complete any pending TLB or cache maintenance on this CPU in case
>> Looks good to me.
> I inverted the logic in ssbs_thread_switch() so I could add some comments.
> Please double check:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/commit/?h=for-next/fixes&id=cbdf8a189a66001c36007bf0f5c975d0376c5c3a
>
> Will

Looks good


Thanks

Neeraj

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
