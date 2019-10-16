Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9287FD8A24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DR2mihRWfmk/C1/dA8vr2MANdCIBELzBTLFi6D4pEqc=; b=NWhd2a2aXyZQ/T
	fcOM6MbSq9GidPNd4Ptbn0gVkGTLykE3xE80Ib76JVYyn954RB7wnmLaDOIkugM5ED9iPisUfJLIJ
	u5kwl4Ce7tTu4xELnNFMQ0ucI7+K7lZZ+cB0IJr2nwrS0e7F53P0DB6eRCKB5LOMBTKQtV+kE9LId
	1vMORCvnb3StObZPl/IBRSFBQ/DhKAGCodmzAATYq6Z7Dynoefi65MQfkG3pe+rZes/0BnHJ7zp0N
	kMpo0tCj3H0/C1u/K1wliJvHPDEPDoncEjXVcJfD/Xa5/BxFzdz70FHTGPUHk/3BnP6/GbKzbf9+i
	yuvhfO2IerAjVOpK79dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKe0q-0001ZU-Ck; Wed, 16 Oct 2019 07:46:28 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKe0f-0001YR-73
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:46:19 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 9015F5C2224;
 Wed, 16 Oct 2019 09:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1571211970;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=24LCcIRDu1mOgkMkgGbPXpwZUoN/vIELrMh+T/KtHRI=;
 b=y76gKMwRvWz3dUVPz5sfzwIrm2IoRP/QsBdk95pM2mzHN+u6A1RB6KiE/5ks5VUitgYDsm
 U1WdMT0OUhCpGuBkCkKbXerYUbMLXN9S6ijIK3o7VURhVfs57STDY+8EB9vBWT7Z8sJwtZ
 KrJcikDXTkE63QmPw6oOQ2X0oLL7fhg=
MIME-Version: 1.0
Date: Wed, 16 Oct 2019 09:46:10 +0200
From: Stefan Agner <stefan@agner.ch>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 3/6] drivers: firmware: psci: Register with kernel restart
 handler
In-Reply-To: <20191015145147.1106247-4-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
 <20191015145147.1106247-4-thierry.reding@gmail.com>
Message-ID: <e354a51deb667269744d6f415c711297@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_004617_551489_7C5AECFC 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-15 16:51, Thierry Reding wrote:
> From: Guenter Roeck <linux@roeck-us.net>
> 
> Register with kernel restart handler instead of setting arm_pm_restart
> directly. This enables support for replacing the PSCI restart handler
> with a different handler if necessary for a specific board.
> 
> Select a priority of 129 to indicate a higher than default priority, but
> keep it as low as possible since PSCI reset is known to fail on some
> boards.
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Looks good to me! And helps also in my case, a board which has a broken
PSCI reset capability.

Reviewed-by: Stefan Agner <stefan.agner@toradex.com>

--
Stefan

> ---
>  drivers/firmware/psci/psci.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> index 84f4ff351c62..a41c6ba043a2 100644
> --- a/drivers/firmware/psci/psci.c
> +++ b/drivers/firmware/psci/psci.c
> @@ -250,7 +250,8 @@ static int get_set_conduit_method(struct device_node *np)
>  	return 0;
>  }
>  
> -static void psci_sys_reset(enum reboot_mode reboot_mode, const char *cmd)
> +static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
> +			  void *data)
>  {
>  	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
>  	    psci_system_reset2_supported) {
> @@ -263,8 +264,15 @@ static void psci_sys_reset(enum reboot_mode
> reboot_mode, const char *cmd)
>  	} else {
>  		invoke_psci_fn(PSCI_0_2_FN_SYSTEM_RESET, 0, 0, 0);
>  	}
> +
> +	return NOTIFY_DONE;
>  }
>  
> +static struct notifier_block psci_sys_reset_nb = {
> +	.notifier_call = psci_sys_reset,
> +	.priority = 129,
> +};
> +
>  static void psci_sys_poweroff(void)
>  {
>  	invoke_psci_fn(PSCI_0_2_FN_SYSTEM_OFF, 0, 0, 0);
> @@ -431,7 +439,7 @@ static void __init psci_0_2_set_functions(void)
>  
>  	psci_ops.migrate_info_type = psci_migrate_info_type;
>  
> -	arm_pm_restart = psci_sys_reset;
> +	register_restart_handler(&psci_sys_reset_nb);
>  
>  	pm_power_off = psci_sys_poweroff;
>  }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
