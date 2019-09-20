Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EFBB8AAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 08:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z0JAkCYE2orV3vnCFu5IJTFBEMOIMHBkr2q34pXoO8=; b=oxfkKiv75MN6/T
	+I7yCIKRRcPvrr6AV22ZeeLdDPi4QOIkk3XE1arnqpYIrOMH1D2h5a8+U3LIyy8w+l3xSdkEnPflt
	FyD4mQYP3jQs8mTyNKMq+ZUzVd9MMHvNZ9R6V6gsse5e69pP6+m70sf705bmw5xDaZF1vGRkR+tUb
	NtCcjIHTU5usvbXG9hnVQ9eHS6Y2jrmtMm1iiU4iq3Ze5zzf7B92QQisgK00qcX9TLll+ERVDygqx
	LriwNHxk4Bhl/5P5t7c5zq5o4esS+a1Mcskn58d8dW6MK6IoEW7dWpINi9LV6+gcToBZ8hSg0voBC
	Wy2I6RXwXsjqST8/rR+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBzr-0002F8-P8; Fri, 20 Sep 2019 06:02:24 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBByw-0002Ej-BX
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 06:01:27 +0000
Received: by mail-wm1-x341.google.com with SMTP id y135so8718332wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 23:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KrJRto0V1tQECL7z3O9ZKJjMZZ7EfCuDScReljEVoD0=;
 b=Q3u2Mh8gz2fE3BJI573A/4KXqhnj4eoXlYMoZGGughIFG6Vb5FrwRq4f2U9S4oq1Vr
 Hbt9FsxwAgyBIq9a+hMcsz5uxfp8u73hXd7+1A6OV9p60H1OKGviHoiZWKnWNb7g7hfF
 mYVifC0KgoucYeWRHf5UYbWqoMgIslcMNPW+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KrJRto0V1tQECL7z3O9ZKJjMZZ7EfCuDScReljEVoD0=;
 b=QMRqk6goYIHT/p0jfowVLeVJVLXsi5hI0/XyJSM9IDMxHhZ6qbUstuNcJC85e7IgPd
 JaIrUVbuz5nDCJS/Re/cf5EB4x1O4GGY7Jx20fTGLz35WodyuA0Ydku/gULJlrLDP0MV
 zmfT+BmChqKg++a6OxLQZHnxZjF6GXeV0MXun2653p8xvM4j7tXNFWGZlzI1AxxnHSPd
 iNPEpp4Y8NmctIrIhGxMUJ3QYdiD6LuJj3+vwa47JGDdWmfb8Jlmg9quEeFQ2ARdkYCx
 XxD1nUXHqdgN8Qy6kX0dFQUxc58jJluOwLK0+iyMAPfrIEtethTPYZk0vqUnO/p42QWV
 Sntw==
X-Gm-Message-State: APjAAAXK2HKSN1kllBk/I0svTO2O+sKMmy2iDTs31icIumDFDtR7WmR9
 lkSTKk29pJiPxq4YQdActVKj3yxtCbNhtvhLpdQDGw==
X-Google-Smtp-Source: APXvYqzFCzSm0CfSfkwqk1qJj+FBKaMsFKoHb8kBLAJykpfyPHgRhuUNr7Y+6up7GrQ+zsoM2UYZ1XpAH5PFF+zHhXg=
X-Received: by 2002:a05:600c:217:: with SMTP id
 23mr1913029wmi.76.1568959283898; 
 Thu, 19 Sep 2019 23:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
 <1567054348-19685-3-git-send-email-srinath.mannam@broadcom.com>
 <CACRpkdYyHMHknkrH_Gm45tgwv6dgjFxdoeg+Hj_KBWWyQqV1og@mail.gmail.com>
In-Reply-To: <CACRpkdYyHMHknkrH_Gm45tgwv6dgjFxdoeg+Hj_KBWWyQqV1og@mail.gmail.com>
From: Srinath Mannam <srinath.mannam@broadcom.com>
Date: Fri, 20 Sep 2019 11:31:12 +0530
Message-ID: <CABe79T7h7=Y_fMv0n81hTS=nFnpRHXEFZTev-kLQsb6-eCGUdg@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: iproc-gpio: Handle interrupts for multiple
 instances
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_230126_413973_4C6BF3F4 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

We have tested patch with your changes, it works fine.
Thanks a lot for all the help.

Regards,
Srinath.

On Wed, Sep 11, 2019 at 3:13 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Aug 29, 2019 at 5:52 AM Srinath Mannam
> <srinath.mannam@broadcom.com> wrote:
>
> > From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> >
> > When multiple instance of iproc-gpio chips are present, a fix up
> > message[1] is printed during the probe of second and later instances.
> >
> > This issue is because driver sharing same irq_chip data structure
> > among multiple instances of driver.
> >
> > Fix this by allocating irq_chip data structure per instance of
> > iproc-gpio.
> >
> > [1] fix up message addressed by this patch
> > [  7.862208] gpio gpiochip2: (689d0000.gpio): detected irqchip that
> >    is shared with multiple gpiochips: please fix the driver.
> >
> > Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
> > Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
>
> Patch applied, I had to rewrite it a bit to fit the new code that
> set up the irqchip when adding the gpio_chip, please check that
> the result works.
>
> Yours,
> Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
