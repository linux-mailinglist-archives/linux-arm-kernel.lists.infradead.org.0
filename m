Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AB41D492B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nphVMmHl0N6dEDlAwAwizxVIJ70GVGQS3uTPRHH0biU=; b=WI2hIuG7fdC6sl
	nJqq2hvV8UYk2cL3JKjNdCR5Uk6pPdM7nvM2KGjNSevPB7WM3X9AZlqntHbFl1V7cTTotH5rI1SLf
	Wu3iEm+zmGgnc+UZADJWh0LKdQUX1+J5UJjnLQNOv1sa1kK9K3cj70rAdVltFjV8nNVI5yNWoGbiq
	kEGylGKDQtPTyLUnIHleDGN1vdEW181cV+WYLWPGvT4EhbMlu/DONN47jO2dA124Nmd6ebntTOnDY
	jXqkT/SpTDsQjqKyVGNt6bKQDF1deQQYUot4ikxnfb3cHoRlAudS6RiH0I1QOOzinAKHnHNSO8CZ+
	vdA1m1B1lVLnqdr3cF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWQN-0004Ll-Us; Fri, 15 May 2020 09:14:35 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWQF-0004Kj-5v
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589534064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sAyNKqy0PvpNZ7XM4XJFqPAgjGRTcvpeLX/hBzxhqBM=;
 b=AIDVqZV6IaVr9E8Wx0iCfEZJtCD3gM1285Fcm+Ft7+izU5nsU0Xy1RBkNNUK4l1iNCE9aw
 RlxM7JdK5lVJgd286q6E9QjA7azu165isTN156sKrtCyiicavjvhcNKdpyWYHZqSXuehFl
 wXmNRO4RtHgWz0cRHtugwqYKQvuUBcU=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-SdMO9ZXxOB61n1jm-4mdjg-1; Fri, 15 May 2020 05:14:22 -0400
X-MC-Unique: SdMO9ZXxOB61n1jm-4mdjg-1
Received: by mail-qk1-f197.google.com with SMTP id 189so1529645qke.17
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 02:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sAyNKqy0PvpNZ7XM4XJFqPAgjGRTcvpeLX/hBzxhqBM=;
 b=UVzHPWLwliG3F8HonfQf00uXlgpFgnCl5MQLPb6fUqIywWmNdvmdUEZknWyvlAZwN4
 G36K5dWPUsE0TiHi8hAVNwtziZcXrZQxIkHFv2Oy9KU++2Yt/0zkjFEjZdoWbHbjaU0b
 RrdBUsuHI2I19GBwKbk/QiJcIC6cShoNGcpa5uEaY1M1iY1wDnxgxrQJCoDv7kLZElA3
 Yk6wd1p2OuD+FTVqkV03tSb5WxPPJK3A3E8ycLTen53OpN8LIYQ3FqeFxHYMhZb/HEm3
 9DsQiPxeUbbzcoG6g64qTzG7nCeXQuKADctmr8TpwHvnQoyvUTh6kNPOUEs5BIdospwe
 1JPA==
X-Gm-Message-State: AOAM533c2urHgdTkgeMGhSQyWURNcOsguVaRRQQBs6CC5oeceWP8CN7y
 hDBnmgbhInlIoq3ajoAJWyoE8BXYHuRVl+aqAXyjzMeAv9BVL4C/JqKlHaGplxoWM/XxYwN2xmA
 w9k34HIViEwySuXZcr3EQd4Inw1+awLkmfa+RkNLBQHtftYRsx7U=
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2367458qtb.200.1589534062295; 
 Fri, 15 May 2020 02:14:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwyLTxFyixDvnPyg3oeL1fkkw3utZ2sn7m3Aff/TLZ0tuJ5vQAmsiR8I5ZPVoH3XSv1K0qQ5EhHgkWu/AeBT0=
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2367418qtb.200.1589534061588; 
 Fri, 15 May 2020 02:14:21 -0700 (PDT)
MIME-Version: 1.0
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
 <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
 <20200428100710.GD3868@gaia>
 <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
In-Reply-To: <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 May 2020 14:44:08 +0530
Message-ID: <CACi5LpMnbFbmqWOn0GfPD2H50UcZ0XHQ7X+Cd0E-cS-zfL7tQQ@mail.gmail.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
To: Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021427_295981_A6480B2A 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, arm@kernel.org,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Thu, Apr 30, 2020 at 10:05 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> On Tue, Apr 28, 2020 at 3:37 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Tue, Apr 28, 2020 at 01:55:58PM +0530, Bhupesh Sharma wrote:
> > > On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > > > On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > > > >  arch/arm64/configs/defconfig | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > > > index 24e534d85045..fa122f4341a2 100644
> > > > > --- a/arch/arm64/configs/defconfig
> > > > > +++ b/arch/arm64/configs/defconfig
> > > > > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> > > > >  CONFIG_NUMA=y
> > > > >  CONFIG_SECCOMP=y
> > > > >  CONFIG_KEXEC=y
> > > > > +CONFIG_KEXEC_FILE=y
> > > > >  CONFIG_CRASH_DUMP=y
> > > > >  CONFIG_XEN=y
> > > > >  CONFIG_COMPAT=y
> > > > > --
> > > > > 2.7.4
> > >
> > > Thanks a lot  Mark.
> > >
> > > Hi Catalin, Will,
> > >
> > > Can you please help pick this patch in the arm tree. We have an
> > > increasing number of user-cases from distro users
> > > who want to use kexec_file_load() as the default interface for
> > > kexec/kdump on arm64.
> >
> > We could pick it up if it doesn't conflict with the arm-soc tree. They
> > tend to pick most of the defconfig changes these days (and could as well
> > pick this one).
>
> Thanks Catalin.
> (+Cc Arnd)
>
> Hi Arnd,
>
> Can you please help pick this change via the arm-soc tree?

Ping. Any updates on this defconfig patch.

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
