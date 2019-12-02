Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E565710EA12
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vXHu2v5/yBAaKk82b257Ut7u1X7UT9gjKcd1SmPICJE=; b=lNmzZS6YGBkJHoCf0KOewAFvK
	DQtU52t/4JssYv3y4+WZEnsDXYeQm/A/k79BiADMHb1a6s+stCMEy/8T3h5IGpxTcKWAIH8ZB5sSx
	KE4T62Tvx99NTWpQiD/VkB4TauEIvtFMHUETlNCdro1nWL8bhQcw+GZa3yYktNAo9kgNL8SXUymTY
	barR37IVqj2myP0S2TluQg4zQDiRmsoVqrFQlKMiCS+BgEzNDs5UeqxZC4hMrvsBXEbN3L94i9ZOk
	vVgiOiiAN/+NAND3kkVr0HKMXE42+rg1s9VmRUe+j+M9GEKaALuNkX/C2PfrERa+qiBB6OLUB9tfs
	ZtDSBbIdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibkqI-0001me-CJ; Mon, 02 Dec 2019 12:30:18 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibkqB-0001dl-MQ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:30:13 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ibkpz-0000HJ-ES; Mon, 02 Dec 2019 13:29:59 +0100
To: Daode Huang <huangdaode@hisilicon.com>
Subject: Re: [PATCH] irqchip/stm32: Fix "WARNING: invalid free of
 =?UTF-8?Q?devm=5F=20allocated?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 02 Dec 2019 12:29:59 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1574931880-168682-1-git-send-email-huangdaode@hisilicon.com>
References: <1574931880-168682-1-git-send-email-huangdaode@hisilicon.com>
Message-ID: <8acaa494701c91b8a8acd60a2390d810@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: huangdaode@hisilicon.com, tglx@linutronix.de,
 jason@lakedaemon.net, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 fabien.dessenne@st.com, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_043011_887442_78818268 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org, fabien.dessenne@st.com,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 09:04, Daode Huang wrote:
> Since devm_ allocated data can be automaitcally released, it's no
> need to free it apparently, just remove it.
>
> Fixes: cfbf9e497094 ("irqchip/stm32: Use a platform driver for
> stm32mp1-exti device")
> Signed-off-by: Daode Huang <huangdaode@hisilicon.com>
> ---
>  drivers/irqchip/irq-stm32-exti.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/irqchip/irq-stm32-exti.c
> b/drivers/irqchip/irq-stm32-exti.c
> index e00f2fa..46ec0af 100644
> --- a/drivers/irqchip/irq-stm32-exti.c
> +++ b/drivers/irqchip/irq-stm32-exti.c
> @@ -779,8 +779,6 @@ static int __init stm32_exti_init(const struct
> stm32_exti_drv_data *drv_data,
>  	irq_domain_remove(domain);
>  out_unmap:
>  	iounmap(host_data->base);
> -	kfree(host_data->chips_data);
> -	kfree(host_data);
>  	return ret;
>  }

Applied, thanks.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
