Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AFA173876
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 14:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CIrpA5WJATGFupePruXHslUB4RNQ0fN4gRljeYo04q8=; b=NzxUtsNU1YMukB1H3d54NzDzhA
	L3iiZdT2XJoMBUnzjDYqSMDaVw0mkFfmmzjbKYbvkKd0xGW9q2PbgqutKDw8mnPo8ZqxuqxcG3PW0
	fPwpej9G7L6IEmGAQQ/hfvUNkN77ygrOhB8d5vapxImiEWip19SfJqFD4PUEBFz8Pp0TgWM33lWWY
	xIMLNmoiyFP45bhQCURejQViCes1RIbUp01Mz03tfODTF4BOpBEukzysB4o2/n0okRk4kyRnowvwB
	ursQmEZPO50xBjfyIpQmeSJg3AX/3GwjyLmIKKi0dvXWEr/jlkDX+HNLCg1FKETqfF5LXDWYYBOp8
	8OPEoQYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7foi-0002Vd-SA; Fri, 28 Feb 2020 13:36:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7foX-0002V2-Ig
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 13:36:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id e18so3318611ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 05:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=PjM/hgtHoBl4bAsCN0fGLfc9vPVEJId2LvZd0bmIOgA=;
 b=E42FALkmg1oBEFwoYmeIruDHjHIKf/NO6bpK/7HrnSvryt/yPnlecSSXqn5DbjUdVD
 YbR0Aokkm6IPrDD5kZUpSLi0itMwFw2H7P6Wk8faWhMDpAK+i8NDFSee0ieykpgt2oJh
 f+kJbqwuGJbkYVZP7WcRt1/w6c06DzJdxeIpGdqIChOBEpVeHcYverU/76U8cVUMz4WH
 GUgEkfSQviucZK4fNg7QwhalRWhNwnfO3LNGbXRgpPomsPs59GGIifjPVUjMezlpUj+s
 L3jEML8ZKr+OR1xA/rt4qL3yxwCpephnA8evJUuvobIpytMTz4GEHqei0e4kyX9lEJjk
 gnAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=PjM/hgtHoBl4bAsCN0fGLfc9vPVEJId2LvZd0bmIOgA=;
 b=WIc3JQehiRQgA9guiIY5KodLq49qM09QQpIj2ZwKp+VDag4I1MJimbPTJc/N8g4TGT
 nB2z5415azGyNLo2qZfx1vQU4Cck4IBcCIQomeo6hUBNrnoDLViZB7OWxdYETPvrtVsA
 CkiGs2MWhvwTi+Ms5bpJJwZO0FZk3EYPyOiID6Os3kSEusHcIpdHfub43Lnt5OlB9iLZ
 /8Hab761EOCfDVqaYRBSjc6CrQ4IMBY4Aoy6u0CBcM3+iyviMJl2rPFYoyytPVwhAwi/
 8cMrYElSxokJ979JLUsUIMiOTznkpnChWqDDJSmumJyH0kATPkVakDjoPzj0EeRMCtOo
 S9LQ==
X-Gm-Message-State: ANhLgQ12csfAX9paqNUpEEpVeQyGks63paMS7kNozWD9vSTwRp9zA80m
 LgGt9BwkMfg0BxMhJHbGo7kGVcNiIqEw/wFSn+BWrw==
X-Google-Smtp-Source: ADFU+vvyMbtXQ3rc+nEgLFFbcAtBPxVC3Z9S8tNB5OL+ChmPdvbPhfhkAdeT2OSGW2pLgWvfYmxjrzmchhIn1KUdCiw=
X-Received: by 2002:a05:651c:2049:: with SMTP id
 t9mr2739165ljo.39.1582896982829; 
 Fri, 28 Feb 2020 05:36:22 -0800 (PST)
MIME-Version: 1.0
References: <CAMiSF3BULWkyWTytTBcFfch9YaV_QzuBiawk-ZqEcQnsuGdUiQ@mail.gmail.com>
 <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
In-Reply-To: <20200228123910.hbf2bnk3w2dbishr@M43218.corp.atmel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2020 14:36:11 +0100
Message-ID: <CACRpkdYKemE6+OkWOWqOAqzaVEDNE9id+P_XRFaNzWs8N6c7mw@mail.gmail.com>
Subject: Re: GPIOs not correctly exported via sysfs on ATSAMA5D2
To: Romain Izard <romain.izard.pro@gmail.com>, 
 Linux GPIO List <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Russell King <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_053625_653124_193E0F76 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 1:39 PM Ludovic Desroches
<ludovic.desroches@microchip.com> wrote:

> The AT91 PIO4 pinctrl driver doesn't implement gpio_request_enable()
> contrary to the AT91 PIO pinctrl driver. If we implement it, then you
> would be able to change the pin muxing and configuration from the sysfs.
> The issue is nothing prevent you do this and so to possibly break a
> device.
>
> There is the strict pinmux_ops property which prevents from this
> situation. The side effect is that we must not declare a pinmux/conf for
> a GPIO so all the DT files have to been updated. That's not a big deal,
> the problem is, at that time, the GPIO subsystem didn't allow to set the
> bias for instance. It may have changed but not sure it covers all the
> possible configurations we have from the pinmuxing subsystem.

Yes and Russell also points very clearly to the root of the problem:

- Some pin multiplexers are non-strict meaning a line can be used
  for say GPIO and something else (such as SDIO) at the same time.
  Usually this is an observation from electronics, such that the GPIO
  input register will always report the logical state on the line whether
  it is in "gpio mode" or something else, making it possible to snoop
  the line, or, as in the I2C case, it is perfectly fine to, without glitches,
  pull the line out of other use cases and into the GPIO realm and do
  GPIO things such as bus recovery actively driving the line despite
  it being connected in the mux to SDIO or I2C at the same time.

- At the same time some system designers and driver authors are
  driven by the ambition to create a system that is simple, has no
  exceptions and has a clear separation of concerns, making it
  impossible for the user - even a kernel developer or real savvy
  hacker playing around with the deprecated sysfs ABI - to shoot
  themselves in the foot. These are ambitious and admirable people
  that want to protect their users and make it easy to do the right
  thing. So they sort everything out and flag their pin multiplexers
  as "strict", allowing only one use case at the time: this device is
  either I2C or SDIO.

Personally I am not flagging any of my drivers strict because I'm
just a pragmatist and don't use the system architect type of reasoning
much in what I do. But it is admittedly a matter of taste. The flag
"strict" tells you something about the driver author's values and
ambition.

If we get to cases where the user is getting hurt by the strictness
rather than enjoying the protection it provides, such as being unable
to do I2C recovery, it may be reasonable to drop the strict setting
and just fail the ambition to separate the concerns, as clearly the
system architecture wasn't perfect in the first place, and trying to
be strict in the mux is going to be a bit like polishing dirt.

This case however looks a bit like tinkering, bring-up and hacking,
and as such it might be expected that the user hack around a bit
and recompile the kernel and device tree etc?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
