Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EA31734E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 11:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YG8zANR4JPfAH4VCL6TibDQa8dNbMEH+Rv6dvyXguOY=; b=cxJ
	dvAnxt4+GaLJV5FAPK3PfNDCfsqgzq9ltUA76bcNcAiSXPn8TUUHYTyEKjVmGsQKqE86Ikoxu4XHv
	AETk+kavsCA35mbLnlOKnCBvhpF2XiT5CsPJodSdi9YegX2iv4NQBb8LfFG2AOhnIvBw6ShVqg5hx
	ecQex35kL6k02qLkJlH3BuRY6jJmM9v6N/CxsbNvbdwtfXN3m/Y8lBLznpX8bIHT0JELdGNdKOpGP
	DCKftmSBd0ZADI0oKxgDRQss9J5CWmg+DikZXovdNEscXS+RrLnX9yrDWRCigv3o4ZXfdlbiv+iZM
	8KVFNBGX6a7BkpcFYFhy7Va5euux7wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cU1-0002vM-4R; Fri, 28 Feb 2020 10:03:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cTr-0002uR-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 10:02:52 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD7E7246A2;
 Fri, 28 Feb 2020 10:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582884170;
 bh=zMhTh1fEfwgt/vck5y1Sbfo0lS1eqp78sZZjcrmBQBc=;
 h=From:To:Cc:Subject:Date:From;
 b=VoxtxAEETiZ3qKC3KRK9YciAvGy5yd4sKq+Ih2yD3xSjgRh6VSn6Yj6fOI0QMcvB1
 AUonoFMWIGFUDpbi8uopXiVskgpZ7Jl8461x0IOjQq13GYkEVLZSQfn+iv1YSzBIzo
 UHQ8E2AC7mbGDDFBxZz/Z346YP1EgcARHX0ajXDM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH efi-next 0/3] efi: assorted fixes
Date: Fri, 28 Feb 2020 11:02:41 +0100
Message-Id: <20200228100244.10979-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_020251_832125_6ADFABD8 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some fixes for the code that is currentely queued up in efi/next for
v5.7

Patch #3 fixes a boot regression for non-EFI boot in linux-next, so
that will be sent onwards reasonably quickly.

Ard Biesheuvel (3):
  efi/arm: clean EFI stub exit code from cache instead of avoiding it
  efi/arm64: clean EFI stub exit code from cache instead of avoiding it
  efi: mark all EFI runtime services as unsupported on non-EFI boot

 arch/arm/boot/compressed/head.S | 18 ++++++++----------
 arch/arm64/kernel/efi-entry.S   | 18 +++++++++---------
 arch/arm64/kernel/image-vars.h  |  2 +-
 drivers/firmware/efi/efi.c      |  6 +++---
 4 files changed, 21 insertions(+), 23 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
