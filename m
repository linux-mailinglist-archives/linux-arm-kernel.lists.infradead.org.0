Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EDC4CAFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:35:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Af6v0SmWUxu2v+UixCMeYnrsHXjT+NAfjBIL9vw5iI=; b=fG+TQFE3GgfKgW
	9lT+eSh3XPQk2Wzb+r6KEhGVrQ0zPjnxhd8L3htIxCVrJsSXldsQizXfeZKOK8/wDnt6LmQStNKUs
	6SscFb6B6m7HTzoN/Zw/7uJi51pleP/o/2ZrDGkLUZ3/Ch/5IZzclZfad/Rnw2i7milYmw7t6AZip
	5v0lYYLvwjydCRaditRjmvKOq54X3EWRUcuFsP6UvvPmLUPdX+YQicx4vK6aKnFpiwAIHpnhIziQH
	ihn9wMUCuUGVKvWaIxGeNCpBR3T49zbAmny1pEBcG9Fw2iLbe4gjuqNd5wydg36wlF3seFYzFmRI2
	dufrbERbrQjhmgzLuUNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtTw-0000cJ-Cw; Thu, 20 Jun 2019 09:35:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtTi-0000c0-Lj
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:35:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73665C0A;
 Thu, 20 Jun 2019 02:35:33 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52ADD3F246;
 Thu, 20 Jun 2019 02:35:32 -0700 (PDT)
Date: Thu, 20 Jun 2019 10:35:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: Coresight causes synchronous external abort on msm8916
Message-ID: <20190620093530.GE1248@e107155-lin>
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619183904.GB937@gerhold.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_023534_753624_B2B37AB9 
X-CRM114-Status: GOOD (  23.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm@vger.kernel.org, david.brown@linaro.org, agross@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 08:39:04PM +0200, Stephan Gerhold wrote:
> Hi,
>
> On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
> > Hi Stephan,
> >
> > On 18/06/2019 21:26, Stephan Gerhold wrote:
> > > Hi,
> > >
> > > I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> > > It works surprisingly well, but the coresight devices seem to cause the
> > > following crash shortly after userspace starts:
> > >
> > >      Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> >
> > ...
> >
> >
> > >
> > > In this case I'm using a simple device tree similar to apq8016-sbc,
> > > but it also happens using something as simple as msm8916-mtp.dts
> > > on this particular device.
> > >    (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> > >
> > > I can avoid the crash and boot without any further problems by disabling
> > > every coresight device defined in msm8916.dtsi, e.g.:
> > >
> > > 	tpiu@820000 { status = "disabled"; };
> >
> > ...
> >
> > >
> > > I don't have any use for coresight at the moment,
> > > but it seems somewhat odd to put this in the device specific dts.
> > >
> > > Any idea what could be causing this crash?
> >
> > This is mostly due to the missing power domain support. The CoreSight
> > components are usually in a debug power domain. So unless that is turned on,
> > (either by specifying proper power domain ids for power management protocol
> > supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
> > keep the debug power domain turned on , this works on Juno -).
>
> Interesting, thanks a lot!
>
> In this case I'm wondering how it works on the Dragonboard 410c.
> Does it enable these power domains in the firmware?
>   (Assuming it boots without this error...)
>
> If coresight is not working properly on all/most msm8916 devices,
> shouldn't coresight be disabled by default in msm8916.dtsi?
> At least until those power domains can be set up by the kernel.
>

Why do you want to disable in DTS if it's issue with some incomplete
kernel configuration. If power domains are disabled in the kernel, then
the pm_runtime might ignore and proceed assuming the firmware enables
all power domains ON on boot.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
