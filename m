Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9598B1A1898
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 01:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lx0ursda2VfPWGyLAuL21mqbLlJ3ErYYfv9UeNjrOmg=; b=GEuQpmX2H57VPL
	4iIXbkuzE+H/0O+7g/f+jSL4QUTA4Nz1AzNR+s7xdin749f0M2BZNl3ULHsUSanup5wYruNy4LO5c
	GtyVj0EQLg1Yetr77ti2HxOb6nA8/OIiX+Wosc3WdnkqlUuluvWzaxrkXTGUbN7NAlM9vU9G4e1QV
	ZwwnmcUXZD6OpU71u5r+RYL2VnmepCVJN4CAN/jOZFbDgrWrdznIN5g5zDa5c1cdEjgePF9jOQrTR
	3E8lCmJ6LzUBp9VAiCLymtvhug2Szs5093PCYByZ2yt34YVZkbTuE/HXD8derUvm3VYti4riR/GUW
	nLaTOykWzz1GZBE7E6Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLxcW-0005e7-Br; Tue, 07 Apr 2020 23:27:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLxcO-0005Wt-Ir
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 23:26:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id ay1so1836274plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 16:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=y5LS3MU2ajrGhRzRJXtmecDXDze15/f8wGbcQHqh5n4=;
 b=NmOHvzswUt9XYTE1FH4pjMmmWuJs4RiOc30XXNe/xawQjAVjxF4k/O55uZbflAP5xM
 Cp6qLKTEtUR08ztRXxhoxXQwdkviEYF6dxtYh3Wsj+o+3nZYQ7xU8rFfKOhcZk+Bhpi4
 HP77kgIUYAYgSknWgI4gvHP0DUvuUf7JCBS8hsEq7nffrAmL0nVkPQaYeiOygFEkzl5N
 Xr+erFsD2lXoxBmsReXKP0EOl2MT2F927ooDWplLYCf2yJeovnK18pDwJ9cmht2aFcQ9
 X5+ayPRdsmUfBW4r2RobojK4RPdw7PUgVsjP2Sa/7mBENcUociKnoa7TEd1ltawkCZDl
 0T3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=y5LS3MU2ajrGhRzRJXtmecDXDze15/f8wGbcQHqh5n4=;
 b=UulR/+Xt/Wb3CpCLWhsL6fnDdfJzmT3NjE31ffDNxRttr+i3SMUf7ZcsgH/CK+x/+2
 c+/8G0iRc9HW7AWkjeD0Jgu5fJPzJsAwdcCdb/GzcebakwhvWSth79HuFeo/gHiSS459
 p/0VdXsWnwbGuYPI+Mc4lg7L74gK5FA4xt1qUpvu+opz5hDQxQO5ljAOsjMDhA1Iy85N
 +WmEp6ZyR3C47Y/LMa5LSW4XqRMRfnKR5LnrZkDhEMBILOn4t7zQn7txSqMwTwyh7P+H
 Ou2jAWCVp+QpGrPVXuWgelyw8O1aP1lOG9/jlxTPGfvM/SM+I3GFu8UvdFj+EahJeVFs
 JdaQ==
X-Gm-Message-State: AGi0PuYTEw964TBeFGvf/dYnJZJACDOIh6BH73rxcIlmyJHGF1R25CGm
 DbFyQsFwxDIoNRdpkGJiF/NLRfOD/00=
X-Google-Smtp-Source: APiQypKoPhJDW9jWO0if0qrlkO0oFu9JmnbT7a7/ETHNk4nvDKag6Odi3YwvY66/1Ba6oswXw3zGYA==
X-Received: by 2002:a17:90a:be0b:: with SMTP id
 a11mr1977543pjs.56.1586302014257; 
 Tue, 07 Apr 2020 16:26:54 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id q12sm14143932pgi.86.2020.04.07.16.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 16:26:53 -0700 (PDT)
Date: Tue, 7 Apr 2020 16:26:59 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: rishabhb@codeaurora.org
Subject: Re: [PATCH 2/2] remoteproc: core: Prevent sleep when rproc crashes
Message-ID: <20200407232659.GM20625@builder.lan>
References: <1582164713-6413-1-git-send-email-sidgup@codeaurora.org>
 <1582164713-6413-3-git-send-email-sidgup@codeaurora.org>
 <20200407222958.GL20625@builder.lan>
 <c98b9b02c49b41c6e2493407f11c5eac@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c98b9b02c49b41c6e2493407f11c5eac@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_162657_138348_AD0D3A38 
X-CRM114-Status: GOOD (  24.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: ohad@wizery.com, tsoni@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-remoteproc-owner@vger.kernel.org,
 Siddharth Gupta <sidgup@codeaurora.org>, psodagud@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 07 Apr 15:59 PDT 2020, rishabhb@codeaurora.org wrote:

> On 2020-04-07 15:29, Bjorn Andersson wrote:
> > On Wed 19 Feb 18:11 PST 2020, Siddharth Gupta wrote:
> > 
> > > Remoteproc recovery should be fast and any delay will have an impact
> > > on the
> > > user-experience. Use power management APIs (pm_stay_awake and
> > > pm_relax) to
> > > ensure that the system does not go to sleep.
> > > 
> > > Signed-off-by: Siddharth Gupta <sidgup@codeaurora.org>
> > > ---
> > >  drivers/remoteproc/remoteproc_core.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/drivers/remoteproc/remoteproc_core.c
> > > b/drivers/remoteproc/remoteproc_core.c
> > > index 5ab65a4..52e318c 100644
> > > --- a/drivers/remoteproc/remoteproc_core.c
> > > +++ b/drivers/remoteproc/remoteproc_core.c
> > > @@ -1712,6 +1712,8 @@ static void rproc_crash_handler_work(struct
> > > work_struct *work)
> > > 
> > >  	if (!rproc->recovery_disabled)
> > >  		rproc_trigger_recovery(rproc);
> > > +
> > > +	pm_relax(&rproc->dev);
> > >  }
> > > 
> > >  /**
> > > @@ -2242,6 +2244,8 @@ void rproc_report_crash(struct rproc *rproc,
> > > enum rproc_crash_type type)
> > >  		return;
> > >  	}
> > > 
> > > +	pm_stay_awake(&rproc->dev);
> > 
> > Following Mathieu's question I was expecting you to do this on
> > rproc->dev.parent.
> > 
> > But looking at the implementation of pm_stay_awake(), it ends up being a
> > nop if dev->power.wakeup isn't specified. This in turn seems to come
> > from device_wakeup_enable(), which will bail if dev->power.can_wakeup is
> > not set. But I don't see where this would be set for either the platform
> > driver or the remoteproc's struct device - and neither one of them have
> > a "wakeup" attribute in sysfs.
> > 
> > Is there some additional plumbing needed for this?
> We should be able to create a standalone wakeup source using
> wakeup_source_init.
> Then we can use _pm_stay_awake and _pm_relax on it.

Afaict the way to do this would be to call device_wakeup_enable() on
either the remoteproc or platform driver's struct device.

Given that the resources related to waking up the system are associated
with the platform driver I think this should be done on the platform
driver's struct device and these calls should operate on the rproc's
parent.

Regards,
Bjorn

> > 
> > Regards,
> > Bjorn
> > 
> > > +
> > >  	dev_err(&rproc->dev, "crash detected in %s: type %s\n",
> > >  		rproc->name, rproc_crash_to_string(type));
> > > 
> > > --
> > > Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> > > a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
