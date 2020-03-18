Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 360C61899FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hy7yrUd1svv3j79PTwk5KknlTNA57YcRt35clIb2TX0=; b=Uk54c7S5sJZQZi
	TNuLDgh9o6r9FhEPXZDPHOyg8YbsVdVTafOpnCLdwB1DtI/OG32SMxGyZFKZMi3BKuc8YmNvxy23/
	BBM2/XjqjJc6fX6Dg2/5QrEjLIhADXYzQ+AI4P9+O7f5r5THrxWOtlcmxQRboJ1VCsMni3EyPq5Wy
	tnMG39SOeIgsxqJKpmeo0Exw+k1tFvV3CfzsKKO414Je2dmTGID1lZUYPSFwOX5RUVto5Fyh7hsqg
	SLA4XM3ciXtvXXKF8YDhRn0homE0fBloGgvS+wmbS2Tkb9w07wncVbpjt6Rw5gIyedsm92RtIdmJY
	MLILJBOTAZiI6g2LLvNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEWLH-00061W-EQ; Wed, 18 Mar 2020 10:54:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEWL6-0005t8-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:54:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C06B41FB;
 Wed, 18 Mar 2020 03:51:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB1AF3F534;
 Wed, 18 Mar 2020 03:51:58 -0700 (PDT)
Date: Wed, 18 Mar 2020 10:51:56 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCHv6 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Message-ID: <20200318105156.GB16012@lakrids.cambridge.arm.com>
References: <20200302181752.14251-1-mark.rutland@arm.com>
 <20200317231431.GM20788@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317231431.GM20788@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_035420_890865_29C6D26B 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, robin.murphy@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 11:14:31PM +0000, Will Deacon wrote:
> On Mon, Mar 02, 2020 at 06:17:49PM +0000, Mark Rutland wrote:
> > This is a respin of Andrew Murray's series to enable support for 64-bit
> > counters as introduced in ARMv8.5.
> > 
> > I've given this a spin on (ARMv8.2) hardware, to test that there are no
> > regressions, but I have not had the chance to test in an ARMv8.5 model (which I
> > beleive Andrew had previously tested).
> > 
> > Since v5 [1]:
> > * Don't treat perfmon ID fields as signed
> > * Fix up ID field names
> > * Explicitly compare ARMV8.5 PMU value
> 
> I'm betting on your issue being a model bug, so I've queued this on top of
> Robin's enable/disable rework. Please take a look at for-next/perf [1] in
> case I screwed it up.

From a cursory review, that all looks good to me.

I'll poke if the issue turns out to be anything beyond a model bug. but
I agree it seems that's all it is.

Thanks,
Mark.

> 
> Thanks,
> 
> Will
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
