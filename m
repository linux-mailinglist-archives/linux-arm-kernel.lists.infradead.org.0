Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA911D7F77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mft3+1wX6XubVfm0sGAMjoXzJ8o9mm3t3c6gClXcJfU=; b=CJBLttyb0UW3yj
	lCGOlMd+92WnmsIwcAoXjF5wsthiUz9M0nf6ehfefPiFtg40qd3PoVhiwMkkpzNFqrkl8SdKqdlt9
	CMZsuhC7aLHRMSutjnLBRQXGX7oxekPegcXEzX3LtNy8SOUBKC/8K366Ks2FAF9r+CtcU3G5Pm6aY
	75PMm8RPIOwGLGscb8NmbcuJYtwr1sKuYdCBGeK/9r3gv1cQZL+IdFJtqJQm4Kd+XvsFzADEWfQLA
	bWKospbxre8No6ZXKC6GN2ZD5RoP+9Z8zLRc02ZYrhgfVcCQ+X+wuwhN9NaZtTAOWG0gxdsnk5PUF
	AZQquY2z6M30jv2L790A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj7k-00074b-Cf; Mon, 18 May 2020 17:00:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj7U-000688-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:00:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6448720758;
 Mon, 18 May 2020 17:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589821203;
 bh=mvonww6L/AfIRw6SI8Ticp2hXIALdNie5RN5GGRhRME=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RaTRI2X9A6KwyOUNQW5ZXbhUx597usgy2ILhyxGX2NhBGrMQbFqVkfewzpJKw0x+3
 /bvxuuhr5qJ6zxjD13ohnDeZRBS+gH0N+q+49a06kA80KNmWzleuKeE0rjJMo22sx3
 8/EzGDhfGy1nl9HboDowvKOTrlik9bzi+OtM910E=
Date: Mon, 18 May 2020 17:59:59 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpufeature: Drop open encodings while
 extracting parange
Message-ID: <20200518165958.GS32394@willie-the-truck>
References: <1589360614-1164-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589360614-1164-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_100004_217042_29DB752E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 02:33:34PM +0530, Anshuman Khandual wrote:
> Currently there are multiple instances of parange feature width mask open
> encodings while fetching it's value. Even the width mask value (0x7) itself
> is not accurate. It should be (0xf) per ID_AA64MMFR0_EL1.PARange[3:0] as in
> ARM ARM (0487F.a). Replace them with cpuid_feature_extract_unsigned_field()
> which can extract given standard feature (4 bits width i.e 0xf mask) field.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: James Morse <james.morse@arm.com>
> Cc: kvmarm@lists.cs.columbia.edu
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
> Changes in V2:
> 
> - Used cpuid_feature_extract_unsigned_field() per Mark
> 
> Changes in V1: (https://patchwork.kernel.org/patch/11541913/)
> 
>  arch/arm64/kernel/cpufeature.c |  3 ++-
>  arch/arm64/kvm/reset.c         | 11 ++++++++---
>  2 files changed, 10 insertions(+), 4 deletions(-)

Acked-by: Will Deacon <will@kernel.org>

I'm assuming Marc will take this, but let me know if it should go via arm64
instead (where we have a bunch of other cpufeature stuff queued).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
