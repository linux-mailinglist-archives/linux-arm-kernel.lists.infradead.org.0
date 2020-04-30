Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0A01C03FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfjnTZOtNNBJnQEZdiScQE9MAk429UKqz+mL+yiMPck=; b=XmUhNyOm0jCMp+
	9j0+VI/Kwf1sDAHCT/Y2FsQNRR/JsSVuWyOfOdDolBw3ceU6FED26MkRCunZhwv8n89tcR4lSJJoH
	ORJRhGtXcZwFdGBqrKV+pk/TPyQ0Ie7x1vPNzHpZjfFtcePHE79rmcOME3Sn91ruy2i5Hv0+SgycV
	uNFHVGLzdSTpsQNpIpBoP/2lTUjQxtqlXvpFVvy78X4q7tkqLUUn5zUEqBBapy3626pS272FMqUNi
	s/m2PGj+MxtyaxRFa34fPYYTwpFXpP+apc7jEG8e0QkkHscplme4vrE7RKWEhqrBB3YOFprhyQ9rV
	6UXJmLkwvNTKMuNfuESw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUD9k-0000WQ-EK; Thu, 30 Apr 2020 17:39:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUD9U-0000VA-OO
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:39:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E68A101E;
 Thu, 30 Apr 2020 10:39:10 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2CBB23F73D;
 Thu, 30 Apr 2020 10:39:09 -0700 (PDT)
Date: Thu, 30 Apr 2020 18:39:06 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2] arm64: vdso: Add -fasynchronous-unwind-tables to cflags
Message-ID: <20200430173906.GM2717@gaia>
References: <20200429151050.31604-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429151050.31604-1-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_103912_835482_D9BF027F 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: tamas.zsoldos@arm.com, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 04:10:50PM +0100, Vincenzo Frascino wrote:
> On arm64 linux gcc uses -fasynchronous-unwind-tables -funwind-tables
> by default since gcc-8, so now the de facto platform ABI is to allow
> unwinding from async signal handlers.
> 
> However on bare metal targets (aarch64-none-elf), and on old gcc,
> async and sync unwind tables are not enabled by default to avoid
> runtime memory costs.
> 
> This means if linux is built with a baremetal toolchain the vdso.so
> may not have unwind tables which breaks the gcc platform ABI guarantee
> in userspace.
> 
> Add -fasynchronous-unwind-tables explicitly to the vgettimeofday.o
> cflags to address the ABI change.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Reported-by: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Queued for 5.7. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
