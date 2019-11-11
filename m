Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9CEF71D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 11:27:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY6Ndgr1YdSSgWrcU1m69ADrCk2gznUQxB3ljFt5O4I=; b=YojcRfm5mgoFmc
	hFlNyXb6BzFyBXUVBoAesCBrubJ4LpfqutfjNRYHT1DvP3EOW7EZikPSDvMl3uOEwOTBRkb5tfnED
	B3cVgfSgIDf1BG2LPkFjOUkHaXctCHHr19lZGZEe0wSkvdY6ojgvGS2TNdnGtWSV1mp2j+Kp7DvRd
	x3yJoEpgBrL8zw/IOEYF8upjpiVDNP7IcIGk7+5DG/RaupDCCwAi54lz7nUR/On1uh1eEMQIiCBQS
	7KKUOHrYEeTzSmC2R7G4fpLFQTYtJkdU6kqX+jBEqhxW5l1cAC/pnu6husUIqkAREFQeAlopfMwHQ
	OkD3kaNY8ZD+qSCEvLeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU6ui-000278-Tx; Mon, 11 Nov 2019 10:27:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6tf-00023u-1F
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 10:26:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 335BC214DB;
 Mon, 11 Nov 2019 10:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573467969;
 bh=2z8hwJsgg/ju8i4+eMGguE3rZCyoHUgwt0bw+ZYB8KM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=smvBKhhcHads27xPsXAticFXTQpqu1E/0aHowUyGC3JnKrDgqgeEkR7czO3TbqemG
 29V7Ppi88wdSIU+L06wHCS9JvtnwH8KxL+2J2ZVxE8SYvrHy0FIISOGAl5QYORsnVz
 GHVuztMhZkFiWVmjk6hnTnUAozhD9GcDfhSvl59c=
Date: Mon, 11 Nov 2019 10:26:03 +0000
From: Will Deacon <will@kernel.org>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] arm64: Kconfig: make CMDLINE_FORCE depend on CMDLINE
Message-ID: <20191111102603.GA8903@willie-the-truck>
References: <20191111085956.6158-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111085956.6158-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_022614_466786_D45D5F36 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:59:56AM +0100, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CMDLINE_FORCE gets enabled. Which forces the user to pass the
> full cmdline to CONFIG_CMDLINE="...".
> 
> Rework so that CONFIG_CMDLINE_FORCE gets set only if CONFIG_CMDLINE is
> set to something except an empty string.
> 
> Suggested-by: John Garry <john.garry@huawei.com>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 50df79d4aa3b..64764ca92fca 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1629,6 +1629,7 @@ config CMDLINE
>  
>  config CMDLINE_FORCE
>  	bool "Always use the default kernel command string"
> +	depends on CMDLINE != ""
>  	help
>  	  Always use the default kernel command string, even if the boot
>  	  loader passes other arguments to the kernel.

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
