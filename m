Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7D116F0B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 21:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjKleUnGJKTaSo7tQNzCPhhGy5ZRIVaiA9t8slZnAX4=; b=XYl0iJAXCql/wy
	HWQdZ9uN9tCM/LfaD+2MWOstwMPQGBi34vhajr6VmC3s0J2dp9ymURQIRl91etlenUIt0R/SR3an9
	a91mVRz95SS+uJLsFLHhUnCHVDYjn4kgvIpOvg8zGIIgYf4Z8RdyJ6E0LupOE1EwQ6+WBBHEj8PqS
	a43Jml4dFpxP+paiw31PUsjiJQJ/0UjqRr+vDlbhCldpB1karwd+IIbvkPgDPgUDwLFNXhQEWJMUA
	aLLnmoyV1DxS1PAnEOF+iA6vLCpyV11xRReSbwskUaa6cjbvZGlOtYna1j1kRpPEprn5UrubAfBVt
	DJ8NmjASRiZOGGd2fyoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hHA-00063X-Vv; Tue, 25 Feb 2020 20:57:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hH2-00062x-TI; Tue, 25 Feb 2020 20:57:50 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E8B2124650;
 Tue, 25 Feb 2020 20:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582664268;
 bh=rEf2Wh9b2Cqc5tJSuDzSluIyGn5h8PEv+2AGQEQ1p7s=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gg6Rej+lEjdE3MacAgPmABGfeEK4naM3qOPYaKvI6VDiP+dnMybL0IxoHGVGDs7yy
 E3V+I76+lUu0xY/bwpiOuR2QpnM95bq/0c4t6LVntRLm17lQNFftdzZSonrfhuEA9D
 oR7Ir/7pF1qi7QFUxPXnrZq2XPZK6VAIOSpFAbUg=
Received: by mail-qk1-f174.google.com with SMTP id h4so598788qkm.0;
 Tue, 25 Feb 2020 12:57:47 -0800 (PST)
X-Gm-Message-State: APjAAAVEvXCRwOQNlytJiPliqSziECC7nDX4CiFbQTs/gef8BFjZyhEw
 BVwHHI4ZhLfa6Q3cuvIHcC20yF/gqY+70AgdCA==
X-Google-Smtp-Source: APXvYqz2R5nikNFiKQzE3WzYAa4JRDhsDEPVyRy8hsiD3YIxfbq2k/r6k7Ue9axTsmsjn+eGEtYJoB+gv797DdDBI14=
X-Received: by 2002:a37:a750:: with SMTP id q77mr933467qke.119.1582664267060; 
 Tue, 25 Feb 2020 12:57:47 -0800 (PST)
MIME-Version: 1.0
References: <20200221194731.13814-1-lukasz.luba@arm.com>
 <20200221194731.13814-5-lukasz.luba@arm.com>
In-Reply-To: <20200221194731.13814-5-lukasz.luba@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Feb 2020 14:57:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ1D6Cf2cxdskDS2JCEe8ja6uUeoSpA3i-wxNgi=S1SYA@mail.gmail.com>
Message-ID: <CAL_JsqJ1D6Cf2cxdskDS2JCEe8ja6uUeoSpA3i-wxNgi=S1SYA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm/panfrost: Register to the Energy Model with
 devfreq device
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_125748_990346_CA589E97 
X-CRM114-Status: GOOD (  17.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, juri.lelli@redhat.com,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, bsegall@google.com,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Fabio Estevam <festevam@gmail.com>,
 Morten Rasmussen <Morten.Rasmussen@arm.com>, patrick.bellasi@matbug.net,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kevin Hilman <khilman@kernel.org>, Andy Gross <agross@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Steven Price <steven.price@arm.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Ingo Molnar <mingo@redhat.com>, NXP Linux Team <linux-imx@nxp.com>,
 Zhang Rui <rui.zhang@intel.com>, mgorman@suse.de, orjan.eide@arm.com,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-omap <linux-omap@vger.kernel.org>, Dietmar.Eggemann@arm.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, David Airlie <airlied@linux.ie>,
 javi.merino@arm.com, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 qperret@google.com, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 1:48 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Add device to the Energy Model framework. It will create a dedicated
> and unified data structures used i.e. in the thermal framework.
> The power model used in dev_pm_opp subsystem is simplified and created
> based on DT 'dynamic-power-coefficient', volatage and frequency. It is

typo.

> similar to the CPU model used in Energy Aware Scheduler.
>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> index 413987038fbf..d527a5113950 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -105,6 +105,8 @@ int panfrost_devfreq_init(struct panfrost_device *pfdev)
>         }
>         pfdev->devfreq.devfreq = devfreq;
>
> +       dev_pm_opp_of_register_em(dev, NULL);

Can't fail?

> +
>         cooling = of_devfreq_cooling_register(dev->of_node, devfreq);
>         if (IS_ERR(cooling))
>                 DRM_DEV_INFO(dev, "Failed to register cooling device\n");
> @@ -118,6 +120,7 @@ void panfrost_devfreq_fini(struct panfrost_device *pfdev)
>  {
>         if (pfdev->devfreq.cooling)
>                 devfreq_cooling_unregister(pfdev->devfreq.cooling);
> +       dev_pm_opp_of_unregister_em(&pfdev->pdev->dev);
>         dev_pm_opp_of_remove_table(&pfdev->pdev->dev);

Does it make sense to keep this (and the registration side) as
separate calls? Perhaps there's some ordering requirement with
everything between dev_pm_opp_of_add_table() and
dev_pm_opp_of_register_em()?

While you're just adding 2 lines, it seems there's a lot of complexity
exposed to the driver just to initialize devfreq/opp.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
