Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EBA1A6B1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 19:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9muXL7d/2xegPhmXhBlh77CiX15mFWaCPu7VyLnkbK8=; b=hejblYo62UsdBL
	nWokbtQKcSx0lr7dWiib0/wqSk45h202baCrKA1C6w9v7V0hNidlYQPEc66PPeA8a46Qe2vfmcDNS
	PjWdOyAfXYbUgY/YSRluCi6O26Q22hEel7lpXtZPUDfWppZCVriXzUPGufnmp6Fc5j1Sn0CKZOrZE
	tS41nkhDPFGhqZGbTVton+OencJUvE3QMDvWvgLdS7J6xMsbP+/z5Gs5DRmlEjRxieWvy75BqqzsT
	dIzGZdmdyPfrG9D5F82YpX3JP0H5UHh91rN9ixX1w92CkHEKll6WBTWSce9dMXYwFjFtwws/awKhh
	sQWvm+pq6Y0s8LKxva1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2fK-0008Uj-QC; Mon, 13 Apr 2020 17:14:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2f9-0008Tw-D1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 17:14:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id t4so3596317plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 10:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=va2uPd7gyyI5OiovlTyEhOf6lRyi6dJtoYK2M5SWvPM=;
 b=gDWh6j14JvPT3UwCLGJEB581EJj/w7HBfF70Jt8j93xZ7zbCUBl1BGGp+O1blegZ5j
 ZNtL+VfX5FYPjsybQNTlZfkUzatyh84vpAt7L31U828RIgD9fkhhNEy8ZiUBUy6WtOYC
 2mGYOQzaSlbNaDIO4+bWLh+WlRGu56Sop0xyxcjoWKQV1ONe2xeOFIHJaTztAImHE2nQ
 ojpv0kKIUqCb340rPaFztaiQOM3ZYo3DT4JxHw3cNQp3812k1rIQN0PY+heJ69V8Sf+P
 oBbh721jD1bOs2dAAFNlaKKMKwZEWJZWcOnTNX9QMwBFjnjdFv4Cm8p/eUi961RH0K5z
 P/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=va2uPd7gyyI5OiovlTyEhOf6lRyi6dJtoYK2M5SWvPM=;
 b=HnpsjyCNpq5/BREhUVkUvyt0t/Cuv4EkBW5ydAB1Xdw1hM7zIzMFnZiCkPXS/LI8nh
 16hc70CZ3t+a1CewjNybhBSKFu98oVvtWtQ1tHMgSmfLL4Unb0o31H/HJBMVa8x/B579
 NaE7fnzk40wLFmJoKKu9FnGOvwc3xVYjPBJYM+c+0GcwbiiEEznluimYWnAmbMW6hAQz
 rdtMCghxzIpu/N5Jf9xDhKS3pWGawMSTN36Xr/pwvW34O+BtBmznS7umK7hNXIxo8A3Q
 vx94dbmwmKnuRQfCoZpvfgT2+HZB31op1HCM4G50NiKQE1s9Qc61UgaaXPaQ7sFtyU7v
 e+Nw==
X-Gm-Message-State: AGi0PuYv081s/H9bHtMYZZRDjwLSaVnrbZ1xMYPtZFTZ0S8y5kkUXNHg
 EFd9s9kVihWSeAMnDOIphbnETw==
X-Google-Smtp-Source: APiQypIZZkrX9RIT+bliapkNwsQYSFqXGatRjoO5IhedqJDm2E4IrnHVkdqum/bKSYnJ+rvyhlol8Q==
X-Received: by 2002:a17:90a:890a:: with SMTP id
 u10mr14709181pjn.154.1586798061368; 
 Mon, 13 Apr 2020 10:14:21 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id v24sm8978016pfm.94.2020.04.13.10.14.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 10:14:20 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:14:18 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] coresight: tmc: Read TMC mode only when TMC hw is enabled
Message-ID: <20200413171418.GB28804@xps15>
References: <20200409113538.5008-1-saiprakash.ranjan@codeaurora.org>
 <9a792e3e-5a17-156d-4b59-4a3ec8f9993e@arm.com>
 <1751aeabd22bee18d2eef0f643883265@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1751aeabd22bee18d2eef0f643883265@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101423_469592_50E623C2 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, swboyd@chromium.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 01:55:30PM +0530, Sai Prakash Ranjan wrote:
> Hi Suzuki,
> 
> On 2020-04-13 04:47, Suzuki K Poulose wrote:
> > Hi Sai,
> > 
> > On 04/09/2020 12:35 PM, Sai Prakash Ranjan wrote:
> > > Reading TMC mode register in tmc_read_prepare_etb without
> > > enabling the TMC hardware leads to async exceptions like
> > > the one in the call trace below. This can happen if the
> > > user tries to read the TMC etf data via device node without
> > > setting up source and the sink first which enables the TMC
> > > hardware in the path. So make sure that the TMC is enabled
> > > before we try to read TMC data.
> > 
> > So, one can trigger the same SError by simply :
> > 
> > $ cat /sys/bus/coresight/device/tmc_etb0/mgmt/mode
> > 
> 
> I do not see any SError when I run the above command.
> 
> localhost ~ # cat /sys/bus/coresight/devices/tmc_etf0/mgmt/mode
> 0x0
> 
> And this is most likely due to
> 
> commit cd9e3474bb793dc ("coresight: add PM runtime calls to
> coresight_simple_func()")

Ok, so this is related to power management (you can ignore my question in the
previous email).

Regarding function tmc_read_prepare_etb(), the best way to deal with this is
probably make sure drvdata->mode != CS_MODE_DISABLED before reading TMC_MODE.
If there is a buffer to read it will have been copied when the ETB was disabled
and there won't be a need to access the HW.

Mathieu

> 
> > And also :
> > 
> > > 
> > >   Kernel panic - not syncing: Asynchronous SError Interrupt
> > >   CPU: 7 PID: 2605 Comm: hexdump Tainted: G S                5.4.30
> > > #122
> > >   Call trace:
> > >    dump_backtrace+0x0/0x188
> > >    show_stack+0x20/0x2c
> > >    dump_stack+0xdc/0x144
> > >    panic+0x168/0x36c
> > >    panic+0x0/0x36c
> > >    arm64_serror_panic+0x78/0x84
> > >    do_serror+0x130/0x138
> > >    el1_error+0x84/0xf8
> > >    tmc_read_prepare_etb+0x88/0xb8
> > >    tmc_open+0x40/0xd8
> > >    misc_open+0x120/0x158
> > >    chrdev_open+0xb8/0x1a4
> > >    do_dentry_open+0x268/0x3a0
> > >    vfs_open+0x34/0x40
> > >    path_openat+0x39c/0xdf4
> > >    do_filp_open+0x90/0x10c
> > >    do_sys_open+0x150/0x3e8
> > >    __arm64_compat_sys_openat+0x28/0x34
> > >    el0_svc_common+0xa8/0x160
> > >    el0_svc_compat_handler+0x2c/0x38
> > >    el0_svc_compat+0x8/0x10
> > > 
> > > Fixes: 4525412a5046 ("coresight: tmc: making prepare/unprepare
> > > functions generic")
> > > Reported-by: Stephen Boyd <swboyd@chromium.org>
> > > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > ---
> > >   drivers/hwtracing/coresight/coresight-tmc.c | 5 +++++
> > >   drivers/hwtracing/coresight/coresight-tmc.h | 1 +
> > >   2 files changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/hwtracing/coresight/coresight-tmc.c
> > > b/drivers/hwtracing/coresight/coresight-tmc.c
> > > index 1cf82fa58289..7bae69748ab7 100644
> > > --- a/drivers/hwtracing/coresight/coresight-tmc.c
> > > +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> > > @@ -62,11 +62,13 @@ void tmc_flush_and_stop(struct tmc_drvdata
> > > *drvdata)
> > >     void tmc_enable_hw(struct tmc_drvdata *drvdata)
> > >   {
> > > +	drvdata->enable = true;
> > >   	writel_relaxed(TMC_CTL_CAPT_EN, drvdata->base + TMC_CTL);
> > >   }
> > >     void tmc_disable_hw(struct tmc_drvdata *drvdata)
> > >   {
> > > +	drvdata->enable = false;
> > >   	writel_relaxed(0x0, drvdata->base + TMC_CTL);
> > >   }
> > >   @@ -102,6 +104,9 @@ static int tmc_read_prepare(struct tmc_drvdata
> > > *drvdata)
> > >   {
> > >   	int ret = 0;
> > >   +	if (!drvdata->enable)
> > > +		return -EINVAL;
> > > +
> > 
> > Does this check always guarantee that the TMC is enabled when
> > we actually get to reading the MODE ? This needs to be done
> > under the spinlock.
> > 
> 
> Ok I will make this change.
> 
> Thanks,
> Sai
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
