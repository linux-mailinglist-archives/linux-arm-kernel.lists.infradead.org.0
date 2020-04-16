Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B5E1AD108
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CEkBn4oDRTao+oSJos34vDI4ZHoASnFTXz0c98dK6E=; b=eSUx01JToMuCUy
	waAyD0bRCum6FxmZk2LxTt/IPUdZh/i7m5G82EmNhIPH75dGmKavA1PptLO5wdcIoHd7eJ4zDV9Wd
	5p1nJLU00PZO6uc8movioBaHuO9J1jK9d9mTNZI3GCk2eEVvwaRlJt8ujbNbuB0qo7jXkZfXeUFSP
	SUqREZh5I6hgNaLJKuFUG6YAhj8E0jiBf8Fh+a79RCRiNtdbrgKYPBD/dbW9nNtq3T1mAL3Ts0kX5
	CvB9qMeWI9DVrAsu+rLOPJBI1FR5jHd1xqhArXR3jeWRlGryPV+WgHqBIIhStVc7VTlZnG4g3JNqA
	+3eSigIIMq4dM9mVKFCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPB3i-0001lw-FX; Thu, 16 Apr 2020 20:24:26 +0000
Received: from mail-oo1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPB3a-0001ki-T8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:24:20 +0000
Received: by mail-oo1-xc44.google.com with SMTP id x16so934288oop.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3KT3Lk+L86Pg6kG/Kio9iVjTavDlMZk/zeLFXx3fyr0=;
 b=Z17pqRn6xv7LY+zwTUW3Relp+eGpiRdHw0EvAg6ebTJvDwmK+ofO7eUVBCcBvzuJfU
 ck9w3vDTV9F1tQ/gn6ZFZg96f3X/nNhYbpUfG5TVxYv2l69PFT8aRNNpYJlFOVDn7gGG
 KWJD4aQaD4fuPach6ICowOqjZDKGi7cg1JB5JYVbpAplf3UzacoHhQAoOCku721176bY
 DvVl9Pwb8Z4U4++dLCQeZn9BOk2H17mFrFnrEGG3/sLoweXTUo/BmFxO6NZqIszENJEB
 HHypR6LEHxsqKU65r6otZChnFj3Mgr1/w0f53VAoQNE9fAq9GtEbkVt0kcvhnNnD6w4r
 ztVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3KT3Lk+L86Pg6kG/Kio9iVjTavDlMZk/zeLFXx3fyr0=;
 b=Ad2MDWuZYwxAeiGy5WzcZ0gNK7tUpvAj5wthSOqJ0m5ZIOMz4JWBCbRbURpc+nT5Ap
 GsbfQdJHojWobjLC9fGkjvSi+TYyXBUIyi6BwoPPYgvaNg3TWlKx8cN83ei+hJ5J9tf9
 qL/FB9AOfF1ZGQ8sft8zJ4X3qnQ2DQBQv9k2sKa1wzss0mMNkJjKOeWpcj6n4Ux5nqTB
 Bb4STCEH96MfhHIiz+KMlINc7fZpypN5xOMw/U3EMMRq6wDT7wz8eaULKsNh63b7+rwi
 ky/lOLI4Q32KLzxJtE7KGuwiJbQ7SkE6iyqmWE+HgygNHMq5dOHk5VTwDCICYnrYfbH/
 Wr6A==
X-Gm-Message-State: AGi0PuafQTcxqfuFUG2/QlCq/vcn8nh/cRqkzAYpi7LKO8XAXJo7ONd8
 v0FtAiDrPDR5ByZfWc2/SWE=
X-Google-Smtp-Source: APiQypK4uMOTrP9aJlJSPOasMk4kiHyD0QruPHFS0YD8KUeyYrXq4lRuQi15zKhlYSKgAFrXy+QFiA==
X-Received: by 2002:a4a:3006:: with SMTP id q6mr18966698oof.70.1587068657829; 
 Thu, 16 Apr 2020 13:24:17 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id i2sm8092125oon.0.2020.04.16.13.24.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 Apr 2020 13:24:17 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:24:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
Message-ID: <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
References: <20200416182402.16858-1-natechancellor@gmail.com>
 <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_132418_964558_7D048835 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "kernelci . org bot" <bot@kernelci.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manish Narani <manish.narani@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 01:16:27PM -0700, Nick Desaulniers wrote:
> On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> > uninitialized when used here [-Wuninitialized]
> >         return ret;
> >                ^~~
> > drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> > 'ret' to silence this warning
> >         int ret;
> >                ^
> >                 = 0
> > drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> > uninitialized when used here [-Wuninitialized]
> >         return ret;
> >                ^~~
> > drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> > 'ret' to silence this warning
> >         int ret;
> >                ^
> >                 = 0
> > 2 warnings generated.
> >
> > This looks like a copy paste error. Neither function has handling that
> > needs ret so just remove it and return 0 directly.
> 
> Forgive me for not taking the time to look into this more carefully,
> but just a thought:
> 
> Having functions always return a single integer literal as opposed to
> having a `void` return type in their function signature is a code
> smell.  Did you consider the call sites of these functions to see if
> they do anything with the return value?  I understand it may not be
> worthwhile/possible if these functions fulfil an interface that
> requires the int return type function signature.  (It's also probably

Which is the case. These functions are passed to 'struct clk_ops', which
defines the set_phase member as

int     (*set_phase)(struct clk_hw *hw, int degrees);

so we cannot just change the return to void since there are other
set_phase functions that do set a return value other than zero.

> faster for me to just look rather than type this all out, but I saw no
> mention of this consideration in the commit message or patch, so
> wanted to check that it had been performed).

Yeah, I should have probably mentioned that. I can do so if the
maintainers feel it worthwhile.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
