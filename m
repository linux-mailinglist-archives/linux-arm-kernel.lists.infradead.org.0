Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0FB1C3B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80wtnefh7YJHTxSHSQTHMvAJ4lqc4VZL4ny2HDAOH1Y=; b=m7RbxDdj+pB+5u
	FDVDczFdUZ5Nl5rtmpN6GPE0/ZJYPvCDoWEplNpLjkOXuXlZjClKjUUkT2VuCF+mhIK1IbhIVU8Jw
	Ew4Mc5XEMEUNvjwTjiZPAQ/jRtDt2P1CbS8HLQkitQua8RW4TuUVq8fR0Ju9Y6epVZsEU3RUcnpKV
	3/8I71NDwbyk6x1AYtl9HqGtIDUUonNouaFcGkpJOWn3/7Kb3Bzu+lvdMX8/LMSp0vcuzQDr+x7MH
	Dze06ehhv6IpalNaA1dP1Yfb94M4HQ9c2gOK5J3jPVCn4aA7u0Ut3BvsTfkouy2WNPJoas62VFLpr
	cP2j7TFY9cv7OIRUJlHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQReq-0001Ig-Ds; Tue, 14 May 2019 07:15:28 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQRej-0001Hw-Ko
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:15:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6184374;
 Tue, 14 May 2019 00:15:18 -0700 (PDT)
Received: from queper01-ThinkPad-T460s (unknown [10.37.8.231])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23D5F3F71E;
 Tue, 14 May 2019 00:15:14 -0700 (PDT)
Date: Tue, 14 May 2019 08:15:08 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Eduardo Valentin <edubezval@gmail.com>
Subject: Re: [PATCH v3 3/3] thermal: cpu_cooling: Migrate to using the EM
 framework
Message-ID: <20190514071506.ykjg67elsydaehlz@queper01-ThinkPad-T460s>
References: <20190503094409.3499-1-quentin.perret@arm.com>
 <20190503094409.3499-4-quentin.perret@arm.com>
 <20190514034056.GA5621@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514034056.GA5621@localhost.localdomain>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_001521_691848_B55585C4 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eduardo,

On Monday 13 May 2019 at 20:40:59 (-0700), Eduardo Valentin wrote:
> On Fri, May 03, 2019 at 10:44:09AM +0100, Quentin Perret wrote:
> > The newly introduced Energy Model framework manages power cost tables in
> > a generic way. Moreover, it supports a several types of models since the
> > tables can come from DT or firmware (through SCMI) for example. On the
> > other hand, the cpu_cooling subsystem manages its own power cost tables
> > using only DT data.
> > 
> > In order to avoid the duplication of data in the kernel, and in order to
> > enable IPA with EMs coming from more than just DT, remove the private
> > tables from cpu_cooling.c and migrate it to using the centralized EM
> > framework.
> > 
> > The case where the thermal subsystem is used without an Energy Model
> > (cpufreq_cooling_ops) is handled by looking directly at CPUFreq's
> > frequency table which is already a dependency for cpu_cooling.c anyway.
> > Since the thermal framework expects the cooling states in a particular
> > order, bail out whenever the CPUFreq table is unsorted, since that is
> > fairly uncommon in general, and there are currently no users of
> > cpu_cooling for this use-case.
> 
> Will this break DT in any way? After this change, are the existing DTs
> still compatible with this cpu cooling?

Yes, all existing DTs stay compatible with this CPU cooling. The EM can
still be built using the 'dynamic-power-coefficient' DT property thanks
to the recently introduced dev_pm_opp_of_register_em() helper, see
a4f342b9607d ("PM / OPP: Introduce a power estimation helper"). And all
relevant cpufreq drivers have already been updated to use that function.

So, this patch should cause no functional change for all existing users.
It's really just plumbing. I can probably explain that better in this
commit message rather than the cover letter if you feel it is necessary.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
