Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA06F766A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 15:31:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Byk/Ya90PA1JrjUVhKSmiQsi1lyA96X1XwY5NHginrY=; b=RKxy4u9MY3ml9IB9UiK7jZRJw
	gAEGDQ0d7jYy8ip3Z8Xrvv5BxOskJxnkrsZU/UUoPItju54OqRQYeGyMh6Wzus8B6ltxME2yc93Cd
	pTSw0zgIO2yawaw6fWpE8peG5aM3xSgQoAsJM1ZO7MvYkC38jSXrT+s5w3uU7/9NdjG2PyjDaqAaY
	Cju3yBjZLnaktDAABzBR9yvyvkwKZ0anPgUEUxfGitPJFxsv7MQNQ/WeyH+r3whnrczEsmSf2sUMX
	mCQ9tMKubZa9VSjkNDNvHRuFLYX5i8bQv7O2WNDDU1BOzLTb1lAN50YV9WeYpgFlLdyLcTAHOsPZX
	GOJbCHDQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAjF-0004bo-Mw; Mon, 11 Nov 2019 14:31:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAiy-0004TY-54
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 14:31:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6AD7131B;
 Mon, 11 Nov 2019 06:31:23 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D3BA23F52E;
 Mon, 11 Nov 2019 06:31:22 -0800 (PST)
Subject: Re: [PATCH v8 2/4] arm64: Factor out checks for KASLR in KPTI code
 into separate function
To: Mark Brown <broonie@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20191108170116.32105-1-broonie@kernel.org>
 <20191108170116.32105-3-broonie@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <cf44e71f-4d8b-7f9e-501c-f73e5b9f25b6@arm.com>
Date: Mon, 11 Nov 2019 14:31:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191108170116.32105-3-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063124_247298_84C69E6E 
X-CRM114-Status: GOOD (  10.68  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/11/2019 17:01, Mark Brown wrote:
> In preparation for integrating E0PD support with KASLR factor out the
> checks for interaction between KASLR and KPTI done in boot context into
> a new function kaslr_requires_kpti(), in the process clarifying the
> distinction between what we do in boot context and what we do at
> runtime.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
