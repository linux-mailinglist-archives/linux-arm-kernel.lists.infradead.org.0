Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3125970E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 11:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H3rfn+EaCUaEAl1Mk9CZ4vX4XjBRDBa7HrPo3bt42co=; b=CiVmYwgfs2hcmH
	ms8bymyP8qAbs7ErV7iaJKDnAFh6aHuKA4tFzxTbJR2fCnWZ2imufi6AwashXz4ZkHxJPwrLBxJ7T
	LFS43LE/hU4HRnzdUCzIk0pDSpTj6+4v2i6Pl6rw5coJ0GJM6SvEOPzmhIaptYDw0kNaKqQtPZwfR
	rmuKdsM9mD4k+C2idUzfa/BlNeBADzzcTHv9owzuXoYtIoObYShRLPI2CzcHityvdxelQWfr7kZvx
	WBH5Gx/8Nwabm0MVEn8CPB0wpvuIdu/FavEvOf39vERVFekOn6do4hzJ1cPOLfdJQ/hogtiYd2PqD
	lH9VvCZPezuemW4VZKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgmwX-0001mt-JW; Fri, 28 Jun 2019 09:13:17 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmwD-0001kw-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 09:12:59 +0000
Received: by mail-ot1-x341.google.com with SMTP id n5so5312837otk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 02:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=buNBP4ShClKhN4CDOlm6905v09cbocnR9Tn7a/yqPSU=;
 b=HuTK7xqN5oSbYcHMMKcgUNCRTFY9IilVZyhNh6390FBN8H73GptYOF3C00D1h+/a18
 BggBTtPoWIHQX2p4Z2vh2pEeMZ9K1JK1/loo23WkbOVxeuT04tp5rGB7HM14lUFDVJBg
 RlP71E5AtJC+CyskUzGANp5DX0qvA+bVU3P0iPEIWjsQ7ndnS51fwD7/wdnMxf0hFucO
 /xZ0wSdiM4vQu8GBXpSf3SuNxInAqwwbEn9L2DzpERTPdSck45Gjkf1R1v9r3+XEW3Ur
 7DbqzF08UsNAwzpnYHzl2UkZXNbzsdW1u2oWUVAKAsJa6FIXaK1czHXDQX/c5wLe6ZaL
 hXUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=buNBP4ShClKhN4CDOlm6905v09cbocnR9Tn7a/yqPSU=;
 b=AGb+2/jz3OHJxdzaI73f5XCcFx6wttNDZV98tC9CwUZGVL6by2uwOhsPaFAtpuJbwB
 ALKa5OH8egzskmd5OIs9jkRIrqDHoTyMWdgQeN+z1KX+nAeZSGmlWus5BFoG0pJvXm64
 e00tCPByLsN6UXcIqR/gi9zmaJZ/1t8kIu1PVztTKbVZxnH7jHHgEgLa9kLTsbhZe+eP
 J33YnjfIrizwB5qIM5HOVIjyG8zlY5II47dt1rdWoQ+uZh0oDqkcD751WWKsUfFLedpE
 d9Zc67jv5m84pIQOlEewFsO4q8eSG5vd2eOuzFfa+9l5dKIP3p8F01bgv7CqIlgn22qy
 cc+Q==
X-Gm-Message-State: APjAAAXrloHhGG4jZDTy2kxQQF6HNRw/yzpUElE/222p3c1JvIxcmEXY
 /db7oIaXbVPjhMPx2wzcX70Yfg==
X-Google-Smtp-Source: APXvYqx6xjxEkU7j89HMjJqTpl/uxjvxBTFjDCSWJkknfJQZ02NKjGFlDU07vg0xjfzYNFwKYKrFxw==
X-Received: by 2002:a05:6830:1596:: with SMTP id
 i22mr7200809otr.93.1561713175500; 
 Fri, 28 Jun 2019 02:12:55 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm652032otb.6.2019.06.28.02.12.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 02:12:54 -0700 (PDT)
Date: Fri, 28 Jun 2019 17:12:46 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190628091246.GE32370@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_021257_593450_06A4EEA1 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Jun 28, 2019 at 09:53:58AM +0100, Andrew Murray wrote:

[...]

> > > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c

[...]

> > > +
> > > +#define PARAM_PM_SAVE_DISABLE	0
> > > +#define PARAM_PM_SAVE_ENABLE	1
> > > +#define PARAM_PM_SAVE_FIRMWARE	2
> > > +
> > > +static int pm_save_enable = PARAM_PM_SAVE_FIRMWARE;
> > > +module_param(pm_save_enable, int, 0644);
> > > +MODULE_PARM_DESC(pm_save_enable, "Save/restore state on power down: "
> > > +				  "0 = disabled, 1 = enabled, 2 = firmware");
> > > +
> > 
> > I understand if set pm_save_enable = 2 (firmware), then driver will
> > depend on drvdata->pm_save_enable to make decision for context saving
> > and restoring.
> > 
> > Maybe we can simplize to set pm_save_enable for binary value:
> > 0 (disabled) or 1 (enabled).  The reason is if we set the module
> > parameter 'pm_save_enable = 1', then we can set every ETM device's
> > drvdata->pm_save_enable in initialization phase.  So in the probe
> > function, we can use below code:
> > 
> >   drvdata->pm_save_enable = pm_save_enable ? : etm4_needs_save_restore(dev);
> 
> This means that when the module parameter is set to 1, then we only save/restore
> if the firmware suggests it is needed.

If the module parameter is set to 1, then we will always set every
device 'drvdata->pm_save_enable' to 1.  So in this case, the module
parameter will override the firmware property and always save/restore
contexts for ETM.

> However - what happens on hardware that ignores the PU bit (and thus requires
> save/restore), yet it's firmware doesn't have the
> 'arm,coresight-needs-save-restore' property? There is no way to override the
> firmware and always save/restore.

Actually I suggested to give the module parameter with high priority
and when the module parameter has set to 1, then it can override
firmware 'arm,coresight-needs-save-restore' property.

If we set the module parameter in kernel command line or when load the
module, its value can be used in the function etm4_probe().  So in the
driver probing, it detects the module parameter is 1, then it can
directly set every device 'drvdata->pm_save_enable' to 1.  Thus we can
always save/restore context for ignoring the PU bit case.

> (It's also quite helpful for debugging to be able to change the module parameter
> at run time.)

[...]

> > Do we need to disable trace unit at the end of saving flow?
> 
> At the start of this function we take the OS lock, this has the effect of
> also disabling the trace. Therefore I don't think it's necessary to do more.

Okay, I read the comment and thanks for reminding.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
