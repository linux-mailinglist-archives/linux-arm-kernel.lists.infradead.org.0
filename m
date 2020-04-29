Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 563201BE74C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 21:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrGiSuH1vmplZ7kbo/X3ZmKmtQKOG6cQ/dCGo/VxOP8=; b=Dqwjt48bUmlLVt
	fpqCP+kp73PxgKtioMGxE65XI6KgSMVfv50QmBPgYlIypbiOt5yHwR0cxkvhCltMtVZT2MD4OBncN
	ECnVrkzGxGb6a4kUI/OKu/pZS7Y3byj0BF7kbm1XuPhu225sDSgHc9WCi+HyOW0RLTuWSa12R8TjL
	innkjG8xjYKZgKiHDwcTjZTDXdVYjowLyrRO+n6wV4EHLBOW+k7axXyEvX4Ube4/eOKjarGVW18dI
	PUccFWNpZHBl7fPi/NHeRKtV5sxmfP8dhtYOttidkSkzGmkYAq7ON05D+uXgZU1jaOhHJhJ6AiKxg
	Xxmd6PY9Go4InJ+wXVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsKW-0005cd-Qo; Wed, 29 Apr 2020 19:25:12 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsKE-0005cH-Dc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 19:24:55 +0000
Received: by mail-io1-xd41.google.com with SMTP id i3so3482961ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 12:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AKsdWrButU9zZh7f3zPyNruBBcTlhNf0ix/ZdV3ytX8=;
 b=RY7T64tE1A0/zDQsrHGsORQp+bRJbj+IDkWlJWFcXLIJ6DtFUFKKsqOGJ1CBx1bo1B
 96MWfo7UEkcGMPOhJpnFjaZ5MjxQgpgYXstKPrhHQcG8sim9Hpq8dF4EPQd2AudNkRMz
 +h+/r6DRyE0+ZU/kRMd76A0Pyrm48yMF1eD1nXXGdAn47kZoD3dvBX6R2tfE58Y9WC4E
 VgQlH5B7ywAsWRlfpawOYFasrbArde0iJBrzOclzay7HsR5uFCT6r8DxvsXIJOOPHMBt
 HyO8LIUJxT0h8e8tXp73WXC1HwZ/E0x0u5rTsxSL2V/Zsp6Q4NHpx44YPCAj2wThWcS+
 2ANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AKsdWrButU9zZh7f3zPyNruBBcTlhNf0ix/ZdV3ytX8=;
 b=U7q6Kg7J7wCDICqbGqiZPc+FcO/Ukd0f82gyro6M0GMbdUPyCFpz2SiQTlN3BB1LKn
 EbHUPvJlyMKptLG0gCLhk973okc2//FvZz7agMpxwbt1lD5DMEIhasBuwTB4epYIKFfl
 PXlznDF8lEVUDYdWwn+kKObrIELseRqSH6KNGG06WT+Vv9kQJYLOQsWjQ6WLXEO/d3yp
 aXDDFgSvs8Jm3CvsoR/rYmzlO45G4ibQeOUOmqn6qzpnJ5tnNwy63Eurk1VCao3B8p0s
 L7IqCFzFlhAYSnMU2U1hEiOsUcBxBqzQA/S63bz8CO45D57EUBMbmOPbJJW3GJKi5E+T
 oaiw==
X-Gm-Message-State: AGi0PuaTjf3cKLg86wcGKx5bI2iQeIGjnghUtJ5LMKEjDupFTCOP0C4d
 SWl0guPDyAn5N33eA28W3mbcXHFpLfA0dgsfxOspdw==
X-Google-Smtp-Source: APiQypL1/XY8YVXayBS6hnXqD/4WFPsvji7taGqv2UK6Db5TMixiDkDqDRnm6+H7EUrv2W0NA0xTru5Y18nPCwILdQg=
X-Received: by 2002:a02:b88e:: with SMTP id p14mr30394751jam.36.1588188293662; 
 Wed, 29 Apr 2020 12:24:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200428181010.170568-1-swboyd@chromium.org>
 <20200428181010.170568-2-swboyd@chromium.org>
 <20200429180818.GA3062@xps15>
 <158818506575.117437.11635372928426076937@swboyd.mtv.corp.google.com>
In-Reply-To: <158818506575.117437.11635372928426076937@swboyd.mtv.corp.google.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 29 Apr 2020 13:24:42 -0600
Message-ID: <CANLsYkzkq=EuKx_=W2jv2TeWpM3P=Pd9NYS18VfG9KCey=2--g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] coresight: Include required headers in C files
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_122454_627950_9EB165E2 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Douglas Anderson <dianders@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 at 12:31, Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Mathieu Poirier (2020-04-29 11:08:18)
> > Hi Stephen,
> >
> > On Tue, Apr 28, 2020 at 11:10:09AM -0700, Stephen Boyd wrote:
> > > diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > index aeea39cbd161..77e14e770806 100644
> > > --- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > +++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
> > > @@ -4,7 +4,14 @@
> > >   * Author: Mike Leach <mike.leach@linaro.org>
> > >   */
> > >
> > > +#include <linux/atomic.h>
> > >  #include <linux/coresight.h>
> > > +#include <linux/device.h>
> > > +#include <linux/io.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/spinlock.h>
> > > +#include <linux/sysfs.h>
> >
> > What is io.h and slab.h used for in coresight-cti-sysfs.c ?
>
> io.h is for readl_relaxed() usage in this file. I added slab for the
> devm_kcalloc() but it doesn't look necessary given that device.h is
> where that is defined, not slab.h. Thanks for catching that!
>
> >
> > >
> > >  #include "coresight-cti.h"
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > > index 7fc1fc8d7738..be61c1705916 100644
> > > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > > @@ -4,7 +4,20 @@
> > >   * Author: Mike Leach <mike.leach@linaro.org>
> > >   */
> > >
> > > +#include <linux/amba/bus.h>
> > > +#include <linux/atomic.h>
> > > +#include <linux/bits.h>
> > > +#include <linux/coresight.h>
> > > +#include <linux/device.h>
> > > +#include <linux/io.h>
> >
> > Same comment as above.
> >
> > No need to send another version if these are mistakes - just let me know and
> > I'll do the adjustment.
> >
>
> Same here, io.h is for the readl_relaxed() and writel_relaxed() calls.

I just noticed the "asm/io.h" at the top of linux/io.h - ok for that one.

>
> So please remove slab.h from the two files (but not the other one) when
> applying. Thanks.

You got it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
