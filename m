Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F15C51F6900
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X91gzdd6bArurAop4GL9T6ySKRhClVw72oIprIuAO4Q=; b=sGAKiyQm/2q4oU
	QI/iM15dTusebirUebGBphaGHf9tlTMjXLUa1FWT6sQ6QkgKfFvFf7jFoUh9/EwGdLeCnHk8ZzysY
	YUgpMLFir0EDpF5mHHxr3KFFVZQjpVZiBd6YccmkpPfSN270eHBASohuTmg4tbOZNmaeGgEnuEkY2
	RwjFb25/shzisorqt4kLGh+tjBOOC7F7cWdTC1qV87WOGWUC4HJ1nhazgnXWNDHozpMhnf0N2LBqa
	r7YvNARX40kxrXXppA+bwmznGwh+t5/9YGthfsgVOBwTFl6xLG0O+vJnt7ciAtQ9nAucguWA6krwu
	Qfv2xNyGU0o7mGCvgNYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNAs-00029z-9V; Thu, 11 Jun 2020 13:23:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNAk-00029T-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:23:12 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03E2A2078D;
 Thu, 11 Jun 2020 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591881790;
 bh=LAJXhRTEB1Us6Aye9CM4nnfZsOkoudtTbxMAY/nl4GY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v/ZmVbsr5vpYYIZj9pMlRmWi/7Y8MQeRBn1pwTOZwBn70LSAEq5W38ePtgZmLaUXU
 ZGQ2d5vrArRRNxW/FOdXPBudcn2yretqY6ahemQkkRRCYEAgZwfjMlQcimutpcgIz1
 /qBX+oh2K9Cw8jLaP19xv0kc7rOrkZ/V617LqKrs=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: warn on incorrect placement of the kernel by
 the bootloader
Date: Thu, 11 Jun 2020 14:23:05 +0100
Message-Id: <159188119408.197277.6500663041357704124.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200611124330.252163-1-ardb@kernel.org>
References: <20200611124330.252163-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_062310_703841_90B2767E 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, jonathan@marek.ca, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jun 2020 14:43:30 +0200, Ard Biesheuvel wrote:
> Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
> removing it entirely") results in boot failures when booting kernels that
> are built without KASLR support on broken bootloaders that ignore the
> TEXT_OFFSET value passed via the header, and use the default of 0x80000
> instead.
> 
> To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
> itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
> to be enabled to deviate from this. Then, emit a warning into the kernel
> log if we are not booting via the EFI stub (which is permitted to deviate
> from the placement restrictions) and the kernel base address is not placed
> according to the rules as laid out in Documentation/arm64/booting.rst.

Applied to arm64 (for-next/core), thanks!

[1/1] arm64: warn on incorrect placement of the kernel by the bootloader
      https://git.kernel.org/arm64/c/dd4bc6076587

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
