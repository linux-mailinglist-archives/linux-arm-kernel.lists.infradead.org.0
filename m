Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A324D494
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 19:10:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcMSYAERe2o2bUlv4+MVUYEk0GUtvDRPJeUrszsddz8=; b=m9j1uCPgkw6ctY
	eIbFWBgSOPtUBQM1Kc/CID8pvXYUNQ67cnxwyGL0nWXUC1Upkxso3CSrztWB+3eERpE+DMPVGqzBi
	bLuq+mfECD964qbrpDnh6Kzyi/71BykmOThino8ky09hWKy1Rw0a/HRMBfwp2yUJlhw80yNwBpwxX
	wSRnGnX9zud3YueMsADEx7cxfjX2rzp+UzTnVdx7gbHm+ZdCt+pRJYYgc1hmUDiHCzF60fXxk24iG
	8j1aaNCz7w3dpboW7uNoUt9lC2OTQJQxQtkJSvP3XnF38ULjSDcy3D3uHxBBCbkvNnEVK8orhzblX
	zGIkQZR8NlXZQi5m3RbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0aK-00039e-Mq; Thu, 20 Jun 2019 17:10:52 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0a6-00039L-Ss
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 17:10:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id s7so726719iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 10:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yuJewaQ7KsCRsX8ZjQXOqMlc/8BlH5ARUew1Y+etC1E=;
 b=UkmyXsXtH/UzT0mZ/pmjlRclEPuboO/jGIyM1c66hagyg1OU2FEA9Nw/OXopHXj/cw
 vtRiSDLgdKnwrvpy195tJCEOL97frnqn6ECevLFGomfQFNR2rmE0yn/fKYzJveQTCQoy
 nu9ylkEVtXl86mZJXmn/rJ6mDU9EuxArOfI82Dv02z19xyO9KqnJQ+pfKB6x7b3WnptX
 RyLWmiBjOJ0kkyIBIxC0EcIICYnxGzggwsVPrnc8OMhd50843OevrNFwk4tC7ONnkZE6
 Auco03rsdckPUjNWUxqKKV74t3aaH9pH+M9lrIcxMaUWps1HcEvFJn1ui6fepMy3Debq
 kmKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yuJewaQ7KsCRsX8ZjQXOqMlc/8BlH5ARUew1Y+etC1E=;
 b=ZZJhD59IvrH1Pp/zuQI8/QNuupVoOGTC8T7m51aeSMo2hKRz5wG+q+ZW8aQGVOSFYM
 GfXWoVDNEfNkKphujnZOUeYsbxm19Y5HZxASktqVWJdVRetOJJcoF6IUeGCr/Vldg42q
 EQ85JX27EXKOa8X8tQG26g0nUM+hhJcaSNbtAS5MFysAFpy97Zw8FUgUwzbPv7TjIJhj
 ZWFX6cqKaxliP+yOS188a4bK12H/JyT2WYsm3aSx5ufWGKIZSQMDt7tV8JHXgF40NeeC
 sLKtshy6/MNpRuIr+22AhBOsJRRXkD3IyoGr8DO4q/qBKlG4u/PlfDtfNfju34pUIR7n
 0ipw==
X-Gm-Message-State: APjAAAVsXIlRS9IQ0L20Vh58YPznKagGBvCA8p1Mw8dXI2dpXm1h5yZL
 Ua23GdLUt13etSoseN8LjLasoe+1Uf8iHlN4gfuNnQ==
X-Google-Smtp-Source: APXvYqyDXTd/RIi2w0+uQ/ie0xBrezLHPO3FlBbM+k7imkVzaMksczUmYxRQRYLpGQmxxJu2sHkIrESgDsWq7LB6dU8=
X-Received: by 2002:a05:6638:29a:: with SMTP id
 c26mr8309324jaq.98.1561050637785; 
 Thu, 20 Jun 2019 10:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
 <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
 <20190620163426.GC25273@e107155-lin>
 <CANLsYkymTnxRX61StUGvKGeiQV6P6YbCg81PSYeBpXLsX5tpiw@mail.gmail.com>
 <20190620165427.GH20984@e119886-lin.cambridge.arm.com>
 <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
In-Reply-To: <9adb65af-a898-462b-ecbc-af972d9331a6@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 11:10:26 -0600
Message-ID: <CANLsYkzdyMczBHfRJtVxR90kMCJW-aHVEFZ0EVUN657g0PV=Rg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_101038_937240_DB38A502 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Al Grant <Al.Grant@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Sudeep Holla <Sudeep.Holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 11:00, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
>
>
> On 20/06/2019 17:54, Andrew Murray wrote:
> > On Thu, Jun 20, 2019 at 10:47:38AM -0600, Mathieu Poirier wrote:
> >> On Thu, 20 Jun 2019 at 10:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >>>
> >>> On Thu, Jun 20, 2019 at 10:14:04AM -0600, Mathieu Poirier wrote:
> >>>> On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> ...
>
> >> Then all we have to do is make the ACPI/DT property that indicate the
> >> method used to deal with tracer idling mandatory.  That way people are
> >> conscious of the choice they are making.  To be backward compatible
> >> with current systems we default to the TRCPDCR.PU method but print a
> >> warning message, just like we do for obsolete DT bindings.
> >
> > I'll respin the series based on this approach. I'll also flip the
> > 'disable_pm_save' module option to 'enable_pm_save' - thus allowing any
> > one to use software save/restore if they wish.
>
> If you are going to add a firmware property, please get a consensus on the
> name here, before respinning to avoid another churn :-). How about one of :
>
> "arm,coresight-etm-looses-state"
> "arm,coresight-etm-needs-save-restore"

"arm,coresight-needs-save-restore"

That way we can also use it for CTI.

>
> or something better long the line.
>
> Cheers
> Suzuki
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
