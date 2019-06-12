Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61C942D8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Azb+dgQyMvzM59OOF2wxfT3SQYhdzd2I/FeqoMuAYHs=; b=CSifTBTimrCFDW
	BCZZK8Ib0eNJ5MDb6cmL/4GsjaMTSSrMjpyqB0+YTG7X0XFvtDcvgLJmKLguOOfVGxQFScqc/zsqp
	ZMcoxOFcm79zPF7T+ZLI0ygp/u9zLpM+m5unwyY0rSbFQNT7CfuO2DvIjlSWSykC++2+fP8Ef52+h
	UgLx5V20LCaq2OwaGk3rR2sBQMRomPNeIM3PbxcGA7af9bkkyc56bx9+KTcGRwbL+GeTn3uNN+Rh8
	eJkaPceNAbWQlrO0iItCSkn7lxz5PUAKQKR+L9QEGbUtgC6zzHG1MaLA7Liiyy++Ah1t2mNaCZSjQ
	DjnQRpI0vHpBXqrRhEpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb75W-00023P-VJ; Wed, 12 Jun 2019 17:31:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb73W-0007Qr-Ib
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:29:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7801428;
 Wed, 12 Jun 2019 10:29:00 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E5FA3F246;
 Wed, 12 Jun 2019 10:28:59 -0700 (PDT)
Date: Wed, 12 Jun 2019 18:28:53 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
Message-ID: <20190612172853.GA27039@fuggles.cambridge.arm.com>
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102902_755373_35901096 
X-CRM114-Status: GOOD (  14.07  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Julien Grall <julien.grall@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 05:00:32PM +0100, Dave Martin wrote:
> The in-memory representation of SVE and FPSIMD registers is
> different: the FPSIMD V-registers are stored as single 128-bit
> host-endian values, whereas SVE registers are stored in an
> endianness-invariant byte order.
> 
> This means that the two representations differ when running on a
> big-endian host.  But we blindly copy data from one representation
> to another when converting between the two, resulting in the
> register contents being unintentionally byteswapped in certain
> situations.  Currently this can be triggered by the first SVE
> instruction after a syscall, for example (though the potential
> trigger points may vary in future).
> 
> So, fix the conversion functions fpsimd_to_sve(), sve_to_fpsimd()
> and sve_sync_from_fpsimd_zeropad() to swab where appropriate.
> 
> There is no common swahl128() or swab128() that we could use here.
> Maybe it would be worth making this generic, but for now add a
> simple local hack.
> 
> Since the byte order differences are exposed in ABI, also clarify
> the docuentation.
> 
> Fixes: bc0ee4760364 ("arm64/sve: Core task context handling")
> Fixes: 8cd969d28fd2 ("arm64/sve: Signal handling support")
> Fixes: 43d4da2c45b2 ("arm64/sve: ptrace and ELF coredump support")
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Thanks, Dave. I've picked this one up and pushed it out to our fixes branch
for 5.2. I assume Catalin will take the other two for 5.3. It's probably
worth proposing some generic 128-bit swab functions too, in case there's any
interest (in which case we could drop our local implementation later on).

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
