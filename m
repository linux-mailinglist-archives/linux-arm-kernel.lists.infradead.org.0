Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88B7140950
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 12:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5nhJ2GCP1B3HshMLvWrKjEyM2bQl9j3OO23ppHEWs+0=; b=eD59mydvFS/oap
	rokMRjI6JqntIU8wIGmBI2AJUlTHcZtAX2EnL0C32uCr8YRG949B2ASYqQJO+b600lwtC0bAuqFkw
	BA/3IwwhJ4F58VIB/HgNZGprsNl0/IhNUHsywHc+XTZ95Y2GMJmv9UV+gvFjDn4NkLmG4rQ0sQdId
	qrsh1laW19qOvcZQI9Oz9jPKmBiIR9nGIkzcw8TogIyta9z/WX0Zt+IOhBz/X8cWK2wJIZCWkZhbN
	H1Dot/4IvePIIseIKtw7f1WkNH0BaQFNd4kOy5fjdmnGK5bobn5eJ/MN8Ern6zKC+Ir8n78SPypWt
	sgvY0tCc1Sb26x+fJ3Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQCB-0002NC-Tk; Fri, 17 Jan 2020 11:53:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQBy-0002MZ-KF
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 11:53:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F79011D4;
 Fri, 17 Jan 2020 03:53:34 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6A5DB3F6C4; Fri, 17 Jan 2020 03:53:32 -0800 (PST)
Date: Fri, 17 Jan 2020 11:53:30 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v3 16/16] lkdtm: arm64: test kernel pointer authentication
Message-ID: <20200117115330.GH26090@arrakis.emea.arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
 <1576486038-9899-17-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576486038-9899-17-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_035335_175429_864F4B6D 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Mark Brown <Mark.Brown@arm.com>, Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 02:17:18PM +0530, Amit Daniel Kachhap wrote:
> This test is specific for arm64. When in-kernel Pointer Authentication
> config is enabled, the return address stored in the stack is signed.
> This feature helps in ROP kind of attack. If any parameters used to
> generate the pac (<key, sp, lr>) is modified then this will fail in
> the authentication stage and will lead to abort.
> 
> This test changes the input parameter APIA kernel keys to cause abort.
> The pac computed from the new key can be same as last due to hash
> collision so this is retried for few times as there is no reliable way
> to compare the pacs. Even though this test may fail even after retries
> but this may cause authentication failure at a later stage in earlier
> function returns.
> 
> This test can be invoked as,
> echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT
> 
> or as below if inserted as a module,
> insmod lkdtm.ko cpoint_name=DIRECT cpoint_type=CORRUPT_PAC cpoint_count=1
> 
> [   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
> [   13.118298] lkdtm: Clearing PAC from the return address
> [   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
> [   13.118626] Mem abort info:
> [   13.118666]   ESR = 0x86000004
> [   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
> [   13.118966]   SET = 0, FnV = 0
> [   13.119117]   EA = 0, S1PTW = 0
> 
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
