Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EBD4C0F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asvrEJZKot5x5AAHJ0LJkJzErY4IeVMN22EWsTmqMx4=; b=GBTDDgGoAbp0qW
	maI8Z22FLbaLXN8R5j9NVw33WyYuyV8h7YLWzW7JYgzvqVLimOnf+ekKd8GhFqYREv0ZpURASZsmo
	UtiIDiLbV3EV3FwC/aglrvDB6w0wnq4ytv0pySKgOaAHd0gxlKvxQLwSmRN+2F6ETATRCrRGQ/FeU
	vLP5yaW9MOIX01AKy+/Y7uDS8DfyhH9P2YlKUcYXq9Wnrt7EtoEEg44XV6zChjQal11e9NcyNySVd
	c1yBL+KCQ6Ux/ulYt3wJHPybKdsMJtE2VEGNI9M5cyE3BXiIf9IcNRXxfK5uoQmuOOq1YE2JJtSsj
	w2APl7BbpXk8kQFTCs6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfUR-0006Kg-N0; Wed, 19 Jun 2019 18:39:23 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfUB-0006KG-LM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1560969545;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=yE9t/HpOhUCCw92yGlKlu+arbDgwr4eDSSJxIXUUaY0=;
 b=ZkHVKPK7jcxsewNjULrLMPbxeABqnHziLoCrr2T3ojot+NCPEPnSlEnuqahgZ3uetD
 wBpktQl8875oRGY9PNHSIibkeJfbMzw83AE0/F8H/zYk8rbB8mXJS5TAtOgvp8GCCTAu
 WRHVVWEOlADAsG0XcQpntdACurPCcqr6D26vhW4hSdnmi0S2BAf1vL/GBOg5tRzyVPK2
 kvGzzJoO1wIlAZHXccNw+1gpZwX/394UFXQ6rxhhWOfg3zahlJ2dp6aN+bUfQXSO4QX5
 3dgXPLW3nshxK89XDH5nW8T8W+ru71eBlPDMjcFGofA7PxAP7y/na/Lud6b2rhuH3iF+
 mz1A==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267EpF+OQRc4oDXF5yRxHE="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.24 AUTH)
 with ESMTPSA id m0a13fv5JId57Jh
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Jun 2019 20:39:05 +0200 (CEST)
Date: Wed, 19 Jun 2019 20:39:04 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: Coresight causes synchronous external abort on msm8916
Message-ID: <20190619183904.GB937@gerhold.net>
References: <20190618202623.GA53651@gerhold.net>
 <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a51f117f-c48d-d3f4-c3d1-9b584e3a055f@arm.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_113908_303278_53F90A48 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 19, 2019 at 09:49:03AM +0100, Suzuki K Poulose wrote:
> Hi Stephan,
> 
> On 18/06/2019 21:26, Stephan Gerhold wrote:
> > Hi,
> > 
> > I'm trying to run mainline Linux on a smartphone with MSM8916 SoC.
> > It works surprisingly well, but the coresight devices seem to cause the
> > following crash shortly after userspace starts:
> > 
> >      Internal error: synchronous external abort: 96000010 [#1] PREEMPT SMP
> 
> ...
> 
> 
> > 
> > In this case I'm using a simple device tree similar to apq8016-sbc,
> > but it also happens using something as simple as msm8916-mtp.dts
> > on this particular device.
> >    (Attached: dmesg log with msm8916-mtp.dts and arm64 defconfig)
> > 
> > I can avoid the crash and boot without any further problems by disabling
> > every coresight device defined in msm8916.dtsi, e.g.:
> > 
> > 	tpiu@820000 { status = "disabled"; };
> 
> ...
> 
> > 
> > I don't have any use for coresight at the moment,
> > but it seems somewhat odd to put this in the device specific dts.
> > 
> > Any idea what could be causing this crash?
> 
> This is mostly due to the missing power domain support. The CoreSight
> components are usually in a debug power domain. So unless that is turned on,
> (either by specifying proper power domain ids for power management protocol
> supported by the firmware OR via other hacks - e.g, connecting a DS-5 to
> keep the debug power domain turned on , this works on Juno -).

Interesting, thanks a lot!

In this case I'm wondering how it works on the Dragonboard 410c.
Does it enable these power domains in the firmware?
  (Assuming it boots without this error...)

If coresight is not working properly on all/most msm8916 devices,
shouldn't coresight be disabled by default in msm8916.dtsi?
At least until those power domains can be set up by the kernel.

If this is a device-specific issue, what would be an acceptable solution
for mainline?
Can I turn on these power domains from the kernel?
Or is it fine to disable coresight for this device with the snippet above?

I'm not actually trying to use coresight, I just want the device to boot :)
And since I am considering submitting my device tree for inclusion in
mainline, I want to ask in advance how I should tackle this problem.

Thanks!
Stephan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
