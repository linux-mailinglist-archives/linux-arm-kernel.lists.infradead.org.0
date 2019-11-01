Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBD9EBC32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN5tFwItcJqdKCwwo6DkEMzg7Co+sGwzt+DPgRaezj0=; b=fxdYyceyNSijpX
	x22ynbdRo1KeCrHkkG0GaXwIGjJ9ME/ZeOTp9vXwhqh+kAdiCp2+EqiktZ729Fw5+KR/0s+PgCmqG
	0fmkXBNa+fw4LX2EF8UjLOO1rhaKnHIgm39jNj4TNlyHSHGsyQzjAd+6CJ8ZcdrPD+8Xb/VOYeT9u
	K+u4YO1iIY1VrpDemd388YovRyUfgnU2Je5eh4Vog51OcAx17KeT6UXqkUFFiy3L/CaNCew1a7lH2
	Z1Of8vh+HA0/Nib3dN29dbdu6ZfSh5RSbkYpPEUwZsMSKPJcvKTA5eNrZpAGsTYzLzLF+DNvvmwOe
	aSrBEvr1V3DNUDiKqB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNFU-0004e7-Lj; Fri, 01 Nov 2019 03:05:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNFD-0004d1-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:05:01 +0000
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 666E021734
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 Nov 2019 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572577498;
 bh=nU6uqOVFaCsulLB14w3V7HfkrQ0IMKZJP3c9WxF8K20=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vTGvqh2b7quzmstG195V56puCkgWoM1VlheFQG+9axMEtSr28lRYaSTp9SsxJPjPP
 y3lQgR7VIvU4oOJ/5ZJZEtlnD4vvARiJgO/6v/sknd967OhCt7MEer9GFtUQS2PCsT
 oimyKhk9SY9UrQdaGwrnODbFMGvG9VExlwqKLxJ8=
Received: by mail-wr1-f43.google.com with SMTP id q13so8353149wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:04:58 -0700 (PDT)
X-Gm-Message-State: APjAAAX0a+XmJEGf/UmAjclO3kzbJx3AyCkiAIxmXUt4FsEfG4c0Srl3
 L8E0i9lh2jt9Bn1lHFiXrdzmcLQFZCEFBkLcZPQ=
X-Google-Smtp-Source: APXvYqzuh0xd7+aIhEcjOGh28vIL0qQI5LRMwwA+gux/Bnu7YhlsdGHN+j3Azg/o4pUMm36qhzBi0fLYag9m4IFhJUs=
X-Received: by 2002:a5d:6203:: with SMTP id y3mr8698187wru.142.1572577496753; 
 Thu, 31 Oct 2019 20:04:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191030163807.17817-1-wens@kernel.org>
 <91017889-2ae7-d467-eed3-6d3b2bb130b9@gmx.net>
In-Reply-To: <91017889-2ae7-d467-eed3-6d3b2bb130b9@gmx.net>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 1 Nov 2019 11:04:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v67quD_EGgck7QLaO+rwgyPT0G+FfzDiZuyEAb0E1yf=yw@mail.gmail.com>
Message-ID: <CAGb2v67quD_EGgck7QLaO+rwgyPT0G+FfzDiZuyEAb0E1yf=yw@mail.gmail.com>
Subject: Re: [PATCH] thermal: brcmstb: enable hwmon
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200459_741577_3CDB4899 
X-CRM114-Status: GOOD (  20.60  )
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:BROADCOM BCM281XX..." <bcm-kernel-feedback-list@broadcom.com>,
 Markus Mayer <mmayer@broadcom.com>, Zhang Rui <rui.zhang@intel.com>,
 Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 9:09 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hi Chen-Yu,
>
> Am 30.10.19 um 17:38 schrieb Chen-Yu Tsai:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > By defaul of-based thermal driver do not have hwmon entries registered.
> >
> > Do this explicitly so users can use standard hwmon interfaces and tools
> > to read the temperature.
> >
> > This is based on similar changes for bcm2835_thermal in commit
> > d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > ---
> >
> > This patch was only compile tested. A similar patch [1] was submitted to
> > the downstream kernel, which I did build and actually run on a Raspberry
> > Pi 4.
>
> just a note: from my understanding [2] the brcmstb_thermal isn't the
> right driver for BCM2711. Please consider the current downstream
> solution for BCM2711 support as a quick hack to avoid writing a new
> thermal driver. But must confess that i didn't test Florian's recent
> changes yet.

Thanks for the tip. I only saw the thread after posting this patch.

ChenYu

> Regards
> Stefan
>
> [2] -
> https://github.com/raspberrypi/linux/issues/3101#issuecomment-527554223
>
> >
> > This one for mainline is much simpler, as it does not need to deal with
> > the error path or device removal, due to the use of devres.
> >
> >  [1] https://github.com/raspberrypi/linux/pull/3307
> >
> > ---
> >  drivers/thermal/broadcom/brcmstb_thermal.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
