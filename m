Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3EA1F1C3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:38:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vBur1AzBQ0n6kGjXCg2H8ce6OYOO9tgSmrXov6j0Fc=; b=oHH9b9Y82EnKnm
	A+mv5Ewd+LpA24pflEtnPQCyt/UFJh/hEKA/GS6w1dKuVkpDEQlCKZ2aMU+tb7UYuZe65+ZUKKfg8
	PV5hO5iQ7g70+lmAYW1SisRi5qMkjNNNmurPLaJfZ9/4DqfOwU/fEh3giENt8jDs9FjFXBXaHhHzz
	LJDM9IADaJmIZtp8Z4bgZtGXjZpooM3HpAtj4zq/YEyr91MD4qiRXrw1ylJOYGpb7JWlWPPDSGBED
	uOLvqsoN8fzpVZYcN/HW6hzJkkIO5HkOgf28oqnoM/8Vr1jlog+q/fJvwB+J5dZ6awMU0ATCks6Vd
	q3qUaZ1N9LCCc5Q+WoJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJqm-0003a4-Cb; Mon, 08 Jun 2020 15:38:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJqf-0003Qp-Be
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:38:06 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A1165206C3;
 Mon,  8 Jun 2020 15:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591630684;
 bh=wFRnuIEcclQwBa7O4RGpg1H6x7+WtZkc5wB88I2CllE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T0kC3ul1geumHYA0d8rlEz0QMlEBH2as3k8vCKZOPbwufUi5TKFPid1fPeAc+i7Zq
 Zt8cz0JOJyE0e+xR6f+ZEaUjFtnhcH63PWQ2oFda5bGrSJhfslBLFWbF2Og+MLuH1h
 dBouAg2X5TT9Osqc58zTM1qvEdycFz3n1XGAahRE=
From: Will Deacon <will@kernel.org>
To: kvmarm@lists.cs.columbia.edu, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: Obtain text offset from kernel image
Date: Mon,  8 Jun 2020 16:37:59 +0100
Message-Id: <159163026468.66082.18224938042662826432.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608152801.1415902-1-maz@kernel.org>
References: <20200608152801.1415902-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_083805_422118_C313DC2C 
X-CRM114-Status: UNSURE (   8.54  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020 16:28:01 +0100, Marc Zyngier wrote:
> Recent changes made to Linux 5.8 have outlined that kvmtool
> hardcodes the text offset instead of reading it from the arm64
> image itself.
> 
> To address this, import the image header structure into kvmtool
> and do the right thing. 32bit guests are still loaded to their
> usual locations.
> 
> [...]

Applied to kvmtool (master), thanks!

[1/1] arm64: Obtain text offset from kernel image
      https://git.kernel.org/will/kvmtool/c/fd0a05bd27dd

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
