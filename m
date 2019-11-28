Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373AA10CFAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 23:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faN0VJg7Yh92t27a9bJQkfDFrz4kGUs0OY2SMIkOJ3A=; b=AKrYcEoUXPRvcD
	ymMjN3IRozjPwxVv1Cp3AG7lSUwXm4qO5hVs48Ksv+3KTzk6yCi5cojpDNzhqtP3yC3INFGwkThec
	AEQuzzDWlPrepcyDqY5AxL9+BRQOcOgbV2V72rM+oemACypcbCDcwgZs8ywytdRJq3xCPfCRpMOpt
	rGDwcXPqVkP7tk2nnJXNTrUT9BtKlhF2iIhEq9OM9w528a/h03SOBzPCbJnjsh1ltRlOPHa9UqfOc
	7U5fPX5BppPsZqDsSbblS6OrxO8VGyAvxarrKb/fSib2wEQQVqrasCHSyG6o8BEPgbVYS+FED8tnX
	rutOmMkgOLmeCCyU3EMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaRui-0006DF-Dw; Thu, 28 Nov 2019 22:05:28 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaRuZ-0006CX-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 22:05:21 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g23so2896050vsr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 14:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eg2hwVNG36UdAAXRMWJPY/0013JXkVyMI5qlSVza82Y=;
 b=sLdYI3DYGQsUfNcUWae0ePETum3rBzILoYqPB0E3Nl4lI0tgq8C3M5YyyZ9IMwAZgh
 fgFZVURclM4pRMKVWGDcpP4ckFgw6CmiAKjV6TJH6UtPUy3FGzxu5OjtTzn3Cxc5G94e
 m8DUHKtnrVwdTMQHKW9fiD+GfIhL6dtHA5l7QLI703UKDFr7QLUMI+gfOoNPPT22EzS2
 9veI2zmYFGE+rTuyzeMg6YnnwP8DATz1P7JiPJaEBNYiKbY6BFf1koI8kKMSb0HOs4Kc
 H9Fspg+qY/axrYE0rOAeGJIRi9LyjnzkxVcsFOGvG5xmHLP1Yr/ciNrXMouMYtqtl8pT
 TvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eg2hwVNG36UdAAXRMWJPY/0013JXkVyMI5qlSVza82Y=;
 b=DsGFS41BbZrFPMVFMJegvFXdtDWcux6T6t4JhNkygPzllAXYSLCeWegN2CqlxB/uBM
 TvqaReUpCM5nOzDK28iinCAlo4KLt1xOrcHLyEpzKPZLlLr24Qkz9G4mUho53U46/OZ4
 qXJljoQ+/tuEHcXuQLScHdYY01wvNGMPIKIYHeRNcOjhtYxVo6IbiY1S82B+A0J6y5Ju
 n4E30tuBw2D65+88/UP/CrHuqXDcKKtIIG/vVZ33qVDgXYQq+KxjUoetdQ5G5sJLX9XZ
 g0RNZTU+KaB/Klss3ovdT7N0Xuef7QT+KnSUhafluonNWgBw2L6dVQ7LCi1AZR4QHI84
 jVPw==
X-Gm-Message-State: APjAAAXBhNho1cGvDSdOB+4exhosIoiiE9IqdWybhXZ00U4dBBeEywyY
 +OwV3nMuWFF7toFwUkAsiEfPxoNwxymLSfPT/NAX+g==
X-Google-Smtp-Source: APXvYqy+w2SusbAnYTwpYOPR+3O04TV2fCvs/a6Owbg9BpfbqHj4W+afKqvLkHDe8YOqttHJE93znFv0z6daCoPiM4k=
X-Received: by 2002:a67:2087:: with SMTP id
 g129mr31887061vsg.191.1574978716243; 
 Thu, 28 Nov 2019 14:05:16 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-9-ulf.hansson@linaro.org>
 <20191128141443.GA31123@e121166-lin.cambridge.arm.com>
 <CAPDyKFr1GTAkNyTmLvvC1ovm4yOtMGLOVWA-e-wjGJz2ENdN1g@mail.gmail.com>
 <20191128183143.GA15793@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191128183143.GA15793@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 28 Nov 2019 23:04:39 +0100
Message-ID: <CAPDyKFoXk9pX0MWnFp+YpiKDzq9wWVPe89J0JqeSkjN+VgJeow@mail.gmail.com>
Subject: Re: [PATCH v3 08/13] cpuidle: psci: Add a helper to attach a CPU to
 its PM domain
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_140520_016678_CBF79330 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 Nov 2019 at 19:31, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Nov 28, 2019 at 06:21:03PM +0100, Ulf Hansson wrote:
> > On Thu, 28 Nov 2019 at 15:15, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Wed, Nov 27, 2019 at 11:29:09AM +0100, Ulf Hansson wrote:
> > >
> > > [...]
> > >
> > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > +{
> > > > +     struct device *dev;
> > > > +
> > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > +     if (!psci_has_osi_support())
> > > > +             return NULL;
> > > > +
> > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > > +     if (IS_ERR_OR_NULL(dev))
> > > > +             return dev;
> > > > +
> > > > +     pm_runtime_irq_safe(dev);
> > > > +     if (cpu_online(cpu))
> > >
> > > It is unclear to me how we handle (or rather we don't) CPU hotplug
> > > with this series - it does not look OK unless genpd code manages
> > > that automatically.
> >
> > The series doesn't handle CPU hotplug at the moment, simply because I
> > am targeting to get the basic support, upstream first.
>
> Basic support must work and that includes CPU hotplug - I don't want
> to merge code that work with assumptions that aren't valid.
>
> > For a functionality point of view, this isn't a problem in my opinion.
> > Simply because the consequence is only that the idle states for the
> > "cluster" will not be reached if there is a CPU brought offline.
> >
> > As we talked about at LPC and as also told Sudeep for the v2 series,
> > CPU hotplug is going to be implemented by using a CPU HP notifier.
>
> Yes, it should be part of the series.
>
> > That should be fine, right?
>
> Yes, hopefully but it has to be part of the series.

Alright, I send a patch on top, asap.

Please review the rest and if it needs a respin, I can fold it into the series.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
