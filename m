Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C81F425D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7htfD0GlF3zrUinxW1LRDHQlDaaytsBZr+xKTnNtiI=; b=DNaE6keMFmGF6g
	94iz0WLL/UpNhgLH4tgyMN9aXEXsJsxEpy0z4+/FHB+asjXTNLMGEWHbk8leu9UgLd6Tv243buRxC
	L92mUEwgXlAdC+FlK0Fb8mIKTGGlga2xey0o/uNvvRO7bNk/eWSWgDSeWSeLKnRXDeUonXdTDV8ru
	lrzH0j+Eb9Mkrt/8SRjhnNk8wS7WeV/Ovlj7dE8lx2509G+lH0an+04IHuuL0DYjpo8AwbDZTEElI
	t8AIuLlvGNko1fjgje3uzgo9aw54b+UuOnAYNDsVfnTvln6fu1Ga3/4uPYMj6NrkhY/eR7FzkJBVs
	ZC2nGNIJ8Woq1qVrh6QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2R7-0003EB-7H; Wed, 12 Jun 2019 12:33:05 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2Qy-0003D5-QZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:32:58 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so11967926lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 05:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RY94QzNQiSIY9OS6+U4U7Y5OtGWNMofbaKCtbejPZUo=;
 b=Gv4E4rBN3zXJMLR8rQaTB6Aq7wKMK+v30MeCaaYbUhvKZKSNXbISiVB1bxMqmXJHC6
 2xvdtmuC6gHizZEBoF/ZQ7Z089ktc4qL2tfqceiki04D0m8ek46ye21HR3nDMcoZy92b
 H+a5kSMnMZxv4D1gZ1us+OYM1zJPD6vlnkS0MGuWicXNrymcaHKEQOsLWfHnoq52H8I9
 +iBEheJo9VOdgvPF45EOBBsjWxiLYHC+N+qbPDLy4DOFxuf2KM6+yYtuunfrqNLcLgCU
 5l+KFD1tXu6y9BjDPLhTvOMwwXWY90YscmemdlcBztcTEctNvDIHlMaVoAG25CMDys/9
 lZ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RY94QzNQiSIY9OS6+U4U7Y5OtGWNMofbaKCtbejPZUo=;
 b=jHRp3X+KT186ebNuy1I1Ol8PITp2R0fGB4LpfFbhbWYyrD5v8YqADjNxI8HzNDUo6P
 WmC8+/ueJmROCbUtfeDWEWzHCNn+4CKPai976qrMScCn4kFueNilDs3mk9H8xbtsOE7B
 q8C3N9KSHPuXLRGoWxkLXkHbI26stvCyiA8kiuOzRkVvIey3E/1Cf4+TYM3TbnivcJsI
 /sZK/R3dsFH6/TzDrfyYFqA9doc1qPvOWwTSG0FqYQYDoDKCK2EpJg8rKqsgYOo1zwSJ
 pKU0aZ9eptgaKtcxEpidYM0lqIeHk/fGYxzCVgBP+xS9h8JRkvqHEom38iJBWpsbItiG
 hGgA==
X-Gm-Message-State: APjAAAU7YchWkdKGoabYmzAsf29bnESQftOs+OyU+NpHe13j818UNjGB
 C8Xc+DNJuhT2nIyt927QBudtHyEdnwnOJkkmSeMrYZRt
X-Google-Smtp-Source: APXvYqziASDeIuDoNfT01AzUpb/Ihc11W5Iyq6Kl+XFlWwVNcjQGPwFkVZ5ya615zk2hSyIw7lfpZQ5Rn3VQtdnXGfs=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr39417835lfu.141.1560342775269; 
 Wed, 12 Jun 2019 05:32:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190612063352.5760-1-tony@atomide.com>
In-Reply-To: <20190612063352.5760-1-tony@atomide.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2019 14:32:43 +0200
Message-ID: <CACRpkdam8pMztF9=yL2rWGFqjUnURf5x=v40x7UKVEwXwZ5anA@mail.gmail.com>
Subject: Re: [PATCHv3] gpio: gpio-omap: Fix lost edge wake-up interrupts
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_053256_870254_17EF5C28 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tero Kristo <t-kristo@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Keerthy <j-keerthy@ti.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 8:34 AM Tony Lindgren <tony@atomide.com> wrote:

> If an edge interrupt triggers while entering idle just before we save
> GPIO datain register to saved_datain, the triggered GPIO will not be
> noticed on wake-up. This is because the saved_datain and GPIO datain
> are the same on wake-up in omap_gpio_unidle(). Let's fix this by
> ignoring any pending edge interrupts for saved_datain.
>
> This issue affects only idle states where the GPIO module internal
> wake-up path is operational. For deeper idle states where the GPIO
> module gets powered off, Linux generic wakeirqs must be used for
> the padconf wake-up events with pinctrl-single driver. For examples,
> please see "interrupts-extended" dts usage in many drivers.
>
> This issue can be somewhat easily reproduced by pinging an idle system
> with smsc911x Ethernet interface configured IRQ_TYPE_EDGE_FALLING. At
> some point the smsc911x interrupts will just stop triggering. Also if
> WLCORE WLAN is used with EDGE interrupt like it's documentation specifies,
> we can see lost interrupts without this patch.
>
> Note that in the long run we may be able to cancel entering idle by
> returning an error in gpio_omap_cpu_notifier() on pending interrupts.
> But let's fix the bug first.
>
> Also note that because of the recent clean-up efforts this patch does
> not apply directly to older kernels. This does fix a long term issue
> though, and can be backported as needed.
>
> Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
> Cc: Grygorii Strashko <grygorii.strashko@ti.com>
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Ladislav Michl <ladis@linux-mips.org>
> Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Cc: Russell King <rmk+kernel@armlinux.org.uk>
> Cc: Tero Kristo <t-kristo@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Patch applied.

Let's see if this nails it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
