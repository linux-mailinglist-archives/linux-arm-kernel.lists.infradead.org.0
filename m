Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8F14D108
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwURrCLDf7iui6UnZ8slUjv3LDOtE8ynPl/er1pA4DA=; b=OXDlNrh3lrNRhL
	uZgE6yo6/x0YnW9XisYnUEtPhxBlw3qf4zw0I98gkRnBwVQLbt8px3APG7PjzUDKjKdVlXIfXq374
	l1VSCwGtkuWXaH2TmZwtm93RzXb9eW2pQNq3FFJlqIQv6EIv6EAf2MP9lHZhq+oWVkZMaoppH3jkG
	YwuzhgQjoKlUKYK1kPzTuIFnAkQR599bjMvpJHMH0tqyhze05KAhVLtg2HfzxsdD1sDWNw2JsrxyI
	b6h/51m9umt/2EgZwLRNxNFKfLmTi4Qg2gLYZkg1tVTUd2scgU0/MKQQFUWuLGlEFRtVVbO3Pwtjk
	63t7Paae3TiHwXD1jFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyTs-000149-Iy; Thu, 20 Jun 2019 14:56:04 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyTb-00012s-06
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:55:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id j6so2252264ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XQwVYuw26DdyEW02h/JJ0/IHloU6eRBvBtsgmdzD7KM=;
 b=w+bsXchs4Go3DzBSpYen4ZBfZ4VbAMkaGm/nC2U27uF7e3YVDl/HP+VHJiQ8wNiV44
 jeU29vCTvqmPQUHggaLwwXrh243QrMuj0M84qdG/eh8N9Ci8QW0ggCRUXVr/r/E0HF42
 7O4o8vT9FF+2xAZmrkodgXHkvxsEwDglD9jKdfvrqHb6UD3eTTtbwT3125IB1M/K0ALa
 09clR81pybgUbw8ns361Nfge4e0ZIMSrv90O4gcqiBL0GLNGEF+rhojgVJDxb2h9QokT
 wCnFobK+2B9ZHT8h/o1MhHFFD8KWlMM6fwnlSMi64M+iWOtxvi+jslyBvVlyuae49HNS
 uw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XQwVYuw26DdyEW02h/JJ0/IHloU6eRBvBtsgmdzD7KM=;
 b=nHW31hbz55lGJGvtJpjOHhqK4vErUmr2zbVYowyATNJ0zR4B2z+xY1ISGkcHyhhD1p
 ZxqGNeZx4lVoMkhK8lgIxbVS6zz/MlpApYbURiV56Bl+PXqvCkaH2KI8lPUft8x+am0E
 T5LS8DM+ltX3nAByTwuU8YBAWNuRkFs5b9soQ0NS+EGnk1O8jqqSVLT3EAtMAKDFFBYD
 2haNHxlavAQnGGdlRfBaTs2n6bAQi2yE6dmaWlX11HCygZy9dVUgwCOrEDu4Ipwf0Zx1
 A6qjTzmrlQqLh0+YRIsD3Yru0TTVY73zSHihqC/RcQ5WoAO0cA5SHq86CvupfoyNdE8T
 G8ow==
X-Gm-Message-State: APjAAAVIbdXcVvALwNwFpOPxEecqrNcjn7wEk5AwY+usqH5dbQb+TgAb
 JHp3HyEuU8dPwQENWmSQ8j2RHDOwPOW2hS1H63HJwQ==
X-Google-Smtp-Source: APXvYqy5ZMlgxSnHKX6sGwCZiu+b1kC729HpXNkkeHZP+SEALmazliWGWhtoLLnM11zCNQmQ6DwJaqOS0Qg3ENqxOwE=
X-Received: by 2002:a05:6638:3d6:: with SMTP id
 r22mr17228509jaq.71.1561042546294; 
 Thu, 20 Jun 2019 07:55:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
 <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
 <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190620114116.GE20984@e119886-lin.cambridge.arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 08:55:34 -0600
Message-ID: <CANLsYky4o-zZH3WtMYTjXTmo=kMxCBWtPzhmK1ripP4E6Ag2vw@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_075547_058194_53D17190 
X-CRM114-Status: GOOD (  36.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
 Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 05:41, Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Jun 19, 2019 at 10:22:58AM -0600, Mathieu Poirier wrote:
> > On Wed, 19 Jun 2019 at 05:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> > > > Cc: Al Grant, Mike Leach
> > > >
> > > > Hi Sudeep,
> > > >
> > > > On 18/06/2019 14:21, Sudeep Holla wrote:
> > > > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > > > to hardware that power should not be removed from the trace unit.
> > > > >
> > > > > So, how or can we identify or discover such system ? DT/ACPI ?
> > > > >
> > > >
> > > > I don't think there is a mechanism at the moment to identify such
> > > > systems. But if we really need to know this information, we could
> > > > always think about it.
> > > >
> > >
> > > I prefer that as we shouldn't systems that are not broken.
> > >
> > > > > > Let's mitigate against this by saving and restoring the trace
> > > > > > unit state when the CPU enters low power states.
> > > > > >
> > > > >
> > > > > I prefer to do this conditionally. It's unnecessary on systems which
> > > > > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > > > > while we want to add this support for *broken* systems.
> > > >
> > > > It is conditional. i.e, you may disable the operation using a kernel/module
> > > > parameter, which I think should be mentioned in the description here.
> > > >
> > >
> > > Why should the user of coresight need to know if the corresponding
> > > hardware module is broken or not. I prefer the firmware tell OS.
> >
> > I think using ACPI/DT is the best and simplest solution.
>
> I certainly agree that it feels wrong to have a default level of support
> which is targeted at broken systems. However the penalty (latency) for doing so
> doesn't seem high - seeing as this only effects users that are actively using
> coresight (I assume self hosted mode is only used as a debug tool, rather than to
> obtain metrics during normal use?).
>
> Adding some broken tag in ACPI/DT seems like a good solution - assuming it will
> get adopted and used in systems. The existing "disable_pm_save" module option
> can be renamed to "enable_pm_save" for those that have less control of their
> firmware.

"enable_pm_save" would work.

>
> Unless of course we think it's unlikely we'll ever see hardware that isn't
> broken - I don't have enough knowledge of how likely or not this is.

The unlikely part is to see platforms where TRCPDCR.PU is taken into
account.  As I previously indicated Juno is the only one that handles
it correctly.

Thanks,
Mathieu

>
> Another solution might be to enable save/restore by default (as it is now),
> and then on resume we read the hardware registers to determine if state was
> lost. If it wasn't lost then we can disable the save/restore feature. (Though
> is it possible for systems to be partly broken, e.g. working for some CPUs
> but not others?). With this approach on good systems you only get penalised
> once.
>
> >
> > >
> > > > >
> > > > > This is generally most useful to debug CPU suspend/resume exercising
> > > > > the code path completely with emulated CPU power on/off as most of the
> > > > > systems have the trace unit and the CPUs in the same power domain.
> > > >
> > > > I understand, which is specifically why this comes with an option to handle
> > > > such cases.
> > > >
> > >
> > > OK
>
> I'll update the cover letter and commit messages to reflect that this
> option is present. (And likewise for conditionally saving/restoring the
> registers only if coresight is in use).
>
> > >
> > > > >
> > > > > Just curious if this reported on any platforms ?
> > > > >
> > > >
> > > > I have heard people complaining about this, but not sure about the exact
> > > > platform(s) affected.
> >
> > Are you referring to platforms that ignore the TRCPDCR.PU bit?  If so
> > Juno is the only one that does _not_ ignore it, hence the need to find
> > another solution.
> >
> > > >
> > >
> > > One we add mechanism in place, platform need to advertise that it's
> > > broken in firmware(DT/ACPI). Or just have a blacklist if we don't
> > > want to add anything extra to the firmware(DT/ACPI) ?
> > >
> > > > > I wounder if we can use TRCPDSR(Power Down Status Register) to check the
> > > > > status. I know on Juno, it doesn't loose context rather the power down
> > > > > is emulated and saving/restoring may not be needed at all. Have you
> > > > > tested on Juno with and without these patches and seen any difference ?
> > > >
> > > > The problem is trace unit looses power the moment CPU goes to low power mode
> > > > and if we try to read this register, it could cause unexpected side-effects.
> > > >
> > >
> > > No I meant before CPU loose power i.e. in CPU_ENTER case. However I do
> > > remember you/Andrew mentioning that even that may be bogus on broken
> > > systems, so firmware is only way to avoid penalising all platforms IMO.
> >
> > I wouldn't assume that anything is working properly.
>
> Thanks,
>
> Andrew Murray
>
> >
> > >
> > > Or other option is to stop the coresight tracing session like we do
> > > for PMUs or not entering idle when there's any active coresight session
> > > in progress on such platforms.
> > >
> > > --
> > > Regards,
> > > Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
