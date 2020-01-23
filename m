Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3E0146C8D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 16:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnEV47Y8ZTqjbr56GlRFZ/qBlLeWSdaZ5KGF0L2P1yc=; b=tLsK2383uKVzXu
	4TEVeE/NejRqWbkHhNuFByy94IptSSkVuz5EgW/cuFJzlytBwLjVhfWP/b11Ce2T7286svxb5/VgE
	V5qxn3V+96IdHTBY3KYnGMsLqp+f3HmrpyjYXJKSKuJywt+NptWDmBCn6OxMvr4PVYU2ckJfuwe5H
	8WU8V4SyWMCCH8e7Yy8wgeeuIjMVCc1v6tEj7Dd33QwdT8elRPr7gCAhBCO1wXokvQnAQEBozTU32
	a1cNKAY5e1ZHG5RUFw4Bw0Yoi3oNpAHRzsUbTtPN2T3UJJ2D7vDMkv7lChvtCc45XVvnYNS0DcKMx
	ze/SPRlT6u82oLl34aLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iueLD-0006eL-L2; Thu, 23 Jan 2020 15:24:19 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueL3-0006e2-OZ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 15:24:11 +0000
Received: by mail-lj1-x243.google.com with SMTP id m26so3833167ljc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 07:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YS28IkYfT1QFy7GhpXoibq41R7nu8maYUQPSLN0N4us=;
 b=WQTr/ToOWOR9V68uit12qpk0scUkvESE8RKneAm4F/VIAjnXzOnWP/LPAPRfM1xcJq
 KjrfhqKzthyq/EqdIp8e5jscflme39pqF/blc4sgUByB89Bz80YlloWxTj6QJhRoK7H9
 m8R+3Garitah3KUajGYzTpxWnoGv7gN9evtVsR2AelTohB/ZC97m7yIPjZY45psqwOe1
 bIKF+X0wwzllCwgHvhvtAWIphC+BOIA4Y29IQNuoK97XP+RHfGuVS1w9cvSW/TMaFJeu
 TCveiSjVCHRdxnU0gNSF57gjbguGD1d4icSpCmEKsRHcUjz8+buwusjKhyU02Mh0X/ZD
 M6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YS28IkYfT1QFy7GhpXoibq41R7nu8maYUQPSLN0N4us=;
 b=O7kNoW2C66+lq3xEUteBFHIQQEzdjGNbfbqXkeuGn9UnsmlknP9WG8XP9Gl8aAuWE7
 grUO/12FSu0qa4PL/h+ToeGCKSA/rnVclzA//L3Qc6kOEjBJ9/S30oCIquarM799oLhM
 yCCZoPYbJZEBljXTuBlJDojH2XbX/rn6OovEQt5LKNRAbkSAqC+A1KOFEQChM+f5tZlW
 ynRQiJuF+wrpEPa1OBIJ+a9WTIXAakzXgmINV6Q8CUeBrM+L295Wo8lWaFxb9b9X8NPz
 5vLikRyRMejHKpx6IudiAZKz2tifUEKq129sW/TKxA3ZlofxncqoC8iXNrOHz7ZZee9K
 0mDQ==
X-Gm-Message-State: APjAAAWzybWzHWHVEIbRKupiCNypQXijbXEVPHIor9yq3KjpOLtvYeex
 SfUSPhiKlA7x1g+dkgi8dhyhZKjLhT+zZSTuIPrOhQ==
X-Google-Smtp-Source: APXvYqwrXJwYjYLeef+dxlE7haTHbhm0V+RYI6iARxQRBJIDGPmbhPsY4/XwhxzvPf3nBUwKFsUesSi1cE7y2jKvh44=
X-Received: by 2002:a2e:960f:: with SMTP id v15mr23753839ljh.265.1579793044651; 
 Thu, 23 Jan 2020 07:24:04 -0800 (PST)
MIME-Version: 1.0
References: <202001210210.Abjd7Hni%lkp@intel.com>
 <5332083498380e8cc461e618f024782b@kernel.org>
In-Reply-To: <5332083498380e8cc461e618f024782b@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 23 Jan 2020 16:23:53 +0100
Message-ID: <CACRpkdZAbsk_XnyYJevHUkEzwYQ+6TUru9wFeEfCicowb0urEQ@mail.gmail.com>
Subject: Re: [arm-platforms:irq/irqchip-next 5/28]
 drivers/gpio/gpio-sifive.c:83:2:
 error: implicit declaration of function 'irq_chip_enable_parent'; did you
 mean 'gpiochip_enable_irq'?
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_072409_803794_A1B3C31C 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "Wesley W. Terpstra" <wesley@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Yash Shah <yash.shah@sifive.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 8:09 PM Marc Zyngier <maz@kernel.org> wrote:

> Yash,
(...)
> This is how I'm planning to fix this (at least for the time
> being, as I don't want to break -next at this stage).
(...)
>   config GPIO_SIFIVE
>          bool "SiFive GPIO support"
> -       depends on OF_GPIO
> +       depends on OF_GPIO && IRQ_DOMAIN_HIERARCHY

I would simply:

select IRQ_DOMAIN_HIERARCHY

Either way:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
