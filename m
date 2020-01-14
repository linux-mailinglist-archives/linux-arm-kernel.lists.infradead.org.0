Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8365C13B27B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:58:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vY7dJw1Bwq9P6ayXWk/BUekpUp90lMAo6aevoVSZ22U=; b=bjQLoJAqAXna5/
	LF6skRETLEo1+Q4cmwIiuc6J1CCpzqzoSU8Kf/d/D1rjUNXYGuwsYQQSozyOFJLjsnc7eODuxEcxr
	9Lc976LjlP5RyNF/X0rM5jooJUmHbG3iSIa4Rjb02MQObN5QaAhtoOyUNIbHc4LT39spz8++9fn2w
	+VqUp42PfJKbjI7glahaO4YPeqac6F0ln9KEABLqxVxur3XlJPDW42o3bPf/NlOuahQxOBuN/g35V
	7adqKX4k/ur7AE7UT5LJ/HN1dAulGaVbxdhaoQ1npA/n9Cwm0usvqcBr3/VQcXw7mslgBJhtm0qXE
	yvSx1EZosDSFZxu5hi4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irROP-0001gS-1M; Tue, 14 Jan 2020 18:58:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irROG-0001fO-8L; Tue, 14 Jan 2020 18:58:13 +0000
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE68624655;
 Tue, 14 Jan 2020 18:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579028291;
 bh=tf/o2SOslhx05jLtLdGaZMcY/dh7CAZd9De5mDkeMf4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=rhHPwkDsEYo5s9OaBOs8zWlRq1ckApWqZBX6XG5ON2yMQCrS0rVFA3Oq4GbC81lMC
 k4fdwcZntrM+DImSAtEzIlVzTcp8eX64KU/Lvq0wTsx4+p35gL9opG8cMGcRXj3riC
 sTdrKifhnvYLTAsuwrV4+sJ9bMoEAkJLnsIEMt78=
Received: by mail-lf1-f44.google.com with SMTP id m30so10658756lfp.8;
 Tue, 14 Jan 2020 10:58:10 -0800 (PST)
X-Gm-Message-State: APjAAAUfTDozBGCA21ENlFXz6LpmpwdXvvNshsfuHXvYgHo/mBL8SNS/
 XRLng8xQ3CUzMUGfwjrZKlBP0aDCjsVDU5vf7xM=
X-Google-Smtp-Source: APXvYqwHQ2f4elu47X/7QicsiPxxCMwcNqD1zJyF4zqRmDXWzwTdd9U1U4qAAURR3V9bYvYPHyPXbFdnwTsZfi93v+4=
X-Received: by 2002:a19:c80a:: with SMTP id y10mr2322353lff.177.1579028288854; 
 Tue, 14 Jan 2020 10:58:08 -0800 (PST)
MIME-Version: 1.0
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
 <20191217055738.28445-5-cw00.choi@samsung.com> <20191226210119.GA8706@bogus>
 <a54e4275-012e-77d9-bdbe-1aab64b5c12b@samsung.com>
 <76616499-7c19-06b1-461a-28ae17a76c60@samsung.com>
In-Reply-To: <76616499-7c19-06b1-461a-28ae17a76c60@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Wed, 15 Jan 2020 03:57:30 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0K65ON0FQGUjQbr71_9VWJXTmRbih1gko6Pcuy+PL63Q@mail.gmail.com>
Message-ID: <CAGTfZH0K65ON0FQGUjQbr71_9VWJXTmRbih1gko6Pcuy+PL63Q@mail.gmail.com>
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
To: Chanwoo Choi <cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_105812_346026_1E45A5B3 
X-CRM114-Status: GOOD (  23.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, lukasz.luba@arm.com,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, Jan 6, 2020 at 10:32 AM Chanwoo Choi <cw00.choi@samsung.com> wrote:
>
> Hi Rob,
>
> Gently Ping.

Once again, ping. Could you please review?

On v2[1], made separate patches for dt-binding.
[1] https://patchwork.kernel.org/cover/11304545/

>
> On 12/27/19 9:09 AM, Chanwoo Choi wrote:
> > On 12/27/19 6:01 AM, Rob Herring wrote:
> >> On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
> >>> In order to remove the deprecated 'devfreq' property, replace with
> >>> new 'exynos,parent-bus' property in order to get the parent devfreq device
> >>> in devicetree file instead of 'devfreq' property. But, to guarantee the
> >>> backward-compatibility, keep the support 'devfreq' property.
> >>>
> >>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> >>> ---
> >>>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
> >>>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
> >>>  2 files changed, 21 insertions(+), 15 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> index e71f752cc18f..c948cee01124 100644
> >>> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> >>> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
> >>>    of buses.
> >>>
> >>>  Required properties only for passive bus device:
> >>> -- devfreq: the parent bus device.
> >>> +- exynos,parent-bus: the parent bus device.
> >>
> >> If you are going to do something new, why not use the interconnect
> >> binding here?
> >
> > As I knew, interconnect make the data path among multiple nodes
> > and set the average and peak bandwidth to the specific data path.
> >
> > It means that some data will be flowed from node_a to node_d
> > or the reverse way because each node has the tightly coupled
> > dependency for data flow.
> >
> >       node_a <-> node_b <-> node_c <-> node_d
> >
> >
> > On the other hand, exynos-bus.c driver is not related to 'data path'.
> > Each bus just need to control the their own frequency and voltage.
> > But, share the power line (regulator) between exynos-bus device
> > even if there are no any dependency of data flow.
> >
> > 'exynos,parent-bus' property just indicate the specific
> > devfreq device(parent bus device) which controls
> > the shared power line(regulator) in order to prevent
> > the h/w problem due to the wrong pair of frequency and voltage.
> >
> > 'exynos,parent-bus' property is only used to catch
> > the change timing of shared power line.
> >
> >
> > And,
> > as you commented, there are some data path among the exynos-bus
> > devices for the display h/w as following:
> >
> >       bus_display -> bus_leftbus -> bus_dmc
> >
> > In order to make the data path between bus devices,
> > interconnect binding is required. This approach[1] was posted.
> > [1] https://patchwork.kernel.org/cover/11305265/
> > - [RFC,v3,0/7] PM / devfreq: Simple QoS for exynos-bus using interconnect
> >
>
> Are there any other commentss?
>
>
> --
> Best Regards,
> Chanwoo Choi
> Samsung Electronics



-- 
Best Regards,
Chanwoo Choi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
