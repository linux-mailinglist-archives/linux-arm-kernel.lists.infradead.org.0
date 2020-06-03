Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0C81ED537
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 19:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28N4laWWABPLHC7eymkTY8xsYR9lBQBUxz/JQ1X6tNU=; b=bteWBiMjY0riVh
	lVK0Y4SQdt0A5EGC+xZjQbWaPnAt+BYDY/kXngcJBHmNrrF84kZ+j/hnS6A9C3IiIeHvCSiZ86GiV
	BWBWWALwL5Vqc/PgpFLFnjcejkgdcvQ/J4865kqYCcOxks0SGujeMLH1Ss8YAMKQ8CHc/QHLTC4ZH
	q0T7wp3f7qJU032n31q3qivpy8f5+zwJcqUo61vCTLI1iGeYIZR0nYAYR05hkEJfoUnRt7KiD4O9Y
	VoaABLV7/OSgdZMpdKJLrtvIjwsCa8jPvRHCqqroSzYAntJY229SE/3+9nN0/kon1IRquUVT09eap
	BIDJ+6GFkZXvm66WSLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXRR-0004EY-KR; Wed, 03 Jun 2020 17:44:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXRF-0004Dh-Kw
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 17:44:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id x22so2085196pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 10:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Jq/XMCu8C1tBnhihgN8ovqZ4K39bLgFUtiV401gBtko=;
 b=n4OmWpRd0KqGc/av3cLu3mkKaDuyVkxfyBJv0Wou/E6+ulN06HRx90pStlf/XT8Fxm
 fLLo06uUWRUfGVUrvhykXlwLhVhqwSdEmnyYjAOyVBi0HcCG+gUJwRVsSEF10Ag01ocY
 K9HpjUho6PLw14i3tEynLMyHPLH1DE5/cRKRl7xTFIZoSUcWbknjFI9GPcFDUztUmlHK
 FQYJvgMFS+wV8csnxqHRm1j8HL3N39hm2Ep2XqT5bMw/QBRtrMBVos08vA3n0/pp8VBy
 o0hyo3J/r0Y4aftMlIInLxhJCtOq6ihq6WdXPODi6c/PAV3+soEvVNYIJlnoMUix3M9R
 rO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Jq/XMCu8C1tBnhihgN8ovqZ4K39bLgFUtiV401gBtko=;
 b=QrR73LI8p1MjBC3iFERJ7MBC8vIIBHXFPD9uoG9+Yi/Sy8xZjFSYrxaxLeyWV0ok2p
 I/z6ROaKK1owPgyJTtoc1PHBPTI7AF3s1jQ3ZafP1fh4uitnwbp664D9XIubmQvV30O3
 VQVcqJQt59uCtHvoEtk/K5MxfOo7qV6026a2b73WeQwInDTYMHBZeRX0as/G5JOHZe+z
 WxtwSDbdbPpNhcIAjDrH4+K6iRxr6N1ZVcW90SiDtysBmrvN9kT2dKGa84odM2/CxTc9
 RSbPVjDEai10C+3yofN5PA69Udpfe1cL5kzgMH8juYUlPIb+Mq3oqOzcRZggCQHZgjbG
 ghMQ==
X-Gm-Message-State: AOAM53181Xcu29VuhEw12LU0b0btiSmclYCmND6xGbWD+LPcWkwyNdqc
 lOyec7yXVzN1XwOdrE4btdbDmQ==
X-Google-Smtp-Source: ABdhPJzdyI4/XC8yusU4a6nrAdgweku9ER1s7t/uGLDl/DV7BBjH+O2YCLYp+G3uOF/1M+P7fOJY/Q==
X-Received: by 2002:aa7:8dc7:: with SMTP id j7mr245043pfr.169.1591206268980;
 Wed, 03 Jun 2020 10:44:28 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m12sm3153473pjs.41.2020.06.03.10.44.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 10:44:28 -0700 (PDT)
Date: Wed, 3 Jun 2020 11:44:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
Message-ID: <20200603174426.GA23165@xps15>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
 <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
 <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_104429_689537_3D4EBAF0 
X-CRM114-Status: GOOD (  35.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 02:34:10PM +0100, Robin Murphy wrote:
> On 2020-06-03 14:22, Mike Leach wrote:
> > Hi Sai,
> > 
> > On Wed, 3 Jun 2020 at 13:14, Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> > > 
> > > Hi Mike,
> > > 
> > > On 2020-06-03 16:57, Mike Leach wrote:
> > > > Hi,
> > > > 
> > > > On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
> > > > <saiprakash.ranjan@codeaurora.org> wrote:
> > > > > 
> > > > > Hi Mike,
> > > > > 
> > > > > Thanks again for looking at this.
> > > > > 
> > > > > On 2020-06-03 03:42, Mike Leach wrote:
> > > > > [...]
> > > > > 
> > > > > > > 
> > > > > > > SMMU/IOMMU won't be able to do much here as it is the client's
> > > > > > > responsiblity to
> > > > > > > properly shutdown and SMMU device link just makes sure that
> > > > > > > SMMU(supplier) shutdown is
> > > > > > > called only after its consumers shutdown callbacks are called.
> > > > > > 
> > > > > > I think this use case can be handled slightly differently than the
> > > > > > general requirements for modular CoreSight drivers.
> > > > > > 
> > > > > > What is needed here is a way of stopping the underlying ETR hardware
> > > > > > from issuing data to the SMMU, until the entire device has been shut
> > > > > > down, in a way that does not remove the driver, breaking existing
> > > > > > references and causing a system crash.
> > > > > > 
> > > > > > We could introduce a new mode to the ETR driver - e.g.
> > > > > > CS_MODE_SHUTDOWN.
> > > > > > 
> > > > > > At the end of the block tmc_shutdown(struct amba_device *adev), set
> > > > > > drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
> > > > > > This new mode can be used to  prevent the underlying hardware from
> > > > > > being able to restart until the device is re-powered.
> > > > > > 
> > > > > > This mode can be detected in the code that enables / disables the ETR
> > > > > > and handled appropriately (updates to tmc_enable_etr_sink and
> > > > > > tmc_disable_etr_sink).
> > > > > > This mode will persist until the device is re-started - but because we
> > > > > > are on the device shutdown path this is not an issue.
> > > > > > 
> > > > > > This should leave the CoreSight infrastructure stable until the
> > > > > > drivers are shut down normally as part of the device power down
> > > > > > process.
> > > > > > 
> > > > > 
> > > > > Sounds good to me, but if the coresight_unregister() is the trouble
> > > > > point
> > > > > causing these crashes, then can't we just remove that from
> > > > > tmc_shutdown()
> > > > > callback? This would be like maintaining the same behaviour as now
> > > > > where
> > > > > on reboot/shutdown we basically don't do anything except for disabling
> > > > > ETR.
> > > > 
> > > > No - the new mode prevents race conditions where the thread shutting
> > > > down the SMMU does the ETR shutdown, but then another thread happens
> > > > to be trying to start trace and restarts the ETR.
> > > > It also prevents the condition Mathieu discussed where a thread might
> > > > be attempting to shutdown trace - this could try to disable the
> > > > hardware again re-releasing resources/ re-flushing and waiting for
> > > > stop.
> > > > 
> > > 
> > > I do not think there will a race between SMMU shutdown and ETR shutdown.
> > > Driver core takes care of calling SMMU shutdown after its consumer
> > > shutdown callbacks via device link, otherwise there would already be
> > > bugs in all other client drivers.
> > > 
> > 
> > I am not saying there could be a race between tmc_shutdowm and
> > Smmu_shutdown - there may be a case if the coresight_disable_path
> > sequence is running and gets to the point of disabling the ETR after
> > the SMMU callback has disabled it.
> 
> I'm confused now - there is no "SMMU callback", we're talking about the
> system-wide cleanup from kernel_shutdown_prepare() or
> kernel_restart_prepare(). As far as I'm aware userspace should be long gone
> by that point, so although trace may have been left running, the chance of
> racing against other driver operations seems pretty unlikely.

Robin has a point - user space is long gone at this time.  As such the first 
question to ask is what kind of CS session was running at the time the system
was shutting down.  Was it a perf session of a sysfs session?

I'm guessing it was a sysfs session because user space has been blown away a
while back and part of that process should have killed all perf sessions.

If I am correct then simply switching off the ETR HW in the shutdown() amba bus
callback should be fine - otherwise Mike's approach is mandatory.  There is 
also the exchange between Robin and Sai about removing the SMMU shutdown
callback, but that thread is still incomplete. 

Thanks,
Mathieu

> 
> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
