Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFCE4B6B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSh1EejAiUYBNivfSvJ8ggFgpm6WAGWNJHQBaZupAYg=; b=cBRoV5UBkjHKEk
	ff5/bVxFkarpTOD+KL8AWaYI5SBZvdw0iDAIgSQRhKqWFKRK0umE12Vd0594ujsq0TVuNoJNcwvNd
	MtI2OP1lE60+VU1KrwBkQ5X08rVAlEJasZ6Y4h3uX+M541jtjfqLwX7nb+rrKiv6yTio5i4hwRdxT
	QvxD6qqAgYwlzZEThnIsdQPyt8h2hTcXErjsfh4HFSUsQ1pOXDzd8X1M0zcglbVUpwokrv7nlKY2c
	QT+elj443ZIqfTaQNbp5wZnjPLEZDEaO/7ZYSsMqCVpp943vie/+AmpA1Z9jsKHxEy+QiddE2te2y
	aSt4ZSUopAOWUBcS1P6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYRe-00076U-SJ; Wed, 19 Jun 2019 11:08:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYRV-00075s-A7
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:07:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E608360;
 Wed, 19 Jun 2019 04:07:52 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4B3E3F738;
 Wed, 19 Jun 2019 04:09:37 -0700 (PDT)
Date: Wed, 19 Jun 2019 12:07:49 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
Message-ID: <20190619110749.GD1360@e107155-lin>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
 <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_040753_443448_0D146A87 
X-CRM114-Status: GOOD (  25.65  )
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
Cc: Al.Grant@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:38:12AM +0100, Suzuki K Poulose wrote:
> Cc: Al Grant, Mike Leach
>
> Hi Sudeep,
>
> On 18/06/2019 14:21, Sudeep Holla wrote:
> > On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
> > > Some hardware will ignore bit TRCPDCR.PU which is used to signal
> > > to hardware that power should not be removed from the trace unit.
> >
> > So, how or can we identify or discover such system ? DT/ACPI ?
> >
>
> I don't think there is a mechanism at the moment to identify such
> systems. But if we really need to know this information, we could
> always think about it.
>

I prefer that as we shouldn't systems that are not broken.

> > > Let's mitigate against this by saving and restoring the trace
> > > unit state when the CPU enters low power states.
> > >
> >
> > I prefer to do this conditionally. It's unnecessary on systems which
> > don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> > while we want to add this support for *broken* systems.
>
> It is conditional. i.e, you may disable the operation using a kernel/module
> parameter, which I think should be mentioned in the description here.
>

Why should the user of coresight need to know if the corresponding
hardware module is broken or not. I prefer the firmware tell OS.

> >
> > This is generally most useful to debug CPU suspend/resume exercising
> > the code path completely with emulated CPU power on/off as most of the
> > systems have the trace unit and the CPUs in the same power domain.
>
> I understand, which is specifically why this comes with an option to handle
> such cases.
>

OK

> >
> > Just curious if this reported on any platforms ?
> >
>
> I have heard people complaining about this, but not sure about the exact
> platform(s) affected.
>

One we add mechanism in place, platform need to advertise that it's
broken in firmware(DT/ACPI). Or just have a blacklist if we don't
want to add anything extra to the firmware(DT/ACPI) ?

> > I wounder if we can use TRCPDSR(Power Down Status Register) to check the
> > status. I know on Juno, it doesn't loose context rather the power down
> > is emulated and saving/restoring may not be needed at all. Have you
> > tested on Juno with and without these patches and seen any difference ?
>
> The problem is trace unit looses power the moment CPU goes to low power mode
> and if we try to read this register, it could cause unexpected side-effects.
>

No I meant before CPU loose power i.e. in CPU_ENTER case. However I do
remember you/Andrew mentioning that even that may be bogus on broken
systems, so firmware is only way to avoid penalising all platforms IMO.

Or other option is to stop the coresight tracing session like we do
for PMUs or not entering idle when there's any active coresight session
in progress on such platforms.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
