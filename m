Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AB3F2A44
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYR9KBq6WwWRjiAbPMTGvgkeoRsTOL2ofe99620AQJ8=; b=V4X2GNQnDYUcCj
	MV7qn4ByVwjTs/ItUkPsPq8g0NSs/l0KS19bBzdRaBr/0QxgImL/AGiSaekWEX8J0qhJZ0932qaHo
	ttOeLxCOLQKDGy5OGhZe1azXjDCBhpKgptTIrnDHPs/OUk9jrZ5OlClPUy2GK6lDhFBrHDhCFsBCN
	fjW25sViwBMvowSUW0rAVaW5GYa2YapKSAFJ9q+5jVzRaRs1gPsXzVF0TeAVtnX6vDfNhVmdd6//n
	s9SoWRZcRSqSzK1MiBTuLv6oU9nurzhofV+tYQF0UX/65j26Jrwnmo/NWoB/thp3thwuqjqMwrOz9
	spf8eAOKimwc8eHXQSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdnt-00064s-Dx; Thu, 07 Nov 2019 09:10:09 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdnc-00063j-IQ
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:09:54 +0000
Received: by mail-lf1-x143.google.com with SMTP id q28so998139lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 01:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AqA01GmNXxOIqmKayDqMHICE140SmncdgO3v076ZB7M=;
 b=e1rffzcB/YxOOOMnwqrZJesi/tvKRrsHLKDm7hBclx75Uy4vnec54LTKDCDmeGbxLX
 ywJtFeBABHA2JWtFfXuhIA9T6KoJLckldeSEgkzM41VFxRhmu5dFjDJeO/qdXvwz70bM
 xTG46dhWbhTkRBTnJYoYMt28eGJfDJKh9g6gUOX9VOuydasSdGVlhbdFstZqqEtihxeK
 g2GbliMhnxmK+23pDp5kaNzH3+35Wu2lzqresRNH8I4E4Rea6WeU4rcLDWjAt6E5WA9t
 ilO2/9YI/XjQkBVrJvI+6DEyjGMETc6hnU0RgK1PjZIE/2rdbL1mhuXTb+kWtBIHDXqd
 zmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AqA01GmNXxOIqmKayDqMHICE140SmncdgO3v076ZB7M=;
 b=KSHf3IeGGsq+CDUgikluA6OU4eC+ux7TMMLTg/ZXVH1gFUqIqBX/eu1cAbIR/aQ7AJ
 g/eR9CLurMBJMQhtmQZLUeVZE23EeuOBpEha/AsMXSuUK2k18VGQunNyEInNC2RZhoxx
 nYub9sB4brWDSLJebyHmka89KYEKucGY1BUevyJRhtXkg+P4j62bjuwQSyAVPgZfQb9l
 5mrfcgQb53vpBxoGvjeP7QlnoImQCxgbq+PxwLdrW2hLeZmBivsbXn3hyBx7n9GEDkMd
 nQQi6YgfbsJAygXOkqd57rFiSGSQl6dyHDcZa6dAoHNmg0mr7VerSnXP2Z1ybskgTnwB
 yrRA==
X-Gm-Message-State: APjAAAWGC1fQeKqdvAo/jiIbNglQGekOdzL2QxleQugRyEJrvUQOKmbv
 VesBt0BoFNdu7LOJ19DZYAV/eruE7jyMZ1+6BE4Gf8q3bE4=
X-Google-Smtp-Source: APXvYqxPdpHoDKQ+cbGzqAEy6IBEIt8P+sfO6dFt7eB3y8XbNYOaax86566DZUKRxXfZrrORDwfC5tpAMymbTbgGp38=
X-Received: by 2002:ac2:51dd:: with SMTP id u29mr1587920lfm.135.1573117790204; 
 Thu, 07 Nov 2019 01:09:50 -0800 (PST)
MIME-Version: 1.0
References: <20191104100908.10880-1-amelie.delaunay@st.com>
 <CACRpkdb1c-NHXDQXYS78VTcGPnJApmxjzZbF_cM8SUknhDiQ4Q@mail.gmail.com>
 <64f8096f-cec6-fef1-5a4e-ddca3bf8c73d@st.com>
In-Reply-To: <64f8096f-cec6-fef1-5a4e-ddca3bf8c73d@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 7 Nov 2019 10:09:38 +0100
Message-ID: <CACRpkdbK=aB84hW0FtuMBtzqi3ftKBxedXEpqmnJhbN_vJWx2Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: fix valid_mask init sequence
To: Amelie DELAUNAY <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_010952_610665_F47AE543 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 5, 2019 at 4:14 PM Amelie DELAUNAY <amelie.delaunay@st.com> wrote:
> On 11/5/19 3:32 PM, Linus Walleij wrote:
> > On Mon, Nov 4, 2019 at 11:09 AM Amelie Delaunay <amelie.delaunay@st.com>
> > wrote:
> >
> >> With stmfx_pinctrl_gpio_init_valid_mask callback, gpio_valid_mask was used
> >> to initialize gpiochip valid_mask for gpiolib. But gpio_valid_mask was not
> >> yet initialized. gpio_valid_mask required gpio-ranges to be registered,
> >> this is the case after gpiochip_add_data call. But init_valid_mask
> >> callback is also called under gpiochip_add_data. gpio_valid_mask
> >> initialization cannot be moved before gpiochip_add_data because
> >> gpio-ranges are not registered.
> >
> > Sorry but this doesn't add up, look at this call graph:
> >
> > gpiochip_add_data()
> >    gpiochip_add_data_with_key()
> >      gpiochip_alloc_valid_mask()
> >      of_gpiochip_add()
> >      of_gpiochip_add_pin_range()
> >      gpiochip_init_valid_mask()
> >
> > So the .initi_valid_mask() is clearly called *after*
> > of_gpiochip_add_pin_range() so this cannot be the real reason,
> > provided that the ranges come from the device tree. AFAICT that
> > is the case with the stmfx.
> >
> > Can you check and see if the problem is something else?
> >
>
> stmfx_pinctrl_gpio_init_valid_mask uses pctl->gpio_valid_mask to
> initialize gpiochip valid_mask.
>
> pctl->gpio_valid_mask is initialized in
> stmfx_pinctrl_gpio_function_enable depending on gpio ranges.
>
> stmfx_pinctrl_gpio_function_enable is called after gpiochip_add_data
> because it requires gpio ranges to be registered.
>
> So, in stmfx driver the call graph is
>
> stmfx_pinctrl_probe
>    gpiochip_add_data()
>      gpiochip_add_data_with_key()
>        gpiochip_alloc_valid_mask()
>        of_gpiochip_add()
>        of_gpiochip_add_pin_range()
>        gpiochip_init_valid_mask()
>          stmfx_pinctrl_gpio_init_valid_mask (but pctl->gpio_valid_mask
> is not yet initialized so gpiochip valid_mask is wrong)
>    stmfx_pinctrl_gpio_function_enable (pctl->gpio_valid_mask is going to
> be initialized thanks to gpio ranges)
>
> When consumer tries to take a pin (it is the case for the joystick on
> stm32mp157c-ev1), it gets the following issue:
> [    3.347391] irq: :soc:i2c@40013000:stmfx@42:stmfx-pin-controller
> didn't like hwirq-0x0 to VIRQ92 mapping (rc=-6)
> [    3.356418] irq: :soc:i2c@40013000:stmfx@42:stmfx-pin-controller
> didn't like hwirq-0x1 to VIRQ92 mapping (rc=-6)
> [    3.366512] irq: :soc:i2c@40013000:stmfx@42:stmfx-pin-controller
> didn't like hwirq-0x2 to VIRQ92 mapping (rc=-6)
> [    3.376671] irq: :soc:i2c@40013000:stmfx@42:stmfx-pin-controller
> didn't like hwirq-0x3 to VIRQ92 mapping (rc=-6)
> [    3.387169] irq: :soc:i2c@40013000:stmfx@42:stmfx-pin-controller
> didn't like hwirq-0x4 to VIRQ92 mapping (rc=-6)
> [    3.397065] gpio-keys joystick: Found button without gpio or irq
> [    3.403041] gpio-keys: probe of joystick failed with error -22
>
> I can reword the commit message to make it clearer.

No need I understand it now, thanks for explaining!

We need to populate the valid mask some other way if you
want to safeguard this, I don't know if the existing
gpio-reserved-ranges would work? But it feels a bit unsafe
if you actually determine this some other way.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
