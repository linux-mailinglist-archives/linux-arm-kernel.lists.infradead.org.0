Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6422D11929D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:01:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV6HCID78q7zSDepkMqbOuDML3oo0AhjQL+dRup31nc=; b=da+9/3HGQCSCx4
	ZIbolB6+jTeCzEc9xlUyQaTZiKHzf+h8TJXVznzrKfXEtDR1Fsa2lJd4XJe+TAElodyZN1f15SK8T
	NfmoiRKd1z3M13ggqKRGwmz94jS0Q0WefnqF+A4rg9bQBknRIHYJQG33MnEo6kzzASZl2VZOD9AzI
	r+3X5NWMK7gktvJ14rgrrrTAF3E8vw6CW7jCIAPUItqWw93AHSjBP8nvGoV6Wsg2W+Li7aQ2XvcGX
	xpfRSa73sty1la58HvWMzER6gGFocIZBDSpI/dAxEUcDsvWLJ16z0+gFFyFwhWZDKVehxfpQ8cwca
	fUEQvolgE18rS28kPQ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemd4-0006NV-Uk; Tue, 10 Dec 2019 21:01:10 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemcw-0006Mr-WC
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:01:04 +0000
Received: by mail-io1-xd43.google.com with SMTP id t26so8894749ioi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 13:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VF0gTV9qdWB6cnJyQqzS/oysI3Ok/hp0ujuFEUT1g/4=;
 b=jsdqNPAHXsElTW1fJAS379zuHUGC1oFc2lHyUu72dO6VkV1JVCClw9ZN+rn6bAUJGB
 C82zcTIw8LQuDXCPKAu2QqRxsfmkZbxzScIxSv63J4vse3xkMpl7akVJoOM/Sd4Mc5iN
 Ghgbbj5j7YjYddfLWXRZh/smuPdg9k6YThKhn70z+FpSA79pHqjAnD4yPe709xBI7nzK
 l85Viv4xHrS0XF4lrF7bvcRqsrBDj0Kh/UQ9RI+03wjHkMr4VnfZ+IRVcVGuv1WvkuRg
 qCYpdnBbLS268d5ap1C1ge+a9210siLx0F0SkQ1txAQX5ydc17l9GW2gWasCZvdIuimj
 vX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VF0gTV9qdWB6cnJyQqzS/oysI3Ok/hp0ujuFEUT1g/4=;
 b=KVfY+AJlTcWZ7BJUj9vKkOIsSvaXEMeQcsDZMxy7U3SuU3BonwqrM/KQX7lfMLQVrb
 CZ8i9krsTZpt2DF6HHGbWZEpzhDOfeDLaFRSCRVsi9VeaclRbJ884qSDc1i5XZOldpmG
 90r+VjnNZKq1mDqyIjJnIHWMH18UDu07NXo9mrVZRcsSaeVTD8dP1O/Qxjwi+MOb+lJH
 ocWdks9sMrS8O/kTomvPnRlcpoUqP+0wmejWnOJxwqMDSqksP/9eEu1U1cO/TIUyOwds
 s1aXg5ebgOQGgsY6Az48J+y5Rbvic0orCMymuxlNyHEbn1kkG9sBP2ufY1dlzMIX7LMy
 y1Fg==
X-Gm-Message-State: APjAAAXLLePe4JKpHK1BxvAM3zAvfYotuVPIbUCb40hJrkDzIz8MeVd+
 sS5OPMbQF5LSNcExGoyePQDDX93BuK7w8MUzXCyLIw==
X-Google-Smtp-Source: APXvYqxzBB5WAs2ik4ARKNQYfI4ndrdxS2nJ3+fmDiOYcyhxlOuNpRg3Z3djUNZQYQV70261GmtQr430uehjQHAQNN4=
X-Received: by 2002:a02:6957:: with SMTP id e84mr229095jac.11.1576011661410;
 Tue, 10 Dec 2019 13:01:01 -0800 (PST)
MIME-Version: 1.0
References: <1573068840-13098-1-git-send-email-agross@kernel.org>
 <1573068840-13098-2-git-send-email-agross@kernel.org>
 <CAHLCerN7buq82RmmFkoSi_n8g8sSe9VO2utcXuEGM3xG3HcRTg@mail.gmail.com>
 <20191108031854.GA12993@hector.lan> <20191210105737.GB228968@gerhold.net>
 <CAHLCerPs8+Fp1N-x7cQ2ETQ8d+fHN5b08V-jVFyFdQLYDndoBA@mail.gmail.com>
 <20191210181725.GD314059@yoga>
In-Reply-To: <20191210181725.GD314059@yoga>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 10 Dec 2019 13:00:49 -0800
Message-ID: <CAOesGMiiMG8kND=ZGv93t525B4L3ogA7py+3fdw2F6XaZspw_w@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.5
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_130103_082100_6A4044D7 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Andy Gross <agross@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 10:17 AM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Tue 10 Dec 09:36 PST 2019, Amit Kucheria wrote:
>
> > On Tue, Dec 10, 2019 at 4:27 PM Stephan Gerhold <stephan@gerhold.net> wrote:
> > >
> > > On Thu, Nov 07, 2019 at 09:18:54PM -0600, Andy Gross wrote:
> > > > On Thu, Nov 07, 2019 at 07:36:03PM +0530, Amit Kucheria wrote:
> > > > > (Removing arm-soc)
> > > > >
> > > > > Hi Andy,
> > > > >
> > > > > On Thu, Nov 7, 2019 at 1:04 AM Andy Gross <agross@kernel.org> wrote:
> > > > > >
> > > > > > Arnd, Olof, and Kevin,
> > > > > >
> > > > > > I have one slight faux paux in this pull request.  A drivers: soc change got
> > > > > > into my arm64 DTS branch and while it is innocuous, it wasn't easy to fix
> > > > > > without messing up a lot of people who depend on the SHAs not changing.  So I'm
> > > > > > sorry for this inclusion.  I'll scrub this better next time.
> > > > > >
> > > > > > Andy
> > > > >
> > > > > > ----------------------------------------------------------------
> > > > > > Amit Kucheria (5):
> > > > > >       arm64: dts: qcs404: thermal: Add interrupt support
> > > > > >       arm64: dts: msm8998: thermal: Add interrupt support
> > > > > >       arm64: dts: msm8996: thermal: Add interrupt support
> > > > > >       arm64: dts: sdm845: thermal: Add interrupt support
> > > > > >       arm64: dts: msm8916: thermal: Fixup HW ids for cpu sensors
> > > > >
> > > > > One of my patches to add interrupt support to msm8916 tsens is missing
> > > > > here. Specifically this one:
> > > > > https://patchwork.kernel.org/patch/11201853/
> > > > >
> > > > > Will there be a second PR this cycle?
> > > >
> > > > I can work up another and throw it on top.
> > > >
> > >
> > > FYI, the patch seems to be still missing in 5.5-rc1.
> > > tsens now fails to probe on MSM8916 with:
> > >
> > >   qcom-tsens 4a9000.thermal-sensor: IRQ uplow not found
> > >
> > > Can you queue up the patch as fix for 5.5?
> >
> > Indeed. Andy/Bjorn, let me know if you need anything from me to get
> > this into -rc2.
> >
>
> I'm pulling in some fixes for a rc-pull, so I could add it there.
>
> But why are we breaking backwards compatibility with existing dtbs to
> add a new (optional) feature? Shouldn't there be a rc-fix in the driver
> for this regression?

100% agreed.

Driver shouldn't require the DT update to continue to function. It
needs to fill in the previous behavior as default.

As a matter of fact, based on that I don't want to see that DT patch
as a fix, please queue it up for 5.6 instead.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
