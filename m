Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377A9F145B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dEm6fosn7XOxg9qkptyAqG54wqVo1feB9/DAnqGFNC8=; b=m0Z
	R9KpvlVM0K6OvZ+Sl9XWq1djPHYIyYvLxo6436D/FxJcwJnD8t/X9H/wnoTXKWJu4zDJbixfCqsm1
	kmNk8i3k5/ef9ly8PXPCGvWJtamJLQzeAKxnS3eiEqQjllPEbnxajHp4mBhrE893dzdCB6CIIFcfz
	Hl3Jj/wchhGkf8ezU2g69dSKI5+8XAfNv/ep3jnz518kiQkSN6YnYxSu1nvDQIQ1BLueA9y7O0v4K
	vPBSuRRdMN757Az79//5iJI4jIpFqIu8tua3ngDGFSsblqBo3PKyO7jcMq/CLb0RY10ZEkw5q3yik
	/skkjwXD2puFb9NvPtwZ4sB9dG6g+bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSItQ-0004TJ-Fh; Wed, 06 Nov 2019 10:50:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSItG-0004Sr-2M
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:50:19 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA3FD2173E;
 Wed,  6 Nov 2019 10:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573037417;
 bh=apu/aSgk5VU7sztBGhlYeJt0ZkxuwMmyQZF3y5kqomQ=;
 h=From:To:Cc:Subject:Date:From;
 b=A4GjfWnIPQIGDdom32LyLSzIMTdOwDm6vkb4/tIDE4sqZ6t8ZxKvIVGfLb7TexKh7
 yKcHISL4/63FwHMOf/160Fc7fCDvSn7B4BCJzTH79cLVWpwOp5ldbOkhm44eEcsLAM
 NDYbfzrnsccBGGrVx28oY2X3owawWs1X4TEsQKj8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH resend 0/2] ARM/decompressor: deal with disabled CP15 barrier
 instructions
Date: Wed,  6 Nov 2019 11:49:16 +0100
Message-Id: <20191106104918.26397-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_025018_134943_34A4ABC7 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: maz@kernel.org, rmk+kernel@armlinux.org.uk, linus.walleij@linaro.org,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Resending because --cc-cover didn't take ]

While trying to test my v4.4 backport of the firmware/hypervisor based spectre
v1/v2 mitigations for 32-bit ARM, I noticed that KVM/qemu failed to boot my
kernel while it booted fine under TCG emulation.

As it turns out, KVM/qemu may instantiate the VCPU with support for CP15
barrier instructions disabled, causing them to UNDEF and crash the
decompressor.

I already fixed the same issue for UEFI boot, but since v4.4 does not support
that, I only noticed now that this is an issue for bare metal as well.

Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>

Ard Biesheuvel (2):
  ARM/decompressor: avoid CP15 barrier instructions in v7 cache setup
    code
  Revert "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning
    the cache"

 arch/arm/boot/compressed/head.S | 51 ++++++++++----------
 1 file changed, 26 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
