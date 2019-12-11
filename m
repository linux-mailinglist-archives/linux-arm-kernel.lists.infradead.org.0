Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92F611A875
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:00:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyE1rBrvRz5Kn5dcp6VnrFKvFIjJfGc4wEQX08SSJpk=; b=Ux0TrDOoLjHLh/
	/HrwhZUg5GsKzXKFWHKVDUEVKivbpAdPxqICigqLYrZ7LWnRRj0wAIz5L1cKFm8zpdx5MkNOeQoVL
	D3tnOJtTkwOnYOW3qPs5uVRThOE/hr1COSw8m65tuEmP/qoxCntpqSUsVriM1+7xRBAgzydodKB5/
	UnFZ70WdAd4ogTcg5ePyhfiIpRgNDlwz3hO5UWaUr1rzTDMaC2d71k3S3BKiovifyxRbB54PuPKsp
	CM2vEJHIH+8LL1XabKQP1ulmEPyiYvS05acnrQAdl1jeuX8ESkYyxuh6Zl5TQo75Y37+j4FvEHBxV
	TTzGG5bh0eixbd3KU/Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyne-0003x3-S7; Wed, 11 Dec 2019 10:00:54 +0000
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieynU-0003vk-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:00:46 +0000
Received: by mail-ua1-x932.google.com with SMTP id d8so3234978uak.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 02:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GPHN1AYuunZqO/oxGQmIHjw9s2N+wk7NQPQ24v17qUM=;
 b=dGrmOjNR7baqiE2L5L/Ybgc7o6d7FBSsYshMAu12KnMmgEXtcHtpUrD/oD+H+OnY+V
 anlCviiva6XzZMibzlxDTK15C+HOkJ3bhkU7BA3GfOob4wcHYNvyKKp2tOO3O1jfaUeI
 0ITFfsHqBYZatXLd5rW3ZRJV8j3zROBpm3VGeIevq58B5D09uGoHw0m0mxiAMUx+7yh4
 sfGnslmsuqyjuJ1MX3/btt3HN8nKWOMy+E33e1/lEHI8HL5KBH+4NXh4aDu81m7BbLIb
 +Qu+QPsgdk/5kKugf3YeogdikHfPlUYM1VL9V02TxyagIg8itcDg0pweUqkbKrQGD3VK
 vDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GPHN1AYuunZqO/oxGQmIHjw9s2N+wk7NQPQ24v17qUM=;
 b=jWmIUgZ82q54w676GVnvZ/HEQgsCpBqkRmbFIh1j1Tw8mlk74R5kF3TWKaa427zDLB
 EIh6oJI07d7Pie/BoHDrQIRHsv3QJcm3mZN2hVxPZiQ8bq8EsIOUMQBaEXgS7vusHP83
 5hcYRbym+xHdzh58h2/2kXN6bhW7D2tN77Gnrj9seHxTv6+fbSB82Dc+iKc/uYiIJE4K
 cnQHI4/sP5QznDG3tzkNbswayb6v9Uhxt2RKap3++FOpDpbsEIx6R6O4X2+50qFMOAdD
 DzX6/sYQaXYwElmDG7MsNLfrWDX8gtlr4D6TDL6Q35TnWRmuWlAn6ATnTby5EKNst8oO
 XFVw==
X-Gm-Message-State: APjAAAWpsRKhZY6fkeNFqyp6jEKKhPzNPR+DSb6XmrDznlRvPUYkdRfo
 Qcdkn7OOplIb1d5wYK5BLZDSBnMPp5atYOyB7ntACQ==
X-Google-Smtp-Source: APXvYqwlsnaNq951yteb1PwTdfkJJKYihJ7CwyOE/btAs9WN7+ZCke/5ntTlGoE1GZnJV/cHfBxqmwkKwhXt46MAt+w=
X-Received: by 2002:ab0:7352:: with SMTP id k18mr2032094uap.77.1576058442748; 
 Wed, 11 Dec 2019 02:00:42 -0800 (PST)
MIME-Version: 1.0
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan> <20191210105737.GB228968@gerhold.net>
 <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
 <20191210181725.GD314059@yoga>
 <CAOesGMiiMG8kND=ZGv93t525B4L3ogA7py+3fdw2F6XaZspw_w@mail.gmail.com>
In-Reply-To: <CAOesGMiiMG8kND=ZGv93t525B4L3ogA7py+3fdw2F6XaZspw_w@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 11 Dec 2019 15:30:30 +0530
Message-ID: <CAHLCerPsxhhLTN2bD8J97iQD=DzGzJrb=tV8jZ1t_xohj2PWxg@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_020045_104038_F072E959 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:932 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, lakml <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 2:31 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Tue, Dec 10, 2019 at 10:17 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Tue 10 Dec 09:36 PST 2019, Amit Kucheria wrote:
> >
> > > On Tue, Dec 10, 2019 at 4:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> > > >
> > > > On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> > > > > On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > > > > > (Removing arm-soc)
> > > > > >
> > > > > > Hi Andy,
> > > > > >
> > > > > > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > > > > > >
> > > > > > > Arnd, Olof, and Kevin,
> > > > > > >
> > > > > > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > > > > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > > > > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > > > > > sorry for this inclusion.  I'll scrub this better next time.
> > > > > > >
> > > > > > > Andy
> > > > > >
> > > > > > > ----------------------------------------------------------------
> > > > > > > Amit Kucheria (5):
> > > > > > >       arm64: dts: qcs404: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8998: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8996: thermal: Add interrupt support
> > > > > > >       arm64: dts: sdm845: thermal: Add interrupt support
> > > > > > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > > > > >
> > > > > > One of my patches to add interrupt support to msm8916 tsens is missing
> > > > > > here. Specifically this one:
> > > > > > https://patchwork.kernel.org/patch/11201853/
> > > > > >
> > > > > > Will there be a second PR this cycle?
> > > > >
> > > > > I can work up another and throw it on top.
> > > > >
> > > >
> > > > FYI, the patch seems to be still missing in 5.5-rc1.
> > > > tsens now fails to probe on MSM8916 with:
> > > >
> > > >   qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found
> > > >
> > > > Can you queue up the patch as fix for 5.5?
> > >
> > > Indeed. Andy/Bjorn, let me know if you need anything from me to get
> > > this into -rc2.
> > >
> >
> > I'm pulling in some fixes for a rc-pull, so I could add it there.
> >
> > But why are we breaking backwards compatibility with existing dtbs to
> > add a new (optional) feature? Shouldn't there be a rc-fix in the driver
> > for this regression?
>
> 100% agreed.
>
> Driver shouldn't require the DT update to continue to function. It
> needs to fill in the previous behavior as default.
>
> As a matter of fact, based on that I don't want to see that DT patch
> as a fix, please queue it up for 5.6 instead.

I've posted a fix for -rc2 to allow the driver to continue to work
with old DTBs. Please consider for -rc2.

Regards,
Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
