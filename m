Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14E41D67ED
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 14:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LXGabnICo424V8cWVlt41Zes/AmNCPmbCrFbnSvKWhU=; b=h//
	BLfjGYu8MxQjPJPEIqXTJVvNDxxd1gE9z9vJ5idWEVVfjaUyeAqZB1sOJlGSBAfGcfERMysB5G9PQ
	pZ1YaiZyMEIBviups1+BAPOqf5Bifbd/RbIsWYyVkBhzIBebaSxi6hALeNJNZnWf61RtgzUUcMFAR
	8FRF4mhnCvZ0DRdxctWvdb50itM5tN/zU8Vcq612I7wk1uSiBRm3xbUV8esbndDliTwDMfL62qkJ1
	szmuAekEFhJF/G2KplKklYwxYM+5lq22LbHHxihBWNN+WEAuK5uWsnRj+3PbhKDEhB/+CNzezWnYd
	5Wu5/fdwZzPN6IEeURw4qhqDxtoAHrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaI7X-0000Ec-AK; Sun, 17 May 2020 12:10:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaI7L-000799-9C
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 12:10:08 +0000
Received: from e123331-lin.nice.arm.com
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FCC7204EC;
 Sun, 17 May 2020 12:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589717402;
 bh=auZDmc8uW6OcQB29fEJ/RnVaomBCvmNLzYuYDuMv4n8=;
 h=From:To:Cc:Subject:Date:From;
 b=OhDp4xjxAPH8UmXGt0bUrepFuOBr9FJ4zkNK/zQqlf6R0qvFgOcwan2lzTUyaxtcL
 yf5Cb5Joq00APMtzgpMh6B2WU4RNjzPKIBzyEKVhod/dQRw060KiAyDSJzQYht9vP4
 X+KAUOuXUhCGAMjJh1Jqc8w8KHVnoSTRJD1s3hoI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [GIT PULL] ARM: simplify handover from UEFI to decompressor
Date: Sun, 17 May 2020 14:09:59 +0200
Message-Id: <20200517120959.7191-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_051007_361366_DBBF0F2C 
X-CRM114-Status: UNSURE (   9.92  )
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
Cc: linux+pull@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 91e4f3d37e1a932396801fc2831286353821ff23:

  ARM: 8972/1: boot: Obtain start of physical memory from DTB (2020-04-29 13:30:29 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git tags/pr-efi-arm-no-relocate

for you to fetch changes up to ea98a6da3baf477541f8cbb036d1827e6b84ac91:

  ARM: decompressor: run decompressor in place if loaded via UEFI (2020-05-06 09:58:24 +0200)

----------------------------------------------------------------
Simply EFI handover to decompressor

The EFI stub in the ARM kernel runs in the context of the firmware, which
means it usually runs with the caches and MMU on. Currently, we relocate
the zImage so it appears in the first 128 MiB, disable the MMU and caches
and invoke the decompressor via its ordinary entry point. However, since we
can pass the base of DRAM directly, there is no need to relocate the zImage,
which also means there is no need to disable and re-enable the caches and
create new page tables etc.

----------------------------------------------------------------
Ard Biesheuvel (5):
      ARM: decompressor: move headroom variable out of LC0
      ARM: decompressor: split off _edata and stack base into separate object
      ARM: decompressor: defer loading of the contents of the LC0 structure
      ARM: decompressor: move GOT into .data for EFI enabled builds
      ARM: decompressor: run decompressor in place if loaded via UEFI

 arch/arm/boot/compressed/head.S           | 91 +++++++++++++------------------
 arch/arm/boot/compressed/vmlinux.lds.S    |  5 ++
 drivers/firmware/efi/libstub/arm32-stub.c | 45 ++-------------
 3 files changed, 48 insertions(+), 93 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
