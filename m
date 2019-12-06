Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957C0115405
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 16:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofRHugr8uTr13QEkX3G5o4mvebbn54fI0gFVZu2m+1M=; b=gZnBtBti6shqdG
	iKj4H9r2HkrY08Q7Wrf4pBgVScL7RsHQ5yOatOr6Inkd+QZoX07i5ApR9fjR4ALbMOsuGXv5N8lOe
	PUisEfj5K4nCCqZumMtRuoJjI3a1qDYtIJ+KQMauzKJsdi3QQTNUqAVJapOaRmKFEvEufFXFA9hD2
	0AcUXUC6+6rwmJUMLrkck1B7rLdbwJ/+rf5UpUqHjTrkS3b4nTUW3gnws6Er6cNUuYErNO7iD/0ND
	QogcePneUGF1cDxqgy7YO+JURlxz0PiyZcQLkA2vDwTF84SEbChFKINHYkAQ1OvIMDwjkcgEotqng
	fT+tTLTn/bIXSQXvMJZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idFJV-0004PF-IP; Fri, 06 Dec 2019 15:14:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idFJO-0004Oq-Bz
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 15:14:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C86C831B;
 Fri,  6 Dec 2019 07:14:28 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9F2C3F718;
 Fri,  6 Dec 2019 07:14:26 -0800 (PST)
Date: Fri, 6 Dec 2019 15:14:21 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191206151421.GA5288@e121166-lin.cambridge.arm.com>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
 <20191206112549.GA22964@e121166-lin.cambridge.arm.com>
 <CAPDyKFq0gS2fasU3Yyh+wPC7Pjnucv6_+vDN234ks+yuiURKCw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFq0gS2fasU3Yyh+wPC7Pjnucv6_+vDN234ks+yuiURKCw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_071430_501956_506BC0DB 
X-CRM114-Status: GOOD (  26.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 03:26:16PM +0100, Ulf Hansson wrote:

[...]

> > You can merge it as it is but that's how things stand and adding
> > a comment to the *code* would help understand its logic.
> 
> Okay, how about adding a comment along the lines of this:
> 
> "Using the deepest state for the CPU to trigger a potential selection
> of a shared state for the domain, assumes the domain states are all
> deeper states".

Just this it should be fine (I trimmed it a bit).

> > > So, unless I am missing your point, I think the above code does
> > > exactly what you want, no?
> > >
> > > In regards to the "arbitrary choice" of what cpuidle state to use,
> > > there are more details about why that is, in the changelog.
> > >
> > > >
> > > > This inizialization though does not belong in here, it is done at driver
> > > > level, it should not be done in this per-cpu path. IIUC the logic the
> > > > enter pointer should only be overridden if and only if all cpus managed
> > > > by the driver have a corresponding device associated.
> > >
> > > I think you have overlooked the fact that there are one cpuidle driver
> > > registered per CPU. The above doesn't make sense to me, sorry.
> >
> > You are calling psci_dt_cpu_init_idle() for every possibile cpu.
> >
> > Every time psci_dt_attach_cpu() is called, we check dev and override
> > the idle driver enter method. There is one driver, what I am saying
> > is that it is not correct to check dev and override the enter pointer
> > for *every* cpu that we try to attach to a power domain. This must
> > be done once for all by checking that *all* devices could be attached
> > to a power domain.
> 
> Ah, now I think get your point.
> 
> You want me to re-iterate through all the registered cpuidle drivers,
> which means one per CPU - and then override the enter callback for
> each of them, but only if all devices was successfully attached to a
> PM domain. Is that correct?
> 
> My only worries with this, is that we have already registered the
> cpuidle drivers and I don't think it's a good idea to update the enter
> callbacks, beyond that point.
> 
> Perhaps another option is to track whether the first CPU gets attached
> (and then update the enter callback), but after that require all the
> remaining CPUs to be attached as well - else bail out with an error
> code, failing to register all the driver instances.
> 
> What do you think about that?

I was confused - now we have one cpuidle driver per cpu so this
comment was bogus from this perspective (I was still reasoning
wit a *single* cpuidle driver across cpus. Apologies).

Sudeep will follow up on this but please forget this specific
comment - I was wrong.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
