Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10D95FF60
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 03:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjn8OVfxB39fzvXHVI3DCI1I0yp09pqPtAfUet/JEwc=; b=YitFn8RUJw0I/+
	X2bcqfyfZhms/5tMsziqm3Shxd2IgW2U2Ps289wCq5BpSKTsAxnxIh1/g2hhu2R31kPG2adr3o7dV
	Ld5DFtZmu7gC77+v6DdgWkwrKEdtWkvLf0foGh+Rgw5Js9TWFwAhtwm4Z3NR3TfrsZ3FyMiII8MHV
	C2UgXytuK2MSDt5ffEvwUHze4lZLqfWwBR9QK9khJf+0NoFYjaVDsk9NT+0NR6IVYxxFm0QqUYyTv
	84X81rL83YQY4fB2lPreGovTv409fCVZZxXbmRbycC+H+UlbkwBhIBAGryUoEMoYDisAX+vqLdM01
	3lw8dvWE2aW1vaklg2hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjDOu-0006ei-8k; Fri, 05 Jul 2019 01:52:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjDOe-0006ds-9K
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 01:52:21 +0000
Received: by mail-ot1-x344.google.com with SMTP id x21so7510541otq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 18:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Q8dgIEQxI1Cjuz0Zc6s1NfsTTf5cMV9/vQj8/59Skis=;
 b=iF+1Ci3MDxz8d6uFWruM9262BJY1MurHY2zv3bHKPHIuYiZkrEyyMwVKet70QVT/4u
 RQUqEmeQT8qWXsbTEYZvKhgljIlAgucDjiwE9N9F4KjA8mFcAlscSO/lJ/26+dezdkQ5
 UUSEqzYA6IIXJqa6Y9Q2HHTx1ofN0TaVQoKLzBmqL6oSS38f2egKaA9Y9MsJdStbBo7p
 hyXkqQ7u06Z9xW2tSpqFvAXb/C7V/tJ7UUVhlv+xGRiKK7UesvI4HgJziym5RA1JE+dQ
 9XSPITDn0p/NKq3cc9lTAhE1ewUzJ5qASWT30w5iWDJcHUZFYWF0WJq+ZhgJZAhJ9YHd
 86iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q8dgIEQxI1Cjuz0Zc6s1NfsTTf5cMV9/vQj8/59Skis=;
 b=O+J5qJFHDvctd8olnYerbJvvvupOzfKEuDhcgr3Oo2byLX3aFb53OtmX9gKuUp+GS2
 aSKOSuGxEVUkIejU1nOb0yDkTJjQj0dks1JUvPPCW1U+BQn3UA+I8fnW5RKQmKsMnw5o
 skQohUziQiotMqAAFTCXQatxLNYtG4OIOURTFUiirOjru80HN8MlV+x/vdkSkTagRMH0
 wdul5gDn62lQ0qcjNMEcdq7p6CHU1YkqzhXfA2zRNtFnnjnc/U+UW50qxuu909W50VjU
 eDSU7D861OR7PFNFG09/3KvbN3YVsE++5cJN/w0tmK7ukbsPsVvVpE/zdipU3oHKSvvc
 xfOQ==
X-Gm-Message-State: APjAAAWC/ZgyPdz74RdYL/r6EoZVZCsGBwAfQ66eapCAfUfsXUbM7+Yv
 4YJrEby63CL6MvisPyNIPhVxUA==
X-Google-Smtp-Source: APXvYqyTjGiO6zPo19lal+0LQ8su7B6yKvZIsCYE3Sov9f4rm/mJRxtKgKBN2lTdptM26L0jeNLWWQ==
X-Received: by 2002:a9d:69cd:: with SMTP id v13mr746276oto.89.1562291538113;
 Thu, 04 Jul 2019 18:52:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id j8sm2415570otl.9.2019.07.04.18.52.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 18:52:17 -0700 (PDT)
Date: Fri, 5 Jul 2019 09:52:10 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190705015210.GD26160@leoy-ThinkPad-X240s>
References: <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
 <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
 <20190701020710.GC28475@leoy-ThinkPad-X240s>
 <20190701093458.GA27745@e119886-lin.cambridge.arm.com>
 <20190701094811.GB32042@leoy-ThinkPad-X240s>
 <20190701095444.GB27745@e119886-lin.cambridge.arm.com>
 <20190701101440.GD32042@leoy-ThinkPad-X240s>
 <20190704102120.GE7227@e119886-lin.cambridge.arm.com>
 <CANLsYkygjV=z=WzPdSXQwecTyC=82b+380OJAEmPdckDPP0nUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkygjV=z=WzPdSXQwecTyC=82b+380OJAEmPdckDPP0nUg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_185220_391696_5D286179 
X-CRM114-Status: GOOD (  22.32  )
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
 Coresight ML <coresight@lists.linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 08:27:44AM -0600, Mathieu Poirier wrote:
> On Thu, 4 Jul 2019 at 04:21, Andrew Murray <andrew.murray@arm.com> wrote:
> >
> > On Mon, Jul 01, 2019 at 06:14:40PM +0800, Leo Yan wrote:
> > > On Mon, Jul 01, 2019 at 10:54:44AM +0100, Andrew Murray wrote:
> > > > On Mon, Jul 01, 2019 at 05:48:11PM +0800, Leo Yan wrote:
> > > > > On Mon, Jul 01, 2019 at 10:34:58AM +0100, Andrew Murray wrote:
> > > > >
> > > > > [...]
> > > > >
> > > > > > > > In any case, not only do we want to override the firmware to always
> > > > > > > > save/restore. Sometimes we may also want to override the firmware to never
> > > > > > > > save/restore (despite the firmware having the
> > > > > > > > 'arm,coresight-needs-save-restore' flag present). For example to debug power
> > > > > > > > management.
> > > > > > > >
> > > > > > > > Thus with this current approach you can override the firmware to either enable
> > > > > > > > or disable save/restore.
> > > > > > >
> > > > > > > Thanks for explanation and agree with this.  Just a suggestion, maybe we
> > > > > > > can initialize 'drvdata->pm_save_enable' in probe as below:
> > > > > > >
> > > > > > >         if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
> > > > > > >                 drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> > > > > > >         else
> > > > > > >                 drvdata->pm_save_enable = pm_save_enable;
> > > > > > >
> > > > > > > From then on, we can only use 'drvdata->pm_save_enable' and don't need
> > > > > > > to check the module parameter anymore.
> > > > > >
> > > > > > This is OK, however it means you can't then change the mode once the driver
> > > > > > is probed. I.e. you can't echo values into
> > > > > > /sys/module/coresight-etm4x/pm_save_enable at runtime. This was useful to
> > > > > > me during testing, I assumed it may be useful for others too (especially
> > > > > > given that you can't unload the module).
> > > > >
> > > > > Ah, okay, this is fine for me.  Thanks for sharing the knowledge.
> > > >
> > > > Thanks for the review, can I add your Reviewed-By?
> > >
> > > Yes, please.  Usually, I would like to give a test for patches, this
> > > patch is important for productions after enable CoreSight with CPU
> > > idle; but some platforms are easily to hang after enable CPU idle with
> > > Coresight.
> > >
> > > So if you suggest to test this patch set on some public platform, I
> > > can give a testing on it (if I have the boards).
> >
> > I've only been able to test this on a Juno (which doesn't suffer from this
> > issue). Perhaps Mathieu can suggest known platforms that require cpuidle
> > disabled to use coresight?
> >
> 
> The dragonboard 410c will be perfect for that.

Thanks for suggestion.  After Andrew work out the new patch set, I
will test it on DB410c board.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
