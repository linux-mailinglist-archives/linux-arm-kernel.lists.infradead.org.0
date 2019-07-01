Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592AC5B866
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAVEHK9i5zI38URUd6FyQjFLVGtJVU98lS+Y5qRfgr0=; b=h73Qc/GYZoC5bt
	TE9SS9Tn+2yOLI5OWkgg0Lk6A0zG4+YA1hBYStrj5MCaaazr/ijlsBAU2VxZYQpvxugY32lYOCKI2
	VX4VPNuG6wtAu1rOdU4L5sfzUQC/2zmqazlVbc6g/IDet4Eqrj3mRgHCHPpuzXQo8xDKBy8xoxZaz
	3uoFo0Gho07atvrFOOMnyG361miES//t501EwzmE5xER3KhcyABkpEPmp7t++MYRM1JRzmwGg3xqB
	fas5tJO3eDso9cLeqxMqn7MwWNEzRTDiD4hfTL/bpxp503ehBaH2jawVZyjZpFHTLz0gQQG5+y2Dp
	CxXKSQbiLOCsTZm7LhGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhswC-0005bU-S5; Mon, 01 Jul 2019 09:49:28 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsv6-0004qj-G9
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:48:22 +0000
Received: by mail-ot1-x341.google.com with SMTP id r6so12843080oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LCCoDZuO/rO8BQvT0+PGBHvEmvoTVqi+J/0mPSsTYiA=;
 b=weeT136Xh3DQL54PdQKqhF7bys4otvdhcWWhS0jHQPKA7yX2yt/QkYw+7iyPZAxR2f
 KDg2IhB3Uy1vvOymGD9isSeBD7M3cfJEE9IryCWDm4jXPW77eH402Ok0pn3xkFIgDnzw
 o2SmZUhk5z5D006uLdGGFI27qoHRNdHQ7HvZE+r3lzXC4SGmjbUcb44D4FKnU3l6moCi
 uC+D4cPqIF17Jesl+NOTB5hU2VRoRYqN6lBA44LlWSYk4PHgs3vRzgTBzaWepo4qwfJ4
 fWgXfBwpfWL2KVsOXd7j2XDs/v0R7AJrnxWKXfqdWHVE/NpidZ4b9D35jttZW08VUFvo
 /xpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LCCoDZuO/rO8BQvT0+PGBHvEmvoTVqi+J/0mPSsTYiA=;
 b=TfKucTWAQXSlCkqFO/QQSux9UTMrheYVGEBzEXouPC1dkd+dblYFt5B0T90EQ+ezdq
 fWRuauF8iZopuyRnHGaIyOLCQ+2U/L5rl+5QVSH2S61ZnNT+OeEDxgzekeP0XUt8Fjni
 WomeRhpbU1CQcQwO+zdUZb1khkUKhl5peJQzu5wa9468LRjksNVfj6UCiWw9JINDhnis
 1r87t1gVhynvxYQZ7PxtNrmXi0elb8yO2iKJfTYeXDxpE6u75iK7B+PGBOZ3ahw0+mP/
 TXewa2PhUBFofYyyccnCp6mitGeJbq9w4Wn1SV06+oHIO3TGhiJDC8A+6XdnLGzJNc35
 aNuQ==
X-Gm-Message-State: APjAAAXL1JZzp5p+WaKj8ya7Pyr2gdBo5cIH21bjLr9mJ1kREn+FQbJ0
 BEHx6LizS98fla8YI3DYkb7iAA==
X-Google-Smtp-Source: APXvYqwLQ7StjtmU3TYWrg/6pKGQVJ5auhW4UFGMWh/GBSb4ir8osylxt496ziypXSyPUlO94oLY6A==
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr18399175otp.189.1561974499224; 
 Mon, 01 Jul 2019 02:48:19 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li964-79.members.linode.com. [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id b23sm3656768otl.75.2019.07.01.02.48.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 02:48:18 -0700 (PDT)
Date: Mon, 1 Jul 2019 17:48:11 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190701094811.GB32042@leoy-ThinkPad-X240s>
References: <20190627083525.37463-1-andrew.murray@arm.com>
 <20190627083525.37463-6-andrew.murray@arm.com>
 <20190628080732.GA32370@leoy-ThinkPad-X240s>
 <20190628085357.GH34530@e119886-lin.cambridge.arm.com>
 <20190628091246.GE32370@leoy-ThinkPad-X240s>
 <20190628092227.GJ34530@e119886-lin.cambridge.arm.com>
 <20190701020710.GC28475@leoy-ThinkPad-X240s>
 <20190701093458.GA27745@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701093458.GA27745@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_024820_760795_336DD9AC 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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

On Mon, Jul 01, 2019 at 10:34:58AM +0100, Andrew Murray wrote:

[...]

> > > In any case, not only do we want to override the firmware to always
> > > save/restore. Sometimes we may also want to override the firmware to never
> > > save/restore (despite the firmware having the
> > > 'arm,coresight-needs-save-restore' flag present). For example to debug power
> > > management.
> > > 
> > > Thus with this current approach you can override the firmware to either enable
> > > or disable save/restore.
> > 
> > Thanks for explanation and agree with this.  Just a suggestion, maybe we
> > can initialize 'drvdata->pm_save_enable' in probe as below:
> > 
> >         if (pm_save_enable == PARAM_PM_SAVE_FIRMWARE)
> >                 drvdata->pm_save_enable = etm4_needs_save_restore(dev);
> >         else
> >                 drvdata->pm_save_enable = pm_save_enable;
> > 
> > From then on, we can only use 'drvdata->pm_save_enable' and don't need
> > to check the module parameter anymore.
> 
> This is OK, however it means you can't then change the mode once the driver
> is probed. I.e. you can't echo values into
> /sys/module/coresight-etm4x/pm_save_enable at runtime. This was useful to
> me during testing, I assumed it may be useful for others too (especially
> given that you can't unload the module).

Ah, okay, this is fine for me.  Thanks for sharing the knowledge.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
