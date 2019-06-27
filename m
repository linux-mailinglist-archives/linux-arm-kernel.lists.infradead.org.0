Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935CA5878D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:47:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwRByBCAhTj8Q8gkaeBdGqI2FfD2B/att1Vpmdh30yE=; b=r8YlNiRTwuXFXb
	li++VDuCWKsUvQG0XLdoXUx0kNjIaIoF6QAIU2VtYTFGvKJmCha3XI72ZwIshs2+hdQiwnlC1ewmr
	YlXLQ1Cfl4NYlJ1x4rwrxbOaEt18AEyXTb+O6j5B33vVg6/6IuyfwY658Yd+ZIl7Pzuw06fTHhFeT
	dVF0/orBpcjbT3nU+YAM5HV7ayKSuI83ciZrNJlQenLiPpRhYiJ7vHpv0H+NEXXZ2efeyRa4gQuSs
	Nqcq9YtlLO2BcA2bEhIyeBt/Jl9gC67lWmtgZuNPnOiic43CFoly5fNIJBhdOOEVssvJ90bdE/YRT
	kLHQ5AD8hgRawvh7eVmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXYV-0006wX-6s; Thu, 27 Jun 2019 16:47:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXYG-0006w7-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:47:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0BCD2054F;
 Thu, 27 Jun 2019 16:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561654032;
 bh=4xUGv1/o6blMAKCCJJ4W4BVLGoWulRvdcHqF1JjKY2g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDIpUHGYhjrQKfQtioIrtGLI5WLEzWVGVW1ZuPbuDNGK4TeZdUEWZB1k8gKj5At/8
 aXyF95c7d2u2o8zP78iql17oz8bmky8JtFX7D9HEkmM2+8cX7/SeNfyW71K7c05HZT
 IKQoQLGhlMOjPS1M838B5E/acmo7oduSjvbk1ls8=
Date: Thu, 27 Jun 2019 17:47:06 +0100
From: Will Deacon <will@kernel.org>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v5 0/4] arm64: SPE ACPI enablement
Message-ID: <20190627164706.rdmoze4we2dcshts@willie-the-truck>
References: <20190626213718.39423-1-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626213718.39423-1-jeremy.linton@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_094712_352010_AF2F89B8 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 04:37:14PM -0500, Jeremy Linton wrote:
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
> We also add the ability to parse the PPTT for IDENTICAL
> cores. We then use this to sanity check the single SPE
> device we create. This creates a bit of a problem with
> respect to the specification though. The specification
> says that its legal for multiple tree's to exist in the
> PPTT. We handle this fine, but what happens in the
> case of multiple tree's is that the lack of a common
> node with IDENTICAL set forces us to assume that there
> are multiple non-IDENTICAL cores in the machine.
> 
> v4->v5: Remove error returns from arm_spe_acpi_register_device()
> 	Add some review/test tags

Cheers, I've pushed this out with the acks and typo fixes.

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf

Please let me know if you spot any problems.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
