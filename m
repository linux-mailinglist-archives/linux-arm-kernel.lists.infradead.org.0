Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85179717B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 14:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZXwdaNPFS/S7tSoxATiOuiHSHAdUh3y8xzDbg2iB8Y=; b=ZwA9wYSymhUPzG
	3/SzDPKSYB+eVbJLHL8Oagd5K5cfVzlZS0tWE1hB19/LtZIlrYN9J20UJfP+eAmhCNBuM9n/4sU87
	K6KEUSQVEn7i4KBpoFaA3dt8gF8zBU32Cd2MLtEWJoPYSudrQAZmiMxL26VaiVdlOGLsdlJMdEFbf
	CydmcZd4tlhjUJtmqhvp9gjY+2XzmG5wQyncmUiWU7kLwvQfZejHGhc6dKfX+NfrTiZvlYlKARFL2
	Igz7pXQhyoA3/Gk2Frzuyr9s4DSuduqpvycqMNMLlEVCNvyLvMxkZAwTzBkcFqscgM2c3LfZAf6Xm
	rlcq82+xmGSKWI+NX5NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptZP-0003yy-NL; Tue, 23 Jul 2019 12:07:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptZ8-0003yC-Ru
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 12:06:48 +0000
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
 [209.85.167.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3A62223A2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563883606;
 bh=DKrbsHStPDRY+4kxJ4/+/qAdj1UDVR+qwitPFb6G9XQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ts2zKnryAHCcWuV+jQCtZ1fXUaMYtk/rse8t/JdjssvTDla0eLrQ7l7Fy7A91meAb
 4dq5/+DeF78UIQcOHR3q6qljcYC+4rwJc2IGbOzlxegYgRIX8xVXiAozEtcohEjzSQ
 NgbJODdAIYTnBIHU6w/0RraMEYcpUUjG5MLfKfAY=
Received: by mail-lf1-f54.google.com with SMTP id q26so29198695lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 05:06:45 -0700 (PDT)
X-Gm-Message-State: APjAAAXdrKGBqgh+rAVL8MnSrQhaqMkBIk/av82lxT6tsMSRufXbneMC
 zWfdJvmUt+Q0A70EUI/tAHqX2ML7/F9od5yi5cY=
X-Google-Smtp-Source: APXvYqw0eaw2TRxK/9H3Y8sqHS2pEMb0cITDxk01/sRGaTfe105d+yhQepbEgz1kqWQFScY4g8NDo+cJjofy04prss4=
X-Received: by 2002:a19:f007:: with SMTP id p7mr34881578lfc.24.1563883603819; 
 Tue, 23 Jul 2019 05:06:43 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-38-l.luba@partner.samsung.com>
 <CAJKOXPfrGgAczQ-=1aE453RpJ9BN10ZDmFcrEMPkNyF6GcGtNA@mail.gmail.com>
 <2fe2e840-f4b2-773b-7d92-4ffb8502d4e6@partner.samsung.com>
 <CAJKOXPd3gm7no-0TnPmgFg+X3FgdiM6ov5rtzFSM6hKEdEzRCg@mail.gmail.com>
 <518c26ca-4254-056c-d6d0-ae1b4b63709c@partner.samsung.com>
 <CAJKOXPfDX06s7eMctbnPabxho2EaWcTM4xAGKCd_+O6jCCDcRQ@mail.gmail.com>
 <7ad899c5-347d-546e-a2e9-d96f0203210c@partner.samsung.com>
In-Reply-To: <7ad899c5-347d-546e-a2e9-d96f0203210c@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 23 Jul 2019 14:06:32 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdC7U64dqFJzJNJJXPQ8_K_SXUOVrNGjOQqcDyNsmskwA@mail.gmail.com>
Message-ID: <CAJKOXPdC7U64dqFJzJNJJXPQ8_K_SXUOVrNGjOQqcDyNsmskwA@mail.gmail.com>
Subject: Re: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_050647_123229_326B5B75 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 at 14:56, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
>
> On 7/17/19 1:11 PM, Krzysztof Kozlowski wrote:
> > On Wed, 17 Jul 2019 at 13:06, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>
> >>
> >>
> >> On 7/17/19 12:45 PM, Krzysztof Kozlowski wrote:
> >>> On Wed, 17 Jul 2019 at 12:39, Lukasz Luba <l.luba@partner.samsung.com> wrote:
> >>>>>>
> >>>>>>     &bus_fsys {
> >>>>>>            devfreq = <&bus_wcore>;
> >>>>>> +       assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
> >>>>>> +                         <&clock CLK_DOUT_ACLK200_FSYS>,
> >>>>>> +                         <&clock CLK_FOUT_DPLL>;
> >>>>>> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
> >>>>>> +       assigned-clock-rates = <0>, <240000000>,<1200000000>;
> >>>>>
> >>>>> Here and in all other patches:
> >>>>> I am not entirely sure that this should be here. It looks like
> >>>>> property of the SoC. Do we expect that buses will be configured to
> >>>>> different clock rates between different boards?
> This is the board file for Exynos5420/5422/5800 which enables buses.
> Thus, I have change them here. Patch 49/50 adds these buses to
> Exynos5800 (Peach Pi). In Exynos5420 there is no clock tree for
> bus_isp266. The parents for different devices could be also different.
> It is because i.e. in 5420 there is 2 bit in the WCORE 1st mux while in
> 5422 there is 3 bits (6 parents possible).
> That's why I have picked exynos5422-odroid-core.dtsi to reference
> the bus devices and pinned them into proper parent and changed rate.
> When you check patch 49/50 for 5800 not all the parents are the same.
>
> (1) I could create a dedicated files like: exynos5422-bus.dtsi,
> exynos5420-bus.dtsi, exynos5800-bus.dtsi which would include some
> base file with the basic &bus_X and set the right parent, rate.
> Then these files would be included into proper board file like:
> exynos5800-peach-pi.dts.
> Is this something that you would like to see?

I see now. Are there any differences in all these properties between
Peach Pi and Odroids? Both of them are using exynos5800.dtsi so that
could be a place for all clock assignments.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
