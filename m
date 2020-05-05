Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D461C4F51
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qpa6s3FicZCUi//H4Vwvosbi9lY4V8rnEMkpGtd9X9Q=; b=YcdGEfZueUsvrel6g8sYA1RAy
	A7nhELy6zGoKe5ZwsYTD7XLoQtYX2AY7XjvbmQ3Wu4MKbVkxxjZOX13Dpp3x/bbD913dGQDxTTcLy
	UY51TNwB4Ibj0NR5iRHEuXGi0Kg0yzFrf58IsMPj9WQG7DeOdSfgeFkLwB6W4CcmbMl5nHhaXIKYy
	xxpC3bFREJdCi2HlIKYko23i7m0oA73kWhh7R37P0bZsfjJ1kJ3EqA1nnzhpkIkv0DH6bkA+E0Jhi
	8PK2v+bzwPSOWZtVps1sVudbCvEdjPswEb3M8FgGxJ7i6lzPdLxXF/IjDFsIg6pq3wdjAvIfryHzk
	MqYBAGQ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsDg-000333-Ii; Tue, 05 May 2020 07:42:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsDX-00032Y-Ax
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:42:17 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0457fXYN053122;
 Tue, 5 May 2020 02:41:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588664493;
 bh=5+dp6RLTEj93jx9dNpRmpnl9JtYwHK1LZnJ66toJp/E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ZEsHPnH1bzJFzQC58PuxJpVCzoIse5QbT12+4ecTrFjWMHTI/FYQcZf0NfyTSTxRo
 QXa2Fhgj3MXlmmvHg9AUKkvLNJUdAIZW/AAWEk7KMmO5h3k2gTEzvSO4v/r/NkDkJZ
 nR9c8a9OfbGNleDuAMhzi9XuVusWXmhUTj672bU8=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0457fXDD038640;
 Tue, 5 May 2020 02:41:33 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 02:41:33 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 02:41:33 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0457fRTh011688;
 Tue, 5 May 2020 02:41:27 -0500
Subject: Re: [PATCH v2] net: ethernet: ti: Remove TI_CPTS_MOD workaround
To: Clay McClure <clay@daemons.net>
References: <CAK8P3a1m-zmiTx0_KJb-9PTW0iK+Zkh10gKsaBzge0OJALBFmQ@mail.gmail.com>
 <20200504165711.5621-1-clay@daemons.net>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <f07c695b-5537-41bf-e4f8-0d8012532f64@ti.com>
Date: Tue, 5 May 2020 10:41:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504165711.5621-1-clay@daemons.net>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_004215_522845_FB479409 
X-CRM114-Status: GOOD (  33.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tony Lindgren <tony@atomide.com>, kbuild test robot <lkp@intel.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Richard Cochran <richardcochran@gmail.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Andrew Jeffery <andrew@aj.id.au>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, netdev@vger.kernel.org, "David S.
 Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 04/05/2020 19:57, Clay McClure wrote:
> My recent commit b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
> exposes a missing dependency in defconfigs that select TI_CPTS without
> selecting PTP_1588_CLOCK, leading to linker errors of the form:
> 
> drivers/net/ethernet/ti/cpsw.o: in function `cpsw_ndo_stop':
> cpsw.c:(.text+0x680): undefined reference to `cpts_unregister'
> drivers/net/ethernet/ti/cpsw.o: in function `cpsw_remove':
> cpsw.c:(.text+0x81c): undefined reference to `cpts_release'
> drivers/net/ethernet/ti/cpsw.o: in function `cpsw_rx_handler':
> cpsw.c:(.text+0x1324): undefined reference to `cpts_rx_timestamp'
> drivers/net/ethernet/ti/cpsw.o: in function `cpsw_ndo_open':
> cpsw.c:(.text+0x15ec): undefined reference to `cpts_register'
> drivers/net/ethernet/ti/cpsw.o: in function `cpsw_probe':
> cpsw.c:(.text+0x2468): undefined reference to `cpts_release'
> 
> That's because TI_CPTS_MOD (which is the symbol gating the _compilation_
> of cpts.c) now depends on PTP_1588_CLOCK, and so is not enabled in these
> configurations, but TI_CPTS (which is the symbol gating _calls_ to the
> cpts functions) _is_ enabled. So we end up compiling calls to functions
> that don't exist, resulting in the linker errors.
> 
> The reason we have two symbols (TI_CPTS and TI_CPTS_MOD) for the same
> driver is due to commit be9ca0d33c85 ("cpsw/netcp: work around reverse
> cpts dependency"), which introduced TI_CPTS_MOD because (quoting the
> commit message):
> 
>> The dependency is reversed: cpsw and netcp call into cpts,
>> but cpts depends on the other two in Kconfig. This can lead
>> to cpts being a loadable module and its callers built-in:
>>
>> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_remove':
>> cpsw.c:(.text.cpsw_remove+0xd0): undefined reference to `cpts_release'
>> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_rx_handler':
>> cpsw.c:(.text.cpsw_rx_handler+0x2dc): undefined reference to `cpts_rx_timestamp'
>> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_tx_handler':
>> cpsw.c:(.text.cpsw_tx_handler+0x7c): undefined reference to `cpts_tx_timestamp'
>> drivers/net/ethernet/ti/cpsw.o: In function `cpsw_ndo_stop':
> 
> Both forms of linker error -- those caused by defconfigs that select
> TI_CPTS without PTP_1588_CLOCK and those caused by configuring TI_CPSW
> as a built-in and TI_CPTS as a module -- can be avoided by using the
> IS_REACHABLE() macro to gate calls to cpts functions, and using the
> TI_CPTS symbol to gate compilation of cpts.c. cpts.h already provides
> the no-op stub implementations of the cpts functions required to make
> this work, we just need to change the existing IS_ENABLED(TI_CPTS)
> guards to IS_REACHABLE(TI_CPTS).
> 
> With this change there is no longer any need for the TI_CPTS_MOD symbol,
> so we can remove it.
> 
> To preserve the existing behavior of defconfigs that select TI_CPTS, we
> must also select PTP_1588_CLOCK so that the dependency is satisfied.
> 
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Grygorii Strashko <grygorii.strashko@ti.com>
> Fixes: b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")

It's better if you send v2 not as reply to v1.

just to clarify. After these two patches
  - the PTP_1588_CLOCK can still be set to "M"
  - which will cause TI_CPTS to be "M",
  - but TI_CPSW will still be "Y".

and all above will build and produce built-in CPSW without CPTS support
and cpts.ko which is loadable, but not functional.

Sorry, I'm a little bit lost regarding the target you'are trying to achieve.
At least previously "imply PTP_1588_CLOCK" allowed to select properly PTP_1588_CLOCK
without modifying every defconfig.

> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Clay McClure <clay@daemons.net>
> ---
> Changes in v2:
> 
> - Don't regenerate the defconfigs, just add PTP_1588_CLOCK.
> 
>   arch/arm/configs/keystone_defconfig    |  1 +
>   arch/arm/configs/omap2plus_defconfig   |  1 +
>   drivers/net/ethernet/ti/Kconfig        | 13 ++++---------
>   drivers/net/ethernet/ti/Makefile       |  2 +-
>   drivers/net/ethernet/ti/cpsw_ethtool.c |  2 +-
>   drivers/net/ethernet/ti/cpts.h         |  3 +--
>   drivers/net/ethernet/ti/netcp_ethss.c  | 10 +++++-----
>   7 files changed, 14 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
> index 11e2211f9007..84a3b055f253 100644
> --- a/arch/arm/configs/keystone_defconfig
> +++ b/arch/arm/configs/keystone_defconfig
> @@ -147,6 +147,7 @@ CONFIG_I2C_DAVINCI=y
>   CONFIG_SPI=y
>   CONFIG_SPI_DAVINCI=y
>   CONFIG_SPI_SPIDEV=y
> +CONFIG_PTP_1588_CLOCK=y
>   CONFIG_PINCTRL_SINGLE=y
>   CONFIG_GPIOLIB=y
>   CONFIG_GPIO_SYSFS=y
> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
> index 3cc3ca5fa027..8b83d4a5d309 100644
> --- a/arch/arm/configs/omap2plus_defconfig
> +++ b/arch/arm/configs/omap2plus_defconfig
> @@ -274,6 +274,7 @@ CONFIG_SPI_TI_QSPI=m
>   CONFIG_HSI=m
>   CONFIG_OMAP_SSI=m
>   CONFIG_SSI_PROTOCOL=m
> +CONFIG_PTP_1588_CLOCK=y
>   CONFIG_PINCTRL_SINGLE=y
>   CONFIG_DEBUG_GPIO=y
>   CONFIG_GPIO_SYSFS=y
> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> index 8e348780efb6..f3f8bb724294 100644
> --- a/drivers/net/ethernet/ti/Kconfig
> +++ b/drivers/net/ethernet/ti/Kconfig
> @@ -77,23 +77,18 @@ config TI_CPSW_SWITCHDEV
>   	  will be called cpsw_new.
>   
>   config TI_CPTS
> -	bool "TI Common Platform Time Sync (CPTS) Support"
> +	tristate "TI Common Platform Time Sync (CPTS) Support"
>   	depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
>   	depends on COMMON_CLK
> -	depends on POSIX_TIMERS
> +	depends on PTP_1588_CLOCK

> +	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y

even with above statement it's possible to force TI_CPTS="M" while CPSW/NETCP="Y"

> +	default m

I could be mistaken by above 2 lines seems can be 'imply TI_CPTS'
in TI_CPSW, TI_KEYSTONE_NETCP, TI_CPSW_SWITCHDEV

>   	---help---
>   	  This driver supports the Common Platform Time Sync unit of
>   	  the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
>   	  The unit can time stamp PTP UDP/IPv4 and Layer 2 packets, and the
>   	  driver offers a PTP Hardware Clock.
>   
> -config TI_CPTS_MOD
> -	tristate
> -	depends on TI_CPTS
> -	depends on PTP_1588_CLOCK
> -	default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
> -	default m

and this prevented user from forcing TI_CPTS="M" while CPSW/NETCP="Y"

> -
>   config TI_K3_AM65_CPSW_NUSS
>   	tristate "TI K3 AM654x/J721E CPSW Ethernet driver"
>   	depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
> diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
> index 53792190e9c2..cb26a9d21869 100644

Below small diff should fix build fail:
diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
index 8e348780efb6..eeaee47598aa 100644
--- a/drivers/net/ethernet/ti/Kconfig
+++ b/drivers/net/ethernet/ti/Kconfig
@@ -81,6 +81,7 @@ config TI_CPTS
         depends on TI_CPSW || TI_KEYSTONE_NETCP || TI_CPSW_SWITCHDEV || COMPILE_TEST
         depends on COMMON_CLK
         depends on POSIX_TIMERS
+       depends on PTP_1588_CLOCK
         ---help---
           This driver supports the Common Platform Time Sync unit of
           the CPSW Ethernet Switch and Keystone 2 1g/10g Switch Subsystem.
@@ -90,7 +91,6 @@ config TI_CPTS
  config TI_CPTS_MOD
         tristate
         depends on TI_CPTS
-       depends on PTP_1588_CLOCK
         default y if TI_CPSW=y || TI_KEYSTONE_NETCP=y || TI_CPSW_SWITCHDEV=y
         default m

Then separate patch can be used to enable PTP_1588_CLOCK in defconfigs.

My personal opinion - it might be better to revert TI CPTS part from
b6d49cab44b5 ("net: Make PTP-specific drivers depend on PTP_1588_CLOCK")
at all.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
