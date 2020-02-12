Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B8715B4A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgUJePItNgYWIcLH6OsJsrakLZlt51AQr9NPoqiLlfY=; b=tt/ojgNbp7FEUQ
	SswN+09CVAz3UL+lbvRt1K6VyvTBCvuf81nw5Z0aCv1ZqgGSzfYBNiuNKpmVdTijsszA2Heo2OYP6
	U62WXttaNCDxh2p3zAVdSUmpRRt2OBDoZXHlMAP+pOam+r3xZnqdv/oYZ5AzbcAYG2RaPWO5K3LId
	+oBGhgB2xP5JmOY9RqhwQ0ulLdmVrQqgtUftLilq2qt1FCyO+3PsM+kXpkiVwmJYxccT6AvRrjmY0
	EFHLE+YfMMvWfcYP+LeoaFRQrcD7RWysCVquAQARAJl+EiZhDQgRb/xGxwnACFXbUdQKfGYIN461E
	BQZE4icfdXWcNt8bzEdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21Pk-0008Ab-1I; Wed, 12 Feb 2020 23:27:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21Pd-0008AI-4N
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:27:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so4222800wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 15:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qWWr8Tj/x5Uxzxfr4XDatmqFLDK9WTySpZSm5Bv0Ekw=;
 b=L6IULQpe2FXdlwNT2BiPLqWq4HKawYV5jKJh49o0/jP5CDMlvCqZK22kL7aN1LDv1f
 hKnKN29sw2xQ9cpKhAhNHODtLuSVrxF98GiCI8yuByWFJkHjVo8NQDoxUaoIaNnywUTr
 u7COFa6iqbCTJrkneJKEzzJW+vHp1Aujis9A6v+zMDKgP1FG19mzCGkUMjaez9si8j/G
 C0+L63IO28L9orTsObc2mFInroI3Ebit6T+cgK6I1LnPHpdj+BzG9+6DRW4CB8uSKpEV
 Y2xAzXbYQ83NSp123ZJnRj3Fek0lPZywolgT1jcuINgkJIddUKRpWeCNESRM29F01VRs
 geGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qWWr8Tj/x5Uxzxfr4XDatmqFLDK9WTySpZSm5Bv0Ekw=;
 b=XZ2peV7oX1rFjQRScbWNtb/pXl5CXQMoAlnA4QaYPsusUL05yU+ZC/iCRMihcqjYvo
 ftK9HsIUWuShtY5OkJit6ufhl4dmrqcHUAsqt/tV+7as4/RRZ9RzIhho7SIE7iQWGc0G
 zX/UH+uXcpLZFUbyvMTkNqzbkh5N+NfkNC1K0HLPyT+BfCeNAVom+zyCze2+clltgOvP
 +0vFpNiASJ+EbBu5T1zjbHcnAC4ytVGFUN1xJjufNY2aMmgpTvx32kzatH9iJkkXQ6b6
 3e1IToPuHAZWuR1TCXyESx29m2bw9fbYcKWxnBqAIn2U//8U1AsWgbmdqvsvJ7Apz3c2
 3R+A==
X-Gm-Message-State: APjAAAU67LqfU0/7AvosLgc1SkIN5IWou85l2urhvTtkTyvfPKx0+D1N
 B4ToO4Q4hgPOfYxA1CZ11wU=
X-Google-Smtp-Source: APXvYqzXjjXmlvG1lFGKwcAfviSyTGoEOxWVrTe8hKiSJsLeartclcgGBa+dNMyFSFP9DmQFyIBtxw==
X-Received: by 2002:a05:600c:242:: with SMTP id 2mr1463304wmj.2.1581550038818; 
 Wed, 12 Feb 2020 15:27:18 -0800 (PST)
Received: from giga-mm ([62.68.27.198])
 by smtp.gmail.com with ESMTPSA id l6sm423504wmg.42.2020.02.12.15.27.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 15:27:17 -0800 (PST)
Date: Thu, 13 Feb 2020 00:27:16 +0100
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH 02/18] ARM: replace setup_irq() by request_irq()
Message-Id: <20200213002716.99258cfd73002fdd4bbd17d9@gmail.com>
In-Reply-To: <da7d11b6cf808ea95e2d852a2e8cbca3fde28b6f.1581478324.git.afzal.mohd.ma@gmail.com>
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
 <da7d11b6cf808ea95e2d852a2e8cbca3fde28b6f.1581478324.git.afzal.mohd.ma@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_152721_198663_CAB37462 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alexander.sverdlin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Enrico Weigelt <info@metux.net>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Lubomir Rintel <lkundrak@v3.sk>, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <vireshk@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Krzysztof Halasa <khalasa@piap.pl>, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Wed, 12 Feb 2020 13:32:43 +0530
afzal mohammed <afzal.mohd.ma@gmail.com> wrote:

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

For the EP93xx part:
Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

> diff --git a/arch/arm/mach-ep93xx/timer-ep93xx.c b/arch/arm/mach-ep93xx/timer-ep93xx.c
> index de998830f534..0335f3b93340 100644
> --- a/arch/arm/mach-ep93xx/timer-ep93xx.c
> +++ b/arch/arm/mach-ep93xx/timer-ep93xx.c
> @@ -117,13 +117,6 @@ static irqreturn_t ep93xx_timer_interrupt(int irq, void *dev_id)
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
>  	/* Enable and register clocksource and sched_clock on timer 4 */
> @@ -136,7 +129,10 @@ void __init ep93xx_timer_init(void)
>  			     EP93XX_TIMER4_RATE);
>  
>  	/* Set up clockevent on timer 3 */
> -	setup_irq(IRQ_EP93XX_TIMER3, &ep93xx_timer_irq);
> +	if (request_irq(IRQ_EP93XX_TIMER3, ep93xx_timer_interrupt,
> +			IRQF_TIMER | IRQF_IRQPOLL, "ep93xx timer",
> +			&ep93xx_clockevent))
> +		pr_err("request_irq() on %s failed\n", "ep93xx timer");
>  	clockevents_config_and_register(&ep93xx_clockevent,
>  					EP93XX_TIMER123_RATE,
>  					1,

-- 
Alexander Sverdlin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
