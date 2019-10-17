Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D4FDB2CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 18:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztqoSOWY8t88ZRCvblfRBOiK0vQfmY3JLvb2SbE2czc=; b=CtuihMRtpUwsbl
	m156oEaAnpsYiMuJS9kKijtckqrpp+wHsCHO1va8DGqFJxIudN1cV45DAPT/Y3M5l3Qhway8ciMId
	IG4Y0Rs3LuRqLB3ANNQSudBxc++DTYq0Scwa3YnNUlzJr1cvuWxlt/i0USoW/1K4mWOhvk8OB0MZV
	Mx1Zkd6yNeh+meVJSmsjss8tpkxv9yI1TaJ6Qu6fKt+rwu8MnoO80kk+dNDyfLZCxf5dgz5rNqPm7
	ad1MaWe19aOsR9egj3FLlTK+S9DPR+KKz0pA12GT32u/6kS9qUYoOWOBgHwdzixflCliHCtHyZLPT
	Eu5AMhhPOj2QGr0fGXSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8zn-0007ku-64; Thu, 17 Oct 2019 16:51:27 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8zK-0007WI-6W
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 16:50:59 +0000
Received: by mail-il1-x143.google.com with SMTP id t5so2690966ilh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 09:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tBLNQqGbXkMMNFqwqmoHYpYR0omjyH2DGrqLk8lOHRU=;
 b=MvI8fZNQWqbbSWHSvnZ/YilFT8r4cXVjXFQLbWKFHwMU8rmnUzL7K0U7z5JH/0eobW
 tbUj8KjJpd9z05VN5jN3ZzXxr8yawzv+YjV/j/bJdAAWZMxY4CF+Mn4J3g8EbucRK0HU
 ocyC0XJjnK9HgOO3KDcSz/Q2uRNI1vIBMro+XbyDI5y7q72LPb93CBqPwRsp5244gISA
 mCRHf/ofo4mbZL+TotrdbLWcutWnrPd3oEYetBwlcx97bIfKJdbH5dYcoimf1YyvuaJ2
 j+a1Ymg/cLrIUhAfHFlH7TCAjLWLLrq+PSotmrhtIsIaitOcf84U8EHheu9nDsOTE2qw
 MKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tBLNQqGbXkMMNFqwqmoHYpYR0omjyH2DGrqLk8lOHRU=;
 b=tJ2VJ1QIoBMiRdlqZVhOezdmXfFkENYcQ4Q93QQiL/Ocb8yU2wSdqr4ro+N8qjGDBj
 ULZHVcHbnruY3DxVoumvAO4F1Q3r3wWWgqgC8tENWOVMzYE/jI57VygwX+U/f4PkW3nn
 Mj7Kmdt/H/d1O7Qrj8n1/Ok0VV6LMkxbhZ+XX1GWDycsoYBgK/sRTVahwPxf0GcVqt8V
 Uqbp/kGhr2RFRsm9KlugcxWfkvfxKFNFhjapiufPPmTUu8g4oCkf5H6c2H2jSYrrv+qc
 T5LvsB7sJPOO9A4D7rp7pONSdSqP0afJZAU5qCv3KWPfyDoAE1QXSu79PBOBitl6Od6b
 jpLA==
X-Gm-Message-State: APjAAAVlhxsZCO1PH5b/elFUaZyKVzPHJ9zzyjorhEDFoNLDMvyLTUIx
 vRrHHc92yxQNkw8SLGNiCrMFMIFmK957iAAGbw8NHA==
X-Google-Smtp-Source: APXvYqzaJqnOh8u1ffkHjbOR8474PuKjMUFOrqsL8xsQWJAm4wh9nEWyJeiQKud1Q6f+SzNL5TC5NIZfvS6/nl1YvvE=
X-Received: by 2002:a92:40c4:: with SMTP id d65mr4939938ill.50.1571331054413; 
 Thu, 17 Oct 2019 09:50:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191015065937.23169-1-mathieu.poirier@linaro.org>
 <20191016183121.GD801860@kroah.com>
In-Reply-To: <20191016183121.GD801860@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 17 Oct 2019 10:50:43 -0600
Message-ID: <CANLsYkzg2kwxTG=+RZr4CNqQxNSttcyp_bbmO2u=Vq=HJ5_xtA@mail.gmail.com>
Subject: Re: [stable 4.19][PATCH 1/4] ARM: dts: am4372: Set memory bandwidth
 limit for DISPC
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_095058_241697_DF663ED1 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4 . 7" <stable@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 16 Oct 2019 at 12:31, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Oct 15, 2019 at 12:59:34AM -0600, Mathieu Poirier wrote:
> > From: Peter Ujfalusi <peter.ujfalusi@ti.com>
> >
> > commit f90ec6cdf674248dcad85bf9af6e064bf472b841 upstream
> >
> > Set memory bandwidth limit to filter out resolutions above 720p@60Hz to
> > avoid underflow errors due to the bandwidth needs of higher resolutions.
> >
> > am43xx can not provide enough bandwidth to DISPC to correctly handle
> > 'high' resolutions.
> >
> > Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > Cc: stable <stable@vger.kernel.org> # 4.19
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  arch/arm/boot/dts/am4372.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
>
> What about 5.3?  Is this ok there?
>

Yes - all the patches in this series are also applicable (and apply) to 5.3.y

Thanks,
Mathieu

> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
