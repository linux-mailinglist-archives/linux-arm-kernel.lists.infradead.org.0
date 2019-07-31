Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4081E7CA03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8iUQBmrXRb4DFn08MyXaCt3IjkK2+6M71lAdxqko/w=; b=lijScyXA+LJjaE
	OmvMrsMxhjr/QVxqCZiWDaaDydtyQuhlsSQMQ12Oj1DD375qJyuMGJzj0/aa1MWrKsEOZH5U1gcI4
	LGht34ugSFO0zWwCJ6yRO26xGejaqZGgdqswt/acthOiGNzHoeuOr4l4rX9631LmcfIiicPA0AB7w
	THWmRFPTMQ2qStxyIDsu/Ijaohzta+lcnXkU5QMm2p0soEtadkg5uc3hqpXj5EuOFg1CZjhTlIgEf
	Hh3115qEx3qs71M7sS4h5w/fcT58O3SM6GGofbd/qM8S2VcGbPrgr05AeO1PqRBvcnEra9V7BjO58
	Jqm7lIbOc32/s+KD4KaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hss8w-0002cp-LD; Wed, 31 Jul 2019 17:12:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hss8p-0002cU-G0
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:11:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDBD2337;
 Wed, 31 Jul 2019 10:11:54 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 435BF3F71F; Wed, 31 Jul 2019 10:11:54 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:11:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: cpufeature: Fix feature comparison for
 CTR_EL0.{CWG,ERG}
Message-ID: <20190731171151.GE17773@arrakis.emea.arm.com>
References: <20190730144020.3518-1-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730144020.3518-1-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_101155_580066_83D881FF 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org,
 Suzuki Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:40:20PM +0100, Will Deacon wrote:
> If CTR_EL0.{CWG,ERG} are 0b0000 then they must be interpreted to have
> their architecturally maximum values, which defeats the use of
> FTR_HIGHER_SAFE when sanitising CPU ID registers on heterogeneous
> machines.
> 
> Introduce FTR_HIGHER_OR_ZERO_SAFE so that these fields effectively
> saturate at zero.
> 
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Fixes: 3c739b571084 ("arm64: Keep track of CPU feature registers")
> Signed-off-by: Will Deacon <will@kernel.org>

Queued for 5.3-rc3 (with a cc stable tag). Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
