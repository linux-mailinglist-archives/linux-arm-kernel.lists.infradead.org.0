Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE62E1BC1DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWZHCFt88OsJ3/ApKRRn40iCuGI1FmoeL3s7PmUUxzQ=; b=cnmB+0TBx92Q8+
	pzOuyOEMGeaj+s4Pofv8kL7qHNMHk8zEBFEj8P44+o5MPZdKtnyX5ejl4Zr4w4u2to1grIT1Ok/rd
	9Rx0Er8rIoqcEROQ86HA1Xb+kcSwM0dlb+0s+5UUHg09s34j9bxOSYoTupTFShhRXnVaQXx+Nz+gx
	indFtInjqXGGUrEU594GE3S7zCYrG6Oy7jF8Rq0XD+xfQsOOVsNY3L+rhxrdXfJNO1+naEkZjo2ie
	u7nJIuZuNXGi42X36v6puqM+trmqf4l+K9AxDHJ7Mt6SFKqj84bcNDgl4FAy9yKcOVB1h9nYprl1n
	BR0lYX8nd3eTArYy2vCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRZn-0002wT-3l; Tue, 28 Apr 2020 14:51:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYS-0008Jg-4B
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:49 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6D003206B9;
 Tue, 28 Apr 2020 14:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085387;
 bh=4KDjqumCNSmoKwq8ZzqFU3gaLe+KW5a5uGrz99E7SQI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=S5Hq96gmheOtzS0VdFgsx8sPSbTZoXSEm3JMqaKQ5GviCAe6YBEMuxm7pZTx8ExOG
 mkH4xwlPMY0Ex74j3O4+bBcgb5lE4tN20gCUe+19/zBzGYJM16KEaahOBFKbENIlOO
 mBis4vaF1ixjP2zgf3FYgJSqmsbZ/bK6mW0/ATSo=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: drop GZFLAGS definition and export
Date: Tue, 28 Apr 2020 15:49:32 +0100
Message-Id: <158807917326.209680.7846199499814372799.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415123049.25504-1-ardb@kernel.org>
References: <20200415123049.25504-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074948_203144_3316ACCD 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, james.morse@arm.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 14:30:49 +0200, Ard Biesheuvel wrote:
> Drop the definition and export of GZFLAGS, which was never referenced
> on arm64, and whose last recorded use in the ARM port (on which arm64
> was based original) was removed by patch
> 
>   commit 5e89d379edb5ae08b57f39dd8d91697275245cbf [*]
>   Author: Russell King <rmk@flint.arm.linux.org.uk>
>   Date:   Wed Oct 16 14:32:17 2002 +0100
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: drop GZFLAGS definition and export
      https://git.kernel.org/arm64/c/4cf234943dcf

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
