Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C605981E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDcf0fSP+PFuVYxRoxxtTqw7Um2nDUuallLEDHgGW8w=; b=pjxIkDxYn3R/dx
	ZVjxJTbqaK1kkwWIwAcc7IqUdOg9LRThRsLprOhnHFpK9kqm9kCp9yrnxHo7+APAseuhckE5kfGhg
	C1s4NB0CS+UWS/r73V2QbVqSKqeqYqSZ8EcJD6zsldwuxN0ZkpesRhgbZziiRtoX8WouNJMjX/dCY
	jgYxxIXWh8G+Wn6MSKZaQnu5VxmtuJne4PJ2tVks8JO0F8b2jpyiBj8xp9TmXSR8IlewyA0ZDa6hB
	M3Ya8eypl4wB9TOUYzriLEOUpFxdfAQeuXKUBEuJI2ol3XRxrEaoQbjdd/6lI1iwphi0rbdP+MQ63
	0SEqcOZbG6HMm+qN81TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnjs-0001dS-Ks; Fri, 28 Jun 2019 10:04:16 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnje-0001Yi-GX
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:04:03 +0000
Received: by mail-oi1-f195.google.com with SMTP id g7so3846380oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 03:04:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PjQC+nbGLBJHldZkauJZuTd8Y9cEQW4N5aCR2WAPqM0=;
 b=MhTv+KRM5VB85F+ehOaqGSCgYkR/NW6k+Qf0m2Rare+hht+Ery1xwKZ7MsveoDlriE
 CX/9Tv6Mh7HoD7EBht/eYfq4X9s4stTp50K1CsnIbtCvdHTK0SoRGyZU6AfBRcd0+PJQ
 yXpkEHwPJQPb4YB8zXr75h7StXP9gsQnBu6lY7Ru4eNPhOdl6PuN2Pc8ouygDty6dLld
 pvULEDD5CmL484I9WXp7FTJBd0npk2Pxxto3eG/4AdGv5j9B/V0iLC/l/fp7B5jPgGBy
 EeIwPGxHLBp4pEi/FDqsgAyNo5bb+MvjYngazCOhWNRaJTPEvarf382nov+k/BgVUBwG
 wI/w==
X-Gm-Message-State: APjAAAUpx91ZCBmy1MhCcz66Z/5xUZPTKlxBnqGLpX4qC/NlUDOx7PUr
 ItjLhX7HnlB67RyEE1JWnE3uMO4WC8EudVf2r/8=
X-Google-Smtp-Source: APXvYqxtMJHxjriXBL2G/aFHx9Aj+MOylCD8Rc6TljLhoCm8yhfHlt3m6LmoUHm2Oi1nauGBQQjlt492pqL2Ni067ZY=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr1045859oig.115.1561716241115; 
 Fri, 28 Jun 2019 03:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190627210209.32600-1-daniel.lezcano@linaro.org>
 <20190627210209.32600-2-daniel.lezcano@linaro.org>
 <CAJZ5v0jJzCGfQFqi-S3vqs74D73MaE4f7WYF_NVnDKawNV4Wzw@mail.gmail.com>
 <cd79ffe3-4749-9135-27c4-deb4f259d702@linaro.org>
In-Reply-To: <cd79ffe3-4749-9135-27c4-deb4f259d702@linaro.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 28 Jun 2019 12:03:49 +0200
Message-ID: <CAJZ5v0hPjPMLfiWMPnm59HpmTbJNXw0MDpvRwMGOUpMXYUwgRw@mail.gmail.com>
Subject: Re: [PATCH V4 2/3] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_030402_549767_1F384818 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Fabio Estevam <festevam@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 11:58 AM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
>
> On 28/06/2019 11:12, Rafael J. Wysocki wrote:
> > On Thu, Jun 27, 2019 at 11:02 PM Daniel Lezcano
> > <daniel.lezcano@linaro.org> wrote:
> >>
> >> Currently the function cpufreq_cooling_register() returns a cooling
> >> device pointer which is used back as a pointer to call the function
> >> cpufreq_cooling_unregister(). Even if it is correct, it would make
> >> sense to not leak the structure inside a cpufreq driver and keep the
> >> code thermal code self-encapsulate. Moreover, that forces to add an
> >> extra variable in each driver using this function.
> >>
> >> Instead of passing the cooling device to unregister, pass the policy.
> >>
> >> Because the cpufreq_cooling_unregister() function uses the policy to
> >> unregister itself. The only purpose of the cooling device pointer is
> >> to unregister the cpu cooling device.
> >>
> >> As there is no more need of this pointer, remove it.
> >>
> >> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> >> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> >
> > This doesn't apply for me.
> >
> > Care to rebase it on top of the Linus' tree?
>
> Sure but the patch depends on 1/3 which is in bleeding edge. Shall I
> rebase the 3 patches on v5.2-rc6 and resend ?

You can do that.

Alternatively, you can rebase on top of my linux-next branch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
