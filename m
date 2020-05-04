Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44741C48C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 23:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJWRpdP5vqZrfyxGSwkNgisLeSsM+0/rLfpmn0vyavU=; b=fstfnqF07dKok9
	BRNtVe1eN9D+Y50G86H/Q1cKH77wi8+MoyxbJoYt/zJXTGF47g4LuB0haoI4C/UJfd2x5cTfvFIcg
	rqm8G1+hHmPlZ/w2pKcROK9Lvtbn7kYU2VvF+qYVrrhMF4qMZdlcyM8/CJsjlwyug3lq03JoY2nNX
	+CU+XZbcIYWWt8mNcC3K7mFCvevK7VnBpABNGh6yiwlfoIou9Ihi1dc6uxhJWkT4OaW+G3FLg9DjR
	DBbm1jderdkP5v+AIzVv/ozRyoHbpEwlimv0uTwxMBEYTSTKW6OQE5ljZ1mWHdAuAcTEyZKYKMeCk
	qqSQAgCUE/mT0yf+bydA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jViGH-0002QN-SC; Mon, 04 May 2020 21:04:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jViG9-0002Ox-Mj
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 21:04:19 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 716EB206A5;
 Mon,  4 May 2020 21:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588626256;
 bh=GInPiyiEF5930d8AKtyiPGs+zeaUkY2HSw0WrjCjsbc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hjw826Kkg27NT5/RM0n98j6Vqmw1pzxK2JSbwyPVVQrNO/X/oC4fqRat/o8vOy9qA
 kBzsV7FyhF2a7WJ90gktpF6/tWbh2GLvtbuHvsM6wMQj8+EMn5aiPgEyqC8MLQONke
 G/SiqfkP2hQZm+2wpgadcKvGEG9zJ7UZSWl69qlg=
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64/cpuinfo: Move device_initcall() near
 cpuinfo_regs_init()
Date: Mon,  4 May 2020 22:04:09 +0100
Message-Id: <158861212065.39196.5531503127956521107.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1588595377-4503-1-git-send-email-anshuman.khandual@arm.com>
References: <1588595377-4503-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_140417_784630_03B70014 
X-CRM114-Status: UNSURE (   8.81  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 17:59:37 +0530, Anshuman Khandual wrote:
> This moves device_initcall() near cpuinfo_regs_init() making the calling
> sequence clear. Besides it is a standard practice to have device_initcall()
> (any __initcall for that matter) just after the function it actually calls.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64/cpuinfo: Move device_initcall() near cpuinfo_regs_init()
      https://git.kernel.org/arm64/c/da7bad98eebb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
