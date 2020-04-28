Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 750561BBE2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiNPs1mFzaMOqsYEJdmR2jj+R3evW/vd/40dJnXpWJM=; b=EYwpmSUJgOSAUK
	RCnTTd3ZklgaOhqTaxuMUI/r+gcBJgiOBlH0eenVuXRd2MZDP7jFXbc7Pdvy/bCVrcIJQ3+Rbli9D
	R7wBmE7j5it6TSxAAicQ4dIGvMQJWAPNGTCoAdWG2viYq7rM6ZovD1C4bBMj9j0B/ERjXW2mJ0a+u
	bhUALimexQnL4Y3bDMm3OwWzsw7X5AgT42rJnqY8SwkkHhQC0mppdRllKJUichAU2jfunDMLVTlDP
	L/1/RC8BBYffNb0VlLwCCQJxBG20ZXSmLe7bljTGwFN9HZbAb16g2RtxteGa3ognrBbWuoBEw/2p5
	q12CT/Qx3EAMxs13+KVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPgW-00015K-CL; Tue, 28 Apr 2020 12:50:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPgM-00014B-M2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:49:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81E4E206D6;
 Tue, 28 Apr 2020 12:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588078190;
 bh=YvK8cnRJ+c26bobXQgCFS/gJ7htpo/wnKiDJsMGymFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NDNAv6mLz9Y0FX9pTC93BLElvbUcF3IVvoAE5/zNve1p8J3ISm4610xLxRQutrzQ+
 dhzsb4cTw+8YDnUX8djlGR2+iBkgbIpjgxOEhwgSV2MK052QgkzLSZyqre1L/UbQuS
 w1nvPZZLkE8JoJ8UjOeOK56nNJUSoTWJTSvZXoSU=
Date: Tue, 28 Apr 2020 13:49:46 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/5] arm64: vdso: cleanups
Message-ID: <20200428124945.GC6791@willie-the-truck>
References: <20200414104252.16061-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414104252.16061-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_054950_740506_783B7965 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:42:47AM +0100, Mark Rutland wrote:
> While attempting to review an arm64 vdso patch, I noticed some of the existing
> code was somewhat baroque, making it harder than necessary to understand and
> extend. These patches attempt to improve this by making the code more
> consistent and avoiding unnecessary duplication.
> 
> The first patch in the series fixes a bug in a boot time error path. This bug
> was made obvious during the refactoring but I've moved it to the start so that
> it can be backported more easily.
> 
> The series is based on v5.7-rc1 and can be found in my arm64/vdso-cleanup
> branch [1].
> 
> Thanks,
> Mark.
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/vdso-cleanup
> 
> Mark Rutland (5):
>   arm64: vdso: don't free unallocated pages
>   arm64: vdso: remove aarch32_vdso_pages[]
>   arm64: vdso: simplify arch_vdso_type ifdeffery
>   arm64: vdso: use consistent 'abi' nomenclature
>   arm64: vdso: use consistent 'map' nomenclature

I tried to queue 2-5 but the compat vDSO fails to build for me:


arch/arm64/kernel/vdso.c:246:12: error: use of undeclared identifier 'VDSO_ABI_AARCH32'; did you mean 'VDSO_ABI_AA32'?
        vdso_info[VDSO_ABI_AARCH32].dm = &aarch32_vdso_maps[AA32_MAP_VVAR];
                  ^~~~~~~~~~~~~~~~
                  VDSO_ABI_AA32
arch/arm64/kernel/vdso.c:39:2: note: 'VDSO_ABI_AA32' declared here
        VDSO_ABI_AA32,
        ^
arch/arm64/kernel/vdso.c:247:12: error: use of undeclared identifier 'VDSO_ABI_AARCH32'; did you mean 'VDSO_ABI_AA32'?
        vdso_info[VDSO_ABI_AARCH32].cm = &aarch32_vdso_maps[AA32_MAP_VDSO];
                  ^~~~~~~~~~~~~~~~
                  VDSO_ABI_AA32
arch/arm64/kernel/vdso.c:39:2: note: 'VDSO_ABI_AA32' declared here
        VDSO_ABI_AA32,
        ^
2 errors generated.


Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
