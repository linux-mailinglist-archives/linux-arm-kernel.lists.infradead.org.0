Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1723BC47
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 20:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOyEqdxqVsTssGR60efOL2ER06/N2hegZHlgM0Fh598=; b=BoG1BoOci9fe6d
	2jTQ9A5EYc+bFPAjm0f1KvhUe11Trbz+cKROF051nXFe804ELV0PMecZBzr8L2cJdqH/OqX6vxBJ4
	4m8nsy4kRd6qbQA9VRZCK8Xl2wsjHK1Z7RmSObloFa8Eu/929Kk4U0K6z0Z6AGIRflXuZidM2Le7p
	riqQ8DDgn0LwuTtAtEDoJE9T1sz7xpsuLXxCnFyhggsOhSUyjUDZiMI+PUDeXEni3qiO33E+OM+87
	WhaezIQVlJ96rwq+grtE0WDfnF4Pv8OyTdueyu5kznzLh75LHNIHY6ZJblejXjF2uBly5BqQQxBxT
	+XCB0cx1rueAkAMy/jnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haPUT-0006Gp-Oi; Mon, 10 Jun 2019 18:57:57 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haPUH-0006GG-0S
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 18:57:46 +0000
Received: by mail-vs1-xe44.google.com with SMTP id d128so6169792vsc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 11:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hev5OwEACcFPK6C/FK48RMoXOAu7262fSU4AViD4u8w=;
 b=Kai5Z2EkT0zQjVLtISRnsn979fWob+Jsr+Kyg5eRj7CxJ7C+1El4hYerae8V2HnD10
 Vr4/J7G71YpP58NVfVe+X4DYJx2Izsxl0vEeKRtW4ySmvYYI5LNYwJUX7UhV6DWJPQjH
 mUMz6Ce5gPtIrO9yjGBJzdAJQWnFUjaqtBndYVPwHg9T7/wrirYFF33oBhoXNCWsQ0ly
 KLJeIWIl7AB5Hauw6t+B6m/FwhNQB7siy27tLNScZnfT0W34zAk5zCjZUXKcR+ZUDtyf
 nP3cEYZvjT/IvcQYnobXENvk1R8HugzTubIA/RSZDO0UaLZT8wV9gyrXBgrcgIRnElYH
 7QnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hev5OwEACcFPK6C/FK48RMoXOAu7262fSU4AViD4u8w=;
 b=bUgn2qvJMO9/wUiphSRHImSPe07yoYxUU2FSCOq0HFZPZ3h9MAI/yEtU2EQT44P6yT
 9igEysbTIHKPfwHC9KBHFORr+OYQbhH2sNQG1msSkwVzsCtR+7CjPYSjm17YSITiV370
 oCi6Msm2PSF5kSn+f+FQoDDMFEk++M19bS8VwcpsWvRNeZGmP9UousGJluC5PmYz3DN6
 CPL7DjZtBVJCzGti2+Gn375cKZYfrok8rMHq6B3foUucaxbKx7kq7GbTmwM4tLzCuYEd
 MV+CsXzXsPAlZ/IPchnDaCcf9dIHjEfoVlH5QdqcQjvdZVrpqz6C1LGoODTrwOZBQCvg
 KPtQ==
X-Gm-Message-State: APjAAAX2oWSLh3bSpFVpykPo5ebUHWd/eePzItusocB96muGUOeob/HL
 ok/gHk+WoNTGgwK14MX6YS/QxMBn4E89pya/gBvtBw==
X-Google-Smtp-Source: APXvYqwm/ynTvjQ+f9xLC1Cl7wUK4nvhtVIJf0TZpVpspEnFtpsiTVdCmUl3c7IKVyU5GWmfDB+ArZ52XPhJqykZu18=
X-Received: by 2002:a67:ebc5:: with SMTP id y5mr26971295vso.34.1560193063536; 
 Mon, 10 Jun 2019 11:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <CAJZ5v0gbK3AFCVC1b9LyXeMOM8fKR1=ECXZwaeSYRSqcK0UgYA@mail.gmail.com>
 <CAPDyKFpU3u248Gi+FnrVdY-EWXJQuu14uNV9d3Xs0W-K-EMEhg@mail.gmail.com>
 <20190607154210.GJ15577@e107155-lin> <20190607193407.GB24059@builder>
 <20190610103225.GA26602@e107155-lin>
 <CAPDyKFr31SwmHHAREbR3dWMQ55LzzUyTc4M5FZvNsqWfX7SE8Q@mail.gmail.com>
 <20190610171557.GA4560@redmoon>
In-Reply-To: <20190610171557.GA4560@redmoon>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 10 Jun 2019 20:57:07 +0200
Message-ID: <CAPDyKFqC8+Sv5WRhwOxqphAt8tb_PDisy13Miz5e-PajvwS1ew@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM/ARM64: Support hierarchical CPU arrangement for
 PSCI
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_115745_056720_BAE602D1 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 19:16, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Mon, Jun 10, 2019 at 05:54:39PM +0200, Ulf Hansson wrote:
>
> [...]
>
> > My summary from the earlier ones, is that because the PSCI spec
> > includes support for OSI, we should also support it in the kernel (and
> > ATF). In a discussion offlist, Lorenzo agreed that it's okay to add,
> > without an apple to apple comparison. Maybe Lorenzo can fill in and
> > state this publicly, to save us all some time?
>
> The comparison should have been made before even requesting PSCI OSI
> mode changes to the specifications, so we have a chip on our shoulders
> anyway.
>
> We will enable PSCI OSI but that's not where the problem lies, enabling
> PSCI OSI from a firmware perspective should take 10 lines of code,
> not:

Thanks for confirming!

>
>  drivers/firmware/psci/Makefile                |   2 +-
>  drivers/firmware/psci/psci.c                  | 219 ++++++++--
>  drivers/firmware/psci/psci.h                  |  29 ++
>  drivers/firmware/psci/psci_pm_domain.c        | 403 ++++++++++++++++++
>
> I have some concerns about these changes that I will state in the
> relevant patches.

Most of the above changes isn't for solely for OSI, but to support a
hierarchical topology described in the PSCI DT layout. This is for
example needed when other resources shares the same power rail as the
CPU cluster.

In other words, the series is orthogonal to whether OSI or PC mode is
used for PSCI, just to make that clear. BTW, this is what you
requested me to change into, a while ago.

>
> > My final point in regards to the OSI mode support, it's a minor part
> > of the series. I don't see how that should hurt from a maintenance
> > point of view, or perhaps I am wrong? In any case, I offer my help
> > with review/maintenance in any form as you may see need/fit.
>
> I will go through the series but most of this code should move
> to core PM code, it has nothing to do with PSCI.

I am looking forward to your review - and for sure, I am open to suggestions!

>
> BTW, apologies for the delay, I was away.
>
> Thanks,
> Lorenzo

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
