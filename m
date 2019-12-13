Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0803C11DD31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:40:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xR7tIzNX/TEJu2mXJvpCxjqHeulUA5X8M0JKkFttazU=; b=KjnvNBAA+mlcRd
	XFKbor71N5PmSl8aK4sPiRaYp5HxqbPgNcyPf8q6+zU8WQnV9v/2pX6PM55qtHYyjySoognbE6lFV
	T4fR8plXhE7bxfzXaHJPRDlx31GMkPLZVH8hPMuescss5DicDmQ4Z2kKT1MGyz68i3rtjzrz6chCZ
	P7PTHsxcPGFXhH7X0btzQCAYBn3lLGz8RKwenoGCBG5hDG81pADFeGQG7jWZMB+o7JyhGKo5nOcAk
	Dk6rcVWRchK66JQegz8V0spYSgwf9wcNlEmrCwWWWA7fMr/Cl5ztfi0hAtpkTfAQvn7xQScFAM62J
	sHa82HdB3FFbY6nsLeMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifckT-0005no-Hk; Fri, 13 Dec 2019 04:40:17 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifckE-00056x-0r
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:40:03 +0000
Received: by mail-vs1-xe42.google.com with SMTP id f8so686042vsq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 20:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CxeVqN7WWZohGfBayl/KWuS+nYYVkIE8W26755ehKCA=;
 b=Xd8DQt15TEBmxWpqEeFCaZoe21s55+mSfnHvGFbeg9bLiJ4j2h7SwH/XTEnp71SZ73
 ZycLWokcoyu6sa1FpY+Cp/3bpEv6zhBoxym148EovHuBbxuNKgMQ3HWQ4/pGAW/uLys1
 EjlFXNvx268C+i6hj8eUxzu6EhiaZpm2FXPGeQisLNs1x9n9fA+S4tIy/K9NHr8HqDul
 i+xP23j6KawDG6n3PHOzmU5XCvlvLmK+bI73YmqPxIqiqX2mHYKcgr5vWMpd4/8+P5kD
 QBDviVVz2Bm3DBv/4SWXC7IX0nsU58spJx/zGps/ni5b++qgOVZ8QyJDKph5jCvl/hXk
 VqiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CxeVqN7WWZohGfBayl/KWuS+nYYVkIE8W26755ehKCA=;
 b=g2fcr7RjMDfp0WuenYTKeZqyS6Rho6utrAi05b/Vqg8ASIF7kjbnoah3n0yatpPh6T
 O+OkGdhdhvBD3IYTPHClRjxT/2G3G7oMjN7mGJuAcD2MnFwuuhKFTbnQp6osAcSaTknb
 lqqgz+3C473DhUzTZ2CWG8F/bB7ZPKd/q1S7nOzakBRjELXTnHyIpK8h6DwagE3QwVqg
 EVF6oBOkh3agSX3ayt5/e3Ec0cK8htNrkZASTZWNZBbF5G4fpo32SdXZngSoDe0wHb+g
 MX/7FBbCc+a+XxFPp8rO6Q6Y5eyat70G/yMjdFCupohjwWIWJ5fDUzVSpFKXoDXBOK2j
 mwMg==
X-Gm-Message-State: APjAAAWEDl188b+VPeK/SxeQPkgeqjRAJ+9t3szPtl+BmwsvG4Iu9NJ3
 8oFxgzECZEER7Gvz66STxuv3ajcSS21UTjy49yHo4In9XOx/Jg==
X-Google-Smtp-Source: APXvYqxUYboYxgAx3u/cwl+SWhpsV25Tto1uX65RitUNLoAbztqqRzfRir+y4ljY/5uoG9B0ULKQhDBoKIKecfbYkX0=
X-Received: by 2002:a67:fb41:: with SMTP id e1mr9415848vsr.159.1576212000836; 
 Thu, 12 Dec 2019 20:40:00 -0800 (PST)
MIME-Version: 1.0
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
 <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
In-Reply-To: <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Fri, 13 Dec 2019 10:09:49 +0530
Message-ID: <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net, jdelvare@suse.com, linux@roeck-us.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_204002_088908_B21634E6 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix Guenter's email.

On Fri, Dec 13, 2019 at 10:08 AM Amit Kucheria
<amit.kucheria@verdurent.com> wrote:
>
> Hi Stefan,
>
> On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> >
> > Hello Amit,
> >
> > > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > > >
> > > > By default, of-based thermal drivers do not enable hwmon.
> > > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > > sensor.
> > >
> > > Is there any reason you need to expose this in hwmon?
> >
> > Why hwmon:
> >
> > The soc embedds temperature sensors and hwmon is the standard way to expose
> > sensors.
>
> Let me rephrase - is there something in the hwmon subsystem that is
> needed that isn't provided by the thermal subsystem inside
> /sys/class/thermal?
>
> > Sensors exposed by hwmon are automagically found by userland clients. Users
> > want to run sensors(1) and expect them to show up.
> >
>
> That is a good point. In which case, I wonder if we should just fix
> this in of-thermal.c instead of requiring individual drivers to do
> write boilerplate code. I'm thinking of a flag that the driver could
> set to enable the thermal_hwmon interface for of-thermal drivers.
>
> > Why in rockchip_thermal.c:
> >
> > drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> > used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> > st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> > rockchip_thermal.c exactly the same way.
> >
> > Apparently, other architectures hook up the cpu temperature sensors to hwmon
> > elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> > are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> > already drivers in drivers/thermal/ seems to be more elegant.
> >
> >  Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
