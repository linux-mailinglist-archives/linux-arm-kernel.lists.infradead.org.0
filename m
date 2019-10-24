Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD2E2F53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zJlbeMZJtsR08UyXi621ahahWcNeMKd98FI11nTMfU=; b=FjrAK9p0bQOKUb
	GcDNPfLTESSxHa/VwJdu/Yy9iVVL621fWAL/N8IAF6G7sHCfq1iAHHEMvYpLkTDIO5iA4LUWTXIdg
	0ocflK6EFs3jBCOuuSCPcFK5P628NyMIUVg7M+GaENgFffAkmznDZJyhaKJ6Ifh+peT3UsPqTgzmk
	pZKfve306BtDOdmtIDQFiUfp1mypWmAqGcdW70EDTXVTFIC1wK+/oAAyQv2KNie/AE6SGPGRUx6Y3
	aJOtNSo3vFbNJg/3Mmq1EmirFsoNa82GrQA0Dg3+F15tM58SWfDKmb+fgi5Nh4eSSAZIFksKQEGcI
	c0a1sPFAeZdgoLTrDI/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNadW-0006EJ-6C; Thu, 24 Oct 2019 10:46:34 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNadH-0006DU-Nf
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:46:26 +0000
Received: by mail-qk1-x744.google.com with SMTP id f18so22349951qkm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 03:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G11veEDwRRtVECFg7gLtwnqO3RbQT5sno5+UXzVEXSg=;
 b=ekruNEz5Dsu5+RobqAiVscjSTBrA9KrZTNIcS2Yyis9GeB1DC3JqNwbOBOp9455aDX
 HfDF+okJhIRqLi3jnn7S9YXZqQUoBo1E9ByUB7xst1rOvwTHjq60BIpKwFD5tosqcgGG
 0cLiLl8UF5F7PVWqB4H8O8yGIkQlYA0immj93XMhfn9/TM0qnrFlu0gCtbdFeQ7FktQ+
 zzOKPMouin50Cs4kBWdxP/wbIVAUdpqZB193gFkPFeVfMSQMyKP7rXZG/xx5PkAp3U9r
 eaPq/Rp9we8jraxJngMOkoYKipDtab4ydftcYq8g+5OYimaUyeKDQ9aGbG2OSGDxyGqY
 evPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G11veEDwRRtVECFg7gLtwnqO3RbQT5sno5+UXzVEXSg=;
 b=XTdyZTqIcPeNVnQVD2kVLZhDKkJCz+AD/3ALIi7Sg2iYJ/H6odKnxHHfoe+n/dVprI
 5JE2CYB3G3vMm/HDIZTOOTwvjyiyHQHqI0Je7X9pXA/gP4zTNKsXiHgvJLv6dTgdkNWz
 IMOzbofHThVn+SH8d6SQEEy2nipMnjCuBblFxpAJdDMImJfPKVI4W7n7l8SuSmUAjdUh
 G1HchnQ1oc24TZ0FRG7N89t3lq7OkLKDoiWg5ZhwZQFfM958jtJLePtKO2OSCiaGCebP
 EPYXAqVVPCOXKnrmmLscyzo1SoWm7eF1HZNgariqobvMLhJDg3TCRQUfIMZwWLvR24d+
 YErA==
X-Gm-Message-State: APjAAAXynSkwAgoBlc0wcmMaxzN64Ech8+vO8pnQmz27Z6aENaP7mLx1
 8mqF7Hg43cEw9z+WKhxOA8TZ/H0/bp6N32yHP0aTOg==
X-Google-Smtp-Source: APXvYqwo/b+2HVcnyVCcfZFbVXzCjk3hhRNuG9DqvZ0qdvEGSZIWiom+14vAVEWOoaAFprOhB5tUTPjcnRXq/CV42To=
X-Received: by 2002:a37:bbc5:: with SMTP id
 l188mr12631714qkf.118.1571913978255; 
 Thu, 24 Oct 2019 03:46:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191015212004.24748-1-mike.leach@linaro.org>
 <20191015212004.24748-11-mike.leach@linaro.org>
 <20191018162009.GB12883@xps15>
 <CANLsYkyYwNv0dApJws+e=M3h6MKqX7triVgY6qy74oOYJe7FMw@mail.gmail.com>
In-Reply-To: <CANLsYkyYwNv0dApJws+e=M3h6MKqX7triVgY6qy74oOYJe7FMw@mail.gmail.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 24 Oct 2019 11:46:07 +0100
Message-ID: <CAJ9a7VgKwZSjh13_f1QgJVAPgt2=1AnC0rm+gYS+=G-c8NWxBg@mail.gmail.com>
Subject: Re: [PATCH v3 10/11] coresight: docs: Create common sub-directory for
 coresight trace.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_034619_836886_67F33312 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jon Corbet <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>,
 Coresight ML <coresight@lists.linaro.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

OK redone with patch09 split, indexes sorted - coresight now has its
own sub-index.
v5 to follow with the docs only patches.

Mike

On Fri, 18 Oct 2019 at 18:31, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Fri, 18 Oct 2019 at 10:20, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > On Tue, Oct 15, 2019 at 10:20:03PM +0100, Mike Leach wrote:
> > > There are two files in the Documentation/trace directory relating to
> > > coresight, with more to follow, so create a Documentation/trace/coresight
> > > directory and move existing files there. Update MAINTAINERS to reference
> > > this sub-directory rather than the individual files.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > ---
> > >  Documentation/trace/{ => coresight}/coresight-cpu-debug.rst | 0
> > >  Documentation/trace/{ => coresight}/coresight.rst           | 2 +-
> > >  Documentation/trace/{ => coresight}/stm.rst                 | 0
> > >  MAINTAINERS                                                 | 3 +--
> > >  4 files changed, 2 insertions(+), 3 deletions(-)
> > >  rename Documentation/trace/{ => coresight}/coresight-cpu-debug.rst (100%)
> > >  rename Documentation/trace/{ => coresight}/coresight.rst (99%)
> > >  rename Documentation/trace/{ => coresight}/stm.rst (100%)
> > >
> > > diff --git a/Documentation/trace/coresight-cpu-debug.rst b/Documentation/trace/coresight/coresight-cpu-debug.rst
> > > similarity index 100%
> > > rename from Documentation/trace/coresight-cpu-debug.rst
> > > rename to Documentation/trace/coresight/coresight-cpu-debug.rst
> > > diff --git a/Documentation/trace/coresight.rst b/Documentation/trace/coresight/coresight.rst
> > > similarity index 99%
> > > rename from Documentation/trace/coresight.rst
> > > rename to Documentation/trace/coresight/coresight.rst
> > > index 72f4b7ef1bad..835e8aa0bf8c 100644
> > > --- a/Documentation/trace/coresight.rst
> > > +++ b/Documentation/trace/coresight/coresight.rst
> > > @@ -493,6 +493,6 @@ Details on how to use the generic STM API can be found here [#second]_.
> > >
> > >  .. [#first] Documentation/ABI/testing/sysfs-bus-coresight-devices-stm
> > >
> > > -.. [#second] Documentation/trace/stm.rst
> > > +.. [#second] Documentation/trace/coresight/stm.rst
> > >
> > >  .. [#third] https://github.com/Linaro/perf-opencsd
> > > diff --git a/Documentation/trace/stm.rst b/Documentation/trace/coresight/stm.rst
> > > similarity index 100%
> > > rename from Documentation/trace/stm.rst
> > > rename to Documentation/trace/coresight/stm.rst
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 296de2b51c83..f903160b507c 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -1608,8 +1608,7 @@ R:      Suzuki K Poulose <suzuki.poulose@arm.com>
> > >  L:   linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > >  S:   Maintained
> > >  F:   drivers/hwtracing/coresight/*
> > > -F:   Documentation/trace/coresight.rst
> > > -F:   Documentation/trace/coresight-cpu-debug.rst
> > > +F:   Documentation/trace/coresight/*
> > >  F:   Documentation/devicetree/bindings/arm/coresight.txt
> > >  F:   Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
> > >  F:   Documentation/ABI/testing/sysfs-bus-coresight-devices-*
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> I'm taking that back - please remove mentions of coresight files in
> Documentation/trace/index.rst.
>
> Since you do have to respin, please split patch 09.  And now that I
> have applied all the other patches, your next revision should be a
> documentation set.
>
> Thanks,
> Mathieu
> >
> > > --
> > > 2.17.1
> > >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
