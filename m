Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C53D118FA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 19:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvxO2IQlDLcoNczBOzJrRUf6GuJCRybu3mopUplINs0=; b=qJ1hRt2deJ0e78
	bvPdO1ti2NnIIutHyJ29qIJV95DYwotq1CH2T+m5vZpV+2G4eH6tgJR3fG2FQcNaX3PhMrSzHI9Yx
	/iMDbU7rZUoU/u03/FfnHfNRUTbAF9F+j6IK4GKwqoep76Ji8BlirXdkGNlPP3ZO8YkxaPF4cCGoy
	nuk8Frgf0szIOuZ18GBRQS3EeHaSeDz255+maDt8/uk/kNZFqADFb+2Il2A6UmHSuHkVSptBtL52T
	C4OU+rDrsi+Fs5ahprCZ5ryQGOeIVAX15l3BXJAMRW7XQFQDuoaBLcVt5TkyXgLWx1K8m9ehvisrr
	9HcIOa5vsjyc9L8dO96A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iek7U-0004Uf-IG; Tue, 10 Dec 2019 18:20:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iek7L-0004UJ-Du
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 18:20:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B26FC1FB;
 Tue, 10 Dec 2019 10:20:14 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B318B3F6CF;
 Tue, 10 Dec 2019 10:20:13 -0800 (PST)
Date: Tue, 10 Dec 2019 18:20:11 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 14/15] hwmon: (scmi-hwmon) Match scmi device by both name
 and protocol id
Message-ID: <20191210182011.GB20962@bogus>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-15-sudeep.holla@arm.com>
 <20191210180643.GA10944@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210180643.GA10944@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_102015_514438_AB6AFB6D 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 10:06:43AM -0800, Guenter Roeck wrote:
> On Tue, Dec 10, 2019 at 02:53:44PM +0000, Sudeep Holla wrote:
> > The scmi bus now has support to match the driver with devices not only
> > based on their protocol id but also based on their device name if one is
> > available. This was added to cater the need to support multiple devices
> > and drivers for the same protocol.
> >
> > Let us add the name "hwmon" to scmi_device_id table in the driver so
> > that in matches only with device with the same name and protocol id
> > SCMI_PROTOCOL_SENSOR. This will help to add IIO support in parallel if
> > needed.
>
> If you are planning to re-implement the driver as iio driver, it would
> make more sense to drop the hwmon driver entirely and use the iio->hwmon
> bridge to access the sensors as hwmon devices if needed.
>

Ah, does it provides the same interface as hwmon to userspace ? Sorry but
I haven't spent much time looking at IIO yet, but since there are similar
needs to share protocol between subsystems in the kernel, this was just
an example that I listed as recently some requirement to add IIO SCMI
support had come up. If we can achieve hwmon kind of interface with iio->hwmon,
we should do that. We have other examples like devfreq and cpufreq, genpd
and regulators.

This patch is optional at least as of now (but good to have for completeness),
if the driver provides no name, we just match on protocol id only.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
