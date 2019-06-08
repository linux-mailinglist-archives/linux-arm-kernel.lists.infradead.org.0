Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBB93A043
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 16:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqfX+iRrOiPNg40nd7NvHZkVamx75VK02sS/pA6YQ5Y=; b=THJI0IrLlimijg
	teyjzYh1qWXzSXuMBFmrtfSiJQGbHD2n8aAU/pjWuEO+c3G2ZEymS5f/jLOp1T6v9kltME78awgXB
	brqEDNUdmw7sxtuMq8WGuORnImN52Gt6t4HWikwlkxjTlIKi5NvCx/GcT19tY+wk/HbYvWxKgtffx
	Y13eTdht+45zItDK8FXnFODfCMdaMuGNqdxM2OqM4S9aQLACldl1sjZdtQRgWKGTlFlA2gzbPZ2Z/
	4KRtV925TVuO5/RUsTl9hPn1ZucBtXBPU+ilYOhIpPuEThQV/7X9mM/CZYtV1gnPO4xK0aRZ+/Fsx
	5e6BdSZBdYGTfIIw2ryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZcEh-0003D1-RM; Sat, 08 Jun 2019 14:22:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZcEY-0003Br-E5
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 14:22:15 +0000
Received: by mail-lf1-x142.google.com with SMTP id r15so3665246lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 07:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIUAKPG6L/Uk7RNnahoThkSWUC4nrgmZui5o+1IQtNk=;
 b=a8zCjMPgP8flEe8AX4DYltakrbTeXlf4HJdUBQFer/b0IPJPCfVav33LROaOIvkRBh
 d/ezKZe+qMrAcg+2zaULmB+dIX8setyM8Dw/amQKtBtuGvpqfUZdtCABo4QaT5ZFUGGd
 fksqElAG9w2gwbE6Q6S46627rrHHqLiRDCA8eScKkVkurpN9O6Dge+avOCJxW9CwIBjE
 vWmpOGwdimteMBWpy3R6+1wtE1HyS9jIIsl6y+9pjv6itruHNG55mTSg6Qzlisw2u1sl
 d/rKG06wFYR5828vG892iuyGTPq8CV75uQK3Cx8ndRZlvQhTZTCv/wvDzZyIGlw+oOwZ
 bmxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIUAKPG6L/Uk7RNnahoThkSWUC4nrgmZui5o+1IQtNk=;
 b=uGoDeM7Uw38bDRuK/Y74zPgE9vK9+Tz5asQ0gD9KRiPwgidkxIjAgD7nYTmyZi2ybT
 9DOipXN8B2k6YXa7sFlxCCzFXD9vLkISoxnrgTppCpXSRKnnrrkFhsF70PjNl/7rX41t
 VBGfdNuUS/3gQp9UTs6KOlHg/FO952oQ9naByUSA9BJqvIDXUmXSob+ic5ZXWtVfiuXK
 rJiI6DJHfgYZNnJA8n7kNxMA8kXdmI/cWkfcgBbTEI3PP/Lf10O4mD+gHlWmqrF1+kUG
 ANNecW7UhqxQWnu3m62SoDIL9+Ht4Tmsd50ZtYcCR5yatSBewYSIWXKcB7V39UMED1ns
 97Dg==
X-Gm-Message-State: APjAAAXPFYfJ/czYFSqWakHxHoyevi8JprDCYNxRySA3YuAYSzLEx6SS
 MDVGRFHJYZjSJkN+tHOtlUGXv13G69AhynFyNbx0Mg==
X-Google-Smtp-Source: APXvYqx2MoGtkoQjUm5Wa5IOCM/k/orM6EKwAwZG7AXIo8rcqREn8WTPkR2Fc2Pbt++tRSEdz7xZS6GOynFOOaZSLRQ=
X-Received: by 2002:ac2:598d:: with SMTP id w13mr28511822lfn.165.1560003730786; 
 Sat, 08 Jun 2019 07:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190607082901.6491-1-lee.jones@linaro.org>
 <20190607082901.6491-3-lee.jones@linaro.org>
 <CAKv+Gu-1QhX-9aNhFJauc9NVe6ceQQueE8Kd14031XJ-2yaupA@mail.gmail.com>
In-Reply-To: <CAKv+Gu-1QhX-9aNhFJauc9NVe6ceQQueE8Kd14031XJ-2yaupA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 16:22:03 +0200
Message-ID: <CACRpkdZmBe6ucmekLUNkypDKx=eAXqtwdYNpZzwByzuWb-sjDA@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_072214_484582_6D037B95 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 1:10 PM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
> On Fri, 7 Jun 2019 at 10:29, Lee Jones <lee.jones@linaro.org> wrote:
> >
> > When booting MSM based platforms with Device Tree or some ACPI
> > implementations, it is possible to provide a list of reserved pins
> > via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> > However some ACPI tables are not populated with this information,
> > thus it has to come from a knowledgable device driver instead.
> >
> > Here we provide the MSM common driver with additional support to
> > parse this informtion and correctly populate the widely used
> > 'valid_mask'.
> >
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
>
> I'm not sure if this is the correct approach. Presumably, on ACPI
> systems, all the pinctl stuff is already set up by the firmware, and
> so we shouldn't touch *any* pins unless they have been requested
> explicitly. Is there any way we can support this in the current
> framework?

I don't suppose anything but the GPIO portions of the pinctrl
driver is ever used under ACPI. I guess in an ideal ACPI world
noone (like userspace) would ever use a GPIO because ACPI
would have all GPIOs assigned a particular purpose, so accessing
any of them would lead to a crash.

But in practice it seems a lot of GPIOs are available and used
for example by userspace hacks, so just blacklisting the ones
that cannot be accessed by the GPIO subsystem seems like
a viable compromise.

Then we have the ACPI paradigm of pin control being controlled
by ACPI: this is also great in theory, but it seems like the ACPI
firmware has in cases forgot or omitted to implement some of
it and people need to access it anyways. The people writing the
default firmware cannot think out or test all usecases, so some
will be left open-ended to non-firmware authoring users. This is why
drivers/pinctrl/intel/* exists despite being for exclusively
ACPI platforms. Being able to control pins also from the kernel
has become a viable compromise.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
