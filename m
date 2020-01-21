Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA4144274
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 17:51:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEZa5avcuPW0pmgY+oGBDYFAX27fNpvNJwgJBrwYMrs=; b=M8L/4adZa+f+6H
	MU4aaGDRhL8FgVQ/1j5v1fgeAgL38qjAitIokQRsIQm8uEj1yHZ0AZXV97XDiUSdg4+/3snC41tlm
	WIE6Qay1qGNHqv4Ub6M/U5rFTaFN6OejyEnhi/rU6sdn0YudQDJ951JxX1qzAH3rq9svnROBzVH+B
	COc+xaJSEj3yTOcoDnJmmfnemd7ywcxMOihX019iRbPBuP6p04p5StvGsTTGhZatzU7FOGfXeiMZ0
	DIGiNq0MQWCphcV1N2yVdFWVCF0uA3jVXVvet6/oyO3Nhto1NgoYZDYTu0g1FJ+J+5L1pdezqDgHR
	X3233P97hWs8/oS/yGSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwjs-0005el-3T; Tue, 21 Jan 2020 16:50:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwjd-0005cu-GT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 16:50:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EA1F328;
 Tue, 21 Jan 2020 08:50:34 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F36C3F6C4;
 Tue, 21 Jan 2020 08:50:33 -0800 (PST)
Date: Tue, 21 Jan 2020 16:50:31 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 03/14] arm: arm64: Don't use disable_nonboot_cpus()
Message-ID: <20200121165030.xksivf6mrhsaynq2@e107158-lin.cambridge.arm.com>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-4-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125112754.25223-4-qais.yousef@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_085037_589044_9FE8058D 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/25/19 11:27, Qais Yousef wrote:
> disable_nonboot_cpus() is not safe to use when doing machine_down(),
> because it relies on freeze_secondary_cpus() which in return is
> a suspend/resume related freeze and could abort if the logic detects any
> pending activities that can prevent finishing the offlining process.
> 
> Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> is an othogonal config to rely on to ensure this function works
> correctly.
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Russell King <linux@armlinux.org.uk>
> CC: Catalin Marinas <catalin.marinas@arm.com>
> CC: Will Deacon <will@kernel.org>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-kernel@vger.kernel.org
> ---

Ping :)

I'm missing ACKs on this patch and patch 4 for arm64. Hopefully none should be
controversial.

Thanks!

--
Qais Yousef

>  arch/arm/kernel/reboot.c    | 4 ++--
>  arch/arm64/kernel/process.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
> index bb18ed0539f4..58ad1a70f770 100644
> --- a/arch/arm/kernel/reboot.c
> +++ b/arch/arm/kernel/reboot.c
> @@ -88,11 +88,11 @@ void soft_restart(unsigned long addr)
>   * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
>   * kexec'd kernel to use any and all RAM as it sees fit, without having to
>   * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
> - * functionality embodied in disable_nonboot_cpus() to achieve this.
> + * functionality embodied in smp_shutdown_nonboot_cpus() to achieve this.
>   */
>  void machine_shutdown(void)
>  {
> -	disable_nonboot_cpus();
> +	smp_shutdown_nonboot_cpus(0);
>  }
>  
>  /*
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 71f788cd2b18..3bcc9bfc581e 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -141,11 +141,11 @@ void arch_cpu_idle_dead(void)
>   * to execute e.g. a RAM-based pin loop is not sufficient. This allows the
>   * kexec'd kernel to use any and all RAM as it sees fit, without having to
>   * avoid any code or data used by any SW CPU pin loop. The CPU hotplug
> - * functionality embodied in disable_nonboot_cpus() to achieve this.
> + * functionality embodied in smpt_shutdown_nonboot_cpus() to achieve this.
>   */
>  void machine_shutdown(void)
>  {
> -	disable_nonboot_cpus();
> +	smp_shutdown_nonboot_cpus(0);
>  }
>  
>  /*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
