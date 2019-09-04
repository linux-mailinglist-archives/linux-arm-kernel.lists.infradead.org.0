Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E082A86B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD+exvkKEwodWb7RN8Iap6e973Hh19/sPBEB1ljp6aM=; b=IxMHc/kys7+LGV
	ApZmfiflptDJN7UwI7kxOmLAUawp9ZNz2MLjJoBsXwuUYRPMHXE6tegPeDzS05zrqykvbE4M9k6Mx
	LEF3VkPLEZln0eSiRh5tR/grj7DuvN2uz0+3CAeMrUJAWZAKlwY98BSHuB9qq6OZMbRmClQJW+1Ok
	Ys+xsh5Tc8rWwaAbWx522gO4eNif1Ze59h9K5fkfOYvbNh7P/vSPpTS63P27Wv3WcfJwMGMo1E023
	aDepSEIiLp0t57jxDwi64ZtH2bf6Q8p3Ox3nBmHqcc8NL1hga/CFefVr155/3e6QKTF59ak8A3PaV
	ryKrozfqJ354aGQDwWng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YWo-0001jm-3Z; Wed, 04 Sep 2019 16:53:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YWd-0001iy-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:52:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D0A7337;
 Wed,  4 Sep 2019 09:52:54 -0700 (PDT)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 370E33F67D;
 Wed,  4 Sep 2019 09:52:53 -0700 (PDT)
Date: Wed, 4 Sep 2019 17:52:47 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: Add Lenovo Yoga C630
Message-ID: <20190904165246.GA25356@bogus>
References: <20190904121606.17474-1-lee.jones@linaro.org>
 <20190904141257.GB6144@bogus> <20190904161247.GP26880@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904161247.GP26880@dell>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_095255_293197_B1381D49 
X-CRM114-Status: GOOD (  19.69  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 05:12:47PM +0100, Lee Jones wrote:
> On Wed, 04 Sep 2019, Sudeep Holla wrote:
>
> > On Wed, Sep 04, 2019 at 01:16:06PM +0100, Lee Jones wrote:
> > > From: Bjorn Andersson <bjorn.andersson@linaro.org>
> > >
> > > The Lenovo Yoga C630 is built on the SDM850 from Qualcomm, but this seem
> > > to be similar enough to the SDM845 that we can reuse the sdm845.dtsi.
> > >
> > > Supported by this patch is: keyboard, battery monitoring, UFS storage,
> > > USB host and Bluetooth.
> > >
> >
> > Just curious to know if the idea of booting using ACPI is completely
> > dropped as it's extremely difficult(because the firmware is so hacked
> > up and may violate spec, just my opinion) for whatever reasons.
>
> Once [0] is applied, we can boot Mainline using ACPI.
>

Good to know.

> > We just made ACPI table version checking more lenient for this platform
> > and would be good to know if we continue to run ACPI on that or will
> > abandon and just use DT.
>
> Which patch are you referring to?  If you mean the ACPI v5.0 vs v5.1
> patch authored by Ard, then yes I know, I instigated it's existence
> due to these devices.
>

Yes exactly that one.

> DT will *always* be more enabled than ACPI, so it's advised that you
> use DT for anything useful.  ACPI booting is ideal for things like
> installing distros however, since they do not tend to provide DTBs in
> their installers.
>

OK, as along as it gets tested/used in some form, that's fine. I do agree
that DT will be more useful on that platform as it was derived from mobile
based SoC SDM845 rather than solely designed for Laptops and with more
alignment with ACPI spec. The way whole power/clock management is done
with ACPI on this pulls me towards DT ;)

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
