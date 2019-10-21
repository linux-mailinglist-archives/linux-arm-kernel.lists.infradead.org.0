Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538A1DE6BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2pbLmAPbhB6up37xHJDAGlBF4b5hQuAxAUFX1+wSxY=; b=cpkOYthRmolOm7
	x4jyB/yF9rgHk9RcB2dvl0Ri+i9QPdArhb+9DveuNKlDQaTKKkbmSIeDELB7Cqv62HIcMex2FVLKj
	SffXKaXRxw0ZNqfdu5PnEVpdW1wx4jVkUIpX85uICGbfrpjsO/m5zk95U78zCJ57WSsLny4WqQWt3
	CUhTKFMZaIzlagmf0ufKS2oZNezclLPLdzElL8ySUh23U673BrsEDR3YCULaVdzg+9iAElSHtdDyX
	/DZ6L5JKV252sVP/mFbvz61gii/aus8S+V7n+SMdOnqSjZle5eltK7kQYScQZrcCm1Rq8u6JezikB
	lY6fOHnZZgDjCogA4rEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTCv-00089W-1R; Mon, 21 Oct 2019 08:38:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTCm-000891-7l
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:38:21 +0000
Received: by mail-ot1-f65.google.com with SMTP id s22so10267810otr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 01:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Isdqq0Ubh24QJiFJ2l26RYaK1W86JQo/S0O5rntTFZ0=;
 b=Qa3B3zwpiuENjEt8VARMz/ENsbvueKuG2Z3YUcIWXlSm6GUO5yVMKBvUJwXvHvFCfk
 lgFsp5DRKdlYshvzCunIXneU0odWUcpeDiVO/H+LoyxPrfJsl4ZxUNPQrVS7OIoPAWXh
 F0wDRPlGzifc4p/tc7KjsPR+yCrt5u0XVGP5WnLFQgzNeMGXxCXUG1rcYMEcC7mM4jXK
 UjSTZ8z/20QHGNeIOvMdJ9n7YZT+iRMusD30IAXKQjuqypWF0OVcvE1j91pauePGuxBV
 cv43DSY7akd+qntFRSEbryu5gHj0VdxeJeg83kKoTd2gembkrzPZCbs490Sy7bi0UnSP
 G20g==
X-Gm-Message-State: APjAAAXTcRAtioUEzxmm69FzdFAes8XQmy3rpmm84kXtPSLrWr4o1KtC
 43cEsFAOY9RColBVxcC4tHez9wxT59NXdxJSVRnvdoCI
X-Google-Smtp-Source: APXvYqzxJsJuV6BUauy4Sb2At789fmamDYr15BmrQGLKIW7qtsWxPoUU1OE8Ucyvvce+T2vjIx84kc60si7Pd9H8+Xs=
X-Received: by 2002:a05:6830:1e69:: with SMTP id
 m9mr17885485otr.262.1571647098420; 
 Mon, 21 Oct 2019 01:38:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191021034927.19300-1-ran.wang_1@nxp.com>
In-Reply-To: <20191021034927.19300-1-ran.wang_1@nxp.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 21 Oct 2019 10:38:07 +0200
Message-ID: <CAJZ5v0hO5Jtr_kyBbCawYc+fS0JQGcU-xfhS9S7DKiFQYJSJvQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] PM: wakeup: Add routine to help fetch wakeup
 source object.
To: Ran Wang <ran.wang_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_013820_278277_59496CAC 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Li Biwen <biwen.li@nxp.com>,
 Len Brown <len.brown@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 5:49 AM Ran Wang <ran.wang_1@nxp.com> wrote:
>
> Some user might want to go through all registered wakeup sources
> and doing things accordingly. For example, SoC PM driver might need to
> do HW programming to prevent powering down specific IP which wakeup
> source depending on. So add this API to help walk through all registered
> wakeup source objects on that list and return them one by one.
>
> Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
> Tested-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
> Change in v7:
>         - Remove define of member *dev in wake_irq to fix conflict with commit
>         c8377adfa781 ("PM / wakeup: Show wakeup sources stats in sysfs"), user
>         will use ws->dev->parent instead.
>         - Remove '#include <linux/of_device.h>' because it is not used.
>
> Change in v6:
>         - Add wakeup_source_get_star() and wakeup_source_get_stop() to aligned
>         with wakeup_sources_stats_seq_start/nex/stop.
>
> Change in v5:
>         - Update commit message, add decription of walk through all wakeup
>         source objects.
>         - Add SCU protection in function wakeup_source_get_next().
>         - Rename wakeup_source member 'attached_dev' to 'dev' and move it up
>         (before wakeirq).
>
> Change in v4:
>         - None.
>
> Change in v3:
>         - Adjust indentation of *attached_dev;.
>
> Change in v2:
>         - None.
>
>  drivers/base/power/wakeup.c | 37 +++++++++++++++++++++++++++++++++++++
>  include/linux/pm_wakeup.h   |  3 +++
>  2 files changed, 40 insertions(+)
>
> diff --git a/drivers/base/power/wakeup.c b/drivers/base/power/wakeup.c
> index 5817b51..dee1b09 100644
> --- a/drivers/base/power/wakeup.c
> +++ b/drivers/base/power/wakeup.c
> @@ -248,6 +248,43 @@ void wakeup_source_unregister(struct wakeup_source *ws)
>  EXPORT_SYMBOL_GPL(wakeup_source_unregister);
>
>  /**
> + * wakeup_source_get_star - Begin a walk on wakeup source list

The "get" in the name suggests acquiring a reference of some kind
which doesn't happen here.

What about renaming it to wakeup_sources_walk_start()?

> + * @srcuidx: Lock index allocated for this caller.
> + */
> +struct wakeup_source *wakeup_source_get_start(int *srcuidx)

I don't quite like the calling convention here with passing an int
pointer to get the SRCU index back.

What about splitting this into, say, wakeup_sources_read_lock() (that
will return the SRCU index) and wakeup_sources_walk_start() (that will
return the first list entry)?

Then, you could do something like

idx = wakeup_sources_read_lock();

ws = wakeup_sources_walk_start();
while (ws) {

        stuff

        ws = wakeup_sources_walk_next();
}

wakeup_sources_read_unlock(idx);

Or even define for_each_wakeup_source(ws) as

    for (ws = wakeup_sources_walk_start(); ws; ws = wakeup_sources_walk_next())

and use that under a _read_lock()/_read_unlock() pair?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
