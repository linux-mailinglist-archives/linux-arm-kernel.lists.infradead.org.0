Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB44E1D33B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+z/xKQiiwapYqULwOYKSR3CeZ9cTPVbL80n5v8X4eFQ=; b=GpUlsiwC1khqnI
	W4T7qQxC+VZrmHGkCO+dZ9WPBaK+TMHhCGC5qwUFqJS3RDMzSeabBQM2Sh5kg+S8ftgigvBj7/r9h
	KNDGp2HOM68v/inavAE3r7a7x/KQdw1pKuVjOA5ZObHMw51wiWSlt4QuOTPp/PZmvSQjtp+tDn7lE
	VMOcIAMRISf2Dtc9IxQUblfe/IwGzRPi5WcAQ2XM5hi2ZeRbDTSaANyq5F/PwZqG7H3HOdhoKp9kc
	ZRpFuQao2jwiMHcAropEFJ0feOocGheejj5kXvus7HUi3wlKutNX1fEXPktEPEdjp8Xan0y1egQAt
	4OQ8c+8cehlkS2Aa4qaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFIW-0002p8-1r; Thu, 14 May 2020 14:57:20 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFIJ-0002nk-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:57:10 +0000
Received: by mail-lf1-x143.google.com with SMTP id h26so2894788lfg.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4HTVnMXFqn25Or2z9tz1JpDCA867OnT6AzmCxAyNnTA=;
 b=HkgUt4eWkp2ApKf+Q8p05mUbDzAnPvl/NPEQp2HBG5nnd3tpFK+filWKg9ep0Dfic6
 LUAPu+HOZ/+1wy2K509QzOP5abxcwXkU7Z5ZeQtdDY+ogtGKmqt7sjHqKAaRDofww6u2
 4B0uBmngMwrctbwae+ZobEPCtD/jcEuch+BajoIi+2SAlh4xpXrSfNhJkeLTiKP/GIBf
 JItLNV2MwlHe77/BjSc0m3UW2Y7E8CJRpp3SH/Z5gwzH8qH39BrbCpg4TnOm3FsTPl0i
 uOdoiyGdWbbe3iKB6uhmJXdWeREj5h7hO4s2BQXAvfL4dUj45BIE/GGgEJ11Ac8oT6V8
 gHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4HTVnMXFqn25Or2z9tz1JpDCA867OnT6AzmCxAyNnTA=;
 b=M+fo82xhIkn1CSTd2euUq0G7SoVpj0NRbzvzG7ZoK2v4tg7J9Yt7uEx+cMgLgQ5qOa
 6h4PwNc7HltYJCGdAK0n3a8JQeMjjsW00/KAwJakVfZXuQgjxGemcOiyFGHhpmAQuN2j
 uffTEeAYl8J8CyxqA9XLiYOssvC8m8Q4iq9FNncyXicAbTt75wT9QHuvFWfUIXxb+iIu
 7KvczC9aykiy/Le2BYipvM7KSdj3UPq2N9y7nsuFGURzmhBGx0J0CFVF1znbIaTZMMfh
 nAviP1VI0HpupF++LOj/FOqJ9Tbjj+AZMxSb/RJrXh9vh8kOUxvX6y0JLQv0IwCtzJW9
 CiCQ==
X-Gm-Message-State: AOAM532zTmYBkO8PO8NIiPCHIgxAR4OyEaLKofSzSAIW7/AJfRWTOtL4
 mOzNWtJGGS+2gq14Tu2qr88Vp3OArpHkRY6QvOMY8A==
X-Google-Smtp-Source: ABdhPJwHqTgIhDJNt4wwVGJjnTipm7hc43f5LFNNT5JulCF6C5kN/TFfsARDd0Vl9CNRBA6h2m+cFhheln5UzkaJCrk=
X-Received: by 2002:a19:4f1b:: with SMTP id d27mr3626688lfb.81.1589468224785; 
 Thu, 14 May 2020 07:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200514082109.27573-1-etienne.carriere@linaro.org>
 <20200514082109.27573-2-etienne.carriere@linaro.org>
 <20200514142442.GB23401@bogus>
In-Reply-To: <20200514142442.GB23401@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Thu, 14 May 2020 16:56:53 +0200
Message-ID: <CAN5uoS9gZ7820Fg-6dmm4BO5GW+Y6D3O5Xt3gUQtYVZGafm_XA@mail.gmail.com>
Subject: Re: [PATCH 2/2] firmware: psci: support SMCCC v1.2 for SMCCC conduit
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_075707_169739_0FF4E3D5 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, will@kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 16:24, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 14, 2020 at 10:21:09AM +0200, Etienne Carriere wrote:
> > Update PSCI driver to support SMCCC v1.2 reported by secure firmware
> > and indirectly make SMCCC conduit properly set when so. TF-A release
> > v2.3 implements and reports SMCCC v1.2 since commit [1].
> >
> > Link: [1] https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/commit/?id=e34cc0cedca6e229847c232fe58d37fad2610ce9
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
> > ---
> >  drivers/firmware/psci/psci.c | 14 ++++++++++----
> >  include/linux/psci.h         |  1 +
> >  2 files changed, 11 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> > index 2937d44b5df4..80cf73bea4b0 100644
> > --- a/drivers/firmware/psci/psci.c
> > +++ b/drivers/firmware/psci/psci.c
> > @@ -409,11 +409,17 @@ static void __init psci_init_smccc(void)
> >       feature = psci_features(ARM_SMCCC_VERSION_FUNC_ID);
> >
> >       if (feature != PSCI_RET_NOT_SUPPORTED) {
> > -             u32 ret;
> > -             ret = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
> > -             if (ret == ARM_SMCCC_VERSION_1_1) {
> > +             ver = invoke_psci_fn(ARM_SMCCC_VERSION_FUNC_ID, 0, 0, 0);
> > +
> > +             switch (ver) {
> > +             case ARM_SMCCC_VERSION_1_1:
> >                       psci_ops.smccc_version = SMCCC_VERSION_1_1;
> > -                     ver = ret;
> > +                     break;
> > +             case ARM_SMCCC_VERSION_1_2:
> > +                     psci_ops.smccc_version = SMCCC_VERSION_1_2;
> > +                     break;
> > +             default:
> > +                     break;
> >               }
> >       }
> >
> > diff --git a/include/linux/psci.h b/include/linux/psci.h
> > index a67712b73b6c..c7d99b7f34ed 100644
> > --- a/include/linux/psci.h
> > +++ b/include/linux/psci.h
> > @@ -24,6 +24,7 @@ bool psci_has_osi_support(void);
> >  enum smccc_version {
> >       SMCCC_VERSION_1_0,
> >       SMCCC_VERSION_1_1,
> > +     SMCCC_VERSION_1_2,
>
> I took approach to kill this completely [1] instead of having to keep
> expanding it for ever.

Yes, I've been pointed to [1]. Discard this change. Sorry for the
(little) noise.

Etienne

> --
> Regards,
> Sudeep
>
> [1] https://lore.kernel.org/linux-arm-kernel/20200506164411.3284-5-sudeep.holla@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
