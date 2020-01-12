Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106671387B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 19:13:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK5l3rbTZrZqe5xME052LAqRtz1BqJkINIH9S+tgxKU=; b=LT3UQb93CHOT63
	/uH0VG05dEuB+VWRAdjzm+r0xzd6k+7l7tN3T0xDLW/vVsIeNaoeNdWUXmAndnVa2avv0I3kuRCSs
	7Uj15gwoN5h0f+lmXD6LKSGn8hYs10TAuMqAjqle+ozEfHq2fikKbqRJ/a0l3YX8CvN3htcxye+yo
	sbR5jxMylZn+Pk+D/VTIU6Ea3+vDDoTFld6amq3jgPiM/U90FtDTnuYW/ay0vEZkUjqpyB4edkJHr
	V/5MWYHTiNZ6v0J1yd6GTnQqEgSW+5SQdGdk/IM6ZsjQh47KRX0uVCGICz1HPiXdI240UhBao4VhS
	q46ry/mr9henfoRQS20w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqhjb-0005Ml-5u; Sun, 12 Jan 2020 18:13:11 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqhjR-0005Lf-Ad
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 18:13:03 +0000
Received: by mail-io1-xd41.google.com with SMTP id x1so7175560iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 10:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uet7UosEM0x42r0t79COTHjDMTaGXqxwiypPdPTlDvQ=;
 b=Arz/bOllwZ22bxNSvvZEKI4wuhd+Jl5Z+SuR7m/iyTibT48MlrRs9YkZ8LBFAZFigk
 OXvInp/riYoGpU2D2NVxQU6ZRyJ6t6sVHzEoA1wimW9gaB4vuOdGCWC7C3qErPNml+7j
 /fuM93zY5RODQBrAUXb0VBXAZO7UkgQNEJOFSU6gUL1SKGzrJ7HMs84IVJhDprX72vpc
 twqszPUVCaxGBJEcXPm7Bgn4l5Im5005oJdHXolSAt0kjl3tW6sZTeyXwROvOPYh29Po
 zxk0g8Tj/4dXdsgoQjfTqQKuydqMFhHfsDdksF+jpulbTILiwSDIR20Vat4ugmSEV3Q/
 5RXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uet7UosEM0x42r0t79COTHjDMTaGXqxwiypPdPTlDvQ=;
 b=GhzJJVpZUKjeN0vqD2Oe/VOvNs90ANEZVf995JV4lrHrQ/b0EJTUSM+TiErhGl9C3E
 aatQo63rnvdyXaxkQodGDQeytiW9+w0RFKmHYrhj+ohMSvxQ8LqV6o9c+BQydZSbiWXV
 3m9Z7ptO29L5oceltiRIdkzLoohxmZtnYehInW5ixn3FEKS3JKiQNW/WYrmSRNtqA7Hu
 v7fmkZMkJKav41MzZo/edGDc5OftHpE1ISQnol5PhARqmpIDvxrVpjtp3PyhKE1PMYPu
 02g3C1XseockByjY+dx3jzXzesH10oSldV6wQxD5KYFBVa/C3tly1jGwiKzJU3dGCQnc
 f2vw==
X-Gm-Message-State: APjAAAVvSKlqly1qCa5znqjcAgi9O8URuBmO/oEbJj0YhAS8ipm46xgC
 0bAT3a8B1FrAH7U2Qs2lFPsKvJqTr5lerINXbW4=
X-Google-Smtp-Source: APXvYqyxYgfM9TzQjZ5G0/d9Cs3I3vTG8Gsfi7Q8Mud+a3lGLWo1Q1n9O9mPklIwqu323vLFytx1rJU9eX8URzspP3M=
X-Received: by 2002:a6b:c410:: with SMTP id y16mr9421191ioa.18.1578852780237; 
 Sun, 12 Jan 2020 10:13:00 -0800 (PST)
MIME-Version: 1.0
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
 <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
 <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
 <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
 <CAEExFWtaeiX0bq6VO5294w8vCtnnNDDB0HA_nvR19adg=KFANQ@mail.gmail.com>
In-Reply-To: <CAEExFWtaeiX0bq6VO5294w8vCtnnNDDB0HA_nvR19adg=KFANQ@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Mon, 13 Jan 2020 02:12:49 +0800
Message-ID: <CAEExFWsGZD=Hm3OWmTLmKu82VDfG31y3ENJz7CfRHENqT8jJUw@mail.gmail.com>
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_101301_374627_CDC0BD18 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

HI Daniel:

On Sun, Jan 12, 2020 at 2:08 AM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> On Tue, Jan 7, 2020 at 11:15 AM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Tue, Jan 7, 2020 at 12:14 AM Frank Lee <tiny.windzz@gmail.com> wrote:
> > >
> > > HI Chen-Yu.
> > >
> > > On Mon, Jan 6, 2020 at 12:32 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > >
> > > > On Sun, Dec 29, 2019 at 1:19 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > > > >
> > > > > Expose sun8i thermal as a HWMON device.
> > > > >
> > > > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > > > ---
> > > > >  drivers/thermal/sun8i_thermal.c | 6 ++++++
> > > > >  1 file changed, 6 insertions(+)
> > > > >
> > > > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > > > > index 23a5f4aa4be4..619e75cb41b0 100644
> > > > > --- a/drivers/thermal/sun8i_thermal.c
> > > > > +++ b/drivers/thermal/sun8i_thermal.c
> > > > > @@ -20,6 +20,8 @@
> > > > >  #include <linux/slab.h>
> > > > >  #include <linux/thermal.h>
> > > > >
> > > > > +#include "thermal_hwmon.h"
> > > > > +
> > > > >  #define MAX_SENSOR_NUM 4
> > > > >
> > > > >  #define FT_TEMP_MASK                           GENMASK(11, 0)
> > > > > @@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
> > > > >                                                              &ths_ops);
> > > > >                 if (IS_ERR(tmdev->sensor[i].tzd))
> > > > >                         return PTR_ERR(tmdev->sensor[i].tzd);
> > > > > +
> > > > > +               if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
> > > > > +                       dev_warn(tmdev->dev,
> > > > > +                                "Failed to add hwmon sysfs attributes\n");
> > > >
> > > > Maybe you want a hard failure instead?
> > >
> > > I don't quite understand what you mean.
> > > What do you think should be done?
> >
> > Return an error instead of just printing a warning.
>
> Sometimes, even if hwmon fails to add, it can still work as a thermal driver.
> At this time, I don't really want to interrupt the registration of the
> thermal driver.
>
> Anyone else's opinion here?
>

What's your point? Can you choose this patch?

MBR,
Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
