Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6131EC76
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LK+q1ha2OS5JGMJwokL7qgKDGLiEvGV+EP6AF9Roy8I=; b=VdcKGVvnaDqBxu
	skZ8TbE2o1PdmG1Ik0D/Anh7JsOeZgbB3nzvQkudM0pNcqB7Ht7TsH0v27+P450poJn3xJlTlKudJ
	R6OBc9gKnNZll0mtTh6lxNe5OalbgLnC3yqf8xtKrhpBwRN8VgxVPClGVCkTnddgFpIx1eu3l3Uer
	nskX6/GSF34xyR590WHblaV0wZOMRoXvfzpOg5zOSOdUR2tBUBC4QQoiMez/XFXccRzq4Rsde1PIV
	pYnlPHge5BEOWyNI/0+P+Jt68mi3ptIrYmJI+clhg8N4MRe6qEplqfOcIhFiNFLKRxAlbrZH3uB8A
	7vukhs8BC8PE2TB1WotQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrbO-0007ni-33; Wed, 15 May 2019 10:57:38 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrbG-0007ms-3l
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:57:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 543A580D;
 Wed, 15 May 2019 03:57:28 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C83613F703;
 Wed, 15 May 2019 03:57:25 -0700 (PDT)
Date: Wed, 15 May 2019 11:57:24 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515105723.3ltui3l75hbuskmk@queper01-lin>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
 <20190515104043.vogspxgkapp6qsny@queper01-lin>
 <b7e91d70-cd16-791c-94e1-3667ff264e49@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7e91d70-cd16-791c-94e1-3667ff264e49@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_035730_161103_59013366 
X-CRM114-Status: GOOD (  16.63  )
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
Cc: linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 amit.kachhap@gmail.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 will.deacon@arm.com, edubezval@gmail.com, mka@chromium.org,
 catalin.marinas@arm.com, rui.zhang@intel.com, javi.merino@kernel.org,
 ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 15 May 2019 at 12:54:10 (+0200), Daniel Lezcano wrote:
> On 15/05/2019 12:40, Quentin Perret wrote:
> > On Wednesday 15 May 2019 at 15:52:00 (+0530), Viresh Kumar wrote:
> >> On 15-05-19, 12:16, Daniel Lezcano wrote:
> >>> Viresh what do you think ?
> >>
> >> I agree with your last suggestions. They do make sense.
> > 
> > Good :-)
> > 
> > So, FWIW, the below compiles w/ or w/o THERMAL_GOV_POWER_ALLOCATOR. I'll
> > test it and clean it up some more and put it as patch 1 in the series if
> > that's OK.
> > 
> > Thanks,
> > Quentin
> > 
> > 
> > diff --git a/drivers/thermal/cpu_cooling.c b/drivers/thermal/cpu_cooling.c
> > index f7c1f49ec87f..ee431848ef71 100644
> > --- a/drivers/thermal/cpu_cooling.c
> > +++ b/drivers/thermal/cpu_cooling.c
> > @@ -58,7 +58,9 @@
> >   */
> >  struct freq_table {
> >         u32 frequency;
> 
> I suspect we will have a problem here as cpufreq_set_cur_state uses the
> frequency and when switching to EM, we will still need a freq table.

Indeed, I'll need a bit of ifdefery in the get_state_freq() function
introduced in patch 3, but nothing too horrible I hope.

Thanks,
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
