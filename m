Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C534ECD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+4BHxEQJ7BQOb8BRzLNY3krqc//mprXcrdMYsMVU8Q=; b=N7YNmSRze0qY+e
	t6sC6VmcwSCigJ1Dpp2MDl+FFWVaqlp84fozxO8/izq4t58KaojHps4TI8ntdZVutix1lyV2lmc87
	SN7AU7f8LW/r8ly8Al8F6aDSvzmiabNCx8voJ1z0x79zQLvk7J8AxYwpznbPNVv2A03qf1UafwCLc
	XzsuQE4qp3nMxgmy4aALTYG9d6+OmrHQhcjhqfTIIZk8sUwOynBSPebcQzkQ8PNKBMvK9kmXlazX+
	VTkYRvwOIS/4JOH1uGt3hwVCKqXgRrr1GyBcTKUbOhVLuzbEAtrmJbjqv/SkvCzblzmvJ62GJXQJ4
	v31gaDpqmsIqdDkd5eew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heM83-0003Ye-9w; Fri, 21 Jun 2019 16:11:07 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heM7s-0003Ww-Bm
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 16:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1561133454;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=KYSyIaHOav3ZO2XBQ/Ogk5t2GXK9gtYCHwouuD6sHvk=;
 b=E6e+SLtJ4LDhHeKCH2bp/tqk8crmbECSS+e5YQNW7MRRhcoPFWpjrg5+Y88iPsFoA2
 25L73kmrnfghES47L3rlG7de1xxlaA8LdGuVEeyY0VH6vTmCAuGXbx9vbd3dajRXN3Em
 XnKRtrJZXUn2C1EGMDHRV/iMf1S4y/jFPHTNSxb06d03S79gfggcHndzVKOW1Cd2Vh98
 frrR+zbEIzA5eYsDrjYRws6qP7jEcG46qFe5HoCxRxI3oQ0+4gl/t88D2nbY4V/JImlx
 X6QpGkoW+auvwETAj/eHvs0kIc8YbJ0gjmCV+ZsriUpPZYFHNe4Mkp30hr3tiiR2Bvwz
 w2pA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEodhPgRDZ8b5Ic/FbYo="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id m0a13fv5LGAqGUG
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Fri, 21 Jun 2019 18:10:52 +0200 (CEST)
Date: Fri, 21 Jun 2019 18:10:51 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: Coresight causes synchronous external abort on msm8916
Message-ID: <20190621161051.GB34922@gerhold.net>
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
 <20190619183904.GB937@gerhold.net>
 <20190620093530.GE1248@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620093530.GE1248@e107155-lin>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_091056_995459_FA3A28C3 
X-CRM114-Status: GOOD (  25.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 10:35:30AM +0100, Sudeep Holla wrote:
> On Wed, Jun 19, 2019 at 08:39:04PM +0200, Stephan Gerhold wrote:
> > Hi,
> >
> > On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
> > > Hi Stephan,
> > >
> > > On 18/06/2019 21:26, Stephan Gerhold wrote:
> > > > Hi,
> > > >
> > > > I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> > > > It works surprisingly well, but the coresight devices seem to cause the
> > > > following crash shortly after userspace starts:
> > > >
> > > >      Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> > >
> > > ...
> > >
> > >
> > > >
> > > > In this case I'm using a simple device tree similar to apq8016-sbc,
> > > > but it also happens using something as simple as msm8916-mtp.dts
> > > > on this particular device.
> > > >    (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> > > >
> > > > I can avoid the crash and boot without any further problems by disabling
> > > > every coresight device defined in msm8916.dtsi, e.g.:
> > > >
> > > > 	tpiu@820000 { status = "disabled"; };
> > >
> > > ...
> > >
> > > >
> > > > I don't have any use for coresight at the moment,
> > > > but it seems somewhat odd to put this in the device specific dts.
> > > >
> > > > Any idea what could be causing this crash?
> > >
> > > This is mostly due to the missing power domain support. The CoreSight
> > > components are usually in a debug power domain. So unless that is turned on,
> > > (either by specifying proper power domain ids for power management protocol
> > > supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
> > > keep the debug power domain turned on , this works on Juno -).
> >
> > Interesting, thanks a lot!
> >
> > In this case I'm wondering how it works on the Dragonboard 410c.
> > Does it enable these power domains in the firmware?
> >   (Assuming it boots without this error...)
> >
> > If coresight is not working properly on all/most msm8916 devices,
> > shouldn't coresight be disabled by default in msm8916.dtsi?
> > At least until those power domains can be set up by the kernel.
> >
> 
> Why do you want to disable in DTS if it's issue with some incomplete
> kernel configuration. If power domains are disabled in the kernel, then
> the pm_runtime might ignore and proceed assuming the firmware enables
> all power domains ON on boot.
> 

At the moment, disabling it in DTS is the only way I have found to make
the kernel boot successfully.

I have tried booting with clk_ignore_unused and pd_ignore_unused but it
does not make any difference. If the debug power domain is the problem,
then I suspect it is not turned on by the firmware on this production
device.

Also see my other reply:
https://lore.kernel.org/linux-arm-msm/20190621160631.GA34922@gerhold.net/



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
