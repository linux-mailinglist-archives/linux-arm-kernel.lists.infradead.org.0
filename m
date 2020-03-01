Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83825174E6D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 17:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nk9IRRwRt/w5aMNMTf/IjccMIr/D6Z7LLPTrd2Oe5qs=; b=kty6kX6Bzz1l5EGyDMKdDOYibK
	YqI5sBU+SOEF2/rhMw8tTKV7iK6PaUkM58d6KfkzPXkWEjddTHz7K0UwYhVGwTCIrmCZx8mxnAsOL
	D2NVPiJWkWyQkspnldu5WsdvgrwLRo5MzNMkFI69Z9g5PWzONMDYASHSNOrfgwY/Uh82dAtkrQUEm
	dUhZxbpPYI5gTF9imSemP2NgYBJ1RN2ifJqfKOTcTeMFbnhicJOEgBxZI96AZvJcuu17tPsp4bJ/k
	GCqMCMdSVKL6W73eSmWkkBZnVW1OwhdsdI0kEM6tpLr107NKWsckW2+sEYwq4Ns7djtI1YYHDe15k
	EFZEtSRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ROU-0001ZC-NI; Sun, 01 Mar 2020 16:24:42 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ROP-0001Xt-1O
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 16:24:38 +0000
Received: by mail-wr1-f68.google.com with SMTP id r17so9405694wrj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 08:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=g1SEBumqJq81TxO2qvGmu7yktNeKNEfXhG8t+bNaQr8=;
 b=PtkZRttBCR04PMNO5fIPbIptvsEO9UA0BJTA9Nb3zzJ/HnoCIu48mqqoS8XFIH3pJ1
 PWve6+/kKCRXzM6flKzaUlyceejEQVorc7Pj4HpUVahWWAts4dKE9borqiE6Uu6RiBeV
 NnERxRbou1BJfXv8qUpx08uMspd9fSHwDYIqcInSGd2UqcZ7GElcf1raHdSW4Zs2wcHl
 9krnrs9ZHmmMmZQrCeKk2bpXqVtOh0IymcyfMDpSAL9fHY6N3un6GLKEuEtasmtWzzMO
 cDsFmRf4CNdfPd1iTNSADam5vgDSIcHzWW8b5CFzbOz3sn36MpBHM/cx8RK+o7NbKNdK
 oSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g1SEBumqJq81TxO2qvGmu7yktNeKNEfXhG8t+bNaQr8=;
 b=ILvEN/Ns4zT/u9+dxrfa0xh/t44EGlxiMzFl7dg4oFcqhg7CdX0/uWAwl4tRpNj5Sz
 BPi4rWlPdzFouxjJ8R6wIqnDojQZFwTRFOFm6E7jPR6UV60eWulquhhsKK+yAv4lR9Gv
 ArB41UYJzIifaWXTAZyVP+FXlMMcl3FpZKwPuWZjiuIj4XRhSEixBf/7UuIJ+t5QaPj4
 fxfbSiiCrb3zq1OgNdMINkBjMtGChCzo26610Ve5U6Zv0DxvrJV7JgrLgCFMVj/4NCFm
 vPkS3FlFvkO4sn1Few3ZAY6iHjR5Dzt4d3XJgpZAU1IrfIG53tXAyypWqsvzHssrr5cQ
 tntA==
X-Gm-Message-State: APjAAAXG+vPr8FobmUKeiuMoeBTYjf6AP13x6uI+WJquGjW3b0PQRXh5
 znpRxdV+sS5RNjZ38x7A2Ls=
X-Google-Smtp-Source: APXvYqxxiXUgX0QTdUl2mT9OwCWm1oSPN8TXXbwNQZdyVZb0SU4Z/z4oweEcgioUI7wOx8Q73UXm5g==
X-Received: by 2002:a5d:526c:: with SMTP id l12mr17906156wrc.117.1583079868088; 
 Sun, 01 Mar 2020 08:24:28 -0800 (PST)
Received: from [192.168.1.201] ([62.68.29.211])
 by smtp.gmail.com with ESMTPSA id d15sm19439521wrp.37.2020.03.01.08.24.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 08:24:27 -0800 (PST)
Subject: Re: [PATCH v3] ARM: ep93xx: Replace setup_irq() by request_irq()
To: afzal mohammed <afzal.mohd.ma@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
References: <20200301122112.3847-1-afzal.mohd.ma@gmail.com>
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Message-ID: <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
Date: Sun, 1 Mar 2020 17:21:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200301122112.3847-1-afzal.mohd.ma@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_082437_104567_52A33C62 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alexander.sverdlin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Afzal, Arnd,

as there is no dedicated tree for EP93xx, could you please
consider the below patch for your arm-soc tree?

On 01/03/2020 13:21, afzal mohammed wrote:
> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

> ---
> Hi sub-arch maintainers,
> 
> If the patch is okay, please take it thr' your tree.
> 
> Regards
> afzal
> 
> v3:
>  * Split out from series, also create subarch level patch as Thomas
> 	suggested to take it thr' respective maintainers
>  * Modify string displayed in case of error as suggested by Thomas
>  * Re-arrange code as required to improve readability
>  * Remove irrelevant parts from commit message & improve
>  
> v2:
>  * Replace pr_err("request_irq() on %s failed" by
>            pr_err("%s: request_irq() failed"
>  * Commit message massage
> 
>  arch/arm/mach-ep93xx/timer-ep93xx.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mach-ep93xx/timer-ep93xx.c b/arch/arm/mach-ep93xx/timer-ep93xx.c
> index de998830f534..dd4b164d1831 100644
> --- a/arch/arm/mach-ep93xx/timer-ep93xx.c
> +++ b/arch/arm/mach-ep93xx/timer-ep93xx.c
> @@ -117,15 +117,11 @@ static irqreturn_t ep93xx_timer_interrupt(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> -static struct irqaction ep93xx_timer_irq = {
> -	.name		= "ep93xx timer",
> -	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
> -	.handler	= ep93xx_timer_interrupt,
> -	.dev_id		= &ep93xx_clockevent,
> -};
> -
>  void __init ep93xx_timer_init(void)
>  {
> +	int irq = IRQ_EP93XX_TIMER3;
> +	unsigned long flags = IRQF_TIMER | IRQF_IRQPOLL;
> +
>  	/* Enable and register clocksource and sched_clock on timer 4 */
>  	writel(EP93XX_TIMER4_VALUE_HIGH_ENABLE,
>  	       EP93XX_TIMER4_VALUE_HIGH);
> @@ -136,7 +132,9 @@ void __init ep93xx_timer_init(void)
>  			     EP93XX_TIMER4_RATE);
>  
>  	/* Set up clockevent on timer 3 */
> -	setup_irq(IRQ_EP93XX_TIMER3, &ep93xx_timer_irq);
> +	if (request_irq(irq, ep93xx_timer_interrupt, flags, "ep93xx timer",
> +			&ep93xx_clockevent))
> +		pr_err("Failed to request irq %d (ep93xx timer)\n", irq);
>  	clockevents_config_and_register(&ep93xx_clockevent,
>  					EP93XX_TIMER123_RATE,
>  					1,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
