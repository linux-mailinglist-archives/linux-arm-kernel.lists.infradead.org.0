Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549044C230
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSbh/AgFTxSjfCaQ0xgQJrN+wp1LspHMIfm8edKJKnU=; b=iJN+zokdG+J2aD
	HD9D6BbQMclFx9AsdtSKfV+Zf1qB9xEmKvSsIYvPE4aMcznCFX85/PFFDxqiyzba7POpr3jUGOh3g
	wTxpfWbWNnyxCxTibrP3lrTZOBLn6YvA+AhZ2vVHmu4E9BAzG58Sf6sNGC3lXhoFa5hKuOWN+CS6/
	6I9xPY5sycyMS3RX4vpvPzQwADPXzWcHyw29kTgB2sSMTOhwTqDRyyYOKt062yPI18UKyB13iQfcH
	ysvTtmfXa9bnZRBwEEzih7qm9g2bgqwwaErJTfyNZbGDZwO3ulbFaa1wIL1B+WCBkqVx3FYIQdVTU
	6kbioH+dfq7UFwoLvIUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdh0z-0001HV-I0; Wed, 19 Jun 2019 20:17:05 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdh0l-0001GO-Fi
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 20:16:53 +0000
Received: by mail-io1-xd43.google.com with SMTP id s7so912535iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 13:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gSdDklePvOSmN6y34wUpOR+WhiVwpvWfOE5yME0vr+o=;
 b=ImCY/UPSAV4eFHZtiPccJWlSgskB/8w2K1qcU+WPwDTPZVEfNk68RZofvBpNGZ+r/S
 oVu982DRNsLJmZ9m/DXgK5ddkMDFcFZ+TljKPMP/Zda+uELZ+7B4tAwmq1RqTqVi2RiG
 /RP13ZOgpHCMReHGJ/LgD3/3uTXmMoVLjPAPmeg1vp8RISP7di+07LZb3qPBIX0i3wsM
 FUzc78iioPgwDEY3hIuZKced1GbuE01FEl+m03dbVLwUc7dV92zD8GPPVYOLr4fEW0XN
 aANMTXxiQEd/u4D7sAKAIV8mKkOfK7NAfOOVfXPRDJh4FgmtWuXPuuQh6yMx86gpiji2
 VbrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSdDklePvOSmN6y34wUpOR+WhiVwpvWfOE5yME0vr+o=;
 b=mwyl5QxaPT9UEDenKgMmbDI9JLbnu1vRgWL2CTdcHPTGXXre8ihhpLYOdA3M5Eihtv
 +jM9nPrtwjr7JxjO649kZspFTAsgrlIf6AHFEcGH3BvqXqx9a/xB4SOKBK8sZZ7r0wAB
 cJnHlyNGeoN1cPJAqypQ//UmWQ6lx9SRv2ShqFvISs8XtAYI2pw/hwz0dUKlhrueVnFh
 wTxppYR80BdWFmOyGKCXQvg2/qps191prFsmvLE4MqO7KOvAdWtvP91CpSwVobnTgD8d
 sPtN18JoeMaGSuTrSPtDmINIODV2vmIhwMJNoTh97nbRqtpmmejDjoKSEqf9TgqMCUzz
 +1iQ==
X-Gm-Message-State: APjAAAXcySaD/wS/AnvKi0X8oKNIYroq0CEAAdKJrmhaHxG6e03A4sb8
 MVG14yAEp3UkHlgYQBavySSnheugoL99/+sYZxUSbQ==
X-Google-Smtp-Source: APXvYqzplFL25mdA1FUd799H6nmAPZp2rpMJn55NPZTIC0gNosIcpldeIuFPkTQmzu3YCpFJ9kXytDiY1+L2Oq9BaTo=
X-Received: by 2002:a02:2a0f:: with SMTP id w15mr12907087jaw.52.1560975410114; 
 Wed, 19 Jun 2019 13:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
In-Reply-To: <20190619183904.GB937@gerhold.net>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 19 Jun 2019 14:16:38 -0600
Message-ID: <CANLsYkxaX2=Bp_BWWUFimC-UmP3L5g=CU7tqjd+xoFVcWG38tA@mail.gmail.com>
Subject: Re: Coresight causes synchronous external abort on msm8916
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_131651_531103_192BDDC0 
X-CRM114-Status: GOOD (  30.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Brown <david.brown@linaro.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 at 12:39, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> Hi,
>
> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
> > Hi Stephan,
> >
> > On 18/06/2019 21:26, Stephan Gerhold wrote:
> > > Hi,
> > >
> > > I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> > > It works surprisingly well, but the coresight devices seem to cause the
> > > following crash shortly after userspace starts:
> > >
> > >      Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> >
> > ...
> >
> >
> > >
> > > In this case I'm using a simple device tree similar to apq8016-sbc,
> > > but it also happens using something as simple as msm8916-mtp.dts
> > > on this particular device.
> > >    (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> > >
> > > I can avoid the crash and boot without any further problems by disabling
> > > every coresight device defined in msm8916.dtsi, e.g.:
> > >
> > >     tpiu@820000 { status = "disabled"; };
> >
> > ...
> >
> > >
> > > I don't have any use for coresight at the moment,
> > > but it seems somewhat odd to put this in the device specific dts.
> > >
> > > Any idea what could be causing this crash?
> >
> > This is mostly due to the missing power domain support. The CoreSight
> > components are usually in a debug power domain. So unless that is turned on,
> > (either by specifying proper power domain ids for power management protocol
> > supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
> > keep the debug power domain turned on , this works on Juno -).
>
> Interesting, thanks a lot!
>
> In this case I'm wondering how it works on the Dragonboard 410c.

There can be two problems:

1) CPUidle is enabled on your platform and as I pointed out before,
that won't work.  There are patches circulating[1] to fix that problem
but it still needs a little bit of work.

2) As Suzuki pointed out the debug power domain may not be enabled by
default on your platform, something I would understand if it is a
production device.  There is nothing I can do on that front.

[1]. https://www.spinics.net/lists/arm-kernel/msg735707.html

> Does it enable these power domains in the firmware?
>   (Assuming it boots without this error...)

The debug power domain is enabled by default on the 410c and the board
boots without error.

>
> If coresight is not working properly on all/most msm8916 devices,
> shouldn't coresight be disabled by default in msm8916.dtsi?

It is in the defconfig for arm64, as such it shouldn't bother you.

> At least until those power domains can be set up by the kernel.
>
> If this is a device-specific issue, what would be an acceptable solution
> for mainline?
> Can I turn on these power domains from the kernel?

Yes, if you have the SoC's TRM.

> Or is it fine to disable coresight for this device with the snippet above?
>
> I'm not actually trying to use coresight, I just want the device to boot :)
> And since I am considering submitting my device tree for inclusion in
> mainline, I want to ask in advance how I should tackle this problem.

Simply don't enable coresight in the kernel config if the code isn't
mature enough to properly handle the relevant power domains using the
PM runtime API.

Mathieu

>
> Thanks!
> Stephan
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
