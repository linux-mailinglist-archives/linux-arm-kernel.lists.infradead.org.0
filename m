Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06E61685E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 18:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BUujH7WFZOxSA1gTqLEDsAb6+2QPgVS9PhJlO5ibEc=; b=nYtmgILeT0ZknS
	kddXgi2rJzV9nOHgYyZSTXVfXdwLWv+e3ayu1Y0oaGekJJ0RgeqTNUgeKdMJ35kGjxOgSHZqAfd4W
	UFCW3vtTqwJOWrWwI/N2UTjHNAXeT2otEVOTUOnHWS8Ugv0Wh2PpLCNfleRRnwnMwh+Eql3PWr+uH
	tbixUyezBWTXmNpb5kcyEqwNAIx2JR8m4+C6FyDRX9j+7AI4Uj42BA9erPBTKYAA/v/ga8MVYqypH
	e+ZCv/jOKY2qBoA4Yf7VUv5ePwbzUcWVrTqJISvYZX9faO1mqe5OUySc0OwIYyNoev6cgTma3qzSd
	vvjtjIQicKdKNfsNBCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3Iu-0004X3-UY; Tue, 07 May 2019 16:50:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3In-0004Wg-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 16:50:51 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3E7020C01
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 16:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557247849;
 bh=4tZewm4W45u/iRbwmWuTzyVbl39+IFYmFh6qEBuo2/Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=g3/Lcp0RDChVoOY7BcV2cqvrWYSlDwAwTistWTDhiM5XVgVxrLcoa7/9VkLP6ETxC
 sR93HGCf2/SfTTnVTZYNWN4tLbBt7SdKS8om3QT+TqlLs3M3FhOGjZTZthXB6o0wn4
 xVBsSagpH2CcyuD4vvfbqWKSRwgtU6qX3z43Ii8A=
Received: by mail-qk1-f179.google.com with SMTP id g190so1552868qkf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 09:50:48 -0700 (PDT)
X-Gm-Message-State: APjAAAVVAlJ+089dOaNjStr4StYoaYavuV9QuGQHnoUvlVhp9WjzTeAu
 IcqgU/VssyqzlWDcUSnAgFDxrBBROpKN7Y0U1Q==
X-Google-Smtp-Source: APXvYqwy91gBuwgIgFwBIlr7H7WziKK1/q+qve5xTg6xIcAxeG7XLdX/VKJhShfFBkFEzLxxQLOwWb8GHqYD7EgmNlA=
X-Received: by 2002:a37:5c81:: with SMTP id q123mr23947855qkb.29.1557247848038; 
 Tue, 07 May 2019 09:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
 <20190430223629.GA22317@bogus>
 <1fd44623-4a59-f014-1ae9-a7cc605ad30f@partner.samsung.com>
 <CAL_JsqJcm9Z6vYFHGyAZ+h3-kmSv6e=3NtO-fjJn3-QT0JoX+w@mail.gmail.com>
 <97277857-666d-7720-9d85-19120c977682@partner.samsung.com>
 <3d221027-292b-7d0d-2510-f230a81f4b52@partner.samsung.com>
In-Reply-To: <3d221027-292b-7d0d-2510-f230a81f4b52@partner.samsung.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 11:50:37 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+K-bdhTBnW5R4M0nDoikfFRdz-BeZf9Rf-hSmACj4B2w@mail.gmail.com>
Message-ID: <CAL_Jsq+K-bdhTBnW5R4M0nDoikfFRdz-BeZf9Rf-hSmACj4B2w@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_095049_525241_9A15099E 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 4:05 AM Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Hi Rob,
>
> On 5/6/19 12:29 PM, Lukasz Luba wrote:
> > Hi Rob,
> >
> > On 5/2/19 10:24 PM, Rob Herring wrote:
> >> On Thu, May 2, 2019 at 3:52 AM Lukasz Luba
> >> <l.luba@partner.samsung.com> wrote:
> >>>
> >>> Hi Rob,
> >>>
> >>> On 5/1/19 12:36 AM, Rob Herring wrote:
> >>>> On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
> >>>>> Extend the documenation by events description with new
> >>>>> 'event-data-type'
> >>>>> field. Add example how the event might be defined in DT.
> >>>>
> >>>> Why do we need event types in DT? We don't do this for other h/w
> >>>> such as
> >>>> ARM PMU.
> >>> In ARM PMU all the events are hard-coded into the driver code i.e. in v7
> >>> arch/arm/kernel/perf_event_v7.c
> >>> and are seen from perf. They are different type and for different
> >>> purpose. The Ecynos PPMU events are not seen in perf, they are
> >>> for internal monitoring and must not be reset by other actors like perf.
> >>> They are used by the 'bus drivers' to made some heuristics and tune the
> >>> internal settings, like frequency.
> >>>
> >>> Chanwoo has written PPMU driver which relies on DT definition.
> >>> The DT events are used by other DT devices by phandle.
> >>
> >> How is that done? I don't see anything in the binding for that.
> > Here are the DT devices and how they are pinned together:
> > - declared devfreq events:
> > https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-ppmu-common.dtsi
> >
> > - devfreq events pinned to the bus device:
> > https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412-odroid-common.dtsi#L107
> >
> > - the bus device itself:
> > https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/exynos4412.dtsi#L457
> >
> >
> > Regards,
> > Lukasz
> >
> >>
> >> Rob
> >>
> >>
> Can I send the next version of the patch set, which has Chanwoo's
> suggestions, or do you have some objections to this PPMU entries?

I think the existing binding which this is based on needs some
changes, so it's pointless really for me to comment on additions.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
