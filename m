Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B33E196BD1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 10:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N+OB3valEMpCBvrkRc6E6X10uSOwJT8ikdAx7f6vwMM=; b=ebH
	w21cxJNrA4vKCKVlzUnNqHs+6UJz3//GAzSo1Wvi9IKnT50cCvzDYxXLwaEgy/kSuCWw/NTzFFmbe
	1X0f4zZVF7bmn+/Bk1rG1T/7xWHvlLBD6qKL4vmBp7x/Jm9gT8gc1Eg3Li2jlyQo1K3H9kIzMc4hA
	GzEWE7ixpPSBplSUxjb9aOouafz4gza6ybQD2BcGpbWEN/+I60IgHYc9YewbDp1zHKHz/pidUixtG
	w1pYcuSQm5oGEiC0jHUxL4CV3CSC+BTvrlAjeOxb9+KGC93gSKONJ4ZWslJQm2vJVJE4Iy/CfEsRb
	G0DwXVQRLt0CoeGj0Vf+BVcLNyxj4Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jISxM-0002OP-G2; Sun, 29 Mar 2020 08:06:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jISxD-0002Nj-Hl
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 08:06:01 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9640120714;
 Sun, 29 Mar 2020 08:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585469159;
 bh=XtKxxKStYvAuyHKcLIj+Sw19XKUh1BKFz9RqPo1YXxc=;
 h=From:To:Cc:Subject:Date:From;
 b=tnaNOdfV3yNZp6iQ96Fx4BNewK/leQWezZwhCD9Ju2cb4b1ZqlBF8rN1k14dKToaj
 Kue0PkXrwL9qdIEr7f7rIhrjk2Ram1Gf9dkTuzdd0EWLn1hHwD7s6LCln+Dx3gqkch
 tRjpv7O+RUOqxYw+V21QgH/nvgmG/C5OvH4rz1r0=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [GIT PULL 0/2] EFI touchups for v5.7
Date: Sun, 29 Mar 2020 10:05:42 +0200
Message-Id: <20200329080544.25715-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_010559_610081_2F7F361E 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hello Ingo, Thomas,

Please pull the below into tip:efi/core - it is a pair of fixes for the
code that has been queued up for v5.7

Thanks,
Ard.


The following changes since commit d5528d5e91041e68e8eab9792ce627705a0ed273:

  partitions/efi: Fix partition name parsing in GUID partition entry (2020-03-08 10:00:09 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git efi-next

for you to fetch changes up to c6987a415f71352fe1483b09d8b0027ccf3b2175:

  efi/libstub/arm: fix spurious message that an initrd was loaded (2020-03-29 09:48:42 +0200)

----------------------------------------------------------------
Some EFI followup fixes for v5.7:
- fix arm64 boot regression on broken, older versions of GRUB
- suppress spurious 'initrd loaded from command line' print

----------------------------------------------------------------
Ard Biesheuvel (2):
      efi/libstub/arm64: avoid image_base value from efi_loaded_image
      efi/libstub/arm: fix spurious message that an initrd was loaded

 drivers/firmware/efi/libstub/arm-stub.c   | 2 +-
 drivers/firmware/efi/libstub/arm64-stub.c | 7 ++++++-
 2 files changed, 7 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
