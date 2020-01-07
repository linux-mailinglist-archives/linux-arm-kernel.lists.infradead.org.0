Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17F0131DE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 04:15:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2m7sZ8fox1weKEL3nyhFxgYk6G7jRIrfYdBne4tOpo=; b=Lnppoy2WyXw2Q3
	LuNyWllG2hZ7vmiDQczZ6C4/C2J9NiQ1OQ+Q2XKfU3V2EVXNTmw0Ts1Xw8+B6dO8k1sbi//cAmi5o
	Wt+kuoVYY1KxRbvQD/ywRcdtikgaKVaivyDwnCY0L6SKW60oMaQIsm49B4YHit8LphuZlua8ItQlt
	B//kVPHb7UAg+ATE2LnTLtQ4e+EkGpzASxjUolUrFz0qTKgncRZPapPQOlZDbD+CJWGeGLVXKzEuF
	6HQHuR5h6JWSG4xHU6/4xk9BlGpAzc6JdqgHH3R9IN9A6/bUq8i9ExEvjn8JLTSoPbEsLIcZC6w1d
	ZFk3X6pGcBN/eJaU9KNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iofL4-0001pe-9Z; Tue, 07 Jan 2020 03:15:26 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iofKw-0001p6-HE
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 03:15:21 +0000
Received: by mail-ed1-f66.google.com with SMTP id cy15so49195836edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:15:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WwYzJpEY0xHNICmPe/YVUqO8DBJUmW8ge7lSsx3XN8c=;
 b=Fvv+5eSe5lfigy/+nQRuP5V9QKkMPNkwJcajet4X6ouB5ZdwV9vYNJ5WzTOvWwBr+3
 63OIE1L3ccL+fe4Yl4MV0fflU9GpHqG8F7YHDOukZ0evdUyQ8XR5D1XkogLjwk/0A1qj
 CLiBM+DeSqczGFiI30iRlRjduROFyCgKQB91nvhwOC+QP55HfXiNDPtL8BaBoK/AiHtB
 uV7OiIk3IHBXo6cJFq1q8K5nLoY5N418OVUbO82I1IjkLZAT4AZjmaclv4VCbU0toEjj
 EvwK+VZlmxwN39G/QbES6PEcArtTTe6/Bccty0O3G5fjRbg4kxGzoPgWkREAoevnpot3
 lEGg==
X-Gm-Message-State: APjAAAUnWKhRCBRJxCuQHM6gVXa0WuH4i6X9VDZhtftPjJR8YuRxZmNn
 +JQuoRZdyF2L1xiAtGhrp5sj0CJi2FM=
X-Google-Smtp-Source: APXvYqwfgcV9UtK8UbdNeLBazKx7wcEuTduoUnjb+AFnsMzuEg5h80tLLURcz1wTXquAeU3zeSkgOQ==
X-Received: by 2002:aa7:cac7:: with SMTP id l7mr109478122edt.25.1578366916201; 
 Mon, 06 Jan 2020 19:15:16 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id a40sm1518725edf.90.2020.01.06.19.15.15
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 19:15:15 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id y11so52271114wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 19:15:15 -0800 (PST)
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr108514108wrx.178.1578366915409; 
 Mon, 06 Jan 2020 19:15:15 -0800 (PST)
MIME-Version: 1.0
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
 <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
 <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
In-Reply-To: <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 7 Jan 2020 11:15:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
Message-ID: <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_191518_584761_0E4D235B 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 12:14 AM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> HI Chen-Yu.
>
> On Mon, Jan 6, 2020 at 12:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Sun, Dec 29, 2019 at 1:19 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > >
> > > Expose sun8i thermal as a HWMON device.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > ---
> > >  drivers/thermal/sun8i_thermal.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > > index 23a5f4aa4be4..619e75cb41b0 100644
> > > --- a/drivers/thermal/sun8i_thermal.c
> > > +++ b/drivers/thermal/sun8i_thermal.c
> > > @@ -20,6 +20,8 @@
> > >  #include <linux/slab.h>
> > >  #include <linux/thermal.h>
> > >
> > > +#include "thermal_hwmon.h"
> > > +
> > >  #define MAX_SENSOR_NUM 4
> > >
> > >  #define FT_TEMP_MASK                           GENMASK(11, 0)
> > > @@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
> > >                                                              &ths_ops);
> > >                 if (IS_ERR(tmdev->sensor[i].tzd))
> > >                         return PTR_ERR(tmdev->sensor[i].tzd);
> > > +
> > > +               if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
> > > +                       dev_warn(tmdev->dev,
> > > +                                "Failed to add hwmon sysfs attributes\n");
> >
> > Maybe you want a hard failure instead?
>
> I don't quite understand what you mean.
> What do you think should be done?

Return an error instead of just printing a warning.

ChenYu

> MBR,
> Yangtao
>
> >
> > ChenYu
> >
> > >         }
> > >
> > >         return 0;
> > > --
> > > 2.17.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
