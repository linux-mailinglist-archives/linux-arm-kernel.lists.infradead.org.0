Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4169F1F5BBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 21:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnZzUwmW2VN+EZGZ3/utH9mDMHm/LZ73OR/LeblFL5Y=; b=NRyxjj2BiOBTq7
	Il0IYPwp4KkXLqBFmqyVJ7M1GyaAqfRHnwOTniDOknFnkasga6Ys2AzcbNotJr2grdSJbW6eDIdi3
	ThPeBdUXjI9S1uDddsaTwpu/HSpAbwlp8qqpClSEzNxFQbVaXFLYLLY13J7vtbGhEAKLaAYnG2ItN
	PxFbAU8ctzsS//FgtRJRYPpmFHiVjiJz0pBLtEaRGjjLYEQMfH6ECJjvNw2sm/pnQwxXUeLfD3ou7
	ldJ2/MD4sGBUomtbWeQ3K75EgBTb7NhqBKi4ZG7iIlXWq5hbawn4Xe+oYUr+UE1A/V1U85VDv5xAb
	dzwhBGXHVitRRVXOIAFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj61C-0003gB-TD; Wed, 10 Jun 2020 19:04:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj611-0003ea-Dp
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 19:04:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id l26so2830313wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 12:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NSUIdscZFTvAj/KAnkXmeLO33H1QImBmP7nNAatzF4E=;
 b=A5UREhW8Zimz/lgVsX6YJceKyEcTDjGffoiiTJOFdDh2MS8Wxd5Ju72jDNEe03+VwF
 mVZ3B2461XaZq/JxobIkPo8zWcoju/Yn/0yxVkOeKJtCgUkiqKoSrFTT2OuKrMCeaeFn
 nXsSEcazn3q3aNRxaP6pf9xhar75XQ1iFYbaA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NSUIdscZFTvAj/KAnkXmeLO33H1QImBmP7nNAatzF4E=;
 b=gJtbWk+R6CVo67X63Y6cof1k3apOZPqgIhsG1BueFQAheqBPWAM3RHew7iuZ2NGIg5
 TCfFTRA4gSVW2a6L53bj2yrCxa8affIk+EDIQ+Jv69ib1I0NhVDcg07G/Fc26Q5SZDTc
 VUGXsR816Kxs35StiobF2Tgz+gPdmRGkM8h05Mcw0hpycpQY99ZdEwnWQBt3gq+qQ3cH
 TA4d8QusYnm4YSpuI4dWPywTJbxoAr43wXSmO2rqss2rHY7eZiyX8xD5J+VYDikNLh8r
 6IjWw9at1fqZApN4W1PBHh6Qg2KzZ8cq6jXT1if+TmABnqeMK2roU+Y6VHwASdi+f0Ok
 SZ1w==
X-Gm-Message-State: AOAM531j72C1NJrRBVDSRMTITMKsy9kQbvsn1+O//EYnI6UGLfkhqGkO
 yEflbOGw2B6mURaBJEhDS/ANlw==
X-Google-Smtp-Source: ABdhPJzTRfYPcTj3IRS5BINNXpxwdDXmbXJOisFqkC0CCPcDchPYcvzcaAwcf6hmVi/W346PEWyYcw==
X-Received: by 2002:a1c:f301:: with SMTP id q1mr4562383wmq.110.1591815838119; 
 Wed, 10 Jun 2020 12:03:58 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d2sm1039640wrs.95.2020.06.10.12.03.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 12:03:57 -0700 (PDT)
Date: Wed, 10 Jun 2020 19:03:56 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
Message-ID: <20200610190356.GJ201868@chromium.org>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
 <20200521171101.GA243874@chromium.org>
 <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
 <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
 <CAAEAJfDboyra5XcEiviJP_3Kk-mDNZH5nstDa_7P7XCV7bu7Pg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEAJfDboyra5XcEiviJP_3Kk-mDNZH5nstDa_7P7XCV7bu7Pg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_120359_483097_FC16DA08 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Sean Cheng =?utf-8?B?KOmEreaYh+W8mCk=?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?utf-8?B?KOWQs+iCsuaBqSk=?= <Rynn.Wu@mediatek.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>,
 Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Jungo Lin =?utf-8?B?KOael+aYjuS/iik=?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>,
 Frederic Chen =?utf-8?B?KOmZs+S/iuWFgyk=?= <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Christie Yu =?utf-8?B?KOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 03:52:39PM -0300, Ezequiel Garcia wrote:
> Hi everyone,
> 
> Thanks for the patch.
> 
> On Wed, 10 Jun 2020 at 07:33, Tomasz Figa <tfiga@chromium.org> wrote:
> >
> > On Wed, Jun 10, 2020 at 12:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> > >
> > > On 21/05/2020 19:11, Tomasz Figa wrote:
> > > > Hi Jerry,
> > > >
> > > > On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> > > >> From: Pi-Hsun Shih <pihsun@chromium.org>
> > > >>
> > > >> Add two functions that can be used to stop new jobs from being queued /
> > > >> continue running queued job. This can be used while a driver using m2m
> > > >> helper is going to suspend / wake up from resume, and can ensure that
> > > >> there's no job running in suspend process.
[snip]
> > >
> > > I assume this will be part of a future patch series that calls these new functions?
> >
> > The mtk-jpeg encoder series depends on this patch as well, so I guess
> > it would go together with whichever is ready first.
> >
> > I would also envision someone changing the other existing drivers to
> > use the helpers, as I'm pretty much sure some of them don't handle
> > suspend/resume correctly.
> >
> 
> This indeed looks very good. If I understood the issue properly,
> the change would be useful for both stateless (e.g. hantro, et al)
> and stateful (e.g. coda) codecs.
> 
> Hantro uses pm_runtime_force_suspend, and I believe that
> could is enough for proper suspend/resume operation.

Unfortunately, no. :(

If the decoder is already decoding a frame, that would forcefully power
off the hardware and possibly even cause a system lockup if we are
unlucky to gate a clock in the middle of a bus transaction.

I just inspected the code now and actually found one more bug in its
power management handling. device_run() calls clk_bulk_enable() before
pm_runtime_get_sync(), but only the latter is guaranteed to actually
power on the relevant power domains, so we end up clocking unpowered
hardware.

> 
> I'm not seeing any code in CODA to handle this, so not sure
> how it's handling suspend/resume.
> 
> Maybe we can have CODA as the first user, given it's a well-maintained
> driver and should be fairly easy to test.

I remember checking a number of drivers using the m2m helpers randomly
and none of them implemented suspend/resume correctly. I suppose that
was not discovered because normally the userspace itself would stop the
operation before the system is suspended, although it's not an API
guarantee.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
