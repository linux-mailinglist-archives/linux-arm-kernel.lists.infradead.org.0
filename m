Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9271ED7262
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:36:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72AWqDmpnBzk9+l/694zA8f3jdhYvsKPJ0aAO+YFcN4=; b=PRtXOV1F8hzAr5
	MSO7sxE2Y/aSXkIsD41dlPXfvROBzmhZQrWEjt4Rr5TfhuC+jam3RcjsVeuKrJagDjwb2hnXVEDhd
	M3/2kmu8lpiFqNEcq0I+1ghNy+Spm5mucJx9/4+e0bUjVzssxU5NMgZ+srFVoCAH67P3JMyOt7t5Z
	RsGDiWnvRcY3jSXtD83Xttha8a7AwyFVS1+RECNbJ0eBviCdPo8Bh21nJatEZGQxIUI3RC74s7V9C
	OM/jdJNmAiqti2nUNV3DYPGw4Nsoh0m9I7xBn5VfzXsw5N9BG63Us+DaJA8tt07HskmBp9zG3/gRO
	e+GpqaNIQxVuXIzK8fSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJFt-0000YA-5u; Tue, 15 Oct 2019 09:36:37 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJFk-0000XE-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:36:29 +0000
Received: by mail-yb1-xb44.google.com with SMTP id 4so6341376ybq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 02:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMrIAnZ82+rBIfraJTHtx7CjmsFJKaDtLSbFOzwjTXE=;
 b=BAFaP7aiq5gaPqOXng6TMHCql16AL4AFgl/Ejp3CUchGQwSKQfszAhzzzSYft1g+Au
 wXKXNKpIVW4gbP/z/8XCCYi0piqNvBZ5K87ZITK8rHCNUPgV71PzYzf/lzI04N3v04R0
 AFO739QhqbEbQldEQBXF5xF0eOgFgAvg/O8ZNzkWCczS2gfDS0DiheutwA59ZjDJh5DF
 Wax26kW6RPj7B/JCgYzZxl/Zyv4ga/kmXr++znOZLPWHwNnSmLhQPJl0M7/yXqfwkqGL
 xz/9M0V+2jCusklQLCnkwfSHFA2S18BsdfUwAQ34M6LX5XLdSaKy6dKQROBIRUQ0lued
 NoZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMrIAnZ82+rBIfraJTHtx7CjmsFJKaDtLSbFOzwjTXE=;
 b=N6/zqgR0GljUyKfPdFFF2i449F9xayAAYnD8c2caROZu49GFvZiZL21ruDwF2/CRG5
 N7fwAuZYcYbmnWMa5fZ/9BwvXuWLTvdpVUtbD5XV5da6iUKZlYPSX6ppGz7WuKv00vBG
 /4vl4JsdwPpg+yRFS1A2Y4VwXjSbwbg21G4uNAAvolxfSZTVad8vdhcoLVLau4B235P+
 gimmGJ9Bo1aNwWdntGpCQxjIEJZZpxMgvUVbDMVa+VHkzwJnYjroauVzz9DB6khMNPbQ
 qbjOT2T/z7keXiHznWL7Nk7bCQNGmLIWw0lBjFbM/+LJdBGMgEiPlP8NnSYoMV/FhTq5
 Dblg==
X-Gm-Message-State: APjAAAVv226vSO41b3hRv8ECIT4nKYwpoG7g/kS7IWKdQ7wQYp+Cp9wP
 NxN1bw2weoR+3OmcqcQ8JGZLHYN+lI3iC9EwND0=
X-Google-Smtp-Source: APXvYqzfBkWPsmhmg21XCDLG9UYkB1oSENrt2pQtpaUbfuRqWjAfwiBnCv2x3+R8EmW7I7Sm1/xRSnskoDfK7ldkr3M=
X-Received: by 2002:a25:7909:: with SMTP id u9mr24585102ybc.33.1571132185981; 
 Tue, 15 Oct 2019 02:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190830125436.16959-1-ganapat@localhost.localdomain>
 <CAKTKpr43RyG0fTp3nOQP--F80JYD1aCHEU5TJNZCK8LPCLfswQ@mail.gmail.com>
In-Reply-To: <CAKTKpr43RyG0fTp3nOQP--F80JYD1aCHEU5TJNZCK8LPCLfswQ@mail.gmail.com>
From: Ganapatrao Kulkarni <gklkml16@gmail.com>
Date: Tue, 15 Oct 2019 15:06:14 +0530
Message-ID: <CAKTKpr7r2v8K6WLThvO8jBXjv7FiFbgFOG5McsW3FnqgVoRXqA@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add CCPI2 PMU support
To: linux-doc@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_023628_203565_08C8E376 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gklkml16[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gklkml16[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>, Jonathan Corbet <corbet@lwn.net>,
 Jan Glauber <jglauber@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Sun, Oct 13, 2019 at 10:45 PM Ganapatrao Kulkarni <gklkml16@gmail.com> wrote:
>
> Hi Will, Mark,
>
> On Fri, Aug 30, 2019 at 6:24 PM ganapat <gklkml16@gmail.com> wrote:
> >
> > From: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> >
> > Add Cavium Coherent Processor Interconnect (CCPI2) PMU
> > support in ThunderX2 Uncore driver.
> >
> > v5:
> >         Fixed minor bug of v4 (timer callback fuction
> >         was getting initialized to NULL for all PMUs).
> >
> > v4:
> >         Update with review comments [2].
> >         Changed Counter read to 2 word read since single dword read is misbhehaving(hw issue).
> >
> > [2] https://lkml.org/lkml/2019/7/23/231
> >
> > v3: Rebased to 5.3-rc1
> >
> > v2: Updated with review comments [1]
> >
> > [1] https://lkml.org/lkml/2019/6/14/965
> >
> > v1: initial patch
> >
> >
> > Ganapatrao Kulkarni (2):
> >   Documentation: perf: Update documentation for ThunderX2 PMU uncore
> >     driver
> >   drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.
> >
> >  .../admin-guide/perf/thunderx2-pmu.rst        |  20 +-
> >  drivers/perf/thunderx2_pmu.c                  | 267 +++++++++++++++---
> >  2 files changed, 245 insertions(+), 42 deletions(-)
> >
> > --
> > 2.17.1
> >
>
> Any comments on this patchset?

If no further comments, can you please queue it to next?

Thanks,
Ganapat

>
> Thanks,
> Ganapat

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
