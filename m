Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7F4102C81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 20:24:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqKmkZsDn2XlPzGhjNDUMYxBCMKbtSSl2SNxN8YLfNI=; b=PvfIGqlKCdQVd4
	eLZPPxdTqI4PfUR+7yBgWZOEmfrn0ZJ8NnAX/8S7K2nAjIS6qR599e9B3PPphyWjlgSpNhthfkE9j
	kZQEk8stReZ53j7N7hL6Dl0I1JCQbPZNA5lU63owfX0lSNkvTxR48Uy71porMN3bRS2SRGv+BeWFb
	iZrYcFMstxu2zqMRb00EXM2cKUyrRJODQaSsG0jSdRtvt+LLNhJqLBlnkz+8yX2tUOEfEPVCTSHUB
	SUYLjpvVH4K1dVO/VyOJv6yfc4lqpNZQTqw6Mv6GkCwDRWEhFlrvylA2MgpUNp9IWkodXRvpO5ZcL
	iCYv6Sb1QsjWXGHlHWCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX96d-0008QD-Ld; Tue, 19 Nov 2019 19:24:07 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX96V-0008Pf-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 19:24:01 +0000
Received: by mail-il1-x141.google.com with SMTP id r9so20760030ilq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 11:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RGKgQse+2zUETzuSKeTXkxYveXEDP29hamdnsp7R+og=;
 b=askECuY0sKnY6JfRE4vAAnKLB2f4sNcJJn4qK56kpboEru7RyEaznULE/diumVBWf3
 94BAfH9cxodgWl5SPs/UXCDOv20oKK103kT3eT5bgrrw3ez6FwYaavgpPI/vc6TjC4OG
 FO5dHcrurVAPNrA08y5CAigbpJZWyEjl9/8RseoXSvG5SlWxOLlDvRdvK85gVsq8+DiE
 /r5179jawy5FyTTIHuVgVJ1N6RfDA8eHiio8F6cl2L8hpapw9FIPQ/TMKS/zBDfOUR1V
 siZkNYQFRqIH3IpLLedEcWIWNP86hSbMBQv82yLpAqBUEIJuzpmCvcSWrFSnvbTbLR5A
 GVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RGKgQse+2zUETzuSKeTXkxYveXEDP29hamdnsp7R+og=;
 b=gpFXCeFyS0UDzlSRnofrrpN/mlb4dROnfUMp7pUOpVaEjn/O/+nR7dgI/8X5abQMhF
 iJeeXD7qLxucrKlI7fC1k/BF+i2McGMi2/nZlKD8JWhc0PPj4lCVK5Yg0tbujPj5t7Cy
 bvg5IMoUZBe9ehLkj8I/NEAm+3kPDiUuzJGGJXJQ95EXTqRq/mePFCbGfutJf9NJeQh2
 wmAVAP4fEQGyZW1vaEF0s6DL0ZNKBCY489dEOon7YwAZkKrJjfaQcPwpEDBVXp0D1Lvl
 VdfitB026ZFnCNWtykuhf1Hp53qAXQlBDbfbkmEHlvTKPNz8NQuXqqeA5k0bjRp9QoNJ
 MJHA==
X-Gm-Message-State: APjAAAUsucTzVRgvbqLDoLykN0tmsdU8IpXKLI1JIY4Lbz3pkfPobjSU
 mcbbzRL2LTdv1xiI1Gu+RpwSsqBxuYwkOFmxgS0=
X-Google-Smtp-Source: APXvYqzMsNLsNuLKQmGz5QLYw9GktP5TMss2pRqr/nZWt/EJC32YhROao6A0Ug/SVqayHkUIopAAcYKVM52leyBae88=
X-Received: by 2002:a92:b60e:: with SMTP id s14mr23833543ili.178.1574191438270; 
 Tue, 19 Nov 2019 11:23:58 -0800 (PST)
MIME-Version: 1.0
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
 <20191119105814.GZ25745@shell.armlinux.org.uk>
 <9356da2a-2190-03fd-f5cc-6a0fd8c38e89@free.fr>
 <20191119191958.GP36595@minitux>
In-Reply-To: <20191119191958.GP36595@minitux>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 19 Nov 2019 12:23:47 -0700
Message-ID: <CAOCk7NoHnFA73GPsvG1=0TCkE9+Hmdm41FVnDyMsunWrVa5xZg@mail.gmail.com>
Subject: Re: Using a GPIO as an interrupt line
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_112359_565391_30630835 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 GPIO <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:20 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Tue 19 Nov 03:46 PST 2019, Marc Gonzalez wrote:
>
> > On 19/11/2019 11:58, Russell King - ARM Linux admin wrote:
> >
> > > On Tue, Nov 19, 2019 at 11:46:21AM +0100, Marc Gonzalez wrote:
> > >
> > >> On 19/11/2019 10:57, Russell King - ARM Linux admin wrote:
> > >>
> > >>> On Tue, Nov 19, 2019 at 10:28:15AM +0100, Marc Gonzalez wrote:
> > >>>
> > >>>> The board I'm working on provides a TCA9539 I/O expander.
> > >>>> Or, as the datasheet(*) calls it, a "Low Voltage 16-Bit I2C and
> > >>>> SMBus Low-Power I/O Expander with Interrupt Output, Reset Pin,
> > >>>> and Configuration Registers"
> > >>>>
> > >>>> (*) http://www.ti.com/lit/ds/symlink/tca9539.pdf
> > >>>>
> > >>>> The binding is documented in Documentation/devicetree/bindings/gpio/gpio-pca953x.txt
> > >>>>
> > >>>> I have some doubts about the interrupt output, described as:
> > >>>>
> > >>>> Optional properties:
> > >>>>  - interrupts: interrupt specifier for the device's interrupt output.
> > >>>>
> > >>>> In my board's DT, the I/O expander is described as:
> > >>>>
> > >>>>  exp1: gpio@74 {
> > >>>>          compatible = "ti,tca9539";
> > >>>>          reg = <0x74>;
> > >>>>          gpio-controller;
> > >>>>          #gpio-cells = <2>;
> > >>>>          reset-gpios = <&tlmm 96 GPIO_ACTIVE_LOW>;
> > >>>>          pinctrl-names = "default";
> > >>>>          pinctrl-0 = <&top_exp_rst>;
> > >>>>          interrupt-parent = <&tlmm>;
> > >>>>          interrupts = <42 IRQ_TYPE_LEVEL_HIGH>;
> > >>
> > >> As pointed out by ukleinek on IRC, I might have (??) specified the wrong
> > >> trigger type. The data-sheet states:
> > >> "The TCA9539 open-drain interrupt (INTn) output is activated when any input state
> > >> differs from its corresponding Input Port register state, and is used to indicate
> > >> to the system master that an input state has changed."
> > >> (The data sheet speaks of "INT with a line on top"; what is the typical way to
> > >> write that in ASCII? I was told that adding a trailing 'n' or 'b' was common.)
> > >
> > > /INT or nINT are commonly used - I've never heard or seen 'b' (which is
> > > commonly used as a suffix on binary numbers) or a trailing 'n'.
> >
> > Perhaps the 'b' suffix is only used in French...
> > 'b' might stand for "barre" (i.e. the line above the symbol).
> >
> >
> > > Is pin 42 something that can be muxed?  If so, it seems sane to specify
> > > configuration for it.  Whether it needs to be a GPIO or whether it has
> > > a specific "interrupt" function mux state depends on the SoC.
> >
> > According to drivers/pinctrl/qcom/pinctrl-msm8998.c
> > PINGROUP(42, EAST, blsp_spi6, blsp_uart3_b, blsp_uim3_b, _, qdss, _, _, _, _)
> >
> > I don't think there is an explicit "interrupt" function in
> > this pinctrl driver... except FUNCTION(ssc_irq).
> >
>
> No there's no "interrupt" function, the function to be used is "gpio",
> which will ensure that the irq logic is available. But in a modern
> kernel we're implicitly selecting the "gpio" function if you're
> requesting an interrupt. So you shouldn't need to specify this even.
>
> > static const char * const ssc_irq_groups[] = {
> >       "gpio58", "gpio59", "gpio60", "gpio61", "gpio62", "gpio63", "gpio78",
> >       "gpio79", "gpio80", "gpio117", "gpio118", "gpio119", "gpio120",
> >       "gpio121", "gpio122", "gpio123", "gpio124", "gpio125",
> > };
> >
> > @Bjorn, do you know what these are used for?
> >
>
> The "ssc" would imply that it relates to the secure coprocessor somehow.

Are you sure?  "SSC" is the short hand for the sensor subsystem in the
documentation I see.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
