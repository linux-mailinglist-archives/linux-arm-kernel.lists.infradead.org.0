Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 869671BACE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 20:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fakTpWuhMBX4pwfWxpObSrlRwMFTPreZ3fIQSxoC9ZM=; b=VQVN1zqT8kDYqE
	7KOuFTKEQ69ZGErWiOztcmtWkxb+R6RzMphDmW3ocartfHZqDld9ELHcq29iWPBheiFtuMCWpHPFW
	vBxhsYIzC28Vbunz75gKoP0xSQBp96b4A0iZuMlIgbS3uOVJC7PBH04pQ8eQLXS6Mq4dKIEnhlOsL
	tzAN9ClRVKUOzqN0I3JSsKhk22zW2NY8t4bk1X9UZIJEPlxdjaw9QSWHBH6dYowKlZzyV7fBWDsNf
	0t8bMsqDWtiSiKN8fVbRqXzpl4sCZ8VM4CPy1mdzs3rJTjpYKBxeSjJ+p7kuCGQlz98wjWqRlv3Ak
	oG2cUuol0XPAW0OWsD1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8cA-0000Rb-DQ; Mon, 27 Apr 2020 18:36:22 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8bs-0000Ik-Ca
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 18:36:06 +0000
Received: by mail-ua1-x942.google.com with SMTP id 36so14427299uaf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 11:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1xM9QjmpwYbkisRgg+9m3KKxSIRNSU7Z5AW0CFZxADU=;
 b=pXUgT4BBYjU7eXZo207JUZsU3pUdyE9dKL1mF7Do3uspZf/cO+6wRg05YOWJXZlkv/
 puy1OMkOOUYSmFDCdqg8foPpc57v7YjCzOt1JLFdijuOk+hddZ0gpu+qAh94YKsLoBx1
 R1n5j8CA7M5whL2MYKKdY2mOwGrpJ6wFY8fJtsQ7t7qY8VA3zRsXPKrpOc0XRZcC2SGH
 hjpbfKy036pJGTb35GPecBbKXrZ9f5pkpxEIbddKQokLimKOD0OF3GGUGwm1uShb4UhF
 jQcXmVBRDeVhh9kFLIEFicwnPvbC/YariFA5TYc3Di9PRAI1TtRiJj2V5UxgFusegIln
 x3dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1xM9QjmpwYbkisRgg+9m3KKxSIRNSU7Z5AW0CFZxADU=;
 b=o0fj5PjlShhxozfJMDhIc2spLG1IHsAi08leIs/chL+aTsJNghjbuIggIr5iNLprni
 Te+JX6s4eYOV+LHHTSxPfvBeGkHtNsDf5TpPhVCXyZqrjPIFrKH/Y0i4f5Ixa09dMBKr
 fSm5q0umOqlcIZGUm06161FOLgup8389ROb+m83BlypFhqjo+Fxdu+1wBPaB2MCeynt0
 +mmIfFPwSY3SnKTyuPrV9dZYOxuiqSREpezuslmv0+qXWMjTodspIRhSHcxaxv9HR+zD
 dbIbGOxnndboKfBmg8scZnJG/zK2YAV28h4fZXIT9TJe6Fvm9wyp/N32CL4VEHF5HDw0
 5CCQ==
X-Gm-Message-State: AGi0PubHoEfvqSVumirIS10+/alcfClJAkVyIB/s8kY4EClNgN90u39P
 4ybMMPacNAYWULrWq+neL7ep7NzS1dPlQss9fuYOPQ==
X-Google-Smtp-Source: APiQypJNKdwylcthlxM+njJYVD9XtTTnPk4q1j17763v7R71x0bAw3EsHZ45/PbN0eX4zVscCJdVfvic8BQcRqzaqIM=
X-Received: by 2002:ab0:6588:: with SMTP id v8mr18411294uam.100.1588012562614; 
 Mon, 27 Apr 2020 11:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <1jblnd2tp3.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCDzNw6nV3oBJs6C0sssW61GERBXq39DCM22BT9zS8M31A@mail.gmail.com>
 <1j8sig3mi3.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1j8sig3mi3.fsf@starbuckisacylon.baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 Apr 2020 20:35:26 +0200
Message-ID: <CAPDyKFrYNmCtX3KHaE1vw4rT45WdsUWKqOaJ43rJCKwsnY4PCQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Amlogic 32-bit Meson SoC SDHC MMC controller driver
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113604_947785_316D7B9B 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jerome, Martin,

On Mon, 27 Apr 2020 at 18:46, Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Mon 27 Apr 2020 at 18:23, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>
> > Hi Jerome,
> >
> > On Mon, Apr 27, 2020 at 10:56 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
> > [...]
> >> > Changes since v3 at [3]:
> >> > - split the clock bits into a separate clock controller driver because
> >> >   of two reasons: 1) it keeps the MMC controller driver mostly clean of
> >> >   the clock bits
> >>
> >> If the register is in the MMC controller register space and the MMC
> >> driver is the driver using these clocks, it is where the clocks belong.
> >> I don't get why it could be an issue ?
> >>
> >> Is the clock block is shared with another device, like on the Gx family ?
> > no, it is not shared with another device (to my knowledge).
> >
> >> > 2) the pure clock controller can use
> >> >   devm_clk_hw_register() (instead of devm_clk_register(), which is
> >> >   deprecated) and the MMC controller can act as a pure clock consumer.
> >>
> >> Why can't you use devm_clk_hw_register in an MMC driver ?
> >> Unless I missed something, it is provided by clk-provider.h, which can be
> >> included by any driver.
> > indeed, I could use devm_clk_hw_register in the MMC driver.
> > Ulfs concern was that a lot of code was needed for managing the clocks
> > and I agree with him. so this is my way of keeping those details away
> > from the MMC driver and have two separate drivers which are better to
> > understand overall.
>
> Martin, Ulf,
>
> I understand that CCF code might seems verbose and I'm happy to help
> review it if necessary but I don't think every driver out there should
> register some kind of fake clock controller driver everytime they wish
> to use CCF API.
>
> Yes the it might make the driver code cleaner but the overall
> architecture is harder to follow.
>
> CCF was made so driver from any subsystem *may* use it. Creating a
> controller for a single register is overkill. The HW architecture of
> this particular device does not justify it.

I fully understand your point and I agree with it.

If I recall correctly, my point in the earlier review phase was that I
wanted the driver to be nicely split into a clock provider part and
into a mmc host driver part. I also raised the point of using
devm_clk_hw_register() rather than the deprecated devm_clk_register().
I still think this makes sense.

That said, perhaps a reasonable split could be to have two separate
c-files (one for clock provider and one for mmc host), but both in the
mmc subsystem.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
