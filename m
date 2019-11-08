Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62498F4CF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCyBQmKEQpibocCsACvriZcX8MiYoLnWMgsigJDHfPM=; b=tvvl8IlBX3T9oD
	+QQLSJOY2Gh2VT0H0wPEbAegIOxYO2s8n+8Igc9gr3rA9ZMF9J0QuW43F320nYRMGKfh1yACWWrl1
	aufYB8CN4j1ZBUYB3ICTkQZ08RK5TAG7c1Uj7qR/TeZpZwZdJitzOCBJkVJz6Dmz6bLQ+DgYTvvwh
	fDYnMWVDhAjLmURDsVlTIGewk3uNlarMrTEta8Qf/t0b/Ub//UeAnsoQBTGrtOw+mC+JdzCbAddYC
	+BQo/QQfToBTqR4+GHHUu+3eSjXaCZ4JI97WyCngOYC6yLXjWmAdUzfjBSV/qB2FIf6ZoZSYAZ1C0
	15/4gOSgj7WnFyac4SDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT48x-0004Wf-IN; Fri, 08 Nov 2019 13:17:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3vg-0006Bm-Hu
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:03:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id q130so6167688wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:03:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RD3rCfuQNE2f6lJThi4WImY0CO33DjtVpBFoOhDzKvA=;
 b=bRgco/j6fJMrPrbhgZZvBs1Cx7s60pHxKUupeQ9oSiAO+j59MSXWl5ZycYmUdl4N+n
 LBzf56vqaExjhUDzR7jxVXOldV7wJbk+AuIiSZSLxp5JfP32Cd1DbPVl3V7S4GUEJEnP
 13G+dqk59eT7kGI4uHyXESl+fEq/UyX9sD45Z8DvOazsg5sJBGbhUjeDkqWA+gvOmpFG
 RYRfaoSjM93UVhHNudlSXaYwMW4I5+ICRg+hPm9efN2S4a7lbMEVD+lDu2JbOk8pIprH
 rt0r4IXHPz/l4pDogHC2pDCaN4phRztbjYx/BvT3ecuoATtLB3lw1yFgaBFPT8d6fv4h
 1tzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RD3rCfuQNE2f6lJThi4WImY0CO33DjtVpBFoOhDzKvA=;
 b=rvASXSMo45/KVTPqT9eufEIngw4FjXm1gVMp42YY/C5UtZjg+uhsOryI2DgPbdwP9t
 EN23yG6B9M/o04ohHL3+/CxqwRlySGYEAnzZoPOUk2ELbTQitnUQDgPsgxsrTu7V2FaW
 dGTu2VomYx7IrlPUiKzUFXHdd1nzKIiZlhBizeIHrcRJ+XMyPpvts7d7NNbcMGaZf68R
 CohydN8g27amqxf3HMMFH1bScJ8DaNTmLGd02kPaYUvKKjGEA6a5NHIaamSRQXhHNkv1
 CJek6RkNzKMPWhhK4LKljTGqozcsZaOew5+uib3FUYWev+jaSdfV3PWmVPN6mY8/FQkE
 Tmpw==
X-Gm-Message-State: APjAAAVvJ67RSnGZ4Fna2nZEo7UijqhHhGKAUqOJ6t1JLU7i218oMAhD
 hRNCGqZGXuWxQfbQ2hd323AHS9j9jdQ3AYVFZfukaw==
X-Google-Smtp-Source: APXvYqwVxXQ7j7sjMh42No+5ULXztDWEexSCaMNrkoPLsNQPovd1PYbjQHTIWgODnj/ocS5b09k5EQx7FekbMjHu+v4=
X-Received: by 2002:a1c:64d6:: with SMTP id y205mr7605417wmb.136.1573218233883; 
 Fri, 08 Nov 2019 05:03:53 -0800 (PST)
MIME-Version: 1.0
References: <20191106141954.30657-1-rth@twiddle.net>
 <20191106141954.30657-2-rth@twiddle.net>
 <CAKv+Gu8pb5pBFBg0wGoORmaS6yzmoX7L45LLnhuZhqw4JX7d+w@mail.gmail.com>
 <23ce309b-1561-ed95-7ce7-463a991bd19b@linaro.org>
In-Reply-To: <23ce309b-1561-ed95-7ce7-463a991bd19b@linaro.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 8 Nov 2019 14:03:42 +0100
Message-ID: <CAKv+Gu-03HLED79e+V2D5BtSjRwHH7=rnUWyqZ7dBBD-s7RowQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Richard Henderson <richard.henderson@linaro.org>,
 Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_050356_622145_10AACD85 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 Nov 2019 at 12:10, Richard Henderson
<richard.henderson@linaro.org> wrote:
>
> On 11/6/19 10:30 PM, Ard Biesheuvel wrote:
> > On Wed, 6 Nov 2019 at 15:20, Richard Henderson
> > <richard.henderson@linaro.org> wrote:
> >> +static inline bool has_random(void)
> >> +{
> >> +       /*
> >> +        * We "have" RNG if either
> >> +        * (1) every cpu in the system has RNG, or
> >> +        * (2) in a non-preemptable context, current cpu has RNG.
> >> +        * Case 1 is the expected case when RNG is deployed, but
> >> +        * case 2 is present as a backup in case some big/little
> >> +        * system only has RNG on big cpus, we can still add entropy
> >> +        * from the interrupt handler of the big cpus.
> >
> > I don't understand the reference to the interrupt handler here.
>
> To add_interrupt_randomness(), invoked by handle_irq_event_percpu().
> Better if I reword the above to include the function name?
>

This is one of the several places where arch_random_get_seed_long() is
called, so if you are going to single it out like that, it does make
sense to clarify that.

> > It is
> > worth mentioning though that this arrangement permits
> > rand_initialize() to use the instructions regardless of whether they
> > are implemented only by the boot CPU or by all of them.
>
> Yes, I'll include that.
>
>
> r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
