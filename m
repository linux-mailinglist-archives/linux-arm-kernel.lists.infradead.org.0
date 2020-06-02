Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05BF1EC4CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 00:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKiSLoen6lieMhDmRguAx0S/P6K/Nw0RzBxTZ82WPtY=; b=FJNaFnkhAn3RT6
	vXF3ICddloNrNREqBcDQ9GnPm/TUZXaaPYhXdqWGM/DSFkQ0UDzRPP88ih799MdEC95rg1CLPiS3j
	lS2LU6CJkkvtUDNAYbLDE0LOxR4E55ARZp/boHd+J8c1T4vFMP0QoOJcMJSmAm4j3Tcu5prElOhs/
	HOIRPvBboreQogNdZZSyxLyZgXkuouo8W5kRlgfDCrSQZSb55YaCCmNbUSPquCbmwyMaLqLGm8hQv
	/HgDtM3yxgkS6e4ESlVnqy+62c+s4z9Jh+ZtiLXz8cu7cqy80ukrOoemiey/sR9mAx/R9fZK9oMD3
	TGtBtWmbjZNEAnkvruWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgF9X-0006Dp-My; Tue, 02 Jun 2020 22:12:59 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgF9O-0006D3-0l
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 22:12:51 +0000
Received: by mail-ej1-x644.google.com with SMTP id gl26so14318970ejb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 15:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rs5FX8yr8F2XCiZEbHfoUy6e6QfRwHSSUVkzIr/99n8=;
 b=PXZ3Ye+CqRNQtPKlmEvy11W37Mm7Dv3RSRYHNiaY7QXqqqGjprEoszJiYRYwoCkVjc
 +FTsxpBmlEEGYC/8sJEamatCJj04YTRz1/w4l8A1zkj9jqWg+DY3Zg2eB87sKr+UJh31
 9iHBbQPcTl/lHwlP//H46v8M93kgOSbWH6w5iscN3S7pAt3mBMu1/9IWBZxSwd1pVV/V
 8cBSVfs90sMy9VwkjkmO+0nEtgtAhXuuOh8Ek5uZQX80KR7etPr+VDJraFRIlp+gxreT
 fydtQqnE+FnNy17tV8iVuSY+1YYxTtst8o53NAMDiXFpRoGCROpVLJBNFmOsGC0gu4Zy
 JVUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rs5FX8yr8F2XCiZEbHfoUy6e6QfRwHSSUVkzIr/99n8=;
 b=Ms+JqlYSUwBUieDi+B+O0dN3cAR8dxrLTe3x51lnhqfg/kPW181ADL1KiFbDkjDU2u
 WKQbmrJ1OQDPnY5+pqWtz+qPy+ti0LDY/4UC1qIy2gUoU0ZgL613n4cnO8+5jvssD8DJ
 +BDr3J2XzgNEv8Wk1CZJtq0kIXTVW11ZG21ZTlwn8FynSLNXmSteNG/GAfX/N/t/UyRV
 xzlGoh4TYjvNfDBtgYayCcRAWeiOWCVel36M/GyIHhnG2YBk6JZ8zyvCxw8vzPWIJEFG
 wOFZif8uPwpN1KHxKiC884vychoPs4U27wj/OtsqWxAS6FcRskOiXjJl4AMaWDBZGWhB
 apYg==
X-Gm-Message-State: AOAM531hCaJSeW7UCz5SwRtW9oCBW+BEUgRxjFx6skMO9cLHuBrbOiXN
 QI0Na5rd2El2+ctCC+4J7TtoCnescJ1scq5lqdhQsg==
X-Google-Smtp-Source: ABdhPJwjiVD15IacnxpGUm68kBMkN3bWqA9RX615wyQ8deBfEWN1Wb6NnaV/refbySfK35t9Z/5bggLn+Nn96h90HjM=
X-Received: by 2002:a17:907:9d8:: with SMTP id
 bx24mr24813707ejc.517.1591135968133; 
 Tue, 02 Jun 2020 15:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
In-Reply-To: <6d759cc28628ea72767c1304883630eb@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 2 Jun 2020 23:12:37 +0100
Message-ID: <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_151250_128315_BCB947F5 
X-CRM114-Status: GOOD (  38.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, robin.murphy@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Tue, 2 Jun 2020 at 08:30, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mathieu,
>
> Thanks for taking your time for review.
>
> On 2020-06-02 02:58, Mathieu Poirier wrote:
> > Hi Sai,
> >
> > On top of the comments already privided by Mike, I have the following:
> >
> > On Mon, Jun 01, 2020 at 01:32:26PM +0530, Sai Prakash Ranjan wrote:
> >> Implement a shutdown callback to ensure ETR/ETF hardware is
> >> properly shutdown in reboot/shutdown path. This is required
> >> for ETR/ETF which has SMMU address translation enabled like
> >> on SC7180 SoC and few others. If the hardware is still accessing
> >> memory after SMMU translation is disabled as part of SMMU
> >> shutdown callback in system reboot or shutdown path, then
> >> IOVAs(I/O virtual address) which it was using will go on the bus
> >> as the physical addresses which might result in unknown crashes
> >> (NoC/interconnect errors). So we make sure from this shutdown
> >> callback that the ETR/ETF is shutdown before SMMU translation is
> >> disabled and device_link in SMMU driver will take care of ordering
> >> of shutdown callbacks such that SMMU shutdown callback is not
> >> called before any of its consumer shutdown callbacks.
> >>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> ---
> >>  .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
> >>  .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
> >>  drivers/hwtracing/coresight/coresight-tmc.c   | 29
> >> +++++++++++++++++++
> >>  drivers/hwtracing/coresight/coresight-tmc.h   |  3 ++
> >>  4 files changed, 35 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> >> b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> >> index 36cce2bfb744..cba3e7592820 100644
> >> --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> >> +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> >> @@ -85,7 +85,7 @@ static void __tmc_etb_disable_hw(struct tmc_drvdata
> >> *drvdata)
> >>      CS_LOCK(drvdata->base);
> >>  }
> >>
> >> -static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
> >> +void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
> >>  {
> >>      __tmc_etb_disable_hw(drvdata);
> >>      coresight_disclaim_device(drvdata->base);
> >> @@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata
> >> *drvdata)
> >>      return 0;
> >>  }
> >>
> >> -static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
> >> +void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
> >>  {
> >>      CS_UNLOCK(drvdata->base);
> >>
> >
> > Why do we care about ETB and ETF when they both use RAM internal to the
> > device?
> > Moreover, the system RAM they use is not dedicated and as such falls
> > back to the
> > kernel's memory pool.
> >
>
> Actually we don't, I added the disable for ETF/ETB for completeness
> since we are
> adding shutdown callback for TMC devices and not just ETR although this
> issue applies
> only for ETR and it doesn't hurt to disable these devices in shutdown
> path.
>

If they don't affect the issue you are fixing, there are good reasons
for leaving ETB./ETF running.
If a system is not completely powered down, then the static ram in
these devices can sometimes be used for post-mortem diagnosis after
re-start.

> >> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> >> b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> >> index 625882bc8b08..b29c2db94d96 100644
> >> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> >> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> >> @@ -1110,7 +1110,7 @@ static void __tmc_etr_disable_hw(struct
> >> tmc_drvdata *drvdata)
> >>
> >>  }
> >>
> >> -static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
> >> +void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
> >>  {
> >>      __tmc_etr_disable_hw(drvdata);
> >>      /* Disable CATU device if this ETR is connected to one */
> >> diff --git a/drivers/hwtracing/coresight/coresight-tmc.c
> >> b/drivers/hwtracing/coresight/coresight-tmc.c
> >> index 5a271ebc4585..7e687a356fe0 100644
> >> --- a/drivers/hwtracing/coresight/coresight-tmc.c
> >> +++ b/drivers/hwtracing/coresight/coresight-tmc.c
> >> @@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev,
> >> const struct amba_id *id)
> >>      return ret;
> >>  }
> >>
> >> +static void tmc_shutdown(struct amba_device *adev)
> >> +{
> >> +    struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
> >> +
> >> +    if (!drvdata->enable)
> >> +            goto out;
> >> +
> >> +    /*
> >> +     * We do not care about the active trace sessions here
> >> +     * since the system is going down unlike remove callback,
> >> +     * just make sure that the hardware is shutdown.
> >> +     */
> >> +    switch (drvdata->config_type) {
> >> +    case TMC_CONFIG_TYPE_ETB:
> >> +            tmc_etb_disable_hw(drvdata);
> >> +            break;
> >> +    case TMC_CONFIG_TYPE_ETF:
> >> +            tmc_etf_disable_hw(drvdata);
> >> +            break;
> >> +    case TMC_CONFIG_TYPE_ETR:
> >> +            tmc_etr_disable_hw(drvdata);
> >> +    }
> >> +
> >> +out:
> >> +    misc_deregister(&drvdata->miscdev);
> >> +    coresight_unregister(drvdata->csdev);
> >
> > If a session is active when tmc_shutdown() is called, unregistering the
> > ETF/ETR
> > will result in a kernel crash if the session is stopped before the
> > kernel has
> > had the opportunity to shutdown.  It is the problem as trying to make
> > coresight
> > drivers modular.
> >
> > For this to really work the ongoing session would need to be stopped.
> > That
> > would teardown the path and stop the sink.
>
> I have tested this with and without active trace sessions multiple times
> on 2 devices
> and did not observe a single crash. The crash should be easily triggered
> as per
> what you are saying if we have active sessions but I do not see any
> crash.
>
> >
> > That being said I'm sure that dependencies on an IOMMU isn't a problem
> > confined
> > to coresight. I am adding Robin Murphy, who added this commit [1], to
> > the thread
> > in the hope that he can provide guidance on the right way to do this.
> >
>
> SMMU/IOMMU won't be able to do much here as it is the client's
> responsiblity to
> properly shutdown and SMMU device link just makes sure that
> SMMU(supplier) shutdown is
> called only after its consumers shutdown callbacks are called.

I think this use case can be handled slightly differently than the
general requirements for modular CoreSight drivers.

What is needed here is a way of stopping the underlying ETR hardware
from issuing data to the SMMU, until the entire device has been shut
down, in a way that does not remove the driver, breaking existing
references and causing a system crash.

We could introduce a new mode to the ETR driver - e.g. CS_MODE_SHUTDOWN.

At the end of the block tmc_shutdown(struct amba_device *adev), set
drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
This new mode can be used to  prevent the underlying hardware from
being able to restart until the device is re-powered.

This mode can be detected in the code that enables / disables the ETR
and handled appropriately (updates to tmc_enable_etr_sink and
tmc_disable_etr_sink).
This mode will persist until the device is re-started - but because we
are on the device shutdown path this is not an issue.

This should leave the CoreSight infrastructure stable until the
drivers are shut down normally as part of the device power down
process.

Regards

Mike



>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
