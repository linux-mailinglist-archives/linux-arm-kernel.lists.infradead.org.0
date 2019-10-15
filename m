Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00A3D713B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 10:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zbpUZTFZgAv9xA8RnboHp4x7BCLf0bjeC/MWwJMTieA=; b=bQ2Tlj/PsXdYaTqeQCzl9Q6Fj
	aVczi2Kk2qipZdw9kJX3YcRlzSfThveYMCsDB2kndHrbRN/qHDbUeIGJAgocFw/fXPQCzdC1jPkLq
	2OqTXoNAoTmxsGBPSAdxMNgZeXNF9gRpd4r8Ml2nZz+Qrf4qzkf6k9SU5x8EY76827ho1Xw8/k/1G
	sv9NXLDTrscCEqZQR9BUp1EtGXqdVZIdmKiLB3eWP+TeUVaWF0Km/wzBw3wLBkDSL8vthfebc37TZ
	CZvn3ispki48rmCeXH/CMwzoRzo4ZLbqUu4NwIbCkvJfnsWBEzUT52Ctuu0cFKdJ2TdtwIRhRxgiS
	E9HLWjQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKILd-0007vW-He; Tue, 15 Oct 2019 08:38:29 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKILU-0007v6-A2
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 08:38:21 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9B850CAF8BBCA47091DA;
 Tue, 15 Oct 2019 16:38:18 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 15 Oct 2019 16:38:10 +0800
Subject: Re: [PATCH 2/3] arm64: configs: unset CMDLINE_FORCE
To: Anders Roxell <anders.roxell@linaro.org>, <catalin.marinas@arm.com>,
 <will@kernel.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-4-anders.roxell@linaro.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <fc64ee58-8b21-1d3e-7e05-e0959f468f95@huawei.com>
Date: Tue, 15 Oct 2019 09:38:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190926193030.5843-4-anders.roxell@linaro.org>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_013820_504421_C3F5DBFD 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, "Guohanjun
 \(Hanjun Guo\)" <guohanjun@huawei.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/09/2019 20:30, Anders Roxell wrote:
> When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
> CONFIG_CMDLINE_FORCE gets enabled. Which forces the user to pass the
> full cmdline to CONFIG_CMDLINE="...".
>
> Rework so that we disable CONFIG_CMDLINE_FORCE in the defconfig file so
> we don't have to pass in the CONFIG_CMDLINE="..." when building an
> allmodconfig kernel. Since CONFIG_CMDLINE_FORCE is unset default, so
> when doing 'make savedefconfig' CONFIG_CMDLINE_FORCE will be dropped.
>
> Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 52a32b53b2ed..878f379d8d84 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -854,3 +854,4 @@ CONFIG_MAGIC_SYSRQ=y
>  CONFIG_DEBUG_KERNEL=y
>  # CONFIG_SCHED_DEBUG is not set
>  CONFIG_MEMTEST=y
> +# CONFIG_CMDLINE_FORCE is not set

This was my initial idea for an alternative Kconfig change:

--->8---

According to the comment for CMDLINE, we should at least have the root 
device defined. So if CMDLINE is "", then it can not be defined so 
disallow CMDLINE_FORCE in this scenario.

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b71ff0..6f3bff2f385e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1580,6 +1580,7 @@ config CMDLINE

  config CMDLINE_FORCE
         bool "Always use the default kernel command string"
+       depends on CMDLINE != ""
         help
           Always use the default kernel command string, even if the boot
           loader passes other arguments to the kernel.

>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
