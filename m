Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505731BEA24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhNGAx00t12BKQC2Uecu0N6uVlvPAAvIDCEH2y84GaU=; b=smOoPEpOBCItyW
	BcIr53oSLAt8ibse3cq3iP8EESz4s/9OrJQYvtkIPinjTGePQb4yIImTsN1qySnReiLoQInPFTjgO
	rnVoaeaqdzBhs77d8Rr7Cr2xKq7Hfakq00XkKwVBB30W/myM5vkajHR4aNIPFMy1xEpqewK77hx/B
	KlEQsppytad15hQMv08tIQnn3vkd3kqSqaabBtizRd3t1Xc0gKlDT43uMzsc8i9xD31NS42NUNIwX
	WnGlGgFhdzZ+HV+ZkpcpjTfCL7waYEOI9SlqbNOGdM0nc6s11DUn7TZz43I0MkkDXQ853ubD6NQHP
	vm8GRrqV0mxGFvyq6N3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuXo-00058J-10; Wed, 29 Apr 2020 21:47:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuXf-00057O-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:46:56 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7CFB20757;
 Wed, 29 Apr 2020 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588196814;
 bh=BxPVaVKip3C9x00+QAvgLEuo4IIPGtQJ0PqVsMtQj64=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WvNEq5/Zcwt4ioW5Q9V/KARJjNpln8woWm9iVmFqiiJZHhqrkrrHoeMsVjmGWpnVx
 EBZ9ff9hrv6evjz09MVL6N7R46IKNSuCcuKcbfOH/XhqppEo+hXGlufIGbuZUfsaO1
 I0foIB2T3Dco/4w47oBJKq8tvF7DSacOwu/57n/Y=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: Reorder the macro arguments in the copy routines
Date: Wed, 29 Apr 2020 22:46:50 +0100
Message-Id: <158819340163.57687.16092554565145151488.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429183702.28445-1-catalin.marinas@arm.com>
References: <20200429183702.28445-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_144655_332994_5F6050B0 
X-CRM114-Status: UNSURE (   8.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 19:37:02 +0100, Catalin Marinas wrote:
> The current argument order is obviously buggy (memcpy.S):
> 
> 	macro strb1 ptr, regB, val
> 	strb \ptr, [\regB], \val
> 	endm
> 
> However, it cancels out as the calling sites in copy_template.S pass the
> address as the regB argument.
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: Reorder the macro arguments in the copy routines
      https://git.kernel.org/arm64/c/ada66f183759

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
