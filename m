Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433301ED184
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJwJ85g2FjWwfjkbvdVpl2syiViT0WbeR50TpXW5aKA=; b=RpE2R6dsQfCSVx
	JlC98ULvrVJYZOugFVzq0dpRIAVePBvrn2AO8lTYY270+AISR8HznszoDdxQ4GWZ9bNka2zgsbqRU
	mnloP/xG6HF3WU4Skv6LmKLeOHxclDbKa4IPqX3QbmBZyFGavU19PCSb7mZ+v4w/qA9S//1G4CtU4
	CNGPAl0lDsnz9AF88FN0oswC7oJYuww0+iBlq7XUa8ioXTzycZGdrOt9M37du5PnCt5LreC5+ARDv
	3IGbtDvLQAsK4EfTQStJGdO/4gaCKomLFF7/zkG/RLYw3tLui/+qWcVU5JNEXV6lY/xZPsKBbGdlG
	OGMaDpm5r3Shv1BF1c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTqb-0008HE-M2; Wed, 03 Jun 2020 13:54:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTnf-0005j5-Kn
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:51:26 +0000
Received: by mail-ed1-x542.google.com with SMTP id p18so1818583eds.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 06:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HT6Jc3j2wV7RmXXPBI9xBKNNCNks3guHWgmY6UH0Bes=;
 b=TnMhhLK/LjZa4U+b57SZZcXBGH9KbG3fKuIyMZ+4ULLTlthdnE1uS8UF/P8KS5SGpU
 PqdbHle2YSIuqs9ZzCbKjdr7fdmZlUAveUrmiU7EdOu/coIuttGQ3cKRmONakytLalOv
 XKK/rkX3xa1/m3TCYYcNwXGHtyTOpNb8SCUER1XcJVSJnKf/iTI/nruI5xBlv2/mQO0Z
 F/sBstOe57JrH77McxzpfDsa7ENLEpt+GAl0KABK/XptanScNbgIrB5yTpArSCz0EAGU
 Kn0PAg2HIQypjsIXc/kPkyQ7ewST6SJjJwpjCiXAw308PEXYjgn++N9ozS8EFMr9QGb9
 7P9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HT6Jc3j2wV7RmXXPBI9xBKNNCNks3guHWgmY6UH0Bes=;
 b=f6TcmC7u4bUvv5dz/SjkWw3Gh0SoJv7KBbet4ZybD/Y8u5FcHQwNsgXNPaE7vgEURQ
 sVhiKPs3w52mFk/k6cB08EXwg1PAYyMT78YJ2lg3jrM62z+3UZrJPbsqHcFPKU0EID33
 aLHGj6hek2zLmjMk2xvyaBnG9gowJPfecTaSB8VcuJ9vt6fSWj0yJWXma667Z3M3yQaf
 7xYGrargOrRuc8BeOU8LzdOPcl0SrhGscHIhMLZSQgiN3zlY7InKS+EzWoBc8r1oDSYE
 Cs2TyDimIB2ezTNy4hd2gCcFTCPR7CQaUgnF+nNGu7y0KYOrggq1qOwAqmr6l/d+sPzo
 /N8w==
X-Gm-Message-State: AOAM531UT527IjFn2RbGQCwtv6IICSbsd5Bsm6Kwd9IQlZ0cic3IZto5
 HoHP4/OjRL+5DxzONeUU+q6GhraDSy6ikwN98K1bzQ==
X-Google-Smtp-Source: ABdhPJwR2vjJry78FpxUk8oMC0I8QgflKiFfnUU3O2YO1V0+Cgkk0EEZfk46wQLVk0jJWhT7WOgQcXIVpsmYLhauAP0=
X-Received: by 2002:a50:f289:: with SMTP id f9mr20683380edm.188.1591192281579; 
 Wed, 03 Jun 2020 06:51:21 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <1a5a6a6d-b86d-df45-cf91-7081e70d88a3@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 3 Jun 2020 14:51:10 +0100
Message-ID: <CAJ9a7Vj3sL=4O3DU+aJWYLhue1UxQmX4Ba5JdEnmxKDEYo_z4Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065123_732130_E4B339B7 
X-CRM114-Status: GOOD (  31.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On Wed, 3 Jun 2020 at 14:34, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-06-03 14:22, Mike Leach wrote:
> > Hi Sai,
> >
> > On Wed, 3 Jun 2020 at 13:14, Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> >>
> >> Hi Mike,
> >>
> >> On 2020-06-03 16:57, Mike Leach wrote:
> >>> Hi,
> >>>
> >>> On Wed, 3 Jun 2020 at 11:24, Sai Prakash Ranjan
> >>> <saiprakash.ranjan@codeaurora.org> wrote:
> >>>>
> >>>> Hi Mike,
> >>>>
> >>>> Thanks again for looking at this.
> >>>>
> >>>> On 2020-06-03 03:42, Mike Leach wrote:
> >>>> [...]
> >>>>
> >>>>>>
> >>>>>> SMMU/IOMMU won't be able to do much here as it is the client's
> >>>>>> responsiblity to
> >>>>>> properly shutdown and SMMU device link just makes sure that
> >>>>>> SMMU(supplier) shutdown is
> >>>>>> called only after its consumers shutdown callbacks are called.
> >>>>>
> >>>>> I think this use case can be handled slightly differently than the
> >>>>> general requirements for modular CoreSight drivers.
> >>>>>
> >>>>> What is needed here is a way of stopping the underlying ETR hardware
> >>>>> from issuing data to the SMMU, until the entire device has been shut
> >>>>> down, in a way that does not remove the driver, breaking existing
> >>>>> references and causing a system crash.
> >>>>>
> >>>>> We could introduce a new mode to the ETR driver - e.g.
> >>>>> CS_MODE_SHUTDOWN.
> >>>>>
> >>>>> At the end of the block tmc_shutdown(struct amba_device *adev), set
> >>>>> drvdata->mode to CS_MODE_SHUTDOWN & remove the coresight_unregister().
> >>>>> This new mode can be used to  prevent the underlying hardware from
> >>>>> being able to restart until the device is re-powered.
> >>>>>
> >>>>> This mode can be detected in the code that enables / disables the ETR
> >>>>> and handled appropriately (updates to tmc_enable_etr_sink and
> >>>>> tmc_disable_etr_sink).
> >>>>> This mode will persist until the device is re-started - but because we
> >>>>> are on the device shutdown path this is not an issue.
> >>>>>
> >>>>> This should leave the CoreSight infrastructure stable until the
> >>>>> drivers are shut down normally as part of the device power down
> >>>>> process.
> >>>>>
> >>>>
> >>>> Sounds good to me, but if the coresight_unregister() is the trouble
> >>>> point
> >>>> causing these crashes, then can't we just remove that from
> >>>> tmc_shutdown()
> >>>> callback? This would be like maintaining the same behaviour as now
> >>>> where
> >>>> on reboot/shutdown we basically don't do anything except for disabling
> >>>> ETR.
> >>>
> >>> No - the new mode prevents race conditions where the thread shutting
> >>> down the SMMU does the ETR shutdown, but then another thread happens
> >>> to be trying to start trace and restarts the ETR.
> >>> It also prevents the condition Mathieu discussed where a thread might
> >>> be attempting to shutdown trace - this could try to disable the
> >>> hardware again re-releasing resources/ re-flushing and waiting for
> >>> stop.
> >>>
> >>
> >> I do not think there will a race between SMMU shutdown and ETR shutdown.
> >> Driver core takes care of calling SMMU shutdown after its consumer
> >> shutdown callbacks via device link, otherwise there would already be
> >> bugs in all other client drivers.
> >>
> >
> > I am not saying there could be a race between tmc_shutdowm and
> > Smmu_shutdown - there may be a case if the coresight_disable_path
> > sequence is running and gets to the point of disabling the ETR after
> > the SMMU callback has disabled it.
>
> I'm confused now - there is no "SMMU callback", we're talking about the
> system-wide cleanup from kernel_shutdown_prepare() or
> kernel_restart_prepare(). As far as I'm aware userspace should be long
> gone by that point, so although trace may have been left running ||
           ((offset >= TRCCIDCVRn(0)) && (offset <= TRCVMIDCVRn(7)), the
> chance of racing against other driver operations seems pretty unlikely.
>

Sorry - bad choice of terminology. I was referring to the SMMU
ensuring that it had all its clients shut-down before if shut down. To
quote Sai...

>>>>> SMMU device link just makes sure that
> >>>>>> SMMU(supplier) shutdown is
> >>>>>> called only after its consumers shutdown callbacks are called.

I agree it is unlikely, but if removing the device from the CoreSight
infrastructure via coresight_unregister() is a potential source of a
crash, it would seem that there is a potential path where some
CoreSight driver side work might be possible. therefore a mode to
prevent this crash, and ensure that the device hardware remains off
and not sending trace to SMMU until such time as shutdown / reboot
restart occurs, seemed prudent.

Mike

> Robin.



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
