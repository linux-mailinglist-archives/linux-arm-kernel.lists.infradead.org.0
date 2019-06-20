Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAA4D3A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 18:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kirS1APhPTKh7s8So53wEcR8YQBvqxKnoulwX8SFMTc=; b=HQVpMQj0q2Iy2A
	/nt39Rx/Bl/OU91oCTNG/em+sFh0ahZUuuaLwfp8zEbe0RTtseAnz+3lIhxDQSbesPeKqPgSWMMYf
	cr02ahKw4EQVlbWKvRAJ3yevUM4SGMpUUdjyTGdHZ0Rnf0IAVdEp3xaUHhYJRxf3ctJ02dfyU+cF0
	j16AbpkwztPP+RVGDtathU2RKoUFv23wgwKBExVBeGDmFGALsgLSb81x9Q/xRibz4DHyJtYl8SeBh
	Z9SwWs9Mxs2jSrjm1o9xMWSH8pVtjdgakxvfK0CjeaqhafvVGvRLeIlwfCIIftPXlPZjekJbDpUoe
	so0dWYoIfNKMkLZQOARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzq7-0005oq-T6; Thu, 20 Jun 2019 16:23:07 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzhY-0005vl-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 16:14:18 +0000
Received: by mail-io1-xd42.google.com with SMTP id u19so2046800ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 09:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x8xsK9IpYgX+MGA+iNRSPEDZCN/A4P/AH3pumRmbjNs=;
 b=ZfNypMVy9IOw6C8xtLitfXQY4+5UFwGvTkvFO35jVNJ1MnfKDTo3jVKcEkFFTSwAKa
 bJdcUD/aiSCHVtXgZXBW/k+00I5SIR92X56usBvBsC/TfmfexifS4scsT/xSvZ+03qmJ
 f5lBsTyC/JI0R/vejhc6VJz5WWvZbsyeZtNRit59ki+axy9xfPuUuMljLWtjd42wxIu2
 m4kgO/02+US9GNbbFKikfOMMtILviJccI+5KbqOduGtSFqV29wrXt7iaqe+dri06OYt+
 X+bP06/7YnjzD3ARIc82VGh6bzfnO6M8ZxPMlffPfLkeAAO7xUltm6NivEt2gqYWXyb7
 3YnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x8xsK9IpYgX+MGA+iNRSPEDZCN/A4P/AH3pumRmbjNs=;
 b=JiAaAeBVem9pooGiy/IdDnJFYdUTgnWRnbPoYMxa/vkBZC9LUXbL78ZLJDCllaQw/c
 LmQzyI7a72bbm9T9Zue6YxEEXA90csbbj6dTh7Myp+dVmFrIxrn04Glq2dqDhnSMIZPT
 6O6cv5v8ao+mo0ON+1OQRkGIpYn9Vj4xOZBtm7gqrsGVTemHiORah8RTg9md/JGXze+u
 AfAf97ptN7vcv6f6IDmJU+ejvFDz6TLFStK/hzetl0dHxFEevuWu4cxpEpgXY+1Q7TMg
 NOKfanTGwjjXssUt8fxAe9hV9lNjT68BZrYDP7Kvo1c3LE92TjkMepr0o1LbI7XMoBeO
 4qPg==
X-Gm-Message-State: APjAAAWUKcj2v62kNz4WaVbYE5cfUAzCzJP9jQHDVIX4i65yf6wZijy6
 4LQHw5Ad0mTD0YXE8DxZ0zlxRN+MBnoB74K9jK6KIA==
X-Google-Smtp-Source: APXvYqyaYtjI6QcT3UA6FK8iNlb6ZV34/sqbSx6Jg6TobQ4VWLZeFuSsdBLmeziquKj7zadgbsEOXkrXnEsDqP2rQzM=
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr14439441iod.139.1561047255417; 
 Thu, 20 Jun 2019 09:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
 <20190620154154.GB25273@e107155-lin>
In-Reply-To: <20190620154154.GB25273@e107155-lin>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 10:14:04 -0600
Message-ID: <CANLsYkxSBuqKJZQLqR238TGe1p5y7QPyLHSZTAOF++=uzGUJjg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091416_563932_48A74B7D 
X-CRM114-Status: GOOD (  29.34  )
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
Cc: Al Grant <Al.Grant@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 09:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Jun 20, 2019 at 12:41:17PM +0100, Andrew Murray wrote:
> > On Wed, Jun 19, 2019 at 10:22:58AM -0600, Mathieu Poirier wrote:
> > > On Wed, 19 Jun 2019 at 05:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> > > > > Cc: Al Grant, Mike Leach
> > > > >
> > > > > Hi Sudeep,
> > > > >
> > > > > On 18/06/2019 14:21, Sudeep Holla wrote:
> > > > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > > > > to hardware that power should not be removed from the trace unit.
> > > > > >
> > > > > > So, how or can we identify or discover such system ? DT/ACPI ?
> > > > > >
> > > > >
> > > > > I don't think there is a mechanism at the moment to identify such
> > > > > systems. But if we really need to know this information, we could
> > > > > always think about it.
> > > > >
> > > >
> > > > I prefer that as we shouldn't systems that are not broken.
> > > >
> > > > > > > Let's mitigate against this by saving and restoring the trace
> > > > > > > unit state when the CPU enters low power states.
> > > > > > >
> > > > > >
> > > > > > I prefer to do this conditionally. It's unnecessary on systems which
> > > > > > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > > > > > while we want to add this support for *broken* systems.
> > > > >
> > > > > It is conditional. i.e, you may disable the operation using a kernel/module
> > > > > parameter, which I think should be mentioned in the description here.
> > > > >
> > > >
> > > > Why should the user of coresight need to know if the corresponding
> > > > hardware module is broken or not. I prefer the firmware tell OS.
> > >
> > > I think using ACPI/DT is the best and simplest solution.
> >
> > I certainly agree that it feels wrong to have a default level of support
> > which is targeted at broken systems. However the penalty (latency) for doing so
> > doesn't seem high - seeing as this only effects users that are actively using
> > coresight (I assume self hosted mode is only used as a debug tool, rather than to
> > obtain metrics during normal use?).
> >
>
> Do we have numbers ? It's always helpful to have lowest latencies possible
> for wakeup and adding extra notifiers will always add some latencies,
> so it's not 0. We always want to reduce there notifiers and hopefully
> move save/restore to hardware/firmware in future.
>
> > Adding some broken tag in ACPI/DT seems like a good solution - assuming it will
> > get adopted and used in systems. The existing "disable_pm_save" module option
> > can be renamed to "enable_pm_save" for those that have less control of their
> > firmware.
> >
> > Unless of course we think it's unlikely we'll ever see hardware that isn't
> > broken - I don't have enough knowledge of how likely or not this is.
> >
>
> Sorry but even then I prefer it not to be default and force extra work
> to the people who add support and constantly be reminded that it's
> broken and they are deviating from default behaviour in the kernel
> which may come and latency penalty.
>
> Making it default may hide the problem if Linux is used for some validation.
>
> Also we hardly have 3-4 platforms in upstream that support coresight,
> and many are broken except Juno. But that doesn't imply all others
> are broken and we just can't derive that unless we have more information.

For now we have a clear trend.  To me it is not a matter of broken vs.
non-broken but more about what people want to do or can
(realistically) do.

The coresight specification is broad and very permissive in terms of
implementation defined choices.  It is not because the TRCPDCR.PU it
not taken into account by a platform that it is automatically broken.
This could be a design choice or a trade off.  We already have two
ways of putting a CPU to sleep (architected or OS driven), we simply
do the same here for coresight.

>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
