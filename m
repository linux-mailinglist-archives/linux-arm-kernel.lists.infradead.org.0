Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3F41ECE43
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 13:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJ6xiAy1NozDgumERBryx0tzx8oss7wxe2FGVLKaCzc=; b=fhminJwopD6uPB
	75FlGd6JdDol/q3nfaujxL/XdWnk1oOmCYxo23dTnatv/l+QKn8IDHucf6n+95xktw/ZSPELTqiEI
	OhqBa9cuJZPxoc+KcCrtP85Pb2NJJY6xiJwAM78BTIfQeB1s8bvgTmxl8gQjyWmvDVPKREQCt5uvE
	ZXuQLyBIal8lvFps26eS6ZbupQbEyUdeBTgfouBvD6X/h/fuws1Q2AOSGU7ab3mlUj2M4ZZkGjecR
	l2bDmLfhytxzvoYGbUVEoZdQ2cfHgNJ42GP3+Od40Dq/WfC4XrZYxjAHLF2QlV9nOdE9HfpXKydYf
	8PFDOyCrNISLrCNP1lfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRYR-0002YV-S0; Wed, 03 Jun 2020 11:27:31 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRYK-0002XT-3e
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 11:27:25 +0000
Received: by mail-ej1-x643.google.com with SMTP id x1so1756194ejd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 04:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qhM8iRgNfKXTRDBRqXeuzDbN65/0jN44+ax6ZdEs4fk=;
 b=Vixa1y6m9+WDzkngcpJBP+uAE5NShW65DCij0lq7OcG/MUuNdYYkyg1QTZToihhT2h
 62WrnM1VQkR8J8Zlwc3XwLcHKw4Wxujx2qeAmz+Apd4N6O0cOdsS44QWo6N7sTUzy8jI
 GdSmwrGsPhaLF+XWO/ILT0EgywDUg4Oi5+orh/bizrEbd4H52R7ZwvnpjZH5uO3DTSRz
 2PAmM+4mvxz2qZz4Z4mkO9HUh2Ta/JvtIXtnXjT9c0Q9IUk2LPxIlk79ZjYBLzxwahC8
 MHGfCdvrX7hEZmC40QL/ApzYDUBgY4/N43TQJPLJ75cLtoqhhuzwTSTrl2B3T3P42qKU
 ftCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qhM8iRgNfKXTRDBRqXeuzDbN65/0jN44+ax6ZdEs4fk=;
 b=RyIz8ecpaDTWTozGQi2ceO0iRpUlQwtv6zk7QPUM5S0/Iz8TPA/+exeB8K/n9IWC7j
 dAVozg7NZswe8yj67PJywaew6zEQldy0nHc/VNWEk5Rr7DTkSd6TWBoyHxFmmr+mjDrf
 EflDMzxpzmTcIu0cqZBG9JIzlHIIf22KYLxFd7Lg8jVlUm79L3HROC8xg68wWrAebflg
 EkmJCP3RR/Aoz2LkjGTfBq1MxfqQMs/d5qkMMYfqPk6kd5/irN6jobE5SbmdtBUpr5YM
 z+D9WZBIJe4ISrJagKkJromuQFZVYeOzttxFjmy+vVbGcHHUMzWshVAWOglc2Li+7SpM
 pI9Q==
X-Gm-Message-State: AOAM533ZvA8t4j01BwPh+WyZnRsWIiLBXZXd5wyFPr1EWAQbLKPh4F0M
 LuqhTebJmXiVtb3iLKim47T4EqNDmk/ajyRv1Ov3hyEittY=
X-Google-Smtp-Source: ABdhPJwzV9kd/HCF1oD01x9Grj16lQwV3iVe8y14F3DJkr+IwzeR9WEmSBci4EZtlieIwAtnoimTUdsNubGx8NTIJtk=
X-Received: by 2002:a17:907:9d8:: with SMTP id
 bx24mr26823421ejc.517.1591183641240; 
 Wed, 03 Jun 2020 04:27:21 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
In-Reply-To: <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 3 Jun 2020 12:27:10 +0100
Message-ID: <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_042724_158795_3E9ADA12 
X-CRM114-Status: GOOD (  30.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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

Hi,

On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mike,
>
> Thanks again for looking at this.
>
> On 2020-06-03 03:42, Mike Leach wrote:
> [...]
>
> >>
> >> SMMU/IOMMU won't be able to do much here as it is the client's
> >> responsiblity to
> >> properly shutdown and SMMU device link just makes sure that
> >> SMMU(supplier) shutdown is
> >> called only after its consumers shutdown callbacks are called.
> >
> > I think this use case can be handled slightly differently than the
> > general requirements for modular CoreSight drivers.
> >
> > What is needed here is a way of stopping the underlying ETR hardware
> > from issuing data to the SMMU, until the entire device has been shut
> > down, in a way that does not remove the driver, breaking existing
> > references and causing a system crash.
> >
> > We could introduce a new mode to the ETR driver - e.g.
> > CS_MODE_SHUTDOWN.
> >
> > At the end of the block tmc_shutdown(struct amba_device *adev), set
> > drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
> > This new mode can be used to  prevent the underlying hardware from
> > being able to restart until the device is re-powered.
> >
> > This mode can be detected in the code that enables / disables the ETR
> > and handled appropriately (updates to tmc_enable_etr_sink and
> > tmc_disable_etr_sink).
> > This mode will persist until the device is re-started - but because we
> > are on the device shutdown path this is not an issue.
> >
> > This should leave the CoreSight infrastructure stable until the
> > drivers are shut down normally as part of the device power down
> > process.
> >
>
> Sounds good to me, but if the coresight_unregister() is the trouble
> point
> causing these crashes, then can't we just remove that from
> tmc_shutdown()
> callback? This would be like maintaining the same behaviour as now where
> on reboot/shutdown we basically don't do anything except for disabling
> ETR.

No - the new mode prevents race conditions where the thread shutting
down the SMMU does the ETR shutdown, but then another thread happens
to be trying to start trace and restarts the ETR.
It also prevents the condition Mathieu discussed where a thread might
be attempting to shutdown trace - this could try to disable the
hardware again re-releasing resources/ re-flushing and waiting for
stop.

Regards

Mike

> This way, we do not have to introduce any new mode as well. To be exact,
> in
> tmc_shutdown() we just disable ETR and then return without unregistering
> which should not cause any issues since this is shutdown not the remove
> callback which is a requirement for making coresight modular like below:
>
> static void tmc_shutdown(struct amba_device *adev)
>   {
>           unsigned long flags;
>           struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
>
>           spin_lock_irqsave(&drvdata->spinlock, flags);
>
>           if (drvdata->mode == CS_MODE_DISABLED)
>                   goto out;
>
>           if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
>                   tmc_etr_disable_hw(drvdata);
>
>           /*
>            * We do not care about coresight unregister here unlike remove
>            * callback which is required for making coresight modular
> since
>            * the system is going down after this.
>            */
>   out:
>           spin_unlock_irqrestore(&drvdata->spinlock, flags);
>   } from disabling the ETR again - potentially freeing up memory twice.
>
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
