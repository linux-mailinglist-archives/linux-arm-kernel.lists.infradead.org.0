Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06E6100B42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bPyB1BcXN1t2NnHqm5q+Iy2RyW/RE7qDYBd3oUrNoPU=; b=IGLowM4p5cA+zx
	oifaSH6vCVZlL5K5dgB2hbA0FVoY++O1HrKkceMY7sYeOURgqr9Wo6PoXEs764OG2z2IROw5m32Tk
	I0VpQVlBl3YugzwjgjJbJyBTvhN3t9WZQ5IoFOWHcdLbRJYkDiCFGr3qqmr8lZV6t84mYc2aN0MBA
	YU/SBorkD/f9Xf+YS8ip0JGW7gpUZBr4T+xOCR0C9A8Wd9Xm8ddSmYcNSUTKxS3W+58MMN1UF926s
	4+TSiv2o9VZpwggKPMAaNNIs9M2iyta1UdZ0ZJURng/u/jWlwB/w2IoRY7A+RKCwxDtS6LOvlfqF9
	XWEIhu/Vbfg3M1kiiQiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlZN-0005Zq-Ey; Mon, 18 Nov 2019 18:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlZ1-0005JX-Rc
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:15:53 +0000
Received: from localhost.localdomain
 (lfbn-mar-1-550-151.w90-118.abo.wanadoo.fr [90.118.131.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7F3A222A4;
 Mon, 18 Nov 2019 18:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574100951;
 bh=Kxw4VlsuOkmZEobv5swVsOUhtNw58aXqSY6TvZ8HM8Q=;
 h=From:To:Cc:Subject:Date:From;
 b=HA8Rydxc28A0PyBDzaoN4cC1ZuEKiCy6E72UY81gWVnwFAnfxLj7sW9UaQnSkIo6Q
 fhKjesm2v3FTbYNaJxTsIgE7At4jg628VPrGDLfbkfptJd9ekKWdcG8j/tlgHgfnVG
 eiKabSTveily+5xZQNL1AlQadtGUdxky7kQoWewo=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] ARM/decompressor: deal with disabled CP15 barrier
 instructions
Date: Mon, 18 Nov 2019 19:15:41 +0100
Message-Id: <20191118181543.122968-1-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_101551_947545_CA1F86D7 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: maz@kernel.org, rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

While trying to test my v4.4 backport of the firmware/hypervisor based spectre
v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to boot my
kernel while it booted fine under TCG emulation.

As it turns out, KVM/qemu may instantiate the VCPU with support for CP15
barrier instructions disabled, causing them to UNDEF and crash the
decompressor.

I already fixed the same issue for UEFI boot, but since v4.4 does not support
that, I only noticed now that this is an issue for bare metal as well.

Changes since v1:
- instead of using v7 barriers in the v7 code, enable the CP15 barriers - this
  way, we can keep using the v7 routines for some v6 CPUs that implement CPUID
  instructions (causing them to take the v7 path) but not for the v7 barriers.
- applied Marc's and Linus's acks to #2 only

I have tested this via kernelci [0], which includes the v6 pogoplug that got
broken by the v1 version of this series.

[0] https://kernelci.org/build/ardb/branch/for-kernelci/kernel/v5.4-rc8-2-gcaea8d2861c8/

Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>

Ard Biesheuvel (2):
  ARM/decompressor: enable CP15 barrier instructions in v7 cache setup
    code
  Revert "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning
    the cache"

 arch/arm/boot/compressed/head.S | 29 ++++++++++----------
 1 file changed, 14 insertions(+), 15 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
