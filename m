Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2263915417D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tloturvxnra77gKYH1eddXzx6Px5Y8owQxEohiB6Ap8=; b=RQxh4wmyByOYRM
	X7sc4vz8IzALXp3vsAoYx36toDaZTk23w01FSJRLRM1WfRDa6OwJMboOTfiUZTGQKExb2CDqT4V4o
	DgmVMl+geeW4hgi5OdqLxv3OhQCU7rkRCrxHyXYBooKD9Wzy+bf9QtcM8GMesSzYKgamwjSeMdYZS
	9b7pQZWSBVGlZVyi84UmmAZlrbJB5/Y8mSMAFhHdSKnHvIuk18nWB+MlBBVXfhl1kzqyr/2zaW/Z2
	PRaHj2TNBCjX7ATBaGaSHec0W1U7dLzquFw7kC7IM7UyPO92q8hl5WjV0qYBbKZFYPYFA80wUEYbK
	Q1Eo9wyf4lNeA9Gmn2mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izdxg-0003jB-MW; Thu, 06 Feb 2020 10:00:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izdxa-0003iD-Gj
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 10:00:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF7581FB;
 Thu,  6 Feb 2020 02:00:28 -0800 (PST)
Received: from [10.1.36.209] (e121487-lin.cambridge.arm.com [10.1.36.209])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 315B43F6CF;
 Thu,  6 Feb 2020 02:00:26 -0800 (PST)
Subject: Re: [PATCH] arm: make kexec depend on MMU
To: Stefan Agner <stefan@agner.ch>, linux@armlinux.org.uk
References: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <14e4919a-0089-c2e7-567c-1e7fcfef9769@arm.com>
Date: Thu, 6 Feb 2020 10:00:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_020034_601478_0307493F 
X-CRM114-Status: GOOD (  18.14  )
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
Cc: Michal Hocko <mhocko@suse.com>, arnd@arndb.de, linus.walleij@linaro.org,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 benjamin.gaignard@linaro.org, mchehab+samsung@kernel.org,
 armlinux@m.disordat.com, akpm@linux-foundation.org,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/5/20 10:43 PM, Stefan Agner wrote:
> From: Michal Hocko <mhocko@suse.com>
> 
> arm nommu config with KEXEC enabled doesn't compile
> arch/arm/kernel/setup.c: In function 'reserve_crashkernel':
> arch/arm/kernel/setup.c:1005:25: error: 'SECTION_SIZE' undeclared (first
> use in this function)
>              crash_size, SECTION_SIZE);
> 
> since 61603016e212 ("ARM: kexec: fix crashkernel= handling") which is
> over one year without anybody noticing. I have only noticed beause of
> my testing nommu config which somehow gained CONFIG_KEXEC without
> an intention. This suggests that nobody is actually using KEXEC
> on nommu ARM configs. It is even a question whether kexec works with
> nommu.
> 
> Make KEXEC depend on MMU to make this clear. If somebody wants to enable
> there will be probably more things to take care.
> 
> Signed-off-by: Michal Hocko <mhocko@suse.com>
> Reviewed-by: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 96dab76da3b3..59ce8943151f 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1906,6 +1906,7 @@ config KEXEC
>  	bool "Kexec system call (EXPERIMENTAL)"
>  	depends on (!SMP || PM_SLEEP_SMP)
>  	depends on !CPU_V7M
> +	depends on MMU
>  	select KEXEC_CORE
>  	help
>  	  kexec is a system call that implements the ability to shutdown your
> 

Vincenzo sent similar patch [1] some time ago. I prefer his patch since CPU_V7M already imply !MMU.

[1] https://lore.kernel.org/linux-arm-kernel/20200110123125.51092-1-vincenzo.frascino@arm.com/T/

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
