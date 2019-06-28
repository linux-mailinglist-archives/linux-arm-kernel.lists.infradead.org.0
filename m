Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 463CD5975B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/LCPUqxCSJPt0AKc1ePyxkOFRn4Kro2J3E8NnnXn30=; b=Ad/FyNMBLkh74R
	ZmDDaZfJFegvVol+MrYrUUcjD2nUVwKDjXexnfstJEeISYMDHmYDNDRX38jbLYW1K+lL8yf7rIgdy
	NSy0c1b2wDbPOz99mFsIAQSQWwLHrkfICbJcX2BglEboB7dOmeWGU4tlTbBNnz9E9EG98hOoVE+TN
	ttDulfp0p8LKNsjMHa0XWKWKn+GbQtEmpE2qRnRrSAOHCYRe51dSlDIsXhbJOSZ1S+pzNpyDDn6mf
	lXDmoGEzHgikA+SHABe3PFW+lNFaw4QYb+1Q70+u3DMHQqf1jfB19bAKC7aLxd4B83nkjIXwnJWVo
	9fSPBFcB14gsL+r0+6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgn5h-00080T-Mi; Fri, 28 Jun 2019 09:22:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgn5T-000809-AS
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:22:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8ECFD2B;
 Fri, 28 Jun 2019 02:22:30 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FB133F246;
 Fri, 28 Jun 2019 02:22:29 -0700 (PDT)
Date: Fri, 28 Jun 2019 10:22:28 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628091246.GE32370@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_022231_449768_F06BC39A 
X-CRM114-Status: GOOD (  23.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 05:12:46PM +0800, Leo Yan wrote:
> On Fri, Jun 28, 2019 at 09:53:58AM +0100, Andrew Murray wrote:
> 
> [...]
> 
> > > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> 
> [...]
> 
> > > > +
> > > > +#define PARAM_PM_SAVE_DISABLE	0
> > > > +#define PARAM_PM_SAVE_ENABLE	1
> > > > +#define PARAM_PM_SAVE_FIRMWARE	2
> > > > +
> > > > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > > > +module_param(pm_save_enable, int, 0644);
> > > > +MODULE_PARM_DESC(pm_save_enable, "Save/restore state on power down: "
> > > > +				  "0 = disabled, 1 = enabled, 2 = firmware");
> > > > +
> > > 
> > > I understand if set pm_save_enable = 2 (firmware), then driver will
> > > depend on drvdata->pm_save_enable to make decision for context saving
> > > and restoring.
> > > 
> > > Maybe we can simplize to set pm_save_enable for binary value:
> > > 0 (disabled) or 1 (enabled).  The reason is if we set the module
> > > parameter 'pm_save_enable = 1', then we can set every ETM device's
> > > drvdata->pm_save_enable in initialization phase.  So in the probe
> > > function, we can use below code:
> > > 
> > >   drvdata->pm_save_enable = pm_save_enable ? : etm4_needs_save_restore(dev);
> > 
> > This means that when the module parameter is set to 1, then we only save/restore
> > if the firmware suggests it is needed.

Sorry, I seemingly can't read code today.

> 
> If the module parameter is set to 1, then we will always set every
> device 'drvdata->pm_save_enable' to 1.  So in this case, the module
> parameter will override the firmware property and always save/restore
> contexts for ETM.
> 
> > However - what happens on hardware that ignores the PU bit (and thus requires
> > save/restore), yet it's firmware doesn't have the
> > 'arm,coresight-needs-save-restore' property? There is no way to override the
> > firmware and always save/restore.
> 
> Actually I suggested to give the module parameter with high priority
> and when the module parameter has set to 1, then it can override
> firmware 'arm,coresight-needs-save-restore' property.
> 
> If we set the module parameter in kernel command line or when load the
> module, its value can be used in the function etm4_probe().  So in the
> driver probing, it detects the module parameter is 1, then it can
> directly set every device 'drvdata->pm_save_enable' to 1.  Thus we can
> always save/restore context for ignoring the PU bit case.

In any case, not only do we want to override the firmware to always
save/restore. Sometimes we may also want to override the firmware to never
save/restore (despite the firmware having the
'arm,coresight-needs-save-restore' flag present). For example to debug power
management.

Thus with this current approach you can override the firmware to either enable
or disable save/restore.

Thanks,

Andrew Murray

> 
> > (It's also quite helpful for debugging to be able to change the module parameter
> > at run time.)
> 
> [...]
> 
> > > Do we need to disable trace unit at the end of saving flow?
> > 
> > At the start of this function we take the OS lock, this has the effect of
> > also disabling the trace. Therefore I don't think it's necessary to do more.
> 
> Okay, I read the comment and thanks for reminding.
> 
> Thanks,
> Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
