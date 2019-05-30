Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBC92FA81
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 12:47:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4hVtbl5TtsCUe+1hxfkLNyvDuFjLm47QEZaT0nJlZY4=; b=PsP+aETlER5i1cXlQreuybGd4
	BejeNya8DrpvfRNv0jAckBjm05QUtVnpU70vySXGUhyAOflnOHqa85XvSStet3xkwgCsLS7rc3Sdn
	/q5AnnmZx825gsIWmRCNY+KMbOyaaysb/HC/MKtTy0oO7EAfAm6QUyT7LSrFIjG4LfN55zkkeV/75
	HpPSpuzz+o4++mcc+JUhJKDq8CR2gqFKHJDOlruP5BDCEQdDvhEs4ADDhkRb2dourrSs7CMl7qgzs
	+sVV/kGOhjJYNWNIPd3lkB2zsrNSEEk9V2QUxvqQ3ywya/miopZncyiOVIJa2m4XeRthB49jbZDqb
	O8o33/pig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIbC-00086j-Ji; Thu, 30 May 2019 10:47:54 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIb6-000860-8b
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 10:47:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28A35374;
 Thu, 30 May 2019 03:47:46 -0700 (PDT)
Received: from [192.168.0.21] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 CF1AB3F5AF; Thu, 30 May 2019 03:47:43 -0700 (PDT)
Subject: Re: [RFC v2 1/7] arm64: cpufeature: add pointer auth meta-capabilities
To: kristina.martsenko@arm.com, linux-arm-kernel@lists.infradead.org
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-2-kristina.martsenko@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <631b3ef0-7edc-dbcb-199a-809bb8ef68d9@arm.com>
Date: Thu, 30 May 2019 11:50:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20190529190332.29753-2-kristina.martsenko@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_034748_310989_144EDC2A 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, keescook@chromium.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, ramana.radhakrishnan@arm.com,
 amit.kachhap@arm.com, dave.martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kristina,

On 05/29/2019 08:03 PM, Kristina Martsenko wrote:
> To enable pointer auth for the kernel, we're going to need to check for
> the presence of address auth and generic auth using alternative_if. We
> currently have two cpucaps for each, but alternative_if needs to check a
> single cpucap. So define meta-capabilities that are present when either
> of the current two capabilities is present.
> 
> Leave the existing four cpucaps in place, as they are still needed to
> check for mismatched systems where one CPU has the architected algorithm
> but another has the IMP DEF algorithm.
> 
> Note, the meta-capabilities were present before but were removed in
> commits a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
> CPU caps from 6 to 4") and 1e013d06120c ("arm64: cpufeature: Rework ptr
> auth hwcaps using multi_entry_cap_matches"), as they were not needed
> then. Note, unlike before, the current patch checks the cpucap values
> directly, instead of reading the CPU ID register value.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

This patch as such looks fine to me. However, do we really make use of
the individual caps for ARCH/IMPDEF support ? Do we plan to do something
about them in the future ? If not we could as well remove them and have
the generic ones in place. That may be done in a separate series as a
cleanup.

Either way, for this patch:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
