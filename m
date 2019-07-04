Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821235F680
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 12:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCMCzOQdcGv7Ai2YkM1y0sKvEy71g4zQcjUGxzE0Tu0=; b=Z6Rg2aKQbO4vxe
	M+L2wSQNijBJe1eln+DLQA8goLlLByAYoj0TGDM8bYbJEhLAZbbKBINBMPUYZu9/kLeRoxcRkXnQH
	gnyILnz4XmQpW32H6jbvrg8xMy/4yKN0oQzApDr8w9Pu/oUfv11BaCEARJnElKgXFGJUeTiWQhHQG
	jMUyOXvf8Jz/so/hf0fZcy2R+xNEoyCbkaPGicebaBwLmm8NzcMahgRuFFlbuSijeiO4OpppYVZdM
	54yXntvRWrbOos5dujXtHOQUYvbRTQAOmSHLCsB23CVSMPkA+PFMqBGV+Ffnr977AniDE5+ysvRAi
	/Dp4S75L0L4Qg97ovPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiys1-0002C3-VA; Thu, 04 Jul 2019 10:21:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyrj-0002Bi-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 10:21:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9EF4344;
 Thu,  4 Jul 2019 03:21:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59B313F703;
 Thu,  4 Jul 2019 03:21:22 -0700 (PDT)
Date: Thu, 4 Jul 2019 11:21:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190704102120.GE7227@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
 <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
 <20190701020710.GC28475@leoy-ThinkPad-X240s>
 <20190701093458.GA27745@e119886-lin.cambridge.arm.com>
 <20190701094811.GB32042@leoy-ThinkPad-X240s>
 <20190701095444.GB27745@e119886-lin.cambridge.arm.com>
 <20190701101440.GD32042@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701101440.GD32042@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_032123_695653_AAE342DE 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 06:14:40PM +0800, Leo Yan wrote:
> On Mon, Jul 01, 2019 at 10:54:44AM +0100, Andrew Murray wrote:
> > On Mon, Jul 01, 2019 at 05:48:11PM +0800, Leo Yan wrote:
> > > On Mon, Jul 01, 2019 at 10:34:58AM +0100, Andrew Murray wrote:
> > > 
> > > [...]
> > > 
> > > > > > In any case, not only do we want to override the firmware to always
> > > > > > save/restore. Sometimes we may also want to override the firmware to never
> > > > > > save/restore (despite the firmware having the
> > > > > > 'arm,coresight-needs-save-restore' flag present). For example to debug power
> > > > > > management.
> > > > > > 
> > > > > > Thus with this current approach you can override the firmware to either enable
> > > > > > or disable save/restore.
> > > > > 
> > > > > Thanks for explanation and agree with this.  Just a suggestion, maybe we
> > > > > can initialize 'drvdata->pm_save_enable' in probe as below:
> > > > > 
> > > > >         if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
> > > > >                 drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > > > >         else
> > > > >                 drvdata->pm_save_enable = pm_save_enable;
> > > > > 
> > > > > From then on, we can only use 'drvdata->pm_save_enable' and don't need
> > > > > to check the module parameter anymore.
> > > > 
> > > > This is OK, however it means you can't then change the mode once the driver
> > > > is probed. I.e. you can't echo values into
> > > > /sys/module/coresight-etm4x/pm_save_enable at runtime. This was useful to
> > > > me during testing, I assumed it may be useful for others too (especially
> > > > given that you can't unload the module).
> > > 
> > > Ah, okay, this is fine for me.  Thanks for sharing the knowledge.
> > 
> > Thanks for the review, can I add your Reviewed-By?
> 
> Yes, please.  Usually, I would like to give a test for patches, this
> patch is important for productions after enable CoreSight with CPU
> idle; but some platforms are easily to hang after enable CPU idle with
> Coresight.
> 
> So if you suggest to test this patch set on some public platform, I
> can give a testing on it (if I have the boards).

I've only been able to test this on a Juno (which doesn't suffer from this
issue). Perhaps Mathieu can suggest known platforms that require cpuidle
disabled to use coresight?

Thanks,

Andrew Murray

> 
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
