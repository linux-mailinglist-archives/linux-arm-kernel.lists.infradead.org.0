Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C57BC32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+0VpCU+KqrGC0ypsRZfoNtGdHRP35SlItAfu+8tuSg=; b=DCkzjJ/iqeh1XL
	j1GpahNl8SKKL7WMx/TfVhEnhPm3PwPLAk88yf39RzOpwK64v2Gqeap7HrUtUBKDSyb+yrzDuJGgI
	aIYUF65ULn0cXuLUWkGmVQt8Pxyo+vIMSwfe44RmMkMul6JG14crzc6COn+RQUuRRvBPDlQuNBo5n
	liItRrm8OcZmfqBqMNfxqYSZgCHa46ZohC1MrEwutNo/rv227mRkplJKnPRCzFYtLJSjxgDDRou6L
	+5nQlz0O3ThWEsFznyh+sXReTN4JPv9cIOmtZBqy8mzEtvWJbrwTqIOskd8mTA1CMMZiHX4rfltiE
	FHr5ez6yt5cRx/8XnaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskIH-00023Y-EY; Wed, 31 Jul 2019 08:49:09 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskI0-00022v-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:48:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so64781438ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/Y5/a+hjKSrMZ7uq3J4Hb4S+VgtKiADjqX3OK2TxV6k=;
 b=vJw9t0XPC3MeZlAnehKSdJOcgp9ZgdUXrhX7C7wAncTIE1/MrMYeJ1cqQm86kTKUZm
 Y1cdho7sibgJCafzHj+NDsvXTlQLPTlEYf/OSqd8Ft62OCUjInTXPQJ8K0LwcLsfK/3l
 KcGXAaYF90UyN8NKGslsicYHcC15gvAWPHkZwFC3hUxmFH7nVN3iRyAYTYhglPRIPCk1
 zBeqKg8WOEeW9bfUFlnTRfn6+WjoGK4P48N3fu2Lr8Y1cGaeWs8mQcFot9HLyysN5YMV
 Qttk9Yzd9fXQxFWnGj04zZGtUlwfPp90uxwxLya3oHC0mm6NQlUCePl/iAlkfT8tvyac
 lkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/Y5/a+hjKSrMZ7uq3J4Hb4S+VgtKiADjqX3OK2TxV6k=;
 b=uObcEMz4JpKzdsM+rbL00QYxAAPN2XIjNN4afEV9pw0k39de/TBf+VHBtUNS8KfvIF
 1ggck7mUG1GNKejOrUh8ZTJGNluznLouI9fAlmIAuz+wbBuFOAgJbz5SHJjbNhfJJcxM
 59gspIGFTn9t8gJXLbdE6nVRcD5Rf3MTFbDLmzqMz+RANkXA1yb0NOx2TCUEOQnxfhiy
 Lgx54yDNcIJWF8b03z1MCcMNo795YtaTB1/comahIzYLF+jpxdx57hBfqhsETeJh4Wwl
 mZ5LwYl/bYk55/oTIApn2L/X6vcNhpWosRwkIbAXZoOh6nv4rTGOGPfdq0NpC1F/TBEu
 +4rQ==
X-Gm-Message-State: APjAAAW6nmExlCDReYiJ07uOu2PxrI23u69NdqmEnfF2sOlbuG+D8bs+
 Bn32Grrs3Z35k/+xeNtYGOrRSrDvKi3hWpUD25t3LQ==
X-Google-Smtp-Source: APXvYqxSdTwkXMo6zzG/ClImzcA5UlnlUrCDnal0zmpam1TWy4d0Nm6wwSTyZ/ks40SaGUeA2ieTs2jhlaqpcX1pXp8=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr16588626ljh.69.1564562930288; 
 Wed, 31 Jul 2019 01:48:50 -0700 (PDT)
MIME-Version: 1.0
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
In-Reply-To: <20190730134115.GE4264@sirena.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 31 Jul 2019 10:48:38 +0200
Message-ID: <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>, 
 Stephen Boyd <swboyd@chromium.org>, Timur Tabi <timur@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014852_921073_49C599B6 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 3:41 PM Mark Brown <broonie@kernel.org> wrote:

> Today's -next fails to boot on QDF2400 systems:

Is this a devicetree or ACPI system? Which devicetree in that case?
If it is ACPI I assume one had to look into DSDTs?

But I looked into this!

> 08:56:36.026587  [    4.339966] pc : __memset+0x80/0x188
> 08:56:36.026867  [    4.343524] lr : msm_gpio_init_valid_mask+0x134/0x1a4

Aha. I think this only worked out of chance before.

What the Qualcomm driver does is exploit that .init_valid_mask() gets called
even if .need_valid_mask in gpio_chip is not set to true,
and this is why the bug appears in
msm_gpio_init_valid_mask(), I'm pretty much sure it is the
bitmap_zero(chip->valid_mask, max_gpios);
call towards the end of the function that gets turned
into:
08:56:36.114798  [    4.433713]  __memset+0x80/0x188

And this causes the crash.

This is then because chip->valid_mask has not been allocated, and that
is because .need_valid_mask is not set. This is set like so:

static bool msm_gpio_needs_valid_mask(struct msm_pinctrl *pctrl)
{
    if (pctrl->soc->reserved_gpios)
        return true;

    return device_property_read_u16_array(pctrl->dev, "gpios", NULL, 0) > 0;
}

First comes from the driver, second is for ACPI I think. It looks
like a bit dangerous way to do it for ACPI, what if an OF pin controller
has some "gpios" property? Oh well.

Apparently this only happens on ACPI systems because I tested it
myself on a DT system.

Another cause may be this from the call site inside gpiolib:

static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
{
    if (IS_ENABLED(CONFIG_OF_GPIO))
        gc->need_valid_mask = of_gpio_need_valid_mask(gc);
    if (!gc->need_valid_mask)
        return 0;

    gc->valid_mask = gpiochip_allocate_mask(gc);
    if (!gc->valid_mask)
        return -ENOMEM;
    return 0;
}

So if OF and ACPI is activated at the same time (can that happen?)
then the OF code will bail out I suppose and this happens when the
ACPI side of things try to use the mask it didn't allocate. The ACPI
codepath in msm_gpio_init_valid_mask() seems to try to set the
mask even if there is zero GPIOs as well... dereferencing the NULL
pointer in chip->valid_mask.

Could it be that this is a ACPI system with zero protected GPIOs?
It doesn't seem like the code will survive that. It seems written
under the assumption that

It's a bit of a mess.

Can some qcom ACPI people take linux-next for a ride and tell me
what I should do?

Lee: do you know if linux-next boots fine on your ACPI machine?

Timur/Stephen: any ideas?

If noone has a better idea I guess I just give up and unconditionally
set .needs_valid_mask to true because we honestly don't know
when it's needed or not.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
