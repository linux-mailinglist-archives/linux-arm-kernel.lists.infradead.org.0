Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A2019C001
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOSag4uTQIp/X6any3Ds5/9i4sqrbzuhKVQT+KKau8I=; b=mmcOHC4djWBPEc
	jLEDnExpJz+zjLzn6y09RUjUO0ocJqG6AR1PiyKTM1b8jH4/DiX28Rk0Dehy4EPG48B+uvUlxxgQW
	jDKoeI/ldRhV6OAVNOYYoBQHf+HhI66nBcp2gtLMueKNZo5+kml5PM1GswAKNECW7w62be92tkEth
	8MqIEs1YsNkz0bmhY0Spk7Sx5AlYhIpmB1xFXfF4L6z4p/lBE6kfxt4BgoucS1ylkQ8k7rS0DMiLX
	ireaf6oiFwDNho0IBhkzSR9JWZ2EbhONmybUR2okdK8zV1K6AFn3J8nhkbBsbC/v8zN8IZZgBlDck
	wCagr2gCAkMDTUL7NHnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxor-0002SJ-3N; Thu, 02 Apr 2020 11:15:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxoT-0000h5-9e
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:15:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CF4A630E;
 Thu,  2 Apr 2020 04:15:05 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026E63F71E;
 Thu,  2 Apr 2020 04:15:04 -0700 (PDT)
Date: Thu, 2 Apr 2020 12:15:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Message-ID: <20200402111502.GC21087@mbp>
References: <20200329141258.31172-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329141258.31172-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_041509_500225_3BD61B07 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 04:12:58PM +0200, Ard Biesheuvel wrote:
> When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
> different permissions (r-x for .text, r-- for .rodata, rw- for .data,
> etc) are rounded up to 2 MiB so they can be mapped more efficiently.
> In particular, it permits the segments to be mapped using level 2
> block entries when using 4k pages, which is expected to result in less
> TLB pressure.
> 
> However, the mappings for the bulk of the kernel will use level 2
> entries anyway, and the misaligned fringes are organized such that they
> can take advantage of the contiguous bit, and use far fewer level 3
> entries than would be needed otherwise.
> 
> This makes the value of this feature dubious at best, and since it is not
> enabled in defconfig or in the distro configs, it does not appear to be
> in wide use either. So let's just remove it.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Happy to take this patch via the arm64 tree for 5.7 (no new
functionality), unless you want it to go with your other relocation
login in the EFI stub patches.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
