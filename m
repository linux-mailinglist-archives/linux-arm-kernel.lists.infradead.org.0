Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7D918CC22
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OShplw63hZczjJAWf1LmMIkC79FczGy78wrSge4c0s=; b=iSApHW35DZXgUd
	ukMgKShwt1x/ODTNZTQVhu1edXgV1E9TK5P+TblXC3sdEjIwmoauRMEr5uICTV9s80ZKnZVkj9871
	8mx03R3Ut4uhl9H5NFsuM6xfaEph2mU9OiWQPXwyoQro37nuEcWXJY/fvpP4c9mnVwk3KuEAHav/G
	Jfp1iye0LiuKQxJbsRERoGkG8nD+vPbAZHNslrI9qyZXxJM6e05Lv6oGw3s1mMSRBbWRyk29oR/f9
	ssSvBgErVXStfp6ZKwRp+x2XnksBURFAdqqooBxKHlwQunPgjpiJebWaLN4gB5XYJD/5mBI4uB0uj
	6Ea+Nu2Y2iefJaqK/xpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFSH-000542-Pr; Fri, 20 Mar 2020 11:04:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFS8-00052f-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:04:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E08431B;
 Fri, 20 Mar 2020 04:04:34 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53BF53F85E;
 Fri, 20 Mar 2020 04:04:33 -0700 (PDT)
Date: Fri, 20 Mar 2020 11:04:31 +0000
From: Qais Yousef <qais.yousef@arm.com>
To: Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v3 04/15] arm: Don't use disable_nonboot_cpus()
Message-ID: <20200320110430.jozfyrqqx272266u@e107158-lin.cambridge.arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
 <20200223192942.18420-5-qais.yousef@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192942.18420-5-qais.yousef@arm.com>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_040436_992586_49DB909B 
X-CRM114-Status: GOOD (  18.37  )
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 "Paul E . McKenney" <paulmck@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/23/20 19:29, Qais Yousef wrote:
> disable_nonboot_cpus() is not safe to use when doing machine_down(),
> because it relies on freeze_secondary_cpus() which in turn is
> a suspend/resume related freeze and could abort if the logic detects any
> pending activities that can prevent finishing the offlining process.
> 
> Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> is an othogonal config to rely on to ensure this function works
> correctly.
> 
> Use `reboot_cpu` variable instead of hardcoding 0 as the reboot cpu.
> 
> Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> CC: Russell King <linux@armlinux.org.uk>
> CC: linux-arm-kernel@lists.infradead.org
> CC: linux-kernel@vger.kernel.org
> ---

Hi Russel

Does the updated version look good to you now?

Thanks

--
Qais Yousef

>  arch/arm/kernel/reboot.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
> index bb18ed0539f4..0ce388f15422 100644
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
> +	smp_shutdown_nonboot_cpus(reboot_cpu);
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
