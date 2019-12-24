Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5945A129E55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 08:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGWOv5X2tKSmh0aeiyVnpWypTTNztm9s3Nz0QekLo2k=; b=i2p/HIkIVuCDvN
	X1KSumbLEJYdSOsX88abAp71YwJ9ZMZfhaEaEA+FhfO6lFKbxFzmfyhMrlwIo/ehgJfxnUFWoy6IU
	lHp9yJ8xdqAUjdFr0Yi9Po7lsjZelS0IyOX49egKsR655vzWCKpHIuss2g7uE85P7zhoxmfTn96ai
	zzHDaYTgaHEg0AsVKEAUmQdNPxrM6W+b0zche2P1QWik3p9SuXEMgGv9s+R0zEcutiXQcnoeEBXqG
	zdk7FnUaaAaa5eQRuBLdmTVnvVcEJGXxTGxtJ/jb1W5v2HQ7XUHipZAM9Ew/asxedLRYRQV8eoVWS
	kTIGZPzEFaGQqu/WukdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijeGe-0005Ln-Pl; Tue, 24 Dec 2019 07:06:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijeGV-0005LB-GB
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 07:06:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7957431B;
 Mon, 23 Dec 2019 23:05:55 -0800 (PST)
Received: from [10.163.1.130] (unknown [10.163.1.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B2BE43F6CF;
 Mon, 23 Dec 2019 23:08:53 -0800 (PST)
Subject: Re: [PATCH] arm64: Set SSBS for user threads while creation
To: Srinivas Ramana <sramana@codeaurora.org>, will@kernel.org,
 catalin.marinas@arm.com, maz@kernel.org, will.deacon@arm.com
References: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <d490d6ce-8b07-ce79-4580-ac80f239312a@arm.com>
Date: Tue, 24 Dec 2019 12:36:34 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1577106146-8999-1-git-send-email-sramana@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_230559_582182_95882658 
X-CRM114-Status: GOOD (  19.07  )
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/23/2019 06:32 PM, Srinivas Ramana wrote:
> Current SSBS implementation takes care of setting the
> SSBS bit in start_thread() for user threads. While this works
> for tasks launched with fork/clone followed by execve, for cases
> where userspace would just call fork (eg, Java applications) this
> leaves the SSBS bit unset. This results in performance
> regression for such tasks.
> 
> It is understood that commit cbdf8a189a66 ("arm64: Force SSBS
> on context switch") masks this issue, but that was done for a
> different reason where heterogeneous CPUs(both SSBS supported
> and unsupported) are present. It is appropriate to take care
> of the SSBS bit for all threads while creation itself.

So this fixes the situation (i.e low performance) from the creation time
of a task with fork() which will never see a subsequent execve, till it
gets context switched for the very first time ?

> 
> Fixes: 8f04e8e6e29c ("arm64: ssbd: Add support for PSTATE.SSBS rather than trapping to EL3")
> Signed-off-by: Srinivas Ramana <sramana@codeaurora.org>
> ---
>  arch/arm64/kernel/process.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 71f788cd2b18..a8f05cc39261 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -399,6 +399,13 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  		 */
>  		if (clone_flags & CLONE_SETTLS)
>  			p->thread.uw.tp_value = childregs->regs[3];
> +
> +		if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE) {
> +			if (is_compat_thread(task_thread_info(p)))
> +				set_compat_ssbs_bit(childregs);
> +			else
> +				set_ssbs_bit(childregs);
> +		}
>  	} else {
>  		memset(childregs, 0, sizeof(struct pt_regs));
>  		childregs->pstate = PSR_MODE_EL1h;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
