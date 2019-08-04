Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5357B80B2A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  4 Aug 2019 15:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n7sPBqbHxP9n9yTeSW54EwpHCxz/9qADqJGf5MwxBJk=; b=QPsFaW2ATv3tOa
	2fUY0nhFQQ30q7+b5Nb0NT2upFA5PtKaTx88jKLaK37iByYLzcNmIl+GMKZPsn6+44/tTUCsyYYJg
	U1TEnuzloqU0kzzIhTsBSJDmQIcyJjuybpH62SqpX5iHKHwWWQ/oqhPC0xLdL53T1ur4L1fFy0L80
	uTGF1R6qYWKYxB0pzZMSlLINhwVKPGsQqvZnXjTR+9YL7JVtSWyc8/6lgBTp32ZgYNdJYclIHAuT4
	UdP3tHWPEfUImi9lfJ2lT51GmzhXuskHEqR5H7SwR10XdCCo4zbN5kXoDytGariIPs8vJGt+Z+8iZ
	+XxT+TQqx5LemvX6RnqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huGXb-0006VR-Hp; Sun, 04 Aug 2019 13:27:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huGXV-0006V4-Hr
 for linux-arm-kernel@lists.infradead.org; Sun, 04 Aug 2019 13:27:11 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so36825476iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 04 Aug 2019 06:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tS5uvmiliz1mU/YmGkGJRsd/ytkogwy6sWjqAzuDITU=;
 b=T9fW8geSmUnaNHCs9fhYEqK5Azpc3UYAGmAXkDoZywVmLa79kJRiO647pYzQfkgNQB
 4V3Xy3Y/lRfxIyKT9teno/e5FELhKdxad7cAdSinqjvI301fXau/+MHx2IjYg1k8sLWS
 YMaUj69jN7pZMkKROSHzTT5xCQBhzvNS/8fLz/I1Sf0dr/hAlC2qfjEgfkyM849kkGqE
 9O4VeAUjkDs8ygUoy8S1Sa55q1hYmeULf/gU7JQKHu8ktKZ2WVnRTGpsFPR0SFpGngBk
 HjkcHtlFtljs53ddyNnPfKPThUbIEFplESG4W63AGCXZiJwj9DXjAO3mpTAQ/e8jh09P
 uF6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tS5uvmiliz1mU/YmGkGJRsd/ytkogwy6sWjqAzuDITU=;
 b=D8k+NFsa5UQpmvfPovz43Xcd3FrX7xO95Da//jb2ML2clJFRaq0GyRsO8dE6CB01M8
 FMyTZET69aexv9Fy+c45jytrKzL3IDFQUPhqQw6Sl6S3WVXaFLnBOXbf8M3woUAH0tp0
 rJtXRkiWsoiKvPMMID8U+W5/PTFJEbAeBl0HZZxL0xgZyS3olXqLcbrE+d3fcw+hC3Cq
 XzlzCfnZbPEbcirwIjD46Cwo6DgwTnT2sdH2Wu9aKsigfwo+jBRzuL2WOH4dgb6nXVil
 2FVSLu32nmuJErhdPhr2uH4tx+yFB7BxK63qX2bJQozCHxefk/GC8Mla1UJBmWrKjr9u
 0O0Q==
X-Gm-Message-State: APjAAAXem3II1go+IBk3MxRwvzcFUwqsw6HAwTazRXfTHxO8kRKb5BHA
 7Ft+kMr94UfeF3kopE7Z+EicUKex5RQCsDqe75IpDg==
X-Google-Smtp-Source: APXvYqwJnRj3hHt8hX06Ikz59LOkws5DSeOgslPj5QNS8XUCXqbEDqez78l1Qpt7Le1n17q/mOBWTihi2CE1lC8KCt4=
X-Received: by 2002:a5d:9613:: with SMTP id w19mr3099380iol.140.1564925228288; 
 Sun, 04 Aug 2019 06:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190801172323.18359-1-mathieu.poirier@linaro.org>
 <20190801181739.GB5048@kroah.com>
 <CANLsYky1vC-=zNPvOmWt1wLd5A4jcD+sh=Hwdq0rwhW=b1cdwQ@mail.gmail.com>
 <20190802091028.GA14004@kroah.com>
In-Reply-To: <20190802091028.GA14004@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Sun, 4 Aug 2019 07:26:57 -0600
Message-ID: <CANLsYkzc3zvTUwH2smiJmMtif6hToOXddA2r0csgYrzdBfkvRw@mail.gmail.com>
Subject: Re: [PATCH 0/1] coresight: Fix for v5.3-rc3
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_062709_610815_7BF88BCE 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2 Aug 2019 at 03:10, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Aug 01, 2019 at 02:16:46PM -0600, Mathieu Poirier wrote:
> > On Thu, 1 Aug 2019 at 12:17, Greg KH <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Aug 01, 2019 at 11:23:22AM -0600, Mathieu Poirier wrote:
> > > > Good morning Greg,
> > > >
> > > > Here is a fix I'd like you to consider for this cycle.  Do you think you
> > > > could apply it to driver-core-next rather than char-misc-next?
> > >
> > > All of my -next branches are for 5.4-rc1, not 5.3 (i.e. the "next"
> > > kernel).
> > >
> > > So either one of them isn't going to matter to you for 5.3-final.
> > >
> > > > My current
> > > > coresight branch is based on driver-core-next to pick up Suzuki's
> > > > generic device lookup helpers patchset [1]. Applying it to char-misc-next
> > > > will create two different signature for the same patch, something that
> > > > gives Stephen a hard time when building the linux-next tree.
> > >
> > > Why would Suzuki's patch matter for 5.3-final?
> >
> > There was a similar situation during the 5.2 cycle [1].  Here too we
> > can fix a problem that is present in 5.3 rather than wait for 5.4.
> >
> > [1]. https://www.spinics.net/lists/arm-kernel/msg736274.html
>
> But that has nothing to do with Suzuki's patch that is in my driver core
> tree.  I still fail to see the dependency here.

There is indeed no correlation between the fix and the patches in the
core tree.  When writing the original email I didn't know in what tree
you would end up applying the patch and feared we'd end up having the
same patch in two different tree.  Thanks to your explanation below
this won't happen.

>
> > > > I also think this patch should go in stable but haven't marked it as such since
> > > > it doesn't apply to any of the stable trees.  Once it is part of v5.3 I intend
> > > > to send a new version of the patch that does apply cleanly to those trees.  Let
> > > > me know if you want me to proceed differently.
> > > >
> > > > Thanks,
> > > > Mathieu
> > > >
> > > > [1]. https://www.spinics.net/lists/dri-devel/msg219674.html
> > > >
> > > >
> > > > Suzuki K Poulose (1):
> > > >   coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized attribute
> > > >
> > > >  drivers/hwtracing/coresight/coresight-etm-perf.c | 1 +
> > > >  1 file changed, 1 insertion(+)
> > >
> > > Why would this patch depend on anything in any of my trees?
> >
> > I send you patches for inclusion in the next cycle and as such I
> > thought it should be the same for fixes in the current cycle.  If that
> > is not the case, should I send them directly to Linus?
>
> You can send me fixes to forward on to Linus for this current cycle, if
> they are not depending on patches that are only for the -next release.
>
> I always keep 2 branches in my git trees:
>         -linus : patches for Linus this release cycle
>         -next  : patches for Linus the next release cycle
>
> If you have bugfixes, make them against my -linus branch and send them
> on.  Odds are they don't have dependancies other than what is in Linus's
> tree, so that's fine.

Perfect, that's the link I was missing.

Thanks,
Mathieu

>
> If you have patches for the next cycle, send them against my -next
> branch.
>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
