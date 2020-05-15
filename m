Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0074D1D5285
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4kSXOKDQhu866v1F/Q+vO3UArqZ6KT1F3kSiKDZL1bA=; b=L7lqX3kxfnuTdS
	v2jxhlfpgPhNIiwSVe6UCcexhL5vFT3fWpZNAgRlsj9Mt7DFXgCkFsPwsffXGEwhaGrAdN/2AWPYC
	9yrwXesirOfUP2c1XqmUnWLR48PPZvkfDvXt5A7e8PyignUKu+aEy2zHO3YCl1skWyB0T7LWMD1Dr
	YMPt17aSX6egzLykdmT3w+ongOJRaXqJYo6y+QwbzHZiWHVKj0ZXAdRBh+197Qg2xPXVzZvU0HeZl
	sED6IfGF5KIN3tWYd4cMr2RZT9uVsVfLsjX8tSwVeSCwsYQG8qAbYlByTd6NcIfiWwZubwElTnE7r
	tl5AftucYaS3qulUwCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbhg-0000Ll-0T; Fri, 15 May 2020 14:52:48 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbhU-0000Ki-AX
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:52:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id j8so2955766iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vydHQTzj3c686TmTMHL1QqAtMRNRd4XB3MteF3kHgAs=;
 b=UZ8+sJI+p0f3is3kkpc69G6irKX6PH1tH/sgzavBs66A67D3Q6q/lwNTuPV3zb6U68
 kqyrxtvEIkD7xcxvxSbLBvuowF52WJLwD3Ss7hSzlm66kdDyGCH1rpB63yzx+J5uHGcT
 ZEo3HnRA6MgTbSPk0O2J8ZLHIDgWLFLcxrCJLMU7oRNLQNXO9B9bgaIzsaINvzb92+2e
 HYHMjemU7Or55Oo6WkBlhT7O8JQd5nisDmoJ4k31ZH8J+2mulyDIfylPXwIxqZF1t8db
 +k+i08xW0fNlzPv6B0FXdlzkwrIobKrR06ywlxbxIX+C4SkvQTd0iuquFfGoKywD3Mmg
 6wiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vydHQTzj3c686TmTMHL1QqAtMRNRd4XB3MteF3kHgAs=;
 b=khLadP1FjcxIAd/u7jBkUODxmtMDm2nsERDSQsdV51O1m0AZsuJ3J17JF7bpODg/LQ
 7wNsCJJMCXQPzkLJ2Zhis4jgna1xG2DFxymDpmpYIvUSe3k5z9wr+C0Jgnmh+d3WXs09
 eMm5UpSKiW0ZQjloIaV0fKM9HFJHFYrctr4S1tBNlLl3D+HymgUiHBJZEc96qjWkS9My
 qCDpihQ3ABMU0Qr0AzqbtKleElEqDXLBWOjfFqEx9RA6/cNUE4RLJz4H/zukWLKxeI34
 fs6YQ6rzieFBzBzO3vEb8vwRsJxUcaMdxV5W8h3PQcnrRl8h8VZx6HK2STJVQVey45ov
 hVCQ==
X-Gm-Message-State: AOAM531nkI2an/LEtLys45//3vUPHr4hifEJcTUlaLijY9Y5EEWUHtYD
 ngLtFay7n4iNH24V05Rj2/JF+CrTnVzrz7s2Cx9W5g==
X-Google-Smtp-Source: ABdhPJyzKkiEkV8gyGv78TG2faQUaA8S/y2Gi7ZBEVgHXbh3X8djjspFmWdU7Sbf0WvFrTABd+a2aIxBe6daar4yk9U=
X-Received: by 2002:a02:2708:: with SMTP id g8mr3682319jaa.52.1589554354623;
 Fri, 15 May 2020 07:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
 <20200514180055.GA29384@xps15>
 <2c932d57288508cc72a6ee323cf5595e@codeaurora.org>
In-Reply-To: <2c932d57288508cc72a6ee323cf5595e@codeaurora.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 15 May 2020 08:52:23 -0600
Message-ID: <CANLsYkxun2EWGeLU42ShbqkJMtCTh+Q9L3t=CXQR+-2zVuuJYg@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: Add support to disable trace unit power
 up
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075236_366832_9BA6B300 
X-CRM114-Status: GOOD (  28.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Tingwei Zhang <tingwei@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 12:39, Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Mathieu,
>
> On 2020-05-14 23:30, Mathieu Poirier wrote:
> > Good morning Sai,
> >
> > On Thu, May 14, 2020 at 04:29:15PM +0530, Sai Prakash Ranjan wrote:
> >> From: Tingwei Zhang <tingwei@codeaurora.org>
> >>
> >> On some Qualcomm Technologies Inc. SoCs like SC7180, there
> >> exists a hardware errata where the APSS (Application Processor
> >> SubSystem)/CPU watchdog counter is stopped when ETM register
> >> TRCPDCR.PU=1.
> >
> > Fun stuff...
> >
>
> Yes :)
>
> >> Since the ETMs share the same power domain as
> >> that of respective CPU cores, they are powered on when the
> >> CPU core is powered on. So we can disable powering up of the
> >> trace unit after checking for this errata via new property
> >> called "qcom,tupwr-disable".
> >>
> >> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> >> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >
> > Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> >
>
> Tingwei is the author, so if I understand correctly, his signed-off-by
> should appear first, am I wrong?

It's a gray area and depends on who's code is more prevalent in the
patch.  If Tingwei wrote the most of the code then his name is in the
"from:" section, yours as co-developer and he signs off on it (as I
suggested).  If you did most of the work then it is the opposite.
Adding a Co-developed and a signed-off with the same name doesn't make
sense.

>
> >> ---
> >>  .../devicetree/bindings/arm/coresight.txt     |  6 ++++
> >>  drivers/hwtracing/coresight/coresight-etm4x.c | 29
> >> ++++++++++++-------
> >
> > Please split in two patches.
> >
>
> Sure, I will split the dt-binding into separate patch, checkpatch did
> warn.

And you still sent me the patch...  I usually run checkpatch before
all the submissions I review and flatly ignore patches that return
errors.  You got lucky...

>
> >>  2 files changed, 25 insertions(+), 10 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt
> >> b/Documentation/devicetree/bindings/arm/coresight.txt
> >> index 846f6daae71b..d2030128fe46 100644
> >> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> >> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> >> @@ -108,6 +108,12 @@ its hardware characteristcs.
> >>      * arm,cp14: must be present if the system accesses ETM/PTM
> >> management
> >>        registers via co-processor 14.
> >>
> >> +    * qcom,tupwr-disable: boolean. Indicates that trace unit power up
> >> can
> >> +      be disabled on Qualcomm Technologies Inc. systems where ETMs are
> >> in
> >> +      the same power domain as their CPU cores. This property is
> >> required
> >> +      to identify such systems with hardware errata where the CPU
> >> watchdog
> >> +      counter is stopped when TRCPDCR.PU=1.
> >> +
> >
> > I think something like "qcom,skip-power-up" would be clearer.
> >
> > Also, a better choice of words is that TRCPDCR.PU does not have to be
> > set on
> > Qualcomm...
> >
>
> Yes "qcom,skip-power-up" is a lot better, thanks. Also will use
> something as
> you suggested for description.
>
> >>  * Optional property for TMC:
> >>
> >>      * arm,buffer-size: size of contiguous buffer space for TMC ETR
> >> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c
> >> b/drivers/hwtracing/coresight/coresight-etm4x.c
> >> index fb0f5f4f3a91..6886b44f6947 100644
> >> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> >> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> >> @@ -104,6 +104,11 @@ struct etm4_enable_arg {
> >>      int rc;
> >>  };
> >>
> >> +static inline bool etm4_can_disable_tupwr(struct device *dev)
> >> +{
> >> +    return fwnode_property_present(dev_fwnode(dev),
> >> "qcom,tupwr-disable");
> >> +}
> >> +
> >
> > Please call fwnode_property_present() at initialisation time to set a
> > new
> > drvdata::skip_power_up variable.  From there just switch on that in
> > etm4_enable/disable_hw().
> >
>
> Will do, thanks.
>
> Thanks,
> Sai
>
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
> member
> of Code Aurora Forum, hosted by The Linux Foundation
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
