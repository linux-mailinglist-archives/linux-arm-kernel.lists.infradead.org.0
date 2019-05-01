Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBA8108DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 16:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q34Jpvaiq7ckD6dmHHRaDVRCvnQXRr6grrqqmIYAXbA=; b=FS5ZHXfoNsRLui
	9ujg8mxv4ChKp9zehxRF0jTENsiJD+03h0+u4G1LHxqnJkwLqyuHCV6iOwbhP4PEd4DSlzoodQdT5
	7OpRDCJJO8HeSWxpcyjJG7NBaz1o58Y81t8Oc+AOY6AJmUaUXepNoPBg843DUuUNcdQN4Vh3QL1ma
	K48dgcvyJMHViveIKdXXShMTJCaNEnx2Pg/CYWoU+PQFIb+O9+n2x12q0hH5TRO+HlV0BX/kFntpX
	1HXCzCSumHn+Rj6PHN2TvQkJwjPkycV/68qNV/pRjdrk4bASP+xMGrvKinFHdCk2Jl0Ax3eBp9oKP
	LAheWK2/jVkZQbdivxCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLq12-0000YQ-01; Wed, 01 May 2019 14:15:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLq0u-0000Xq-T2
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 14:15:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F273BA78;
 Wed,  1 May 2019 07:15:10 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED2A83F719;
 Wed,  1 May 2019 07:15:08 -0700 (PDT)
Date: Wed, 1 May 2019 15:15:06 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v2 0/5] arm64: SPE ACPI enablement
Message-ID: <20190501141506.GC27353@fuggles.cambridge.arm.com>
References: <20190426220309.55654-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190426220309.55654-1-jeremy.linton@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_071512_946153_9DAC4581 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeremy,

On Fri, Apr 26, 2019 at 05:03:04PM -0500, Jeremy Linton wrote:
> This patch series enables the Arm Statistical Profiling
> Extension (SPE) on ACPI platforms.
> 
> This is possible because ACPI 6.3 uses a previously
> reserved field in the MADT to store the SPE interrupt
> number, similarly to how the normal PMU is described.
> If a consistent valid interrupt exists across all the
> cores in the system, a platform device is registered.
> That then triggers the SPE module, which runs as normal.
> 
> This version also adds the ability to parse the PPTT for
> IDENTICAL cores. We then use this to sanity check the
> single SPE device we create. This creates a bit of a
> problem with respect to the specification though. The
> specification says that its legal for multiple tree's
> to exist in the PPTT. We handle this fine, but what
> happens in the case of multiple tree's is that the lack
> of a common node with IDENTICAL set forces us to assume
> that there are multiple non IDENTICAL cores in the
> machine.

This looks good to me. Please can you respin, addressing Raphael's
outstanding concerns on the third patch?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
