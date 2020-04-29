Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373AA1BD621
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SSJcHCaM8Xi695dJBQEi55O+4QjYDP3Qdh+dJ+b5Ro=; b=CU5qFWVB1Yi2Ys
	e2WlDkFlft1MKz30zIHE6nqMdfQHIGWOG+m6w/lDuXnYp0lFPk52tmTEVxe7PyWoN/b5soxS/mz7+
	+5L0CFQCN8X76R9LH858sLy47KxUMCHXrasGUkfYdNuspLXvuTwiOvwRMRplmJ0m8oDmnWUcYotkf
	Q0/ZpItv5AdTTXHwJizKMBHNnZEc8ttAobfUNYwCEX/Yzz+kZP3alsS9qpVAwl+J4Zi6/XOa6sR3b
	fM4TlBahB1dG7J/QchO9C4w1gnpoM8n9YV7ISS+8jFKcyJZoV9427x7yWuaLlI4pxOXtU/hzORIJa
	sAlEZ4RLBBMzOXqexyFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThEB-0005FB-E9; Wed, 29 Apr 2020 07:33:55 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThE2-0005Ec-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:33:48 +0000
Received: by mail-oi1-x244.google.com with SMTP id o24so1004253oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 00:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IcXQ08t2W8c/2dEBG4FRM5sIS4gP2ylI5VKbzNwowo0=;
 b=pdoTOIrw610Yqb9QtrA+nZF4Kva/D5G2N3zjYWZXMdkAUfrUlm7sOlp5U0uF3XGpER
 zPRGwW0FMnLgx2soQnoByHaaL5Drp8C1wf/UdvvSl6Z4gq+PZpE1R2ET/1NOFEVh7e0Q
 lC7214F2D663aUmf188X+MY7XQBPK/1SDwNwFfqHx17klMxLBgUgZ9dOK4ekIrTOChlR
 fnoN2LkoIDaUZd933bK3jbd/2IIBek6Sids97bMeoGYjLPh5vVw2JDcLFe4UVIbsHamp
 A6JY5UFAoPIlCL9xvK4JXC4YTpNMLoc00AouoAh04oHGmg0vGCAXVctyhQCGoQ+3aFZQ
 jlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IcXQ08t2W8c/2dEBG4FRM5sIS4gP2ylI5VKbzNwowo0=;
 b=FUykj8xPse3DgMdgfvsh7iVQu9ungKmD4ujJIxWkKYuuOTPcSUYa6hgEfWKkS0Efcd
 NSg9fuTVG8WQ02pjNvLnesHsiuTZ7W/X6vn49mvvoEE83GGyVukHV8TwF+OhecBZvTT+
 1dO/ATSJqK5cQ9f8LFg9HrstPZhRBBUuq3clAJl1BX/85N1XUnjUTeUoVaVOqMure4br
 T3IZ5IoenFCi7EG77piL3m1NKwwVgFDWwiZYYmjbh/kFWeOFJVWD0+u5oe2hMOoi2atO
 YjADCksAvBzxPqtJs755NcpAgAVbH5uvKKqrdJbQdeOmewfUGd3fXytYegkX/I3XXat0
 ydbw==
X-Gm-Message-State: AGi0PuZHbuWqr9cCV0Ja6vg1GSCL+JIewCdGUwspY+mymluuRvBs73vG
 90im/IrETXQSEtRsSD61n9izevj4ytmzjLd5KtGt7Q==
X-Google-Smtp-Source: APiQypLG6uX3M+GgB0+qSb8maqG9spFZnfD3y/vDtToEl6eDzvx9bqPxJdSbx+jt1HartzSaX5MX7al9DuZmyY0Dox0=
X-Received: by 2002:aca:abc6:: with SMTP id u189mr813007oie.30.1588145620794; 
 Wed, 29 Apr 2020 00:33:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
In-Reply-To: <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 29 Apr 2020 00:33:04 -0700
Message-ID: <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_003346_433490_EB538A4A 
X-CRM114-Status: GOOD (  24.27  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 11:06 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi Linus,
>
> On 28.04.2020 22:39, Linus Walleij wrote:
> > On Mon, Apr 27, 2020 at 11:25 PM Rob Herring <robh@kernel.org> wrote:
> >> If amba bus devices defer when adding, the amba bus code simply retries
> >> adding the devices every 5 seconds. This doesn't work well as it
> >> completely unsynchronized with starting the init process which can
> >> happen in less than 5 secs. Add a retry during late_initcall. If the
> >> amba devices are added, then deferred probe takes over. If the
> >> dependencies have not probed at this point, then there's no improvement
> >> over previous behavior. To completely solve this, we'd need to retry
> >> after every successful probe as deferred probe does.
> >>
> >> The list_empty() check now happens outside the mutex, but the mutex
> >> wasn't necessary in the first place.
> >>
> >> This needed to use deferred probe instead of fragile initcall ordering
> >> on 32-bit VExpress systems where the apb_pclk has a number of probe
> >> dependencies (vexpress-sysregs, vexpress-config).
> >>
> >> Cc: John Stultz <john.stultz@linaro.org>
> >> Cc: Saravana Kannan <saravanak@google.com>
> >> Cc: Linus Walleij <linus.walleij@linaro.org>
> >> Cc: Sudeep Holla <sudeep.holla@arm.com>
> >> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> >> Cc: Russell King <linux@armlinux.org.uk>
> >> Signed-off-by: Rob Herring <robh@kernel.org>
> > Makes sense to me, and the same approach is found
> > in the generic code in drivers/base/dd.c so
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > The timer-based re-probe was added by Marek Szyprowski
> > in commit a41980f2a3eb33ed7a2636e83498b47e95ceb05b
> > do deal with power domains. I guess it mimics dd.c
> > deferred probe at this point?
> >
> > There are a bit of other differences that have piled up,
> > should we take a quick look at dd.c so there is not something
> > else we're missing? I see some PM code for example.
>
> Well, late initcall based approach is what earlier version of my patch did:
>
> https://lkml.org/lkml/2016/4/12/414
>
> but then it has been requested to solve the issue 'properly':
>
> https://lkml.org/lkml/2016/4/12/455
>
> https://lkml.org/lkml/2016/4/14/875
>
> For me it is fine to get back to late initcall based solution, though.
>

I haven't really dealt with a platform with AMBA devices and am not
too familiar with it, so apologies in advance if any of my suggestions
are silly.

This whole "don't add a device before the clocks/resources needed to
read the PID/CID" seems like something that can be solved by having a
dummy device that "probes" when those resources are available. And
during its probe, it adds the real amba device. That should avoid all
the reinvention of deferred probing that amba/bus.c seems to be
attempting.

Any reason to not do something like that? I'd think that should clean
up a whole lot of this code. Also, if we are primarily dealing with
AMBA devices created from DT, then we might even be able to massage
the fw_devlink feature to optimize this even more when fw_devlink=on.

Just my 2 cents.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
