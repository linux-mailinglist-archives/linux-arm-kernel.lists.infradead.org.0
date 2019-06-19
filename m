Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803504B69F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKpWgB8aD35v8eibgxOK/LsAoub5HWRC+oxs9EjfPwo=; b=PVROynelv3rPvg
	QzoTlI08JShPgcHgxhohFkOEMHE8QbIysKWVM/nHoaV1oyV8InAOFCbxbmWnw92gEdzFCrxAbWURS
	6X9u+e8cpHEa72OYcbr79iHjnreL6n/e7D8RS4O/EGbpkbpLNdPaL74srsDqmWcBC7Kvzlwk0ziAt
	58mu2AU3Nnr3huU1xMBrFTXvEujtziKoOfcobrm5EonKPTfWGzPLx/vFWC35993SQnnsT6/RPqtt0
	PEYj2diZ4Y2u7/hi/ZsKfpQLmqBd6QsMMZ4wARImqHMipW/Hf/vqJQk12ac4IPF302i/IbnRutUoD
	uzs2ocjojswy8wJkqXDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYNe-00057j-KH; Wed, 19 Jun 2019 11:03:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYNV-000572-NB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:03:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C6C9360;
 Wed, 19 Jun 2019 04:03:43 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3BA003F738;
 Wed, 19 Jun 2019 04:05:28 -0700 (PDT)
Subject: Re: [PATCH v4.4 00/45] V4.4 backport of arm64 Spectre patches
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <7329e6d9-140d-59bc-c835-5f6300cf60e0@arm.com>
 <20190618102122.z52oi37pp3wigqxx@vireshk-i7>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <ed7d6125-e8ec-c3a1-06c7-2a2fa2c92d32@arm.com>
Date: Wed, 19 Jun 2019 12:03:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190618102122.z52oi37pp3wigqxx@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_040345_803009_197C560C 
X-CRM114-Status: GOOD (  17.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On 18/06/2019 11:21, Viresh Kumar wrote:
> On 17-06-19, 17:03, Julien Thierry wrote:
>> On 14/06/2019 04:07, Viresh Kumar wrote:

[...]

> I have updated the stable/v4.4.y/spectre branch with all the changes you
> suggested and pushed the earlier version to stable/v4.4.y/spectre-v1 branch.
> 
> Will it be possible for you to have a look at stable/v4.4.y/spectre branch to
> see if it is okay, so I can send the v2 version ? Don't want to spam list
> unnecessary with so many patches :)
> 

I've given a run for your new version and it looks like the BP hardening
is not taking place.

I believe the culprit is update_cpu_capabilities(), which in 4.4 tests
for capability.desc to know where to stop (and requires all valid
capabilities to have a description).

Since commit 644c2ae19 "arm64: cpufeature: Test 'matches' pointer to
find the end of the list", the restriction was lifted.
Unfortunately for you, the errata workarounds using BP hardening were
introduced after that commit and were not given a description. So they
do not get applied and also, in the current state, would prevent
following entries in the errata table from getting applied.

So either 644c2ae19 needs to be backported, or the workarounds need to
be given descriptions.

I'll let you know if I find anything else.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
