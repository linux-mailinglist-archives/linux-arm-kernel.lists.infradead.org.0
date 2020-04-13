Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AE31A6AA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEp8hX0+2ZVm1NO8R9abPzbwTTZG2EN3gg+UOAH35tA=; b=BzUJlQVGB/ASsD
	ibFDhTtw7XLurUgccLDe7v3EhNitnTp0aghprFBb3r9rep2P3uFXCYaZvoZ0ykVgmqWg3uZOczlAo
	6VqsN7bDVHbfhrMLdwCLJ7P4IJ8yd4SN72fP+iKHIbpFmnOFlVa9OGEEkQ1h14UV9unpxWXmZmVdS
	Z/R4gUpMz8mddW4mtJXu9u2wZeHoD4Seo+HSFF3/t0m/04QHb4g/EQ9icZdoBpxkr1K0JyRop46Op
	X0vO2k9PP4tVp7FtXXnkixQtOaWCkEzEHT7C/RPy9Rj3C4mx9vHh0twMy5fSdMwXSJJX7j5jfpO23
	Eb0K9urCRsbFVkcvtgsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2OB-0004EN-LW; Mon, 13 Apr 2020 16:56:51 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2O2-0004DU-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:56:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so4024312pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 09:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cYxFIXZ3Oep1Nvg46stgQrEWlEoqYyS7FyRUU0yEbnU=;
 b=cpz7mxbaVIihtI5Z2YQX63QZSHlMrnt6mjLjQt4nECoY7LWSqS3j3C6FJLqaWAUTt8
 r1EasPcYfH5L8KnX3osbiglmPu0cAXo/keN6VU3SFKFiOM+lUrae6/gVrANEfhsxhUl1
 vEIPuDPIYQRZUynqGirnxTVSCbnm6ubZ8tSlc/GYJWQTiiEUYbDBg6PSnGOMJHgSGse+
 88WJuipwslDyXizj/qa6+Glxm1ZTPsKc2GA5xSPtpM+GuliOYNQ0cZPVZ9OYqX2XRfTP
 kLo6Ngr6CUfCa8Dfq7PRetr0K/16m06xVAVMcGQFdBwM3EL5dm1j3VLXF/C6lhebhOtC
 cllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cYxFIXZ3Oep1Nvg46stgQrEWlEoqYyS7FyRUU0yEbnU=;
 b=QHG8nQa9vwubHkW4vntwNfwec8CftL/IGfqPloNdTiFZFnU4X8U31BEGyUj/hUfTPm
 eF6OdP7ElHuJsByOM3bVky9dlYghV62q/917YUeWb11lw/hNW3N3d/1wlJZ3GKzUWHBa
 W+NPR198MQUMGKz9nJlRXXvCOFmprhrUPXngJia4otOBLOF99VzkWcYPhvMF2dldkLK5
 6pvVZGsOsoT6sTpVqooCLMtwzoCEUzzgBBvo6JyttJbuUa0UzCI1pf8Ynom15JFXXKAH
 lqcbsiRZk3LMvx6/FJthiAtuZEDn3q23kIf76mWzA6dOnhPkt1jYhY2HkXXk1Xj7gjlu
 9aGA==
X-Gm-Message-State: AGi0PuY5uHSfznRw/O76L0cLWWtazLCo7VQwFAtUJpG9imB9VvK3Xiep
 3RsxZS966AamqbtvcexaqxrPF8ku35k=
X-Google-Smtp-Source: APiQypKvDNVn1PLsRgvoEtqETwrmavvjWo5FoLCjth7E4O2lzzM+yCFNAxkNp0Dov2d38drJoFC5zQ==
X-Received: by 2002:a17:902:cf87:: with SMTP id
 l7mr6464052ply.307.1586797000706; 
 Mon, 13 Apr 2020 09:56:40 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id o125sm8225592pgo.74.2020.04.13.09.56.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 09:56:39 -0700 (PDT)
Date: Mon, 13 Apr 2020 10:56:38 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
Message-ID: <20200413165638.GA28804@xps15>
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
 <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_095643_162890_1EEFE395 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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
Cc: saiprakash.ranjan@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 12:17:21AM +0100, Suzuki K Poulose wrote:
> Hi Sai,
> 
> On 04/09/2020 12:35 PM, Sai Prakash Ranjan wrote:
> > Reading TMC mode register in tmc_read_prepare_etb without
> > enabling the TMC hardware leads to async exceptions like
> > the one in the call trace below. This can happen if the
> > user tries to read the TMC etf data via device node without
> > setting up source and the sink first which enables the TMC
> > hardware in the path. So make sure that the TMC is enabled
> > before we try to read TMC data.
> 
> So, one can trigger the same SError by simply :
> 
> $ cat /sys/bus/coresight/device/tmc_etb0/mgmt/mode

A true TMC-ETB is a rarity nowadays... What boards was this tested on?  I don't
know if it is how the IP behaves or how things are connected on Sai's specific
board but doing echo'ing tmc_etf0/mgmt/mode on my Juno R0 doesn't give rise to
any problems.  That certainly doesn't mean it can't happen on another platform.  

> 
> 
> And also :
> 
> > 
> >   Kernel panic - not syncing: Asynchronous SError Interrupt
> >   CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30 #122
> >   Call trace:
> >    dump_backtrace+0x0/0x188
> >    show_stack+0x20/0x2c
> >    dump_stack+0xdc/0x144
> >    panic+0x168/0x36c
> >    panic+0x0/0x36c
> >    arm64_serror_panic+0x78/0x84
> >    do_serror+0x130/0x138
> >    el1_error+0x84/0xf8
> >    tmc_read_prepare_etb+0x88/0xb8
> >    tmc_open+0x40/0xd8
> >    misc_open+0x120/0x158
> >    chrdev_open+0xb8/0x1a4
> >    do_dentry_open+0x268/0x3a0
> >    vfs_open+0x34/0x40
> >    path_openat+0x39c/0xdf4
> >    do_filp_open+0x90/0x10c
> >    do_sys_open+0x150/0x3e8
> >    __arm64_compat_sys_openat+0x28/0x34
> >    el0_svc_common+0xa8/0x160
> >    el0_svc_compat_handler+0x2c/0x38
> >    el0_svc_compat+0x8/0x10
> > 
> > Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare functions generic")
> > Reported-by: Stephen Boyd <swboyd@chromium.org>
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-tmc.c | 5 +++++
> >   drivers/hwtracing/coresight/coresight-tmc.h | 1 +
> >   2 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
> > index 1cf82fa58289..7bae69748ab7 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> > @@ -62,11 +62,13 @@ void tmc_flush_and_stop(struct tmc_drvdata *drvdata)
> >   void tmc_enable_hw(struct tmc_drvdata *drvdata)
> >   {
> > +	drvdata->enable = true;
> >   	writel_relaxed(TMC_CTL_CAPT_EN, drvdata->base + TMC_CTL);
> >   }
> >   void tmc_disable_hw(struct tmc_drvdata *drvdata)
> >   {
> > +	drvdata->enable = false;
> >   	writel_relaxed(0x0, drvdata->base + TMC_CTL);
> >   }
> > @@ -102,6 +104,9 @@ static int tmc_read_prepare(struct tmc_drvdata *drvdata)
> >   {
> >   	int ret = 0;
> > +	if (!drvdata->enable)
> > +		return -EINVAL;
> > +

Proceeding this way would mean that ETB and ETF internal memory buffers can't be
read unless the device is enabled and collecting trace.  That is not practical
because 1) it changes the way the sysfs interface works on all boards where
there isn't a problem and 2) it makes it very difficult to capture the correct
data.

When the device is __not__ enabled, does reading any of the registers under
"/sys/bus/coresight/devices/tmc_etbX/mgmt/" also cause a problem or is it just
'mode'?

Thanks,
Mathieu

> 
> Does this check always guarantee that the TMC is enabled when
> we actually get to reading the MODE ? This needs to be done
> under the spinlock.
> 
> Cheers
> Suzuki
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
