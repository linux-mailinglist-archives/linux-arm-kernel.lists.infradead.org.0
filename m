Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F27C44BDF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbaO5ma01Rajo2+WhUMgMXEPzkgmV3fxWKToLfqronY=; b=U+3d4eGz6z/0od
	gRpCbCtn8fJlEdGapYkXK24gzJ/2nIaSXWE7xprwv+3m+x1LsyztYs8maqvrfjfL+/FJzBAZBrN3s
	DnCafpBPiXqSUfmZQvrFECBBrhweMjtakYvmnVBIktSDgmo5bLAnIuEbxAry79UH6U4PcUMhlLOef
	NBm0Eeqi+COhZqSUGSFDY/jJIRZYznn4BIgdWnYmtz9Sblta5NL7OEDWPmoAF0gOw/fI2K7oV6RD7
	wWr2hvSpHropNcddqo9P++24ycTt0T/3iGjmzJnnpnEIbFLT2zaLlAT8vRmUlmkDU5chj42Gp2iZY
	XuE2zrpPTWuy35irZEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddMn-00032O-86; Wed, 19 Jun 2019 16:23:21 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddMc-00031L-JP
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:23:12 +0000
Received: by mail-io1-xd42.google.com with SMTP id j6so9880338ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B+rSj/2UUylRA9pdTjefqa7OaK3nVtyol+/ydmgZJ+4=;
 b=gRX9CZKGaNff/SKi4qV8F3z3TWJc1wCJ2g00eZcpg4YBQHoEJGp+rL1GPShIMa7Z/d
 nLIXzmPyzc3RMllxN8XaGwWIEVDnmdY9LB0YcXZ1ma9RknrT1qcXr966buy+S59d+xJa
 tCAoHzcxc/LWskeoTtrioMuP+mx296hWMD3GydoAV0Lznah5D/kZrL6gQQu1C9z1oZs0
 WTc9QNqWVjJatDHRvasKmmw+aNLdCj+yxClo+IC1RLo/CjjLICnLGCzO92FvVxPTsrtR
 D8TczM0JKR/5ZNKLkukZ+d3XMQBrg4kk3aIVhvoihRuKYRzwAA+X04zC/lz5J+gY/pav
 RR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B+rSj/2UUylRA9pdTjefqa7OaK3nVtyol+/ydmgZJ+4=;
 b=dWC4XsL4GLBE2/pUOPd4bys1DKj+GOTl/mG6vrdvtdgD2y9kEy3KbtBvxAdO5khTjX
 b37BwJId59pNm+DYlAq/kts6cIex2OWySmTy1mTkT7l4pEN1vpaoiVivCJ8sL5nipYDs
 2oVqznCvKVJFYlQYAnsxWVsvo6hXSUST5rpm91Ne2OTY02RLG2dANF4Uff4WoZHsIvZe
 kbZWlvacQyhLpfu5NB/YNTaiQVzVS0S3lqtZrqBbmCsaU5OrCJ77LY0V5Oso55H9AzE8
 Eh6fkGT1X0vGEtFJTj/ZHPESd+GubbouRrS3pcgxllIj/c5zt8t8dj3TPSnWiIyq6gvD
 mV+g==
X-Gm-Message-State: APjAAAWPrh9vbUNtgjw1L3CJI9FFyaG3I9xVGuV97rURuQ3U/GwSJXuV
 qBhlZr3pRmcmvtDMhoUiKIlLdFwHvetaYaQyt2nZIA==
X-Google-Smtp-Source: APXvYqzsl1YXK1h4d7YduwoT9qLIM+XPBuTricepMxJBU1uz/NmQouVld+SAK4daxmEBm0jhO1DepbFgQzo84vJ4Icw=
X-Received: by 2002:a05:6638:40c:: with SMTP id
 q12mr11596166jap.17.1560961388917; 
 Wed, 19 Jun 2019 09:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
 <20190619110749.GD1360@e107155-lin>
In-Reply-To: <20190619110749.GD1360@e107155-lin>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 19 Jun 2019 10:22:58 -0600
Message-ID: <CANLsYkw-KhMVgTfyBSF4-uv4wxQBBQfzyvVbAnaFSqHhkgX6Mg@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092310_676903_CBC464CF 
X-CRM114-Status: GOOD (  29.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 19 Jun 2019 at 05:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> > Cc: Al Grant, Mike Leach
> >
> > Hi Sudeep,
> >
> > On 18/06/2019 14:21, Sudeep Holla wrote:
> > > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > > to hardware that power should not be removed from the trace unit.
> > >
> > > So, how or can we identify or discover such system ? DT/ACPI ?
> > >
> >
> > I don't think there is a mechanism at the moment to identify such
> > systems. But if we really need to know this information, we could
> > always think about it.
> >
>
> I prefer that as we shouldn't systems that are not broken.
>
> > > > Let's mitigate against this by saving and restoring the trace
> > > > unit state when the CPU enters low power states.
> > > >
> > >
> > > I prefer to do this conditionally. It's unnecessary on systems which
> > > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > > while we want to add this support for *broken* systems.
> >
> > It is conditional. i.e, you may disable the operation using a kernel/module
> > parameter, which I think should be mentioned in the description here.
> >
>
> Why should the user of coresight need to know if the corresponding
> hardware module is broken or not. I prefer the firmware tell OS.

I think using ACPI/DT is the best and simplest solution.

>
> > >
> > > This is generally most useful to debug CPU suspend/resume exercising
> > > the code path completely with emulated CPU power on/off as most of the
> > > systems have the trace unit and the CPUs in the same power domain.
> >
> > I understand, which is specifically why this comes with an option to handle
> > such cases.
> >
>
> OK
>
> > >
> > > Just curious if this reported on any platforms ?
> > >
> >
> > I have heard people complaining about this, but not sure about the exact
> > platform(s) affected.

Are you referring to platforms that ignore the TRCPDCR.PU bit?  If so
Juno is the only one that does _not_ ignore it, hence the need to find
another solution.

> >
>
> One we add mechanism in place, platform need to advertise that it's
> broken in firmware(DT/ACPI). Or just have a blacklist if we don't
> want to add anything extra to the firmware(DT/ACPI) ?
>
> > > I wounder if we can use TRCPDSR(Power Down Status Register) to check the
> > > status. I know on Juno, it doesn't loose context rather the power down
> > > is emulated and saving/restoring may not be needed at all. Have you
> > > tested on Juno with and without these patches and seen any difference ?
> >
> > The problem is trace unit looses power the moment CPU goes to low power mode
> > and if we try to read this register, it could cause unexpected side-effects.
> >
>
> No I meant before CPU loose power i.e. in CPU_ENTER case. However I do
> remember you/Andrew mentioning that even that may be bogus on broken
> systems, so firmware is only way to avoid penalising all platforms IMO.

I wouldn't assume that anything is working properly.

>
> Or other option is to stop the coresight tracing session like we do
> for PMUs or not entering idle when there's any active coresight session
> in progress on such platforms.
>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
