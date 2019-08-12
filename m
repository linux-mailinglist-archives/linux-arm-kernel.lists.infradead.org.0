Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4A78A989
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzyOLWaDZ/TN6VymshjD0Zbu2M9Zj9tV3DMefBPrjN4=; b=PSJF3Qvmk/K8An
	U64VvmiiYJVrycO/4romMhd/5J4Zzv4mB28ogOmqK4Bbs2LOQx7MFfOVMvPUOQMjW1xnhys/J2Hxi
	IIrwIHyH5vBbN84n0ZN24upsEjvaNuhXlh12HRpFTtAycsspby37NvDv+uEmNvhZBnI3oi4r/XErI
	fV5pwZ4AIBq4WMORXxAN+brepAbDMqwjpsNrgiBe3wHAqw78yUtdFruRjA7Pa0A8+tY2+8TG+Lfbj
	afQKkTZJxdKBc1G5P+/tKDXafxbVac8FMFbIOHk2FR7WdXMj4B+Z0ZMFemDx1fd3zm1NTCqALsxLg
	p+ZzVOKapVIx/AGJvhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxI5U-0008VO-0s; Mon, 12 Aug 2019 21:42:44 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxI5H-0008UG-I1
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 21:42:32 +0000
Received: by mail-ot1-x342.google.com with SMTP id q20so11802893otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 14:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gx6QSLesJel3EOn97a01WuWFWtw8sELpqZv3XHH4TkE=;
 b=L7tL6lnUwjerVWRjOf2iuk1/0vpIdnnLXUclicu9EOj4VQmxfw+195eNnnVP9D5A//
 s33XOs62eRI5nqcXjWFQ7zf64nTA66h/zrxAzyAdDspuxAMzibZe3qyVg5FhfifXwsCp
 d1faRADV2Hh1kbo/gA767R85R5ZSllgoT3i2cYwdPJDzTVQDFbgRsw4JWq6Cmuh5ecrL
 TPgnjcLkuOCnVuSfTw3+YqYAW+2pvCdj7LD9jEOqRpWrXF25XodfN1JsNeAby0bYpmJs
 yDqh2NyYAyvbvVOf3fQb9UZ6ZvC4ByheZUJwcFgaRyXh2XJcrBM7uJkg462XjZgeih92
 /Zbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gx6QSLesJel3EOn97a01WuWFWtw8sELpqZv3XHH4TkE=;
 b=GCWcpK7aRFBqe8EwRnE5aexurJgazXS3V8/bGVT0XIKdYZ4MImqrDx7doyd6J9w4t8
 zuhgUyh8/8i8WWZhuzR8niHjUogVcHh1n8fuN31WCcaCWWmkazWIHrm80WHXeyj/gndB
 JpJkIVJ9Rd43v50YpGTo2+hF72t9f2eg2ZxP6+zGzFb7RB3EBLzUQpDVIyVRjs/BbMPk
 G94RFLrhwUjB03NxPlORgJ9uHIP3sjf5YlqnHWvIoug7k71hSxVmSHV/FvPZ3Hxsb0QL
 27oaGRjYjjIPWyCpUgT22Zpwet9a2re73GhI1BwIDvXP1eD1Ynz+3DfAMgwXIKON/Mqk
 d/dw==
X-Gm-Message-State: APjAAAW2MVJL8SpSXPaPkmuuh0+vuH7OcHtpGiTFVeijFoktY4PahM8e
 8ldaFp6H1IZgYz6njl1GeScXm8w+zfygJzmzJGR3JA==
X-Google-Smtp-Source: APXvYqwt49xvwotsJKc/cNOaXDlphf+EqnjZvINoE5+CnGxbY/po6fhZWP8cqKRsjzvFc2n4GYl/GZplqFVFtSSXUEY=
X-Received: by 2002:a5d:9613:: with SMTP id w19mr6341798iol.140.1565646148509; 
 Mon, 12 Aug 2019 14:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
 <20190812202251.GG9280@kernel.org> <20190812202706.GH9280@kernel.org>
 <20190812202947.GI9280@kernel.org>
In-Reply-To: <20190812202947.GI9280@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 12 Aug 2019 15:42:17 -0600
Message-ID: <CANLsYkwjdhzVMwrWboTTOw+P3NajtoswxfxhodK0DdeexFCR3w@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_144231_660564_38F5624F 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 12 Aug 2019 at 14:29, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Mon, Aug 12, 2019 at 05:27:06PM -0300, Arnaldo Carvalho de Melo escreveu:
> > Em Mon, Aug 12, 2019 at 05:22:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> > > Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> > > > @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > > >           .events = POLLIN,
> > > >   };
> > > >
> > > > - if (geteuid() != 0) {
> > > > + if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > > >           pr_err("ftrace only works for root!\n");
> > >
> > > I guess we should update the error message too?
> > >
> >
> > I.e. I applied this as a follow up patch:
> >
> > diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> > index 01a5bb58eb04..ba8b65c2f9dc 100644
> > --- a/tools/perf/builtin-ftrace.c
> > +++ b/tools/perf/builtin-ftrace.c
> > @@ -284,7 +284,12 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> >       };
> >
> >       if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > -             pr_err("ftrace only works for root!\n");
> > +             pr_err("ftrace only works for %s!\n",
> > +#ifdef HAVE_LIBCAP_SUPPORT
> > +             "users with the SYS_ADMIN capability"
> > +#else
> > +             "root"
> > +#endif
>
>                 );
>
> :-)
>
> >               return -1;
> >       }
> >
>
> I've pushed the whole set to my tmp.perf/cap branch, please chec

Please hold on before moving further - I'm getting a segmentation
fault on ARM64 that I'm still trying to figure out.

>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
