Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E5F5B2E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 04:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2G7kpVdsZbnjL7VK4af/AeftDEe80lgH0YKCF993rHw=; b=GvM+GR1IWZ4UH2
	gVtgQbt9TPIwEDa4DQDXbzQFg3h+Pb/kanUKfFbVzQ9jrFJCH5E8kfc5OvCIHlzi/jaCFwObCaQIK
	9ZhwCyObrOiFMG/SCFGba19v+otwG9RD48ol9/k122tUO/9cjES7NSJ1m6hX49YQEFi6MCkcIJ6N5
	Rtd7UmFiRNeiR0QRCCXYYJbzHhpQGDBzgxnPk60FgcLr+ucYnCZLBrrdnczqZxY7NlbxaRQ7sSmeG
	Ej1P/vkAmVLOQ7VqQ8AaEX+uJREE/hVdXNYwHVLeKgeaH2thGPyvNJA5MzgvJRfhhmWobZ2X23Qhk
	qJYhMc2sqA4plTsK7xRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhljE-0001QD-BL; Mon, 01 Jul 2019 02:07:36 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhliz-0001PX-0r
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 02:07:23 +0000
Received: by mail-oi1-x242.google.com with SMTP id w196so8656716oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 30 Jun 2019 19:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EVdvKnpZj72tyZM1EYeWQ7sF7QV+8GFQzNoS/JBtswU=;
 b=RASLjrn93DCsGyPxiTtMLcZAymkv8wT2PsnxOd/riO+Xrv40fzI0ZiH5/5jfOUaMPW
 OXN3VNVt4vzeppOevZh5I31+O9A52qhXpoXBlT51jJT+7FQW/UUJpZbLk4w/3E3c3UNN
 mwJ5/tW/TTbScJIlxFlX6vQaHNYJrCTufnDNVryUr4fcbJrawJ9o4yb5eEotW0XOMigq
 SfG0xF/6VlGdLbolnOnZwHKFmIOzEsr7GiwxTNm9Upkgxg4fi2737NYEEsH5l+BhM/63
 J14GBUR7KA8hZlxaPY9QJ35EM060nvNb8NhrRSwQySOND4gHXksWCfgkGMppZVsHVOme
 ij0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EVdvKnpZj72tyZM1EYeWQ7sF7QV+8GFQzNoS/JBtswU=;
 b=gWTrQgfVR5G63r1ewyJTdeuC/ZnWU3dUBi0wTqKvpY6whKiQOIfbJ0c5+1/veUNjCJ
 3d4fXLv9mhadA6gPGfio80sipEw/mI/4LPc4qH69Bn/2ypHL9Ml629DP0dMUUOXdvKOu
 wHpky4tReCdrPkACuvsqQygEMQcC9HNkx6oHYiJLTDzOxrOFVuhM4U3JMdlDcHGCfvWw
 OBRK396deeVznFQE/LoS68HHKZk/7uIT70zWErPxoLj/IRyHjxE84azmghowocuQugIF
 tgHVeJtUN44kFvozrTxaF2wblf8yZ0MV+mdCDBIj8YTlOCH9xcJvJmMPM+vB6tAsaRnF
 ldoA==
X-Gm-Message-State: APjAAAWddKd+mOuD/s3ho5Qw23REduoul0Zb+sNUI1giZMlxmifgfMvy
 P2+a7QDJ7fZEkr0e+mufgkWAeQ==
X-Google-Smtp-Source: APXvYqzDRkiUcjissHTFd7dyaU5hkK7WApOxC0xqnq9s56TqFbXP/zYcO0DLj9yIy7vlYoaAr02/kg==
X-Received: by 2002:a05:6808:3d5:: with SMTP id
 o21mr5111397oie.108.1561946836336; 
 Sun, 30 Jun 2019 19:07:16 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id j8sm3407814otl.9.2019.06.30.19.07.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 30 Jun 2019 19:07:15 -0700 (PDT)
Date: Mon, 1 Jul 2019 10:07:10 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190701020710.GC28475@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
 <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_190721_271935_3B7FF0CB 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, Jun 28, 2019 at 10:22:28AM +0100, Andrew Murray wrote:
> On Fri, Jun 28, 2019 at 05:12:46PM +0800, Leo Yan wrote:
> > On Fri, Jun 28, 2019 at 09:53:58AM +0100, Andrew Murray wrote:
> > 
> > [...]
> > 
> > > > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > 
> > [...]
> > 
> > > > > +
> > > > > +#define PARAM_PM_SAVE_DISABLE	0
> > > > > +#define PARAM_PM_SAVE_ENABLE	1
> > > > > +#define PARAM_PM_SAVE_FIRMWARE	2
> > > > > +
> > > > > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > > > > +module_param(pm_save_enable, int, 0644);
> > > > > +MODULE_PARM_DESC(pm_save_enable, "Save/restore state on power down: "
> > > > > +				  "0 = disabled, 1 = enabled, 2 = firmware");
> > > > > +
> > > > 
> > > > I understand if set pm_save_enable = 2 (firmware), then driver will
> > > > depend on drvdata->pm_save_enable to make decision for context saving
> > > > and restoring.
> > > > 
> > > > Maybe we can simplize to set pm_save_enable for binary value:
> > > > 0 (disabled) or 1 (enabled).  The reason is if we set the module
> > > > parameter 'pm_save_enable = 1', then we can set every ETM device's
> > > > drvdata->pm_save_enable in initialization phase.  So in the probe
> > > > function, we can use below code:
> > > > 
> > > >   drvdata->pm_save_enable = pm_save_enable ? : etm4_needs_save_restore(dev);
> > > 
> > > This means that when the module parameter is set to 1, then we only save/restore
> > > if the firmware suggests it is needed.
> 
> Sorry, I seemingly can't read code today.
> 
> > 
> > If the module parameter is set to 1, then we will always set every
> > device 'drvdata->pm_save_enable' to 1.  So in this case, the module
> > parameter will override the firmware property and always save/restore
> > contexts for ETM.
> > 
> > > However - what happens on hardware that ignores the PU bit (and thus requires
> > > save/restore), yet it's firmware doesn't have the
> > > 'arm,coresight-needs-save-restore' property? There is no way to override the
> > > firmware and always save/restore.
> > 
> > Actually I suggested to give the module parameter with high priority
> > and when the module parameter has set to 1, then it can override
> > firmware 'arm,coresight-needs-save-restore' property.
> > 
> > If we set the module parameter in kernel command line or when load the
> > module, its value can be used in the function etm4_probe().  So in the
> > driver probing, it detects the module parameter is 1, then it can
> > directly set every device 'drvdata->pm_save_enable' to 1.  Thus we can
> > always save/restore context for ignoring the PU bit case.
> 
> In any case, not only do we want to override the firmware to always
> save/restore. Sometimes we may also want to override the firmware to never
> save/restore (despite the firmware having the
> 'arm,coresight-needs-save-restore' flag present). For example to debug power
> management.
> 
> Thus with this current approach you can override the firmware to either enable
> or disable save/restore.

Thanks for explanation and agree with this.  Just a suggestion, maybe we
can initialize 'drvdata->pm_save_enable' in probe as below:

        if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
                drvdata->pm_save_enable = etm4_needs_save_restore(dev);
        else
                drvdata->pm_save_enable = pm_save_enable;

From then on, we can only use 'drvdata->pm_save_enable' and don't need
to check the module parameter anymore.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
