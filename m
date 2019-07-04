Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B81E5FA13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zfy7ByybcQjTT1JDjPbZV8wb64ejHMstBfiFKZbzbsA=; b=J7V7UJhdvTK0U/
	Y/1eVK9ocprQd9Zffbn2PTecjI8ditcm+fr86YnhZ4B+RtLF8vOenbKI7d30wcLfQQg6mw6UusSmB
	JQKlVe7lcWyybBX7/N48kn+DZz32JKB6yYZh21Gqjm+RBJlu168avxysZLNLQti+Bb/bJWrqlSkOj
	hKybwMatSJ7q9b8OHwqts5416iz5+RzOG6RXDcnW2mFoFkexV0K+WMaGX/s98LfpzZeOlIrBhQ8x+
	F0sJ/kj9jsUbBF1sFADMtHwykvsUJCw3wTOlEUoLl2Oa+jCMShRJvpsiWYHjV9rQHSZSZrju7a/fR
	+gFtdMnbnqG4gnEPEqjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2iW-00062N-13; Thu, 04 Jul 2019 14:28:08 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2iJ-000624-OC
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:27:57 +0000
Received: by mail-io1-xd42.google.com with SMTP id g20so3603828ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o+r+koGk/R9Z0kNooPqBTNvGt9m/oblPvbv2GnRoxd8=;
 b=SdOWquTiWbfC301sm1hc2J6bCUoB2Z2hbh85ovxLMImiSABjUGg0r+N0CfkvGbykRE
 N8DnUWojfxLe1Im2j92+TsREUtV7iTsrk6N65SunXkPqEl8byNiCNzlQlnZRe9AnmmM0
 Ehg65vKHFEVmAge3ZakI9T67KDYOTJ3WBXU9eX8PoNPtqP0MdPmrXtLqKViWlmLwAg4Z
 3J0SFz4Lz09ruub/U6RWsjkJ8a7usDVWANk3UupfIOPkRsdd49ApGkRbF+mxF7Ufh2yK
 c3nfxMf1st87j/M3QLacoqgdO+4kBZHFCdD0/Yw6OUUq9w9RLCuwueNaPCWz/MFwOzHL
 2i3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o+r+koGk/R9Z0kNooPqBTNvGt9m/oblPvbv2GnRoxd8=;
 b=QDz1vVMJlSQ4LQx6XMGOCdBEGkcOpuuBDuSwZrGG2OxRZTMMfyrdu4Z7Xff78w1498
 WfFDX7iRetOI0oOr0IEWi1Bju5L6fyfq0x1wWkRsZizQk+47S7YKjnRQW1BHgt8LvwAi
 L9CMpEJJ/Oz2k7VH0YWpkjrXMpqXW7TadtzxCC2m0jYrkKGd4mTpbJM+DR7UFj1qHnFW
 EwC673b8Nayn2KyrEhKCFadVORTuGD7dsWtthOM/WH/XTm99YEGdi/Yh2eAN8FDZjtOX
 zPEQbff0k9iCahq4//mfBTksF37D/Ugivahu+5jKqIf9WGdVydV41iF0XFswjV1+42ma
 GsFA==
X-Gm-Message-State: APjAAAULCzO35Q+hXV+eDdetIGARARGzvzi1pRYkfSHaFPvJrzChJHh0
 EbVCyTsgUMv+x7XF9+8z2jASIKJsBuPS9xlcD/yKQg==
X-Google-Smtp-Source: APXvYqzjoiBwOtZJPpS92jE1tcX8BxkU4OF+ZDDZ5/S/N6mXSCY7iohAe+JjrfrccGlhQOpJLXWLgY/81bwkME1kua8=
X-Received: by 2002:a02:1441:: with SMTP id 62mr6939427jag.21.1562250474845;
 Thu, 04 Jul 2019 07:27:54 -0700 (PDT)
MIME-Version: 1.0
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
 <20190704102120.GE7227@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190704102120.GE7227@e119886-lin.cambridge.arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 4 Jul 2019 08:27:44 -0600
Message-ID: <CANLsYkygjV=z=WzPdSXQwecTyC=82b+380OJAEmPdckDPP0nUg@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_072755_789494_69E22E3F 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 at 04:21, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Mon, Jul 01, 2019 at 06:14:40PM +0800, Leo Yan wrote:
> > On Mon, Jul 01, 2019 at 10:54:44AM +0100, Andrew Murray wrote:
> > > On Mon, Jul 01, 2019 at 05:48:11PM +0800, Leo Yan wrote:
> > > > On Mon, Jul 01, 2019 at 10:34:58AM +0100, Andrew Murray wrote:
> > > >
> > > > [...]
> > > >
> > > > > > > In any case, not only do we want to override the firmware to always
> > > > > > > save/restore. Sometimes we may also want to override the firmware to never
> > > > > > > save/restore (despite the firmware having the
> > > > > > > 'arm,coresight-needs-save-restore' flag present). For example to debug power
> > > > > > > management.
> > > > > > >
> > > > > > > Thus with this current approach you can override the firmware to either enable
> > > > > > > or disable save/restore.
> > > > > >
> > > > > > Thanks for explanation and agree with this.  Just a suggestion, maybe we
> > > > > > can initialize 'drvdata->pm_save_enable' in probe as below:
> > > > > >
> > > > > >         if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
> > > > > >                 drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > > > > >         else
> > > > > >                 drvdata->pm_save_enable = pm_save_enable;
> > > > > >
> > > > > > From then on, we can only use 'drvdata->pm_save_enable' and don't need
> > > > > > to check the module parameter anymore.
> > > > >
> > > > > This is OK, however it means you can't then change the mode once the driver
> > > > > is probed. I.e. you can't echo values into
> > > > > /sys/module/coresight-etm4x/pm_save_enable at runtime. This was useful to
> > > > > me during testing, I assumed it may be useful for others too (especially
> > > > > given that you can't unload the module).
> > > >
> > > > Ah, okay, this is fine for me.  Thanks for sharing the knowledge.
> > >
> > > Thanks for the review, can I add your Reviewed-By?
> >
> > Yes, please.  Usually, I would like to give a test for patches, this
> > patch is important for productions after enable CoreSight with CPU
> > idle; but some platforms are easily to hang after enable CPU idle with
> > Coresight.
> >
> > So if you suggest to test this patch set on some public platform, I
> > can give a testing on it (if I have the boards).
>
> I've only been able to test this on a Juno (which doesn't suffer from this
> issue). Perhaps Mathieu can suggest known platforms that require cpuidle
> disabled to use coresight?
>

The dragonboard 410c will be perfect for that.

> Thanks,
>
> Andrew Murray
>
> >
> > Thanks,
> > Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
