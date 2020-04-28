Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC81BC569
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPfCv4FS/PtSgjz0DWq635QU/DWRhX3JVOXS5BiJolg=; b=Ln5YWPvZYw7PgL
	A8wsdbW6wDne0YYvXAwpYqBImTOaRTUWpKX08/3J5qp26JMTPkVEBAluCqL69n0WvLn/nRCf/OWEF
	dhNkLddhJgkEH8MEKa+v/u0PNqIOhO01GOih2CZHCUxV/zBuGK6i7VZmcfl5CIVdQOcSXJnAB9UFc
	Kbdzzo6KLorgVh47m5kqgmZxtyyqlKE+HPEs/1QFI2++ddI+vLujGCM12TUdN3l3j/hmIMiR9fI4D
	tZAyyECDnOD+JnJ/nO7tFbShYwAaaj7oA0OOtHs9H+jXVVpAaWnB50NgAcAMFvDGJOTlsCikrYLGK
	q8KDt8Rx0ZDdDi73M1RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTGh-0000RL-6h; Tue, 28 Apr 2020 16:39:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTGQ-0000QQ-HT
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:39:19 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38DE9206D6;
 Tue, 28 Apr 2020 16:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588091958;
 bh=LTVZReYRLOirprlclah8YUVYWCs/HcgG4T+QhUBoTj0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2YUVSYQnvimjjQKuHD6z6kzBsbgZTcoEL6BBfMP8tlh3Hwj+Yr7YNzMfxNJ+3IGAT
 8xhZa8ppkFb17xd7Yw+BN8SaIEieLaL/lRffSGtPMvPTvWDRzyc5u8Se09ZA2cCTAm
 +c0skX/A+z/FLMyzMiP6+QuDTqFFUZM7Iryn/n5c=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN
 constants
Date: Tue, 28 Apr 2020 17:39:09 +0100
Message-Id: <158808883067.45851.4021665542409136898.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414134706.8435-1-ardb@kernel.org>
References: <20200414134706.8435-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_093918_595556_C57CFD10 
X-CRM114-Status: UNSURE (   6.66  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 15:47:06 +0200, Ard Biesheuvel wrote:
> A bunch of ID_AA64MMFR0_TGRAN_* constant definitions appear twice
> in arch/arm64/include/asm/sysreg.h, so drop the duplicates.

Applied to arm64 (for-next/cpufeature), thanks!

[1/1] arm64: drop duplicate definitions of ID_AA64MMFR0_TGRAN constants
      https://git.kernel.org/arm64/c/9b5aaec441d3

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
