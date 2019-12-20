Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7258B127A7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kat43+mM4iNznAjOLqyPjaVFAgXYrO5BBbIXQdIuwAs=; b=ExvCbhYT+bt5+j
	1CsQpPhK2cqE6VupjRDiTWrgBtAEPTDwPUm2/lo2nNg6UzoC9kIP7YbTp3H+d0V+LR+w3gLONk5ov
	PuN7+gx1dbS+lXKfyNTbRLxqi2mmKV/bJRdlw9HY78N87qVIcXhfVDu9Vb6yPDue+2utz192N72pu
	KuTC+yxzlDSXkJlSSgY+q5RUjjhQIhHspIRC4SeDgy9ZPpY5ZLPok5lxN0eDlXanTz3N6TiMlr2U1
	eUOT882VScX7r53YibtHzR8jDHDBAaFARh/l7NHfF5fr9bB7YNRMYPBofrisrsg2iYaHkd2iBkX8B
	JA6FFhOgvM8J5tYvbNoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGyJ-00056B-94; Fri, 20 Dec 2019 12:01:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGy8-00055d-3d
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 12:01:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6006530E;
 Fri, 20 Dec 2019 04:01:19 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 613AB3F719;
 Fri, 20 Dec 2019 04:01:17 -0800 (PST)
Date: Fri, 20 Dec 2019 12:01:12 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 13/14] cpuidle: psci: Add support for PM domains by
 using genpd
Message-ID: <20191220120112.GA26547@bogus>
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-14-ulf.hansson@linaro.org>
 <20191219143427.GF20746@bogus>
 <CAPDyKFpPmtXkP6LSNWBbfyTJowjQXF39_4LN5YEcDtW1BzVw-g@mail.gmail.com>
 <20191219180629.GC21846@bogus>
 <CAPDyKFrtrkASV4d2+x+A2P=TMrnLGh4LK9nzNeqZCg71Hs2TEQ@mail.gmail.com>
 <20191220100745.GB6731@bogus>
 <CAPDyKFqaH8otvkRH-+AM6qJyT4TLc+S-qR2-ZCfTT56pWXVfaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqaH8otvkRH-+AM6qJyT4TLc+S-qR2-ZCfTT56pWXVfaA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_040120_238860_0FB0E338 
X-CRM114-Status: GOOD (  23.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
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

On Fri, Dec 20, 2019 at 12:27:39PM +0100, Ulf Hansson wrote:
> On Fri, 20 Dec 2019 at 11:07, Sudeep Holla <sudeep.holla@arm.com> wrote:

[...]

> >
> > Even if you don't create all these genpd domains, it is still degraded
> > mode and we are anyway not changing that. Let me know if my understanding
> > is wrong here.
>
> Your understanding is wrong.
>
> If I remove the genpds because psci_set_osi_mode() fails, then in the
> current suggested initialization path, that will lead to that the
> entire cpuidle-psci driver will fail to initiate (which is because
> psci_dt_attach_cpu() returns an error). In other words, only WFI state
> will be used by cpuidle as there will be no cpuidle driver registered
> at all.
>
> That would not be an acceptable behaviour, as it would make the
> situation worse than today.
>
> What we want in this scenario is to keep using all the idle states for
> the CPUs, but ignores those for the cluster. That we both agree on,
> right?
>

Yes, I agree and understand that. I was assuming as part of this change
you will fixup psci_dt_cpu_init_idle not to return error but just allow
CPU level idle. Sorry if that was not clear, I was always assuming that.

> >
> > I am sure, DTB may get copied to different platform and the firmware may
> > not support OSI. I know we have logs, but creating and leaving those
> > genpd domains unused will be just confusing. Please change that.
>
> We are not creating any genpds unless OSI mode is supported. We do not
> even try to attach CPUs to the PM domains, unless OSI mode is
> supported. So this should already work according to your expectations
> and previous requests.
>

Yes I understand, but checking if "OSI mode is supported" is not same as
"setting OSI mode". Until OSI mode is set, it is default/PC mode, so we
need to work based on that assumption.

> To address your concern about removing genpds when psci_set_osi_mode()
> fails, we also need to address the problems we get when calling
> psci_dt_attach_cpu(). There are two viable options as I see it.
>

Shouldn't that fail ? Sorry, I might be missing something.

> 1. Prevent calling psci_dt_attach_cpu() altogether when
> psci_set_osi_mode() failed. This means another function needs to be
> shared from cpuidle-psci-domain.c to let cpuidle-psci.c know about it.
>

If we don't create any genpd, will psci_dt_attach_cpu fail ?

> 2. We can let psci_dt_attach_cpu() return NULL, when
> psci_set_osi_mode() failed - as this information is already known by
> cpuidle-psci-domain.c.
>

Yes I was making all the arguments/discussion based on that. Do you see
any issues with that ? Any races possible ?

> I vote for option 2, but what do you think?
>

Me too from the time I started the discussion, I assume a lot and
don't put this into words in the email.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
