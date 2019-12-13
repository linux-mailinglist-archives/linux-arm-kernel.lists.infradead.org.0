Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C805011E93E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 18:31:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNCys9Q4olXwWj9xSnu85vanePnCNBNNsHYtRIx+r6k=; b=vB4K5n5brxpftc
	Ao+KG/IWRzNWk5NEXcrlMkFFCvE761SyfFKTeEtAUeCzazNFu6KahkUZHAwJjoq8tM4RXzjDm8ZwQ
	A6LzyxtIISuiCh/RVc437f2+eNsdJaC0ybEelGFnbKfOcKLXdaUuLOLWv2WdtPbBTPXTBfarY2MSU
	RKkOsfyf1wRfc2LiRBLnmTt1Sq5U1j7FX1V/QPuG7lJxCxkl9BpWf6KM9jqYb4H4Dj+MMU8781t5d
	nTad6fXu908dk37hcPIxANnw9aroEvqKrah47hmjoQFQis8dSG9rVloaU0omxAKW/iQZeCMz+pYP2
	SKwqUAOZ7ELIlgBRM/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifomq-00084q-RW; Fri, 13 Dec 2019 17:31:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifomg-00082y-No; Fri, 13 Dec 2019 17:31:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so1799944pfg.12;
 Fri, 13 Dec 2019 09:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rAse+HUSmAaqHJABAbnX0rRs7xuvJErVIeGJ5dj9few=;
 b=MQ9l8tB7Eji8SPxaWILyz05JwsHf8cIRm4+r/t5FGHu9snbvMU2PA7sak8miuVlRIK
 CffoteJoRgqSMhHiy/rOkcoZvZTYOceGobicLOSrngq/yAlbBMp/th1bgSC3mPeonNbF
 QCQKp7b+bd8+Ap9DpM3K6mSoIkOKl1IH/LVDUE5HxgmyNZY7tVMqjg2d/wOzJ3lWZuzl
 bzpFWUqWJOQIwZI7L8CqJWBeBoV+uhtHnjGN2ax2oazcu2kbwrlrWbMIjmkdrtFrQY2W
 /9uNs9/rmbaTMdo7hDnrGJHw+cJhw0g2pT3Pakei9oWWTwEKnNzJmHL3ayoH3yLTX10M
 smuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=rAse+HUSmAaqHJABAbnX0rRs7xuvJErVIeGJ5dj9few=;
 b=ZfiJI4dmmxvszJwPfhmO/GCWRlnSQ6e879codqMt9XCGH6+eN9XHt7Ftew3CzIiP+X
 eHB4s2vk41G/aSPSkPkKOeoCRJZXoieR4Fq5jZJ6jb4j8F2PPYX3jrQCPT070yda+9XK
 hyhPIx6H8FUSo9cG2Ud2yXZkNCRsuq0Oy7vQlUYqbBXxl7i+oLnZCowj0tQ2YEVkcFh4
 YT6Dnkak1Vtcf0EiYfks+BqjIL4xig9BEKde+aY5xCC1t3U9mnU/tCaYK5cssmGzP+xL
 agW+jMCn/HlBYDhyzcBw1NVUHBPXLIZC7Bwy5yDxnBkrCkmjg9bSCYmuo79CavkZT4u7
 kjOg==
X-Gm-Message-State: APjAAAV8ggGCXizLNCcIPh15ToIedgJqHjsDINP302H0fGDE4fN1ETMa
 4DarN5U/G8BPHWFKUE96fr4=
X-Google-Smtp-Source: APXvYqwhUACNgTJzGRRy1jtJOv0oTmko6DYqndJTw3CeclwzY4A7VkH70DpTXSUoyWYjH9suvPQynQ==
X-Received: by 2002:a62:5290:: with SMTP id g138mr627671pfb.54.1576258282234; 
 Fri, 13 Dec 2019 09:31:22 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id k60sm10828136pjh.22.2019.12.13.09.31.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Dec 2019 09:31:21 -0800 (PST)
Date: Fri, 13 Dec 2019 09:31:19 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Amit Kucheria <amit.kucheria@verdurent.com>
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
Message-ID: <20191213173119.GA4231@roeck-us.net>
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
 <CAHLCerOHjAEEA1BpUqPdZvFwHMy11SqC+ZtjdFyManu7iOpBXA@mail.gmail.com>
 <20191212232859.E09FC6E85603@corona.crabdance.com>
 <CAHLCerN9jc94ydKKoaDZPoTy=LmVZti6UUpND5aK3FMzTkCmoA@mail.gmail.com>
 <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHLCerMf1nbuxjZz81QnE6jXeQ5UvB=R18SDu69cE9Q6rQp8+w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_093122_774705_32129CBB 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: jdelvare@suse.com, Heiko Stuebner <heiko@sntech.de>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, schaecsn@gmx.net,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-rockchip@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:09:49AM +0530, Amit Kucheria wrote:
> Fix Guenter's email.
> 
> On Fri, Dec 13, 2019 at 10:08 AM Amit Kucheria
> <amit.kucheria@verdurent.com> wrote:
> >
> > Hi Stefan,
> >
> > On Fri, Dec 13, 2019 at 4:59 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > >
> > > Hello Amit,
> > >
> > > > On Thu, Dec 12, 2019 at 11:47 AM Stefan Schaeckeler <schaecsn@gmx.net> wrote:
> > > > >
> > > > > By default, of-based thermal drivers do not enable hwmon.
> > > > > Explicitly enable hwmon for both, the soc and gpu temperature
> > > > > sensor.
> > > >
> > > > Is there any reason you need to expose this in hwmon?
> > >
> > > Why hwmon:
> > >
> > > The soc embedds temperature sensors and hwmon is the standard way to expose
> > > sensors.
> >
> > Let me rephrase - is there something in the hwmon subsystem that is
> > needed that isn't provided by the thermal subsystem inside
> > /sys/class/thermal?
> >

Doesn't the sentence below answer that question ?

> > > Sensors exposed by hwmon are automagically found by userland clients. Users
> > > want to run sensors(1) and expect them to show up.
> > >
> >
> > That is a good point. In which case, I wonder if we should just fix
> > this in of-thermal.c instead of requiring individual drivers to do
> > write boilerplate code. I'm thinking of a flag that the driver could
> > set to enable the thermal_hwmon interface for of-thermal drivers.

It seems to me that would be outside the scope of this patch.

> >
> > > Why in rockchip_thermal.c:
> > >
> > > drivers/thermal/ provides a high-level hwmon api in thermal_hwmon.[hc] which is
> > > used by at least these thermal drivers: rcar_gen3_thermal.c, rcar_thermal.c,
> > > st/stm_thermal.c, and broadcom/bcm2835_thermal.c. I want to hook up
> > > rockchip_thermal.c exactly the same way.
> > >
> > > Apparently, other architectures hook up the cpu temperature sensors to hwmon
> > > elsewhere. Most seem to do this in hwmon/, e.g. hwmon/coretemp.c. These drivers
> > > are written from scratch. Utilizing thermal_hwmon.[ch] for chips which have
> > > already drivers in drivers/thermal/ seems to be more elegant.
> > >

There should either be a hwmon driver with a bridge to thermal, or a
thermal driver with a bridge to hwmon, but not both. A couple of
existing drivers implement both, but that should really be fixed.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
