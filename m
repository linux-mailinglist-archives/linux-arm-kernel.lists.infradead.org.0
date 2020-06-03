Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4F31ED0AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PriSsmW+tLjyOhuQ6gHvo1oyoV04ajXGCQKH1LwZBKE=; b=WAC/zpm45i+Es/
	Sztyadqu/vjFZyoqI8E54G6N4JwtF/6HTEkWwfOxvzFY1WLiOXWT3ADeF0JV5DEQDLeEu2xQscYMs
	0H2zQ94jRYDdLIzW+MvN46ck5BySbNwsdy4l76gx7fzZylzzlth26WYn0x3VEa0Pv/OMKCSnba07x
	XTRtOtv9DP89TaQTOj65xVdEk9HNjFv2nmYl2nT7+zfjYgtdKlcyp0AyA4C5D81X0jDFNyye9nVgd
	HlHTDHl2MeRA+bOByST6jrChhgogdOpGqSAJ70ngSx7O92pWKu7IWdR82DolkRCclj9MQB0lOoIMA
	T8PgQAZV+UL7Xv4syqVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTLu-0001Mg-Ef; Wed, 03 Jun 2020 13:22:42 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTLl-0001MC-EM
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:22:34 +0000
Received: by mail-ej1-x642.google.com with SMTP id l27so2164617ejc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 06:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JPwX4c4qU1Ibpfzn0AFffCVAQ4RDh1hSQFVaf4E4RKA=;
 b=uRBfH3yTtpCBYHHYqQw4B8u3acTPULDVQmRyZV1n6qGJuxks8v0rTqgXHPStIYYK1c
 N1rci9Zu9HZjsvIYicNlpOOnfBcUi+zs64OWNQwbegqFLg0w/F21FAtX/id2CiMthsJG
 IRW7xP9h9ez3MFslB17v9wycKadkDxXQcmNWzm72cLT31qCgnjt/fp0XWgPeoO81xINU
 Q0R/HsMG+7kVTVru2RvbGMitHKBUoUj1JBBUwzBI0MrUdpyfXLslhP5y1lqu+tKA0KPZ
 0vG0Muh4/YN4F6c9YSPxSVHnVMdKdbm07Bx2Tr6Ma/NBOqe+lTKepYWYWX48jQcg5joO
 hjWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JPwX4c4qU1Ibpfzn0AFffCVAQ4RDh1hSQFVaf4E4RKA=;
 b=CL8DGsVzliIKDmOX/M5RJS/qX+j5N46L2aO2cnkVW2NLoBtFoSttk5XYvDfXxsMnGw
 Ssafkk6w+ejmftr5shFXj2LBwVlq+IkKgvM6ueRoi4DGuXpR/5wiZHt1m8BnVCei21qw
 2U5grLkqFgNsXSIAiqv+BYiV0JNq/Qy6GiayqF2lquKqDJiU5WCG60oCsSlsgC2P9HzR
 gp6L/uI1d7ZoYKnos0G8d9OiY9nFCb4Ico9Oj1ZJPHSHr2knkpUg912h4o7hBcvILYJw
 XNXY8pXOKK2kenB61bbyDR0z/Z5TNt3pfHYNE8lKZM98N+s8xyRNfmF8sb4TyAajY/5y
 xWyw==
X-Gm-Message-State: AOAM531eRR0YDmWTbcGaCuxZD351T6zTqhmZKXkEkY/tiEjM3MecifU8
 zeIyxMOYJRqa5tIEPbm77TNZYDvOUT6mNc3q2q/8tVq6
X-Google-Smtp-Source: ABdhPJy9GE7o2d5AINznqj2b0Dcu519109HaN+lBlE9eMUrNUbmd11s0xZ0qXKihtY+PyNILSWGbMMX9VHcpqTDjQ3s=
X-Received: by 2002:a17:907:9484:: with SMTP id
 dm4mr29506933ejc.56.1591190552082; 
 Wed, 03 Jun 2020 06:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
 <20200601212858.GB24287@xps15>
 <6d759cc28628ea72767c1304883630eb@codeaurora.org>
 <CAJ9a7VhMbdqVBHxEXGYxFkgPnnQqNnDAz=wkHP3s7Ntw0iLmKA@mail.gmail.com>
 <f0357072de96970b641bbd0da98c1d61@codeaurora.org>
 <CAJ9a7Vj9STJw4jBxWU_9wHftj4Q7+k8o1nTc8tr21KjYi0RkpQ@mail.gmail.com>
 <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
In-Reply-To: <4a09cd2e054836d85f2e024ca4435e91@codeaurora.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 3 Jun 2020 14:22:21 +0100
Message-ID: <CAJ9a7VgCFeHNbY_9Gwvu6uT9MFBeY=_GCaN4N1dwmm+iNpfJOw@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_062233_491177_511B2770 
X-CRM114-Status: GOOD (  31.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
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

Hi Sai,

On Wed, 3 Jun 2020 at 13:14, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mike,
>
> On 2020-06-03 16:57, Mike Leach wrote:
> > Hi,
> >
> > On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> >>
> >> Hi Mike,
> >>
> >> Thanks again for looking at this.
> >>
> >> On 2020-06-03 03:42, Mike Leach wrote:
> >> [...]
> >>
> >> >>
> >> >> SMMU/IOMMU won't be able to do much here as it is the client's
> >> >> responsiblity to
> >> >> properly shutdown and SMMU device link just makes sure that
> >> >> SMMU(supplier) shutdown is
> >> >> called only after its consumers shutdown callbacks are called.
> >> >
> >> > I think this use case can be handled slightly differently than the
> >> > general requirements for modular CoreSight drivers.
> >> >
> >> > What is needed here is a way of stopping the underlying ETR hardware
> >> > from issuing data to the SMMU, until the entire device has been shut
> >> > down, in a way that does not remove the driver, breaking existing
> >> > references and causing a system crash.
> >> >
> >> > We could introduce a new mode to the ETR driver - e.g.
> >> > CS_MODE_SHUTDOWN.
> >> >
> >> > At the end of the block tmc_shutdown(struct amba_device *adev), set
> >> > drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
> >> > This new mode can be used to  prevent the underlying hardware from
> >> > being able to restart until the device is re-powered.
> >> >
> >> > This mode can be detected in the code that enables / disables the ETR
> >> > and handled appropriately (updates to tmc_enable_etr_sink and
> >> > tmc_disable_etr_sink).
> >> > This mode will persist until the device is re-started - but because we
> >> > are on the device shutdown path this is not an issue.
> >> >
> >> > This should leave the CoreSight infrastructure stable until the
> >> > drivers are shut down normally as part of the device power down
> >> > process.
> >> >
> >>
> >> Sounds good to me, but if the coresight_unregister() is the trouble
> >> point
> >> causing these crashes, then can't we just remove that from
> >> tmc_shutdown()
> >> callback? This would be like maintaining the same behaviour as now
> >> where
> >> on reboot/shutdown we basically don't do anything except for disabling
> >> ETR.
> >
> > No - the new mode prevents race conditions where the thread shutting
> > down the SMMU does the ETR shutdown, but then another thread happens
> > to be trying to start trace and restarts the ETR.
> > It also prevents the condition Mathieu discussed where a thread might
> > be attempting to shutdown trace - this could try to disable the
> > hardware again re-releasing resources/ re-flushing and waiting for
> > stop.
> >
>
> I do not think there will a race between SMMU shutdown and ETR shutdown.
> Driver core takes care of calling SMMU shutdown after its consumer
> shutdown callbacks via device link, otherwise there would already be
> bugs in all other client drivers.
>

I am not saying there could be a race between tmc_shutdowm and
Smmu_shutdown - there may be a case if the coresight_disable_path
sequence is running and gets to the point of disabling the ETR after
the SMMU callback has disabled it.

Mike

> Thanks,
> Sai
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
