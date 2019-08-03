Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173FA80595
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 11:43:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BhDtBsjSSSde5rwkWilFKUUWHZxb/KjD9seCmBg2psQ=; b=J/oa88P3d6ZFxk
	E9DJgn0CJZ+NTW0yCtfiGza6/C2wbpKOVAM9bmPDV0ksKs6JdjrzZ7LUvZ0IKDYMT6PKxaSFQLYJ9
	vHo+NKeUadJMcJAm9JAp1pO9sukkZIkmkSdtnkM9blMbIs5WlIdr1jK0+ovkq968f4t5SQHeoObXE
	uY95SrhlggRAf/vK/8kI+FKfUPhK5b7b2izK48dQS1tLkmvBAOzg2kRH7Pjx5ub9YI6B5XeLXz7NK
	zcZLyLFFHn0wcWm44Pl0ACm2r7zwoiteSgXNz05N6DWNnHQnDvehtZc8uLDi2A+MlooJOn1V31EhW
	rREDpR5HBAce0O61Xc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htqZ1-000506-7P; Sat, 03 Aug 2019 09:42:59 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htqYp-0004zd-Iz
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 09:42:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id d24so75051496ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 03 Aug 2019 02:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SO88WNaQzi9vKRamgYOjSnaH8NZtM2STZOHnst8RrNs=;
 b=UQnQiVj7RQtuOItiEH/J281pAl7GNn4joNOEoUa0JtHRGzlbF3p9hVlcC9WiHXDL7n
 UFSR0Bi9KU+EZH5HeiHSz6uySRxVibcGgpAAF8cygYPkgsmLk1CTjwd9UruSiQ0biYna
 fjpJst1H3oFy9afy0njWs/t/Sp7xea+JUvLQfBY0aSeN9XYax0tIaAa1iH9wBxTlfXMF
 C4++a02JBmOGX/8swNEQtysBmm1gCp0Ih9pAQdue/rbcoEJMvQ1/XBp2RV5UCk3fdEh8
 BmmkYgA2yJevYtjB5yvVURv1Hqx8xc02/VtF2nuxcZBPykyhLvYi41X8vlbfqjGdjg8x
 0JuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SO88WNaQzi9vKRamgYOjSnaH8NZtM2STZOHnst8RrNs=;
 b=MciHnr+k6SY0SNY3mQWtVVykBgjHbhQaXLJFGlu8+hXnXz2fkH/SQBOYLe8qKfgeBO
 vtouiOgWdR33Ovq+rOLZhjUKIHNRFeanx8DrtQ2RKxPX0F8Irefue3/zvIJUAILKwg3X
 5+dbRx2EqWEb1gKxKxR0R0VdJTQ+ey61VMls4WAG0IhbgkUnR/+unxjrskejCobUS7jr
 dYJYnB85zCSy/WUc7DrcFf/rKW39ROnn10eJ5z+6cCyOBle8Mxy/N695xFO/uU77PR0F
 21OnJ2qFDQ65hEAwf7w2nr8ePo881hhLCjtONNbrjLYcxqR/NX1FB2AOcYcW1PYy1bpv
 7H6A==
X-Gm-Message-State: APjAAAXLILetqGtW+S3OQkgODOrwBTeusrnHkvC9JXrjzbxRX80y1fTV
 msd2jL6bW76hia0a0+oFufv/U/sx9gYQt1f/hEI0HQ==
X-Google-Smtp-Source: APXvYqy8j1Jk81DEM30/25OLLRIGgjenXwW+Wzy8TBE/3qZV2XhUUnEI0whdpQvVzeg4B+V9208JidK7UNvFlPDVamA=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr11909296ljs.54.1564825363563; 
 Sat, 03 Aug 2019 02:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
 <20190730134115.GE4264@sirena.org.uk>
 <CACRpkdYevQiwW8iED8_qBo5yCcj5yCGrM76Lu3MyrU6Vy4HoNg@mail.gmail.com>
 <5d41b01a.1c69fb81.84578.a0bc@mx.google.com>
 <cbbe381e-a154-ced1-fbcb-9db2135e4e5b@codeaurora.org>
 <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
In-Reply-To: <e974aa7e-98d4-1594-755b-6f57ab852cd7@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 11:42:32 +0200
Message-ID: <CACRpkdZ7TCvF-EE0Bvjz5Upi_e+CMHqhrkyxn2An8jJKj_g6cw@mail.gmail.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
To: Timur Tabi <timur@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_024247_690840_254E2A4D 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Lina Iyer <ilina@codeaurora.org>,
 Stephen Boyd <swboyd@chromium.org>, Mark Brown <broonie@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 4:51 AM Timur Tabi <timur@kernel.org> wrote:
> On 7/31/19 12:58 PM, Jeffrey Hugo wrote:
> >
> > static int gpiochip_alloc_valid_mask(struct gpio_chip *gc)
> > {
> >       if (IS_ENABLED(CONFIG_OF_GPIO))
> >           gc->need_valid_mask = of_gpio_need_valid_mask(gc);
> >       if (!gc->need_valid_mask)
> >           return 0;
>
> So this seems wrong on a system with OF and ACPI.  It assumes that OF
> takes priority over ACPI if both are enabled, and that's not true in
> general.  If anything, it's the other way around.
>
> IS_ENABLED(CONFIG_OF_GPIO) is not the correct test to see if OF should
> be used.  I think this should be replaced with the OF equivalent of
> has_acpi_companion(), but even that might not be enough.  Basically,
> of_gpio_need_valid_mask() should return three values, 0 = don't need it,
> 1 = does need it, -1 = gpio info is not in OF.

You're absolutely right.

Sboyd hacked up a patch to that effect and I applied it.

I haven't heard if QDF2400 is working again but I'd love to know!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
