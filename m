Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FDD6200E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEpHBp5kMQe8qIWC+PMj7PM1s2MYhqlps0YHlaqdlpU=; b=ROj1Zcnh6PWv8V
	6502g6OT4ZiIgkEP2LLdoiXHcvTRCfB5y4wZ52m/xMnCq+aGLsopOeej6dywrqlQGiI/WH19a1iyI
	hpC4j+vFDkVunTrD3eTxaOHYq38KslOXWtGLUdJAax8SCPDqtGcFWjVBE0DGUbXumilHPHLPT3i7X
	O5P+S/yaNNI/2m/FndR6IHPuYlZv3a5uzB4HCFK/L/gUqZgshHoxwzvu8XHnpkwbqkEuSFrjBgkXV
	0toThMt5mx9WtCvUzAXYqjKPHE2OseJJT9G+YeBkcXg3zf6gAUZpv5eGY4/QtsZDWVRSdPLmW+gDN
	/VvK0mOj+xHnuttzz9zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUIu-0007Sk-Mc; Mon, 08 Jul 2019 14:07:40 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUIi-0007S6-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:07:29 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so7739881pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Mts5yXroYfI0Wyr9A7s3Gq+YGagV18S7ZKDUSCh+Ia4=;
 b=Ar7KcqqvFoS0ThSHwovLDA9qQWM2EJH3qjIpyKl3b4YnedviunpO7IQp89bVPTPzBk
 P+x6YNfU5ljERwWpQQyXdbBjojZsOcJiP3H04LVHviza9gaRb642lZkAp/urelJg+I72
 Hx8P7Whuj18+wBXeysBAjp/aSXUklw0T295qs2lyX+tqmgRxNcShJOe0Dx4urKsesPdc
 61cW3j13D4Lmbj6YO9aiIZrXQw0GEKmnxz/eEDhRGtVrr7XRiyYVcPpwnGNUt34WLs6V
 MSP2AM0ftxnTtHXp2Vks02n7FExxBXfQdIGKUXeILgz/8okYpn3KCgdHZ/IF+HthdlvD
 fBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Mts5yXroYfI0Wyr9A7s3Gq+YGagV18S7ZKDUSCh+Ia4=;
 b=atqlsx41PbX771xNh9+DaRZ1JxCSrJ71/i3Z0PwNAQNgw3NjK9lSJKPglwEGCkgqxz
 C6y6yqD6nIQtyltP7tj9aFTVIH3+Gp9I8x6Yh5TyYD6G2OYFaENkUTkAVFAFJ9txSTgc
 9aGWIPJhFi+6YAHkEo5EO7AYg7Tff696qZ+VOlvVfHk7WtBzZJzNBT8xC8XclH072gnr
 tpfuCBQSYHyl0i7UUkp7lhkQgQTOlPA4YkMgHzvE23OUIFRmd1whiw1FswNe2h6y9oKf
 TRz/fUTuvmbfPSFUiz5H9Lw7yNIPLKMmF7z/sO414aFXjnz0uzufYsB9d1VdFI0V9Pf1
 28BQ==
X-Gm-Message-State: APjAAAVzHg1hHlO4iH8i6OufnLv+tt7BT5e+UhMeV7TdE4IiJGuU9w5p
 8qFThhCUReBMthv3MgtZiL53MA==
X-Google-Smtp-Source: APXvYqyOo/VR8k+Lrm9hsqwa/a1o/yTnfvlKDKvFiVcDf1Ab1otQGc7c6JYEVh/QTss3ainGobUAHw==
X-Received: by 2002:a63:5920:: with SMTP id n32mr9668843pgb.352.1562594845697; 
 Mon, 08 Jul 2019 07:07:25 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y133sm17699205pfb.28.2019.07.08.07.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jul 2019 07:07:24 -0700 (PDT)
Date: Mon, 8 Jul 2019 07:07:22 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] remoteproc: stm32: fix building without ARM SMCC
Message-ID: <20190708140722.GI1263@builder>
References: <20190708124311.3448056-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708124311.3448056-1-arnd@arndb.de>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_070728_338182_1953824B 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, linux-remoteproc@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 08 Jul 05:42 PDT 2019, Arnd Bergmann wrote:

> When compile testing this driver without SMCC support enabled,
> we get a link error:
> 
> drivers/remoteproc/stm32_rproc.o: In function `stm32_rproc_start':
> stm32_rproc.c:(.text+0x776): undefined reference to `__arm_smccc_smc'
> drivers/remoteproc/stm32_rproc.o: In function `stm32_rproc_stop':
> stm32_rproc.c:(.text+0x92c): undefined reference to `__arm_smccc_smc'
> 
> Make the actual call to arm_smccc_smc conditional on the Kconfig
> symbol controlling its implementation.
> 
> Fixes: 13140de09cc2 ("remoteproc: stm32: add an ST stm32_rproc driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thanks Arnd, applied

Regards,
Bjorn

> ---
>  drivers/remoteproc/stm32_rproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index e83077b9ebf5..e2da7198b65f 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -344,7 +344,7 @@ static int stm32_rproc_set_hold_boot(struct rproc *rproc, bool hold)
>  
>  	val = hold ? HOLD_BOOT : RELEASE_BOOT;
>  
> -	if (ddata->secured_soc) {
> +	if (IS_ENABLED(CONFIG_HAVE_ARM_SMCCC) && ddata->secured_soc) {
>  		arm_smccc_smc(STM32_SMC_RCC, STM32_SMC_REG_WRITE,
>  			      hold_boot.reg, val, 0, 0, 0, 0, &smc_res);
>  		err = smc_res.a0;
> -- 
> 2.20.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
