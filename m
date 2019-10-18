Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DDCDCBD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxlZqI2E90xuVrsz4euWFNXY9YSDh/HyHAP30/vL1oo=; b=W7FbrO9SShczpz
	z7mX5iFcWeCAjq87wK0UVLv+IDaeAHMpFb0GpJKHIXCwEPNzFyyVRnO2UB4MQeITfJuD8Xg3LV2qs
	HcmgSMnkIIQe4m/rhvWkm2Dh8DgIMeCxOtGJrjvkH9y9I8aBk5RuSeTxT2MrhNtSCof6oyhWBF9C7
	X3za+Q1HV7pwMMPtVtCLNADwv0uNjBm89N1FvFyLrtt3CaqqOoIEDQIL3kjjTJXWURX4css6aqwzu
	XT3wChT4fgBgzHO0ac+yk/3rgWs44eNOb28hxETPz2ctmYyIGJd7PywOffGyM+7UL7KZYLQyO2rOq
	17perOAfm3bYpp/BYJ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVQF-0000x0-KN; Fri, 18 Oct 2019 16:48:15 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVQ1-0000v7-G8
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:48:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2DAE101E;
 Fri, 18 Oct 2019 09:47:45 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4EC83F718;
 Fri, 18 Oct 2019 09:47:43 -0700 (PDT)
Date: Fri, 18 Oct 2019 17:47:39 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 01/13] cpuidle: psci: Fix potential access to unmapped
 memory
Message-ID: <20191018164739.GA19850@e121166-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191018093839.GB25918@e121166-lin.cambridge.arm.com>
 <CAPDyKFqcHY6+Eq9d6xTPYMDrUOtGs+64YuwZ1EbFtqQZe0+xEw@mail.gmail.com>
 <20191018100304.GA28830@e121166-lin.cambridge.arm.com>
 <CAPDyKFoEf1-2z8d2r15=fg-9sY5u93iOzuUmmsYYiG9+8uB9Dw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoEf1-2z8d2r15=fg-9sY5u93iOzuUmmsYYiG9+8uB9Dw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_094801_582487_FDA3634B 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 12:29:54PM +0200, Ulf Hansson wrote:

[...]

> > Technically we are not fixing anything; it is not such a big
> > change, we need to allocate one entry more and update the array
> > indexing.
> 
> Okay, let me do the change - and it seems like it doesn't even have to
> be sent as a fix then. Right?

No it does not (even though I agree that's misleading and "fixing"
it for v5.4 would not hurt either).

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
