Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD76E9B7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWOuRG5GRg5j41jaE4/4Fc9YQIXWeRXE7f7VUkTmgrU=; b=LCUb3JqXZmnVhb
	qwQhlA0GB8VY+hGS9iJ9bAFrBvbBAqpdoVsTihIpn/i2v5OWNLQMXxbGxuDgdEaqb1hayQ0Av47pj
	xJYjZ06ZZlV1Tr/v2hQOpiqIhDiOtJ6UiG6ITQgA1nuCeXRENfCgTTHW7YsPgaqBar/SbZMdU0DgM
	U0KdSEBokWqSWM8iAMeCleFGJgENaZTW13MShLWrDEqWu5pbQmNdJjOZza9m0THSEI1GcgJ5ZythS
	QEKWLHN3xe6HWFtX1Gyn+pK3CqultfQ7jujiBEzYUKehdYCBlw9av4sqOOZ+itsTowDoPu2gGz8h4
	DnYAYkJjC49p5dCMoc0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPn3k-00012d-Px; Wed, 30 Oct 2019 12:26:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPn3c-00011Y-6b
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:26:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 43D0F1FB;
 Wed, 30 Oct 2019 05:26:35 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 914CA3F71F; Wed, 30 Oct 2019 05:26:34 -0700 (PDT)
Date: Wed, 30 Oct 2019 12:26:32 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191030122631.GC10294@arrakis.emea.arm.com>
References: <20191024214207.20588-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024214207.20588-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_052636_297497_ABF9B0F0 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <Suzuki.Poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
> This series adds support for E0PD. We enable E0PD unconditionally where
> present on systems where all the CPUs in the system support E0PD and
> change to not enabling KPTI by default on systems where we have enabled
> E0PD. It also converts the runtime checks for use of non-global mappings
> into a variable.
> 
> v4: Use a variable to store our decision about using non-global mappings
>     rather than rechecking constantly at runtime. I've added this as a
>     separate patch mainly for bisection.
> v3: Make E0PD a system wide feature.
> 
> Mark Brown (4):
>   arm64: Add initial support for E0PD
>   arm64: Factor out checks for KASLR in KPTI code into separate function
>   arm64: Don't use KPTI where we have E0PD
>   arm64: Use a variable to store non-global mappings decision

The patches look fine to me and I'm planning to queue them (with the
additional changes I mentioned on patch 4, I can do them locally).

I can still add acks/reviews in the next couple of days but I'd like to
push them into -next fairly soon to get some exposure.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
