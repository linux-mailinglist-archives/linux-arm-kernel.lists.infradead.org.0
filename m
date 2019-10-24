Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70F4E38F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uD5v9oSsX2V3c27JKVxK0q1ATuoWDEfIJANTQyMplNo=; b=F2AwFuvMp78mDo
	zeOefmFX/TuKyDkrEkppnQ4pDqXu33BAbQipQTUrqVfVDLC4axtPwukFc4yrIxRflIGovGus/pXTX
	glneQ5h2hUEUXUJEfR7JTafnBN+Oi92SJG93x1EEYtGpIANO7PLQwfUspawPuVX4VHuW03H3N7Sl/
	/CY/hato0cvjmosVWhBc4slDGGbkG90EiWyTOcIJaJ8YYosKYsxoFb7JjcNBC9ONkJsKgMdlhSiIX
	1xCExgAQUhn1nIZIXAK4iWlvCSP+TKJG9xOH3CBXSj9lQMqR5zvLAA/l58Q0iFqKwPrKVM+rms/uO
	eMhrNySpLdm5LSEyQiKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgPi-0000FJ-Q7; Thu, 24 Oct 2019 16:56:42 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgPU-0000Ee-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:56:29 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b123so16665079vsb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rD0W5k6f2ID7q7g4hwunZTETm45udsFKDrCjL00gegQ=;
 b=WJ7HqMq2UBUeER1U+qXYYcrUZXUr1aZKzL6BM8wsVvhAnTX2/9EpzTEV0OAwdxKpjT
 4XxQP2j2BOoOmA7Kcr73hQjR534p1UVbpMP2mgd0A0H4Mnzwkf38ON9qkZ3ug7kUsfNL
 JsaiuIhqC5hKpiBUnvYGbo0BOQJdcpw9FN9/kgt+ASAQ9WIm5gK9AI6ozSlLcgaUzXsJ
 AMjX44WEvLZNLvq0f7PIb2uXLvOOpWiQKJZ6dGySm0ueoFN1kQPV0+UoCKMukUzRJJtu
 IzvNtipgrD59PKNainry4UQAL2N9UFPpfBHcLUz0yY+Ak8UtBiIUXcwn5VHPVxo1zpLy
 Dt7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rD0W5k6f2ID7q7g4hwunZTETm45udsFKDrCjL00gegQ=;
 b=QXVb4L8TEyM3wpR65Ec2Tr0z9zpEWgDdjyWvY27BrPJvn6iwhx/u9zujVoJDR8AIrU
 SDAwhrpWQbj1akPXXT32gjCmRm1UvuCv870xCW7i3xb1r3kaqDnUFuVhTORGDPTv4hG4
 OF5E5t0JNuWJYmW7n2DJcNHDLe4RDEg7ShEPlz5ALcTCuGr6/vOCn9t2kPGd3bJPt/uF
 mV1/ofIIzvETGbfa+cNdTw3UmR/PdJP6RQc6aMBBK1/J2cg6x7UBepSw0Yhbniqe9Vqa
 YnZkUF0QYeMf4O4urmDx+G+rTH08P6gAYmerAa+iKiZ/ajqcXBC4nXFEDvQgq8/RwIts
 xcVw==
X-Gm-Message-State: APjAAAUHr++bGzPO7s79d+vcvRMi+KYwl1l1G7u0EW5GTIR1rpZ72xU/
 Rh4UIAzMWoZLoMebgCL/RPWc77UeVlkZ04V1b6aECg==
X-Google-Smtp-Source: APXvYqydNX3XdNyNTLcuW9pCNacVJGVnjYiuRC2HH8+frArbLOyWb8AStR5DMWrrX/BK4AfRo9niEvGq44yPGjL/tnA=
X-Received: by 2002:a67:ebc2:: with SMTP id y2mr9732656vso.191.1571936186556; 
 Thu, 24 Oct 2019 09:56:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-12-ulf.hansson@linaro.org>
 <20191024163515.GD22036@bogus>
In-Reply-To: <20191024163515.GD22036@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 18:55:50 +0200
Message-ID: <CAPDyKFq43XrGLDOVZmOeBTLKG0BBvTji6c0Z+cT8uc6PPyp8YA@mail.gmail.com>
Subject: Re: [PATCH 11/13] cpuidle: psci: Attach CPU devices to their PM
 domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_095628_228764_F627C636 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 at 18:35, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:35PM +0200, Ulf Hansson wrote:
> > In order to enable a CPU to be power managed through its PM domain, let's
> > try to attach it by calling psci_dt_attach_cpu() during the cpuidle
> > initialization.
> >
> > psci_dt_attach_cpu() returns a pointer to the attached struct device, which
> > later should be used for runtime PM, hence we need to store it somewhere.
> > Rather than adding yet another per CPU variable, let's create a per CPU
> > struct to collect the relevant per CPU variables.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 23 +++++++++++++++++++----
> >  1 file changed, 19 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index a16467daf99d..1510422c7a53 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -23,7 +23,12 @@
> >  #include "cpuidle-psci.h"
> >  #include "dt_idle_states.h"
> >
> > -static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > +struct psci_cpuidle_data {
> > +     u32 *psci_states;
> > +     struct device *dev;
> > +};
> > +
> > +static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> >  static DEFINE_PER_CPU(u32, domain_state);
> >
>
> /me just thinking still: If it make sense to keep psci_states separate
> and domain_state and only other things needed for RPM/OSI in the
> structure. I do understand that we modify domain_state and hence
> we can't use READ_MOSTLY then. Let's see, for now keep it as is, thought
> I will think out aloud.

I believe we are striving towards the same goal, which likely means to
separate the non-OSI path vs OSI path, as much as possible. Simply to
avoid any unnecessary operation being done in the non-OSI path. Right?

However, while I was trying to address that, I realized that it would
probably introduce even more changes to the series. Therefore, it
thought it may be better to address these kind of changes on top, as
improvements.

Does it make sense?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
