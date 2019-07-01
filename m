Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEFA5B8CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 12:15:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjZ4Gie9ZPTE/9drBNZuxurVWSdGaSekWskoIpjBZPo=; b=M0kLKl1kZFfRq7
	3zwwxMbpkW9S76BdUQjVgMhhC59yMzkAlQdiNpUA3dlyiiB4dsZtASSRZsmp2RL0GfuKyWPU7cob5
	Ly4xaW68+IBUIIGVOAkCPceUhUlVRZsjVlptgRP1KSli3NKzIfQmuYohf9MNInAS05Nwos+cEThap
	MiT6cyhCpgI2vARzoR3Cc/+LT1zwhCEh79wgjFHwyaOZPABgTxLR02ipOmaNp/qAJAJlWrok4SyIy
	h/H+7iW3i1TVACtBPuKN0QLF8LFnvPV3NyGdVpEIBfNhw2um734AhroB4f8ZE0P1mIOy2YltJwnm7
	xXu7ct1ke88rR6yuKBTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtKu-0001b0-R0; Mon, 01 Jul 2019 10:15:00 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtKj-0001a1-Ky
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 10:14:51 +0000
Received: by mail-ot1-x344.google.com with SMTP id e8so12881741otl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 03:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+A5qjokyB8NlCku8i06rMxajU1yXlRnvUbsfUtg1UHE=;
 b=q3sdnJL4UdK5Vpv6Fy5pZl5MIDpfNsuw94pzcYITX3toNg/YKy30WXLoWLLVL9ILTm
 VywNGvuu5HWUVWFSdjXpbwWmY1+yr/umq4wOM4Ig6uzTCbelf5A4Ne+72d7g35WfT0jj
 5uOLGk4CgLPpPQWGWK60+EqHbefhWm0j971cHaeOYigFa+LD+EVYFmoZoLwZsqgzTJVC
 uWjTX79fBdo0sHbTSECn66d7yEqffGsF9eNGlPMPC6UswBo+R1xSoHwDgd70c/9I+1ic
 /fndjqAB7xwMAioo4nENN0wvO/jYJHxS3q2UY3Y55rzqLv3OVJEa/nHwQMRG8MN2IBon
 yiMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+A5qjokyB8NlCku8i06rMxajU1yXlRnvUbsfUtg1UHE=;
 b=hUD0bA8p6/Bf0qiKfEgB6mRmkYGG2trqYtNVJhmhtGzYN3t7LXslKZ8d6DU+7ts7Pd
 1WcuDFynRVhvLxaYlmzTnPOauOtuKqncqawK5OIcdNpYCqPBP5oHISEKLftxaeLldYBr
 5n0AXHhd6bmS5E0tQuE9Ch3b1uu891H0bgIJYIHg+wYb/vcBHNMOmDSTnqSkGKK77t4m
 IKMJnnAOWbio3hXwvjGSPCtApNWS3SzSuQOqps5W8QIfWO+b8wcfGz7r2lDgFW5UDhAQ
 r/B3P/yPud954zbtOVJSlWoOeqO6Lx7zF4F7WCFRA04eBxLNE14HEuJ62oaqzX8DV6rC
 9cJg==
X-Gm-Message-State: APjAAAVfK6qScfxWaJ5pOpOx4Cac/gfHEUqNgl+VtcDQ9/WDyvoybiI3
 nrTPMpg1yu/wI7OOkWTKob1iFg==
X-Google-Smtp-Source: APXvYqyUDna0Jw+LJSCUGqcnmCP43TtJ48UV7aYLpUvizs1oxmrW5+TrN/JDa1YmO0YL9X82FVBfYg==
X-Received: by 2002:a9d:7408:: with SMTP id n8mr10457265otk.324.1561976088122; 
 Mon, 01 Jul 2019 03:14:48 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id m72sm3855635oig.14.2019.07.01.03.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 03:14:47 -0700 (PDT)
Date: Mon, 1 Jul 2019 18:14:40 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190701101440.GD32042@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
 <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
 <20190701020710.GC28475@leoy-ThinkPad-X240s>
 <20190701093458.GA27745@e119886-lin.cambridge.arm.com>
 <20190701094811.GB32042@leoy-ThinkPad-X240s>
 <20190701095444.GB27745@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701095444.GB27745@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_031449_693880_AE3BA0D0 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 10:54:44AM +0100, Andrew Murray wrote:
> On Mon, Jul 01, 2019 at 05:48:11PM +0800, Leo Yan wrote:
> > On Mon, Jul 01, 2019 at 10:34:58AM +0100, Andrew Murray wrote:
> > 
> > [...]
> > 
> > > > > In any case, not only do we want to override the firmware to always
> > > > > save/restore. Sometimes we may also want to override the firmware to never
> > > > > save/restore (despite the firmware having the
> > > > > 'arm,coresight-needs-save-restore' flag present). For example to debug power
> > > > > management.
> > > > > 
> > > > > Thus with this current approach you can override the firmware to either enable
> > > > > or disable save/restore.
> > > > 
> > > > Thanks for explanation and agree with this.  Just a suggestion, maybe we
> > > > can initialize 'drvdata->pm_save_enable' in probe as below:
> > > > 
> > > >         if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
> > > >                 drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > > >         else
> > > >                 drvdata->pm_save_enable = pm_save_enable;
> > > > 
> > > > From then on, we can only use 'drvdata->pm_save_enable' and don't need
> > > > to check the module parameter anymore.
> > > 
> > > This is OK, however it means you can't then change the mode once the driver
> > > is probed. I.e. you can't echo values into
> > > /sys/module/coresight-etm4x/pm_save_enable at runtime. This was useful to
> > > me during testing, I assumed it may be useful for others too (especially
> > > given that you can't unload the module).
> > 
> > Ah, okay, this is fine for me.  Thanks for sharing the knowledge.
> 
> Thanks for the review, can I add your Reviewed-By?

Yes, please.  Usually, I would like to give a test for patches, this
patch is important for productions after enable CoreSight with CPU
idle; but some platforms are easily to hang after enable CPU idle with
Coresight.

So if you suggest to test this patch set on some public platform, I
can give a testing on it (if I have the boards).

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
