Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E05C1A9ADE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0A3FxGRy476MlqWM8CttHPRR35PWt+lftiQsshzuBjo=; b=iMllTOUgiz+UYUA1MBp4oE2Go
	TlRNd/apWdVoWo1RV2QjSAzLHp7ev+D14fLcLp7Casbu5ShXEtQkoPAFiJgwJavqdvw4M9ljlWq/3
	lSxyFvvNt/zDRHMfoxfz88vgtoTdlveCRm0t+Tzls9MlF7aLACS9ej/47CC0QGEqAClOr4DdUtaR0
	VWfehSlnDP965Ga82z3JJWAi8pwGlxjCtSha/Srku46oI/j31XHBCJyibmitc37Y4kifcavunQGf2
	5odI01nX9KP4efqtXIiUgt0P00iQf9Si3GcZQhjsQ43JrAUGOVqij9KYAXnI3p+Sr28jjxAHvh/UP
	vidmLFF/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfRY-00065z-Od; Wed, 15 Apr 2020 10:38:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfRR-00065K-La
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:38:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E636A1063;
 Wed, 15 Apr 2020 03:38:48 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C788E3F68F;
 Wed, 15 Apr 2020 03:38:46 -0700 (PDT)
Subject: Re: [PATCH 6/8] arm64: cpufeature: Relax AArch32 system checks if EL1
 is 64-bit only
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-7-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <b648691c-e9cd-f0eb-2ed2-50451a4bceb8@arm.com>
Date: Wed, 15 Apr 2020 11:43:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414213114.2378-7-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_033849_749401_D35CBF35 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/14/2020 10:31 PM, Will Deacon wrote:
> If AArch32 is not supported at EL1, the AArch32 feature register fields
> no longer advertise support for some system features:
> 
>    * ISAR4.SMC
>    * PFR1.{Virt_frac, Sec_frac, Virtualization, Security, ProgMod}
> 
> In which case, we don't need to emit "SANITY CHECK" failures for all of
> them.
> 
> Add logic to relax the strictness of individual feature register fields
> at runtime and use this for the fields above if 32-bit EL1 is not
> supported.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
