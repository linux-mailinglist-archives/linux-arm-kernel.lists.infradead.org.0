Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E031315DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 17:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtX9C3zUALvLq3h+9ZWaU6s+fVS6Pzjm4KRXmOb3M0o=; b=g2EUzBF4iUKqv0
	PdTmrbqJIoAqY/lvim1+Cq7JlmQJ8A4mFZ/y+Vy743uCWhf3VAaVCmegXID57w7785Vz8NFuw6NUg
	gL7CUG6483OW9fxZ7PJwMKuD3fIAR+yNvL+l4bfqnUOOyQotW6S6uApbggf8Oa2+cU5WZtx0xq+vR
	8gnfuZk0ack57j1E6DFZoLC+5/PvTC0mkf78PisR84ptJqYNQTnpE/hdyDj2xUTjiNEtEzsGnXSU0
	Ee2C2jn92IwIMg5SwwhGjGtD/5UogbaBWxiGbRXl1UlTfk8fPO3ntb+nO1m3HwjQDrgBWJ1aaHkj7
	3YVIwnHi4v4QAD2PiOxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioV1L-000170-9s; Mon, 06 Jan 2020 16:14:23 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioV1F-00016G-SU
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 16:14:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id d15so5705310iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 08:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ua8KbVa3SpqdzIiSYVNEkoWrUMKqMyXBPCO7dg4wRmM=;
 b=iX0itlbNib8LJTsR58U9neHGgr8BcFiZamBCdiKqTV/MgHPWreFYWG/jjAzwCAdE6U
 kDcEWzmnTj4viodfQL2WcIJ7ojijDtrPM5vITc973VYGhwRQdYfXSkaDpgrgQaD7eI51
 4V5q/dBeGzaf40deLdBQYr1MzIabhv/i/c3/T/1hpyBG8XC04FVibOIQLDFDV4iXo7PX
 GK7mrNVXQyLOK/sN95ph2JjCOAXKYrDAJgaoZr+zT99xf2/vwk1ceLISS4IzWTVv94aG
 LxuCvPTKb4mhePCa1HazQxUQDlsxTOlQ3BM3ZsfjMHUiCl6/YLjzXM62nggj/X6rj2bn
 wz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ua8KbVa3SpqdzIiSYVNEkoWrUMKqMyXBPCO7dg4wRmM=;
 b=HEI4CAWoUNCx0KsXcOytvRqtY8kB5Pd0CcETSnNU3tXDoOqcg1wQcWe0sh6hATuzjp
 wDXtiDv1gzAixOCwd02WUHTcryXXW87Qp9s6FYvlj59MFmsoEGPTSWLq+n0zuuRWU3rY
 OQMv6SHalyIO5mZGLEIQUcyy/1wwvmUBNH4KItJMMqzDcr8LIEFhqxpCodvDU2X8H7Yb
 /OiideGfqo2yMHeKHorCj8fRZVFrix1atYUoDJQDPkn9p2gIhl8RRPvblLf6rZn7t24R
 kkQd8FqdL3vsJ8sl51vXQDQQrkZqs6weC79YTzH5zmPJ0U8AHHNRrUR3mZI0dHmJZIvC
 nKNA==
X-Gm-Message-State: APjAAAXd9nxsYOZ+jaGIvdq7bVF51zMU3Y7NSozGtN+Bzj059nQvy47W
 4KoTIcMsXNlv/Z/IduXhX5OmnXa5MeS8+bkDnuM=
X-Google-Smtp-Source: APXvYqwMmvRtJEJHpP4WEIRufRFbnxvhprQMCYZCdCDsymhg7qLrojfb/BpnvNceW/wU1BrtqwwdcB45nQJVIVKkGZk=
X-Received: by 2002:a6b:c410:: with SMTP id y16mr64355721ioa.18.1578327255375; 
 Mon, 06 Jan 2020 08:14:15 -0800 (PST)
MIME-Version: 1.0
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
 <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
In-Reply-To: <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 7 Jan 2020 00:14:03 +0800
Message-ID: <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_081417_945158_3D867642 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

HI Chen-Yu.

On Mon, Jan 6, 2020 at 12:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Sun, Dec 29, 2019 at 1:19 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> >
> > Expose sun8i thermal as a HWMON device.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  drivers/thermal/sun8i_thermal.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > index 23a5f4aa4be4..619e75cb41b0 100644
> > --- a/drivers/thermal/sun8i_thermal.c
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -20,6 +20,8 @@
> >  #include <linux/slab.h>
> >  #include <linux/thermal.h>
> >
> > +#include "thermal_hwmon.h"
> > +
> >  #define MAX_SENSOR_NUM 4
> >
> >  #define FT_TEMP_MASK                           GENMASK(11, 0)
> > @@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
> >                                                              &ths_ops);
> >                 if (IS_ERR(tmdev->sensor[i].tzd))
> >                         return PTR_ERR(tmdev->sensor[i].tzd);
> > +
> > +               if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
> > +                       dev_warn(tmdev->dev,
> > +                                "Failed to add hwmon sysfs attributes\n");
>
> Maybe you want a hard failure instead?

I don't quite understand what you mean.
What do you think should be done?

MBR,
Yangtao

>
> ChenYu
>
> >         }
> >
> >         return 0;
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
