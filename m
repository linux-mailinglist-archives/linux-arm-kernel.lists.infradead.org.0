Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4A1466B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jC7ibRSYiGDaWg17uM94GgrDkE6zCWzTmv4ESEMcyqc=; b=Mo7wVlb1LP7iAU
	XHW1Oe8ur6smmowsCN6bVMONmbQLzCadpNF9hqxpvyUbqUJlUbNYpabEytd8SEU7/xNN4fPKUN1Xx
	yMc19rahgdTmKi9L4nsxhWU0RgCSsrtbZeZnm/BTntRN8V+Rbwm+OMp5JPT5SXUp9KyZLv+sxmtzC
	EWPe5OAgYkyMQwa1y4P+hND/qicQE+6S+SRVNnSjBVermHwt1rZAj5XYs+Rzz5RKI1RzFbQBDw1mj
	GmAVcvWmfO+h1NCUdm+JQ+iOMcAgjPP+Y88cMUK7/yRhIoX2vgKpiSjlBlJkrjQ67/icBCtLmIkqF
	dceUoI/oBr9HZa68cZRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuadx-0002Iu-Iz; Thu, 23 Jan 2020 11:27:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuadn-0002IG-Qa
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:27:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id p14so1406420pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 03:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=23Kori0Gfe9jOVOSUcpuHeH/VuCobIg4HsEBeoKpTcQ=;
 b=S1BxwFk16LfetRAqa0xbnN8dmEDW8TfeJvGPGJ3HzwW6EGkA1O4xcEukXhL+Lm+nha
 a8Cat4SC+RLR4kTDPllxAO3BDP2yEW05ADEDeDFKpUbNkNYLySWUZCSVEN2sDl1RLRZ0
 XdgFD9S1Sko7YJWDDgF7HtdSWLu/wXLWkS8WJdOxRaP1VoMiqbfKXn4w4VV8w1jZTZSE
 iDIf22PKz2Q+JvckiEoUBwW8g6cfdUSvcKnjVA9AJS8fBX54fmF7TGvc81TLsqqXjOWL
 B5D/eePQZ0NHYQcZYMJSb4Xx7i5Tbl1LUlwt4FVOHcQr9UtOEvjS935/AHuO0reivjIb
 jpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=23Kori0Gfe9jOVOSUcpuHeH/VuCobIg4HsEBeoKpTcQ=;
 b=kQMm19k2MzoIKldCpRJSdn0txa+TfyS5ygWVwfcTHk9tY729231Yiqyb32d9WM3pmx
 74xkpsCrYWuf+4OFjvucJ2YsaaRFRY/2YUPk6lt+XZX4DcTT5sY5tb7EQDduMaYjwEEK
 cx9rh0k8JUoA4Ct7Vo8HbYKYB3EIUYUUx/PtYZ3dvsKXrR0p1zMVPs87A8g0xy8uSvd1
 m99fGgm9HfVfR97HcYpQtqFNeM274kyqss+3PsH0kPDKLzX/3nCOrwFu38Rur71/8Car
 ySz2ay3AahJwHFB+2x/txy8dmd/fuxHD4wbjVM7l2uOjlwVueq8mLVbr3Tj1dK+tbrZJ
 L11Q==
X-Gm-Message-State: APjAAAWpGCzom9PmHPBbZQ0vE6k8SxKoLWWi2ncw0qeAZU/fTuHPRxiu
 g9uxDaIkz9vgdyjKP3mapO2QTw9YEK0=
X-Google-Smtp-Source: APXvYqwFcaJ7cDsKUK568k6SWVVjcFL3dxY1Jxtf4pRha6JvGIBbMX6IW0bxP7CvbORMkaJwFafBTg==
X-Received: by 2002:a63:5f84:: with SMTP id t126mr3357593pgb.71.1579778834828; 
 Thu, 23 Jan 2020 03:27:14 -0800 (PST)
Received: from localhost ([122.167.18.14])
 by smtp.gmail.com with ESMTPSA id b42sm2531675pjc.27.2020.01.23.03.27.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 03:27:14 -0800 (PST)
Date: Thu, 23 Jan 2020 16:57:11 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH V4] firmware: arm_scmi: Make scmi core independent of the
 transport type
Message-ID: <20200123112711.mggm7ayxcqnr54yf@vireshk-i7>
References: <20200121183818.GA11522@bogus>
 <a9ec58818b5e0c982810e74efe3f5f22b930ae40.1579660436.git.viresh.kumar@linaro.org>
 <20200122121538.GA31240@bogus> <20200123103033.GA7511@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123103033.GA7511@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_032715_920337_005FD89C 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: peng.fan@nxp.com, arnd@arndb.de, jassisinghbrar@gmail.com,
 linux-kernel@vger.kernel.org, peter.hilber@opensynergy.com,
 linux-arm-kernel@lists.infradead.org, cristian.marussi@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-01-20, 10:30, Sudeep Holla wrote:
> On Wed, Jan 22, 2020 at 12:15:38PM +0000, Sudeep Holla wrote:
> > On Wed, Jan 22, 2020 at 08:06:23AM +0530, Viresh Kumar wrote:
> >
> 
> [...]
> 
> > > Can you please help me getting this tested, now that I have rebased it
> > > as well :) ?
> > >
> >
> > Sure, I will give it a go on my Juno. Thanks for the rebase, makes it
> > simpler.
> >
> 
> Sorry for the delay. I gave this a spin on my Juno. I am seeing below
> warning once on boot but it continues and everything seem to work fine.
> Also the warning is not related to this change I believe and this patch
> is just helping to hit some corner case with deferred probe and devres.
> I need to spend some time to debug it.
> 
> Regards,
> Sudeep
> 
> --->8
> 
> WARNING: CPU: 1 PID: 187 at drivers/base/dd.c:519 really_probe+0x11c/0x418
> Modules linked in:
> CPU: 1 PID: 187 Comm: kworker/1:2 Not tainted 5.5.0-rc7-00026-gf7231cd3108d-dirty #20
> Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Jan 16 2020
> Workqueue: events deferred_probe_work_func
> pstate: 80000005 (Nzcv daif -PAN -UAO)
> pc : really_probe+0x11c/0x418
> lr : really_probe+0x10c/0x418
> Call trace:
>  really_probe+0x11c/0x418
>  driver_probe_device+0xe4/0x138
>  __device_attach_driver+0x90/0x110
>  bus_for_each_drv+0x80/0xd0
>  __device_attach+0xdc/0x160
>  device_initial_probe+0x18/0x20
>  bus_probe_device+0x98/0xa0
>  deferred_probe_work_func+0x90/0xe0
>  process_one_work+0x1ec/0x4a8
>  worker_thread+0x210/0x490
>  kthread+0x110/0x118
>  ret_from_fork+0x10/0x18
> ---[ end trace 06f96d55ce6093a8 ]---

Still it looks strange that the warning comes only after my patch :)

Should I send V5 (fixed few comments after reviews) now ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
