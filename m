Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C74915A2F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pXE9QYo8/FKwbPetIiuHmEHuuSbPez8e8TzFRfcH+I=; b=PPRQZHCKo+mctF
	3QJcgcRfyvn9dbxVTzrW/ztw54GDQzPRIwFC4sMtMl7Psh35RS08/vw5G5Ws7ZnAkLH6BaGoNbUkh
	pQ4i65tI1raaf2pGjVsscRr94G/DMrm6EQbWdErjWMYLZy41hn4EL+ITHpMVAWmobztplwJhk04tF
	vE4XpOJC5xzZlkRTM2hYS1a2LUm6m+GYuQkqrLyrtX7YF6HFzOgN8LqJ110glB1Sxp7/EkFmNDNDk
	KpfXbzaKI4AkBYJ/bVlbKaPGTnxA6WglvQaaZ59v9iizafJYa/YstOXiJGdZuYBjTy6qCknLGHXD/
	Hc21cI9siHfm8jYoXdXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1n6n-0004ku-Kx; Wed, 12 Feb 2020 08:10:57 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1n6e-0004jz-5q
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 08:10:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id e8so655218plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 00:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9CFz1c+0fNvk1cgA4VQ08nCs0e3XAVZxLPN7eKmCEBM=;
 b=a78fnOoI0rTVtIC+JFO46RJEEvzyk/fZDQMjE9y10nP/lGnhNPun68nys1C7h7sbzk
 9YBllWzWVhWfw2cmPFaTCCuEV2nfKqqHQCBcgPwbdR32gh5Rnixt+ZE8Kk/XxwlP/Tit
 bl/k27WscBk03Fii24U/Bn3YlT2V9B3tz0ikYzU680Oazv8B4sclT71RuUREhif3K3vf
 wl6SdhFyrDnFS9cRBTbGj4OpS5TePB2QBg4hAyuBUB5TNUR8LjMSxs2Zb6p3g5WUMHLd
 jd4FEJslzVsOyMGwzCouKDatnTR4RRkaFi7ML0j89ElqbYAkkDLBhf41JrX+fTQaso6j
 996A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9CFz1c+0fNvk1cgA4VQ08nCs0e3XAVZxLPN7eKmCEBM=;
 b=jw+qQXq8R0lgi3DefWAGRNLtj+5XiqsV9atoY/NEXEMARVt3TqRzYjh6Z45mR4k9iz
 n4J8JBVYEw8u8IUDpHv4kuKlJEonMhbmPouN8Eqxxvf6BLajkvbrd66/YDs94xLmkIyL
 yzbg4QsvI9nyMhXK5iOHd4+kK1q/5Y9gbM/39tFxBJGfl5opOJQnCtOJvO18Q62DA5h4
 UdpBEG7uV5oBaqkaE+FuecFb6aWXC9+nUsf8ZhOUJs3RTC/fvWnD+8rgWBb3aXSetsDm
 FUt4vSH9bnvzV2UqLhwOt+2atkNNP+TrDBRwufXPN0Oc9ta/nECVAuFcAXf54yWI9ySt
 e0PQ==
X-Gm-Message-State: APjAAAVNC/Cz0hzlN7ZfmQR0KPLtI86xAYXKVn2/TAuPsu+1zZX/S1cD
 zOsX7PumnbGG+kFXJXdnGt6t1w==
X-Google-Smtp-Source: APXvYqyjZYunT9oVxh3t0N0o3M6twZ6cdJ5DdSo7JxfAcL/PWmMM8SOizyCNVMM6Jdwf3Wer2aaM7A==
X-Received: by 2002:a17:90b:14a:: with SMTP id
 em10mr8645460pjb.4.1581495047048; 
 Wed, 12 Feb 2020 00:10:47 -0800 (PST)
Received: from localhost ([122.167.210.63])
 by smtp.gmail.com with ESMTPSA id k8sm6926990pgg.18.2020.02.12.00.10.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Feb 2020 00:10:46 -0800 (PST)
Date: Wed, 12 Feb 2020 13:40:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH 02/18] ARM: replace setup_irq() by request_irq()
Message-ID: <20200212081044.lsw6to5kmzl22ywc@vireshk-i7>
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
 <da7d11b6cf808ea95e2d852a2e8cbca3fde28b6f.1581478324.git.afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da7d11b6cf808ea95e2d852a2e8cbca3fde28b6f.1581478324.git.afzal.mohd.ma@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_001048_230137_BD8E34AF 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Tony Lindgren <tony@atomide.com>,
 Kevin Hilman <khilman@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Lubomir Rintel <lkundrak@v3.sk>, Krzysztof Halasa <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, linux-kernel@vger.kernel.org,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12-02-20, 13:32, afzal mohammed wrote:
> request_irq() is preferred over setup_irq(). Existing callers of
> setup_irq() reached mostly via 'init_IRQ()' & 'time_init()', while
> memory allocators are ready by 'mm_init()'.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> Seldom remove_irq() usage has been observed coupled with setup_irq(),
> wherever that has been found, it too has been replaced by free_irq().
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> ---
>  arch/arm/mach-spear/time.c               |  9 ++-------
>
> diff --git a/arch/arm/mach-spear/time.c b/arch/arm/mach-spear/time.c
> index 289e036c9c30..92b2850eeb4f 100644
> --- a/arch/arm/mach-spear/time.c
> +++ b/arch/arm/mach-spear/time.c
> @@ -181,12 +181,6 @@ static irqreturn_t spear_timer_interrupt(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> -static struct irqaction spear_timer_irq = {
> -	.name = "timer",
> -	.flags = IRQF_TIMER,
> -	.handler = spear_timer_interrupt
> -};
> -
>  static void __init spear_clockevent_init(int irq)
>  {
>  	u32 tick_rate;
> @@ -201,7 +195,8 @@ static void __init spear_clockevent_init(int irq)
>  
>  	clockevents_config_and_register(&clkevt, tick_rate, 3, 0xfff0);
>  
> -	setup_irq(irq, &spear_timer_irq);
> +	if (request_irq(irq, spear_timer_interrupt, IRQF_TIMER, "timer", NULL))
> +		pr_err("request_irq() on %s failed\n", "timer");
>  }

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
