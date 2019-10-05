Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8505ACCBA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 19:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdWOsT3xJ4iwcYY04bv5M8IT2/bqxkiJU20Wa2MaF58=; b=u5zwn0eBby19gt
	s/F55tZhnDKLYXAZdM4TjmadKstN9tkXEXLqdOGXPH8QIqfl7NMn9znU+45Bsfz14smUTSKyc6csr
	AGztEA0SN9+xPM/qZX84GUzCnfnsJtRe7EwIJEbR22J2ljLAz+mOiOTnq78ag/p4QQ1kamNjv/xPi
	lLN6UwbRAUAvFNxHt4B9Uc2wz59c1C3HPhv5r+gJ/IgHS4QR+lG0M+xPVU7GEAjKuDhlRM+RM7sTh
	vboudAkr3cfDhQfDOfWmY8O4VmncOp/Gm71LVm7LR6FxHSLrs4JhJ1XCiCxvxvQQiS4MA35SjyuQy
	+LAduybwlUnwtXDYPU2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGnj3-0004VH-8T; Sat, 05 Oct 2019 17:20:13 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGniu-0003Sz-W0
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 17:20:06 +0000
Received: by mail-yw1-xc42.google.com with SMTP id e205so3528941ywc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 10:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MGAToH7gf0cf1NNYqYOLRrO0bNygR1ZINN+gs4KcfjI=;
 b=hInKtJ1wQDIAaaHqSxMc1KyxX4ngqQzK06TYsc/fewv9OUTewxjNvhoAA22E2/loFi
 wasFDBlq9zqGi2r4tcMli2676VkrYeWc1VXonj2huB9BN3/KO62U593XrF3cCPk9zh6/
 Ro3i0ArBfq+DiD4Hjv4cx+SzU6bYwnUpYuNYZyv3BwS51hHP+2oNYpbFzTziWvHPq8uA
 rxkpkdoCpCasIyeZOFSod3u9r/N1cd2scssUF3wZUa98SWne/8/bY2otB/XZ9Pu6S6ie
 GdABnngINi8bA5qSz0P8R+JqRAjS6T41wKr3An9fF/dYeSQaFX8z5Jmv3S99rwN62CoH
 a1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MGAToH7gf0cf1NNYqYOLRrO0bNygR1ZINN+gs4KcfjI=;
 b=D6+Lk8JISYB2vgOBsgGsnKagqiyhQKz4+z0arX1Y2AnGIhxHJLFZerjIdGkWWedI4n
 DMb0kxFaSeky0x0tmlXi+ao5MCmGDogf9i8krJi8oogLf2lGgonSl0gT6AbZlFmJ5UbL
 mPcK6q3b/vuzypptcOgIg+dq2VT+/xWcJ7pGjRhH93nmA+hYGM6DeiHLWw9wGCTvZNdk
 23UQR/izjwI793Zn/5pqedz6jqwhdZgCuCdezUZz5dKCkcsrC6mXAfNOxQ3Pqb2ZCxgG
 K+lzx65nr9negmfFjpNaByVa40lOAL2z3EYPUWm0WDVWV24b32fW55ZrlXoUbsboSm5P
 LbRA==
X-Gm-Message-State: APjAAAVQP1szM5+95518RJ6WOQQ9UXSmpZ+HMltcFZ2BZ8FQNFa2Ykr4
 gOUxM+k8yghrzuQN9AVg+1bu/+4o
X-Google-Smtp-Source: APXvYqwwjA05OEJO+32btwCbv0PRqgBlNIanc9PkgxO2kfSjusl2VL25zMbuvWbNGxLNX46za0Mg4Q==
X-Received: by 2002:a81:3601:: with SMTP id d1mr15208844ywa.103.1570295998277; 
 Sat, 05 Oct 2019 10:19:58 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id y205sm2445684ywc.6.2019.10.05.10.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 10:19:57 -0700 (PDT)
Date: Sat, 5 Oct 2019 13:19:38 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v3 0/2] Simplify count_read/count_write/signal_read
Message-ID: <20191005171938.GA7199@icarus>
References: <cover.1568816248.git.vilhelm.gray@gmail.com>
 <20191005153255.4290ce81@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005153255.4290ce81@archlinux>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_102005_050247_C08019F2 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 Felipe Balbi <felipe.balbi@linux.intel.com>, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 Fabien Lahoudere <fabien.lahoudere@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 03:33:08PM +0100, Jonathan Cameron wrote:
> Hi William,
> 
> This all makes sense to me.  Do you want to wait for some more reviews
> or should I pick them up now through IIO?  We are really early in
> the cycle so plenty of time, unless there are new drivers coming you
> want to use these from the start.
> 
> Thanks,
> 
> Jonathan

Getting this in sooner would be better since that will save Fabien from
having to introduce the COUNTER_COUNT_TALLY type in the cros_ec patch
submission.

The only concern left now is that the TI eQEP driver needs to be updated
as well for these changes, but it's not in the IIO testing branch yet.

Do you want to merge this patchset first, or wait until TI eQEP makes it
into the testing branch? Alternatively, I can merge the cros_ec patchset
and Intel QEP patchset into my personal repository when they are ready,
then later submit a git pull request to you with these changes if you
prefer that route.

William Breathitt Gray

> On Wed, 18 Sep 2019 23:22:44 +0900
> William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> 
> > Changes in v3:
> >  - Squash code changes to single patch to avoid compilation error
> > 
> > The changes in this patchset will not affect the userspace interface.
> > Rather, these changes are intended to simplify the kernelspace Counter
> > callbacks for counter device driver authors.
> > 
> > The following main changes are proposed:
> > 
> > * Retire the opaque counter_count_read_value/counter_count_write_value
> >   structures and simply represent count data as an unsigned integer.
> > 
> > * Retire the opaque counter_signal_read_value structure and represent
> >   Signal data as a counter_signal_value enum.
> > 
> > These changes should reduce some complexity and code in the use and
> > implementation of the count_read, count_write, and signal_read
> > callbacks.
> > 
> > The opaque structures for Count data and Signal data were introduced
> > originally in anticipation of supporting various representations of
> > counter data (e.g. arbitrary-precision tallies, floating-point spherical
> > coordinate positions, etc). However, with the counter device drivers
> > that have appeared, it's become apparent that utilizing opaque
> > structures in kernelspace is not the best approach to take.
> > 
> > I believe it is best to let userspace applications decide how to
> > interpret the count data they receive. There are a couple of reasons why
> > it would be good to do so:
> > 
> > * Users use their devices in unexpected ways.
> > 
> >   For example, a quadrature encoder counter device is typically used to
> >   keep track of the position of a motor, but a user could set the device
> >   in a pulse-direction mode and instead use it to count sporadic rising
> >   edges from an arbitrary signal line unrelated to positioning. Users
> >   should have the freedom to decide what their data represents.
> > 
> > * Most counter devices represent data as unsigned integers anyway.
> > 
> >   For example, whether the device is a tally counter or position
> >   counter, the count data is represented to the user as an unsigned
> >   integer value. So specifying that one device is representing tallies
> >   while the other specifies positions does not provide much utility from
> >   an interface perspective.
> > 
> > For these reasons, the count_read and count_write callbacks have been
> > redefined to pass count data directly as unsigned long instead of passed
> > via opaque structures:
> > 
> >         count_read(struct counter_device *counter,
> >                    struct counter_count *count, unsigned long *val);
> >         count_write(struct counter_device *counter,
> >                     struct counter_count *count, unsigned long val);
> > 
> > Similarly, the signal_read is redefined to pass Signal data directly as
> > a counter_signal_value enum instead of via an opaque structure:
> > 
> >         signal_read(struct counter_device *counter,
> >                     struct counter_signal *signal,
> >                     enum counter_signal_value *val);
> > 
> > The counter_signal_value enum is simply the counter_signal_level enum
> > redefined to remove the references to the Signal data "level" data type.
> > 
> > William Breathitt Gray (2):
> >   counter: Simplify the count_read and count_write callbacks
> >   docs: driver-api: generic-counter: Update Count and Signal data types
> > 
> >  Documentation/driver-api/generic-counter.rst |  22 ++--
> >  drivers/counter/104-quad-8.c                 |  33 ++----
> >  drivers/counter/counter.c                    | 101 +++----------------
> >  drivers/counter/ftm-quaddec.c                |  14 +--
> >  drivers/counter/stm32-lptimer-cnt.c          |   5 +-
> >  drivers/counter/stm32-timer-cnt.c            |  17 +---
> >  include/linux/counter.h                      |  74 ++------------
> >  7 files changed, 53 insertions(+), 213 deletions(-)
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
