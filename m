Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFFB78946
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b97T+OLqPlwVB9cXJIKmD2k6khngn1iCVqpgh3fMolE=; b=Jp95TAVWbkyKWh
	4tQRvlifiDjepStbE/eCUxgK4SCQMr/QTeP59PipwL0aswTRB1ucVv9L56uOVxzhSRU+eW657YaTl
	EhqjsILWpapoe8ttIbilzMvO+buAIdagGBFJatDnJ+U+v/uk9QsB4cZcdAnQP0x2yy6hoJ3PKnYYX
	eq8Ik+s3+NoB+8nbSm+vUOQMlcfqiV8hQjBJ40iNH4TL8L4BAgJeV6aCAfGAcYKNXlNlzusA40pgr
	JE8QtSq6Oxai6R+jBJu6POduoZ1rHU+c/gJ8P/3e1AzdgVO0QS4EDMTAaTjxSBdcpLLxqmDALdmQ1
	F+PsvIEo15LG1ghG6IJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2ao-00087L-BA; Mon, 29 Jul 2019 10:09:22 +0000
Received: from mail-lj1-f174.google.com ([209.85.208.174])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2ad-00086x-FG
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:09:12 +0000
Received: by mail-lj1-f174.google.com with SMTP id i21so58032232ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 03:09:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TmRNe2WlgP9BihNacdzEDG1yBP4Iz6xmtdUZLVFf71I=;
 b=hAmuwKl3vthrY0rjp3okP7QqGO3K3FZMf7S97Oope2aVGAxyngjln2yqd9/fiLLx3U
 TA18VstS39U/t4/WZprlnIEELth3Zdq0J/EYNWA6LhxuPZ0Fy6Qcrpi0G/0Cf4eYTvck
 ty3PaTuspjbxas2r4W5xguzRuGmywdoHzq6AZk+/JzSyM40T9StlsUM5sEyLkwhYoV1K
 oHYFRgSjs3SKakRc0f4F+bOa150Tn2QPSVozASKTqzzaRrYKsgDH3e9sDF23JhGw4l3b
 QL9sju5tR0zeRTTuqnVblJNJWcc5hr4liXh8gbpm3jF34Xxww7LT4tafLXoUDNSCl4DA
 Yg7g==
X-Gm-Message-State: APjAAAVRd4PhHb2vMsnsKMXXZQFZOKOoHZDVSvNKsSjIPzvXGWXx207Y
 PJ4V3/aUZo1NgXGd4kPzbKzH/0lZHJnzgsk8Y/DgsA==
X-Google-Smtp-Source: APXvYqyJogBxwRYEc/+cX8TKZoaJa4kfDQRuctJRlXgAgVNuUdUHypsAiDNy9ssolywjDFLqmsIVycSaE6UWbanOI+E=
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr41781869ljk.106.1564394949672; 
 Mon, 29 Jul 2019 03:09:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
 <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
In-Reply-To: <20190729095047.k45isr7etq3xkyvr@willie-the-truck>
From: Matteo Croce <mcroce@redhat.com>
Date: Mon, 29 Jul 2019 12:08:33 +0200
Message-ID: <CAGnkfhxWsaDpxsE5Asj1dUxXGJvQr4_oq4ZDWtbn-zsbh_jkMQ@mail.gmail.com>
Subject: Re: build error
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_030911_513685_18001CCC 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.174 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 11:50 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Matteo,
>
> On Sun, Jul 28, 2019 at 10:08:06PM +0200, Matteo Croce wrote:
> > I get this build error with 5.3-rc2"
> >
> > # make
> > arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.
> >
> > I didn't bisect the tree, but I guess that this kconfig can be related
> >
> > # grep CROSS_COMPILE_COMPAT .config
> > CONFIG_CROSS_COMPILE_COMPAT_VDSO=""
> >
> > Does someone have any idea? Am I missing something?
>
> Can you try something like the below?
>
> Will
>
> --->8
>
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index bb1f1dbb34e8..d35ca0aee295 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -52,7 +52,7 @@ ifeq ($(CONFIG_GENERIC_COMPAT_VDSO), y)
>
>    ifeq ($(CONFIG_CC_IS_CLANG), y)
>      $(warning CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built)
> -  else ifeq ($(CROSS_COMPILE_COMPAT),)
> +  else ifeq ("$(CROSS_COMPILE_COMPAT)","")
>      $(warning CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will not be built)
>    else ifeq ($(shell which $(CROSS_COMPILE_COMPAT)gcc 2> /dev/null),)
>      $(error $(CROSS_COMPILE_COMPAT)gcc not found, check CROSS_COMPILE_COMPAT)

Hi, it doesn't fix. I've tried to print CROSS_COMPILE_COMPAT and it
seemed empty, but hexdump shows that it contains a new line:

# make 2>&1 |hexdump -C
00000000  61 72 63 68 2f 61 72 6d  36 34 2f 4d 61 6b 65 66  |arch/arm64/Makef|
00000010  69 6c 65 3a 35 39 3a 20  2a 2a 2a 20 43 52 4f 53  |ile:59: *** CROS|
00000020  53 5f 43 4f 4d 50 49 4c  45 5f 43 4f 4d 50 41 54  |S_COMPILE_COMPAT|
00000030  3d 27 13 27 2e 20 20 53  74 6f 70 2e 0a           |='.'.  Stop..|
0000003d

-- 
Matteo Croce
per aspera ad upstream

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
