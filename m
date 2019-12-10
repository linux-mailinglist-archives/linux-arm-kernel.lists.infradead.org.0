Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1581191E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwQDKQzGGcwaArBYUq1N2tXx5EMsl3E88Q5HqwgVDT8=; b=R485OWHOyd2/Dj
	tglG2AfBFbfU8Vcij3tkmeaYOeAbvs05sbOWrpCOIFaM6UIuYbHHD70QMJCEKDKdVq03hVcz1etU6
	unDypwVcW1jPqAAkz5szysT2v7Pf4afjqNft873t3hnBMq/ht5sgJYFoAsgfjbQWBg07+blJXuSQc
	nSrVFn/snHYoHfnXtDn9hARGmpwsfvTJ0K/SmVzHJhQjta7fApgMljY8ytZpix7PLYk/xreZ6BBs4
	2Ve+pnVSBSIm9C52fmLL5BrXEuQlLDcQ/BPCEvppKMOJ4CQh4vr1DICICEw+z5q7dFkmNGMRoFfnE
	/tH8mufKmp+/R+58GWZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iem7g-0007EO-AM; Tue, 10 Dec 2019 20:28:44 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iem7Y-0007Da-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:28:38 +0000
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M1HqM-1ic0y30KiI-002n8J for <linux-arm-kernel@lists.infradead.org>; Tue,
 10 Dec 2019 21:28:33 +0100
Received: by mail-qk1-f176.google.com with SMTP id r14so9470145qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 12:28:32 -0800 (PST)
X-Gm-Message-State: APjAAAV8mozu+abodGm3tgNZN/UnmSQQEbOzKcq5VwZErbd3cK+51GtC
 uGiubYvhtoKTPqm+Yb4mzPg6u+U4l3ioLOlz7PI=
X-Google-Smtp-Source: APXvYqwt9caxIUrIQ2NdHcG+cD2q94bydYJ7whIaffA5PYvMfQleMpxvcQxJOlg1tgvDnanZiobaAJqL4Q0Twu9SfCk=
X-Received: by 2002:a37:5b45:: with SMTP id p66mr6225717qkb.394.1576009711991; 
 Tue, 10 Dec 2019 12:28:31 -0800 (PST)
MIME-Version: 1.0
References: <20191210195414.705239-1-arnd@arndb.de>
 <01669f6c5d0e40c7a410da2dcce6c9e825e4a1d4.camel@alliedtelesis.co.nz>
In-Reply-To: <01669f6c5d0e40c7a410da2dcce6c9e825e4a1d4.camel@alliedtelesis.co.nz>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Dec 2019 21:28:15 +0100
X-Gmail-Original-Message-ID: <CAK8P3a35xz_ZDN=5ZLjy6nniMtpJLwxmNmjr7d6NrOq1TU989g@mail.gmail.com>
Message-ID: <CAK8P3a35xz_ZDN=5ZLjy6nniMtpJLwxmNmjr7d6NrOq1TU989g@mail.gmail.com>
Subject: Re: [PATCH] gpio: xgs-iproc: remove __exit annotation for
 iproc_gpio_remove
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-Provags-ID: V03:K1:pWTWkr7feDmMHRdjBT8eC0HDzlQxNnlyqGGt9UThxRB6mjF2gQJ
 eWFkPnQJCuT47Lk6zyQmoLpBG6SbPUZ0A1xWnv7SYTFPlt93anLhZfC/CZ1LzSJNUTF/gMM
 qyiHFDCkjIuRkW/4cFMg+y9is1IFq6iBVeAeJQ05NSxoXu2mQ3ibQCPafjVi6hCNE80OTQ4
 uOux5T2bCMWQhcJ9MWpsw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kQ896fyEQXE=:ZjoerlR2hUyUEfZ5HSUPSY
 3K71CswFOO9JsI2WRX2so0CzuVIuZJCUGyYh3rhNXe+pxmENYgnfRF2A088Ivz4881sI4Y0Hh
 3RpFELHhesqjaTJ8Trz9ymBudVoIQVXKfSg2rak9qSL2oMdE80u1cQtgrIiqfJnztKeWZ+HHA
 LyEwNO5rVVsfR0q1+VSDr4xPhfv8qCyROB3p+ia2ALkq5GfDOayTxEcvdLdPkG4CzZ9ZhjQPz
 /qWpE3qQ2bMj02Vi7Tu3Kce8lQgzklghNlGYpsHnxlwEY5tkYJn1t2iJLJq0Ua/0Hzay0bBuA
 HrG4u/NsUyBPeEXgWku/ObpvjTE5lHzavr4VU5sjbfchZVb/Dwk2z1BEfAwH2fUXYoV9IPMYR
 x72yXzk4lGbTuKC3HD7t0+/Tzow0gv54ZAHWEhVwgiYMq//ZHzIqQywTDhBwVlhmIitRaQDap
 GLhbi3Fi7ZWnHzmQNEi4IkNwyOuttuunTqH2eo0YAxu0tlCFca3X/QpzE6aL512XGCjp6q7Sl
 NKfKarYsvTEV709UnYwrfGs+lOV+qDfdYmcIKVtXwNlmStHV3+vbUX9WE+qnB8txtXnaVDjeH
 FKAPi/MGvevPq5d8F85aJqOpo05hSEzzV/dCq3saqX5wEJ3mfSJnpV347BCvVzkFuP+XW2g90
 XMdgSLa3v0M5nz5PPPyQ6LoqRLkPc0SouyXYwf/3/xN+wTvlya5RvZExfF5mND0yJLOLO7hfv
 FzvU0kVEEjCoa+nWfojbkQWZ9jLyULGCYrmRl2gYQaDTbYjHloABYzfjzKsJUyyJ5hEdpwpF0
 ODrHb9sd9f5JZjohZ8s/vs7pnIejzQ/cpMmh8ryIx3mJxbPwx/ZbYdsjQEgT85wjwNO+EVywc
 PZm6HYsGTRpCn+MSe3iQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_122836_753794_DFB5ED9B 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "yoshihiro.shimoda.uh@renesas.com" <yoshihiro.shimoda.uh@renesas.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 9:24 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
>
> On Tue, 2019-12-10 at 20:54 +0100, Arnd Bergmann wrote:
> > When built into the kernel, the driver causes a link problem:
> >
> > `iproc_gpio_remove' referenced in section `.data' of drivers/gpio/gpio-xgs-iproc.o: defined in discarded section `.exit.text' of drivers/gpio/gpio-xgs-iproc.o
> >
> > Remove the incorrect annotation.
> >
> > Fixes: 6a41b6c5fc20 ("gpio: Add xgs-iproc driver")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>
> What's the current best practice w.r.t.__init and __exit? I seem to
> have messed this up on multiple fronts.

These are used for anything that is a module_init() function or a
module_exit() function, or called from one, but generally not
for any callbacks.

In particular the probe() and remove() callbacks of a device driver
can get called at runtime when the device is hotplugged through
sysfs.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
