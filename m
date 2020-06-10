Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5591F530A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 13:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JH32ICmDXf4uiu7PDAEldb6d3c1uzueLfuFNeoXDQcE=; b=ggUN0UdigEyTKt
	0kLyQuBOzUAi24/Oj7wZTJ9WJU9wCNBsdk1DYPFCkTRE2XSb4x71HkZvqopbVYQ2w+mTI5gkcoGVc
	G4xmT5YlwZteVb8+z+pccS+XGEy7geHIA5G3oZCAPmjJ5thOD/hmkGIvYU+2OpQ1IRtROdVI/sQ7D
	v+4Js6CpoT+uECzF0PB6o18UdCiWZhe9IcGoDLRulJMPJ7b7PPQnADn5P3gBJsnjj+OFftCr9R+pl
	pda4mOpbSMnOO0RCCDI3koC8b+t2YE+bPkrWcvBLllaIcxQ/JmWIQ8tH2jGZFRoO++NXDxWVf85g7
	3yHvk3CHvvVvvkevlzYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiynf-0000VQ-F3; Wed, 10 Jun 2020 11:21:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiynF-0000K8-Of
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 11:21:19 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BCA02078C;
 Wed, 10 Jun 2020 11:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591788077;
 bh=9fKKwsQG+ae0h8ivgqvpkqBV3pK8Ukj9focnXx4zajc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bth/F3nXjeNt4SgkC/ZRFpXEHsVWDZed8ygE5hwx80F1Nw1Dyr/CkiNtfJcmvzfg5
 gqaR8OYTFFoHDZTTVrQgL8hQWKCDC9ZwsZu81O4mDBIOfLp42uNPuxmsI31DEA/fK+
 cawp48O2k2BCXQ8YOez5JPGYtsYOi+eTe0zUSUaU=
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Date: Wed, 10 Jun 2020 12:21:09 +0100
Message-Id: <159178553820.37708.12308914886514191769.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608205711.109418-1-ndesaulniers@google.com>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_042117_827871_13B34300 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Will Deacon <will@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 13:57:08 -0700, Nick Desaulniers wrote:
> Allow the compat vdso (32b) to be compiled as either THUMB2 (default) or
> ARM.
> 
> For THUMB2, the register r7 is reserved for the frame pointer, but
> code in arch/arm64/include/asm/vdso/compat_gettimeofday.h
> uses r7. Explicitly set -fomit-frame-pointer, since unwinding through
> interworked THUMB2 and ARM is unreliable anyways. See also how
> CONFIG_UNWINDER_FRAME_POINTER cannot be selected for
> CONFIG_THUMB2_KERNEL for ARCH=arm.
> 
> [...]

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
      https://git.kernel.org/arm64/c/625412c210fb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
