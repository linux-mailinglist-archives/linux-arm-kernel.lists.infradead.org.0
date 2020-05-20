Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91F71DB74C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 16:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdPrmBQQk5WnXv0drPhKmkpjNsa61NKSyd58idPP23A=; b=AE/nJy/kqvL/l1
	kVfCX0jEhJy7c/UEEEUp3e81lkgJfJ+Y2RsBgNIzIoEqfogxPgcbHn9iQNreG+ryoG65y61/r6oy/
	pmdJ9pW28FiP8H+0wHR64ty4E533SBABW0/TJ4vXuuatAsen1PnlE+dEf+n2dUEVu3BopIkJjAsRT
	2hz89XX16QEdh8+lIh0dh1pKUN3Mvn4tlECkAxOEVZjvYmmem22z/MQJ9e37vFtNFqhJr4hDjSc5A
	F1Mi4zbLifampWcxyFp9ULiWYl8m94z8a2M/KH6/UGhrZOuWWYGILOdMVcXjrwoZGHLZBf0FoV8ei
	eJTTBkHlSQmEAy75L/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPwU-0006XP-HS; Wed, 20 May 2020 14:43:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPwC-0006X1-AS
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 14:43:17 +0000
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81DBA20885
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589985795;
 bh=93xiZdfQmazN0EU3A6j+wlLxKCqDuPGLCkRTQ2Xp2Dk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zqJjU+Pe293oZ6ocassxcPcA2DVflYdbghR2e84eL9bvigCMGhmQkEOCWyB9x9qMk
 tqfg3MOzrmqIwWdyGsSFsZlCwfR41ZaBdF245d85c681C2Dl3glo6eQhgQz0uzWQtO
 S6isGeYhInUenMyUNLrWaEyxfF/HwQyFKs4eh/rE=
Received: by mail-oi1-f182.google.com with SMTP id 23so1902398oiq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 07:43:15 -0700 (PDT)
X-Gm-Message-State: AOAM532y95FcR8UMgB9S8yq1fQKzlH/3W+wCrul4Ywt/f4he5BeMnDxl
 k9xN00bwz2yH25++cc3lFcWNZkXPf6r+Lbyq8w==
X-Google-Smtp-Source: ABdhPJzyaxh/SnkAwbz5oRVIMrIQtReCF6vMmwmfUuuZxVCZFWwPmcpMMg2xoPSi8xvODJyqRQJXHWuqYsTq1+BbBwk=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr3499546oie.152.1589985794742; 
 Wed, 20 May 2020 07:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7> <20191204093339.GA2784830@ulmo>
 <20191204095138.rrul5vxnkprfwmku@vireshk-i7> <20200407100520.GA1720957@ulmo>
In-Reply-To: <20200407100520.GA1720957@ulmo>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 20 May 2020 08:43:03 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+rMYAZ=ub0U7qdHSsWgbQugodhvigFCxrFm49HwrCmAQ@mail.gmail.com>
Message-ID: <CAL_Jsq+rMYAZ=ub0U7qdHSsWgbQugodhvigFCxrFm49HwrCmAQ@mail.gmail.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_074316_405688_D5BEC7AD 
X-CRM114-Status: GOOD (  35.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, Timo Alho <talho@nvidia.com>,
 bbasu@nvidia.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-tegra <linux-tegra@vger.kernel.org>, Sumit Gupta <sumitg@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>, Will Deacon <will@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 4:05 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Wed, Dec 04, 2019 at 03:21:38PM +0530, Viresh Kumar wrote:
> > On 04-12-19, 10:33, Thierry Reding wrote:
> > > Yeah, the code that registers this device is in drivers/base/cpu.c in
> > > register_cpu(). It even retrieves the device tree node for the CPU from
> > > device tree and stores it in cpu->dev.of_node, so we should be able to
> > > just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a reference
> > > to the BPMP.
> > >
> > > That said, I'm wondering if perhaps we could just add a compatible
> > > string to the /cpus node for cases like this where we don't have an
> > > actual device representing the CPU complex. There are a number of CPU
> > > frequency drivers that register dummy devices just so that they have
> > > something to bind a driver to.
> > >
> > > If we allow the /cpus node to represent the CPU complex (if no other
> > > "device" does that yet), we can add a compatible string and have the
> > > cpufreq driver match on that.
> > >
> > > Of course this would be slightly difficult to retrofit into existing
> > > drivers because they'd need to remain backwards compatible with existing
> > > device trees. But it would allow future drivers to do this a little more
> > > elegantly. For some SoCs this may not matter, but especially once you
> > > start depending on additional resources this would come in handy.
> > >
> > > Adding Rob and the device tree mailing list for feedback on this idea.
> >
> > Took some time to find this thread, but something around this was
> > suggested by Rafael earlier.
> >
> > https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/
>
> I gave this a try and came up with the following:
>
> --- >8 ---
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> index f4ede86e32b4..e4462f95f0b3 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -1764,6 +1764,9 @@ bpmp_thermal: thermal {
>         };
>
>         cpus {
> +               compatible = "nvidia,tegra194-ccplex";
> +               nvidia,bpmp = <&bpmp>;

Is there more than 1 bpmp? If not you don't need this. Just lookup the
node by compatible.


> +
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>
> --- >8 ---
>
> Now I can do something rougly like this, although I have a more complete
> patch locally that also gets rid of all the global variables because we
> now actually have a struct platform_device that we can anchor everything
> at:
>
> --- >8 ---
> static const struct of_device_id tegra194_cpufreq_of_match[] = {
>         { .compatible = "nvidia,tegra194-ccplex", },
>         { /* sentinel */ }
> };
> MODULE_DEVICE_TABLE(of, tegra194_cpufreq_of_match);
>
> static struct platform_driver tegra194_ccplex_driver = {
>         .driver = {
>                 .name = "tegra194-cpufreq",
>                 .of_match_table = tegra194_cpufreq_of_match,
>         },
>         .probe = tegra194_cpufreq_probe,
>         .remove = tegra194_cpufreq_remove,
> };
> module_platform_driver(tegra194_ccplex_driver);
> --- >8 ---
>
> I don't think that's exactly what Rafael (Cc'ed) had in mind, since the
> above thread seems to have mostly talked about binding a driver to each
> individual CPU.
>
> But this seems a lot better than having to instantiate a device from
> scratch just so that a driver can bind to it and it allows additional
> properties to be associated with the CCPLEX device.

What additional properties? A continual stream of properties added 1
by 1 would negatively affect my opinion of this.

> Rob, any thoughts on this from a device tree point of view? The /cpus
> bindings don't mention the compatible property, but there doesn't seem
> to be anything in the bindings that would prohibit its use.

What happens when you have more than one cpu related driver in
addition to cpufreq? You may still have to end up creating child
platform devices and then gained very little.

You could solve this without DT changes. You can bind on node names.
The driver probe can then check the parent compatible and return if
not matching. I'm not sure if you could get module auto loading to
work in that case. It would have to be based on the root compatible
(rather than the driver match table) and be able to load multiple
matching modules.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
