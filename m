Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6551C3E98
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XeDmBtomLG4s3882Z4fDk1YqNfUuJ/gcDnccmqBZP0=; b=DHFCNh8H6NNiMu
	UUvJqdQdTjr5BAGV0kAvHdD2LAE1AMvPB6LaepcAgPgrksl1W7/zIbH8T65i8dNzbn4KJu4r4q9vm
	glg/zzY2xQiNW2HmT1KV0ec+kp70T06p8Bqx4ylwV2PLmNS2UoUAWvMbzSr4dpaPCKyExOSaofK/F
	e/JgPusTfFogP6+azFWU+4vQtji0Vk8Tl+dj8FtAXgX6E9CLBF7LqhhEFOm924FHFnjzjjtxXt2uN
	DJJyDbSAWCRSDa9AfI/ADWpooqf3C3E+xFYevzH8MoJKWsWODio8yIcv21CQHuPOFvMP4WpyoNm2T
	LLMx//xiHE+0y2O+ZEvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVd6i-0007ia-P4; Mon, 04 May 2020 15:34:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVd6Q-0007a2-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:33:55 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 197352073B;
 Mon,  4 May 2020 15:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588606434;
 bh=roxzMnCh1PkuTw0mX9HFL+PO1+jokVsvTQK/4J/pk1o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MfPh23Q0yCaY+3jx5rjrAVQDEN7ckK9qZ/axiTTgltHdgNLZ91pFU0UNygJ+NY6XQ
 rTF9XG47zny2S9LOgnOCox3EkQvuHfHzF+7XBYyAhY55FxkQCchz9zqso9pKZ6THRa
 eWG0i9gjp19AAXkMlBoKF+MzQ9Th3i0wiXIuzB7s=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 0/4] arm64: Make NOP handling a whitelist
Date: Mon,  4 May 2020 16:33:35 +0100
Message-Id: <158860478973.32724.18067692475147763050.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200504131326.18290-1-broonie@kernel.org>
References: <20200504131326.18290-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_083354_417880_AEC17671 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 14:13:22 +0100, Mark Brown wrote:
> Currently we default to assuming any unrecognized instruction in the
> hint space can be safely handled as a NOP.  This is not robust and any
> code that really wants a NOP should be using the explicitly defined NOP
> so let's instead invert this and whitelist those instructions which it
> is safe to handle as NOPs.
> 
> Patch 1 adds defines for the HINTs for BTI landing pads which will be
> used by the in-kernel BTI series to generate landing pads in JITed BPF
> code so it'd be good if this could be applied on or merged into the BTI
> branch.
> 
> [...]

Applied to arm64 (for-next/insn), thanks!

[1/4] arm64: insn: Add constants for new HINT instruction decode
      https://git.kernel.org/arm64/c/bd507ca2773b
[2/4] arm64: insn: Provide a better name for aarch64_insn_is_nop()
      https://git.kernel.org/arm64/c/07dcd9677c5d
[3/4] arm64: insn: Don't assume unrecognized HINTs are skippable
      https://git.kernel.org/arm64/c/c71052cc9e14
[4/4] arm64: insn: Report PAC and BTI instructions as skippable
      https://git.kernel.org/arm64/c/47d67e4d1918

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
