Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70C1B77A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 15:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiMiYheJ0IjuDJQhmS/MhjKdRVMmKX1tLiLhVE+EvEc=; b=d21lv0GPlPZz29
	BthDSMl0E0GlCFvm0re0UDxtln1BWdANvCwKt3jcb5q6+qIOSFvCDqeSDNrpj8S+FBORH8mJhZXKn
	rZV+jNQlqHi4c3e9v4pOYjUmzO1hcgnsS3k3yt+T746dfebKnUjSBCylalkybtjP1xzYikstMI6er
	WFsSy6pX8Ycp5Pt+p3/4vRWGbq/wRLEPaMaZArQtiCKRKHAEoOnbZ/zahKgKxq1jBWvoSJ9Kz6G1E
	DQTGKBIuwcWqmUVGkPj63M4fQRVTdr8E3Zb+LJUoa+ivcEYmxL4yitCNT4VkNp4tvu0k60yOasODl
	HM1CyFvTJyeKK5Wqx4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyq7-0006XO-A7; Fri, 24 Apr 2020 13:57:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRypu-0006WM-LC
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 13:57:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EA7931B;
 Fri, 24 Apr 2020 06:57:44 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 67B803F68F;
 Fri, 24 Apr 2020 06:57:42 -0700 (PDT)
Date: Fri, 24 Apr 2020 14:57:36 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 21/23] arm64: mte: Check the DT memory nodes for MTE
 support
Message-ID: <20200424135735.GB5551@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-22-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-22-catalin.marinas@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_065746_744455_064EAAB8 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Rob Herring <Rob.Herring@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 Mark Rutland <mark.rutland@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:26:01PM +0100, Catalin Marinas wrote:
> Even if the ID_AA64PFR1_EL1 register advertises the presence of MTE, it
> is not guaranteed that the memory system on the SoC supports the
> feature. In the absence of system-wide MTE support, the behaviour is
> undefined and the kernel should not enable the MTE memory type in
> MAIR_EL1.
> 
> For FDT, add an 'arm,armv8.5-memtag' property to the /memory nodes and
> check for its presence during MTE probing. For example:
> 
> 	memory@80000000 {
> 		device_type = "memory";
> 		arm,armv8.5-memtag;
> 		reg = <0x00000000 0x80000000 0 0x80000000>,
> 		      <0x00000008 0x80000000 0 0x80000000>;
> 	};
> 
> If the /memory nodes are not present in DT or if at least one node does
> not support MTE, the feature will be disabled. On EFI systems, it is
> assumed that the memory description matches the EFI memory map (if not,
> it is considered a firmware bug).
> 
> MTE is not currently supported on ACPI systems.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Rob Herring <Rob.Herring@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <Suzuki.Poulose@arm.com>

This patch turns out to be incomplete. While it does not expose the
HWCAP2_MTE to user when the above DT property is not present, it still
allows user access to the ID_AA64PFR1_EL1.MTE field (via MRS emulations)
since it is marked as visible.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
