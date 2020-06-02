Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA601EBE05
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXO3s9519DxTtclwKsKBlfkg8rvaoNOfPUTE8wQzB78=; b=rr+pDTK5/J/vMp
	mVSlVgRpcYZmOM7nalYG0l8oA4eXvKsAtPMnUDs7wFsshv+ZpqDVmclqGHxXn4v0nMLreDAN0ESkM
	NQD/3UWqntlJ0jZgS4P1TlsbjmcQ1I1QbgM/LZm+IPmtB9893+RkRqsAWlU7artgEIRPP193c9e0O
	ZQI69ZT3iVbLX4zWFP7JP0j0QxKNSWB+P8oGHogzjxuqwaNPBDeE6vIt+CzffKb5CqjK6EC5IOUO6
	d/HwxrNLyLdbDEjMYprSVk5OpeF+lrNv3EFvQZELSsJDznSJP364kIaxhqpyk5w8k5JmJES3el/Ki
	cXgXqkvGYvvwdYMAiTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7n7-0003eX-8A; Tue, 02 Jun 2020 14:21:21 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7my-0003eC-75
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 14:21:13 +0000
Received: by mail-ej1-x642.google.com with SMTP id n24so12959183ejd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 07:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=02PH8kdvVBC0u+jx+X7lRZYBBPXcznJeSA8g4iiyb+w=;
 b=auoLOCMHJD783igNs0t8cFewmEgLFh//UekQt0s8LE5XxxaE6depurIzT4ERun0BX7
 PizrAhQpj/mujXF3PPMxmnG+whL5aKMjZYR/3IEwQxdtcLK/GV9rOeA5RzkM1yisSBgj
 G9xZlu2DiFCczNCXaklR9Fj1H2AwxSaiKSAIINvyzFaT3F08tq9negO35dTKC9uZ4Lma
 QfiPETiPsbsJ7HoqV480XQ3hecU+QKUdQFcSxpMGaBCBmxSPeQrGkwa9dNIQSGJwE2eb
 MhVKNLnTlRLijQ4KbfNCk1OqQ9g+TDmwaUhMtS1FGFpI7XhMYJ2hPnlgbLO4RrpRnHFd
 3HXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=02PH8kdvVBC0u+jx+X7lRZYBBPXcznJeSA8g4iiyb+w=;
 b=CG1ymSIZSSNXnh/kduK4FA1+NlwrxGzsorTnU0StVh7viDRx7Xk9dBwkZ3CkRbHyNe
 ZvAKiL+0kuERF95zsZseJIIvFgq7vS0fxB2nRc3I/VyPBBYqTRT7PBGWZKWidl1dm9qK
 S/itjovMyGXdE56GOJKCvpE96d/iA/WMy0YmkNMlK8N3TwntiCtOc9RhijG90CjCYrO8
 p1ZKFyu/eFeK88eCOWCuXDBfYHgk2JB/yID9KRJU6z2FSXHOmsT2PFdDFRyLbxB9vrqJ
 3Bi/Ypejfjf1qH4Gg1vBlnNOuDpiqxKy9yc+rQknXWtfFykQFhqZsUTf5ltqUxTylz3g
 Etjg==
X-Gm-Message-State: AOAM53260Ju1GCPME0Hde7r3aUREK3gV3o8RfGkzTwlJoBCbcijWKrnA
 MJBxlPw5U3FzrJDjPsdCtRObSX8tJ4ai8PFSjqe6IujqQ/Q=
X-Google-Smtp-Source: ABdhPJxAUr6Uaycd7/oVO+pyb6dYu2nKI/H2rRw998Ntr+ze1jFNy+5INwJKMuDy54IOzWgql1b1HVuLzCY6DCEyCsg=
X-Received: by 2002:a17:906:3603:: with SMTP id
 q3mr13777125ejb.477.1591107669869; 
 Tue, 02 Jun 2020 07:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-3-mike.leach@linaro.org>
 <350f19a1-bdba-c464-9fd3-68c77daea4b0@arm.com>
In-Reply-To: <350f19a1-bdba-c464-9fd3-68c77daea4b0@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 2 Jun 2020 15:20:58 +0100
Message-ID: <CAJ9a7Vh2+h=+VdAZcTzjoXfeY5Jng9S1CtrGo-7j3LSYHvho3Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] coresight: Add default sink selection to CoreSight
 base
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_072112_284557_6C11C3C3 
X-CRM114-Status: GOOD (  24.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Tue, 2 Jun 2020 at 11:20, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> On 05/26/2020 11:46 AM, Mike Leach wrote:
> > Adds a method to select a suitable sink connected to a given source.
> >
> > In cases where no sink is defined, the coresight_find_default_sink
> > routine can search from a given source, through the child connections
> > until a suitable sink is found.
> >
> > The suitability is defined in by the sink coresight_dev_subtype on the
> > CoreSight device, and the distance from the source by counting
> > connections.
> >
> > Higher value subtype is preferred - where these are equal, shorter
> > distance from source is used as a tie-break.
> >
> > This allows for default sink to be discovered were none is specified
> > (e.g. perf command line)
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
> Feel free to add:
> Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>

Will do.

> > +/**
> > + * coresight_find_default_sink: Find a sink suitable for use as a
> > + * default sink.Yes - the newer topologies will need some changes - beyond what we are handling here.
However - especially for 1:1 -  the best way may be to always use the
default sink - as specifying multiple sinks on the perf command line
may be problematical.


> > + *
> > + * @csdev: starting source to find a connected sink.
> > + *
> > + * Walks connections graph looking for a suitable sink to enable for the
> > + * supplied source. Uses CoreSight device subtypes and distance from source
> > + * to select the best sink.
> > + *
> > + * If a sink is found, then the default sink for this device is set and
> > + * will be automatically used in future.
> > + *
> > + * Used in cases where the CoreSight user (perf / sysfs) has not selected a
> > + * sink.
> > + */
> > +struct coresight_device *
> > +coresight_find_default_sink(struct coresight_device *csdev)
> > +{
> > +     int depth = 0;
> > +
> > +     /* look for a default sink if we have not found for this device */
> > +     if (!csdev->def_sink)
> > +             csdev->def_sink = coresight_find_sink(csdev, &depth);
>
> Could we add a helper to clear the cached "def-sink" from all the
> "sources", when the sink is going away ? You may be able to do this via
> coresight_remove_match()
>

Is this needed in the current state of the CoreSight driver
infrastructure? The topology is fixed for the lifetime of the device
so a sink cannot disappear without the rest of the CoreSight going
away - i.e. reboot / shutdown.
If there is concern about a race condition then something similar to
coresight_remove_match can be developed, but the actual function only
works on immediate connections / output ports.

Thanks

Mike


> Rest looks good to me.
> Suzuki
>
>


--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
