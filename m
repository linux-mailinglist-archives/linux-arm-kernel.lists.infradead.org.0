Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A84650902
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:34:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXL/dRKST4d2CmV68VkoYuRqDlHQzm5WBS8pKL6GUsE=; b=Ojbsc0CUvrK1L/
	08prylytFU9EtbsOyKnyE9ZpVhlSmarXqhYs2yRKZNe9//eG6Vu9plwdwZikL5hmOEjnUJgKqnzSa
	SEAkNQhg7NR4yMQ/5IYBi1GcRtN9gpjtYXEEcUpAt57ZZvEv76JsOjmDegVkKA6HhxCtGq1C1v3KJ
	0ebzX6IsYRFKq4QhiAAgvXjwPwi7CWBYVkrFB+uVYXbqpSg2PA9Ohr4/1ezbNHGngZ523c9TBcbLi
	P0vysekBjeqh2Ptpd8MkcXFer1ZD2YR5xR0Nrz1ATjQKGefok4Nd4IGeJjLMuafet6pWtPuawhd7A
	fh7yKJS6k7eZwWuhwngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMJK-0008MM-GK; Mon, 24 Jun 2019 10:34:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMJ7-0008Lu-9j
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:34:42 +0000
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8582208E4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561372480;
 bh=SV0KHLSN6vZLGUuMtl2V9cwKaGSyM/pYO/cQlIB7+N8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KHXvwsNq1LygJo8JdUvMLWgk46PFYmBHeLBdlNfQw3UC89qCWnRZmfG6IOB21ylON
 sX4XSQm8nZzE3qS7ahxxH/zkrTtLrYOOv68hB7DwPIyJWqMEzeAgesl5XLhbwarzMb
 f/MogTTy76s13ELZfcWWC7vYoiRCQOZtx3USwQ7U=
Received: by mail-wr1-f45.google.com with SMTP id r16so13286730wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 03:34:40 -0700 (PDT)
X-Gm-Message-State: APjAAAWcDAIkAWmLp1U0PChIMiHXqKLasGUICZ1aBng248oe5PlBq/qX
 Ej5ouW34vRbVg1k+SqFy/5a8P3m+EfQ+DRznZy8=
X-Google-Smtp-Source: APXvYqyH1r9rbTDr7f7A3CGLAPvjyUC9pTOBeqwhjMPglEFiQUwQ6jrIqyXxSd9CiE9M6mJbLG2M70cCye4u1ookXM0=
X-Received: by 2002:adf:fc85:: with SMTP id g5mr22528717wrr.324.1561372479250; 
 Mon, 24 Jun 2019 03:34:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190604042337.26129-1-wens@kernel.org>
 <20190620162220.GA23549@piout.net>
In-Reply-To: <20190620162220.GA23549@piout.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 24 Jun 2019 18:34:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v67sf3L9zH9Li6tF3xunQ4-isoodBLQmSv2VJtAj6hS7Ug@mail.gmail.com>
Message-ID: <CAGb2v67sf3L9zH9Li6tF3xunQ4-isoodBLQmSv2VJtAj6hS7Ug@mail.gmail.com>
Subject: Re: [PATCH 0/3] rtc: pcf8563: Fix unhandled interrupt storm
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_033441_376919_BC63E8B6 
X-CRM114-Status: GOOD (  24.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Vincent Donnefort <vdonnefort@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 12:22 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 04/06/2019 12:23:34+0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > Hi everyone,
> >
> > While bringing up my Pine H64, I encountered an interrupt storm from the
> > pcf8563 RTC. The RTC chip's interrupt line is shared with the PMIC, and
> > was not properly added to the device tree. Also, the driver was using an
> > trigger method incompatible with the PMIC, preventing the interrupt line
> > from being shared. Last, the driver only clears and masks the alarm
> > interrupt, while leaving the timer interrupt untouched. This is a
> > problem if previous systems left the timer interrupt enabled, and there
> > was an interrupt pending.
> >
> > This patch set fixes all three issues, one per patch.
> >
> > Please have a look.
> >
>
> I don't have that particular RTC so I can't test but the interrupt
> handling in pcf8563_irq seems problematic too. I guess the RTC will only
> trigger once per second because the call to pcf8563_set_alarm_mode will
> explicitely leave the alarm enabled. The core doesn't really care but it
> doesn't really expect the alarm to stay enabled. i.e. It will ensure the
> alarm is enabled again after setting it when necessary. I think it would
> be safer to simply clear both AIE and AF here. Could you test?

Yeah, that bit looked weird to me as well. And actually the alarm doesn't
go down to the second, only the minute.

Is there a test program I can use to test the alarms?

Thanks
ChenYu

> > Chen-Yu Tsai (3):
> >   rtc: pcf8563: Fix interrupt trigger method
> >   rtc: pcf8563: Clear event flags and disable interrupts before
> >     requesting irq
> >   arm64: dts: allwinner: h6: Pine H64: Add interrupt line for RTC
> >
> >  .../arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts |  2 ++
> >  drivers/rtc/rtc-pcf8563.c                           | 13 ++++++-------
> >  2 files changed, 8 insertions(+), 7 deletions(-)
> >
> > --
> > 2.20.1
> >
>
> --
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
