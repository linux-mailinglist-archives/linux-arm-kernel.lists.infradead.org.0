Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE8E164870
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a3uT2edQXs/M656xLkLKcgHoTbTRP68VHf1qiI3vBwY=; b=kJi
	sMqeUM9PPmXFpS0gaxzmcNlBYknEC77ul8QlJ0J5/g9DP7FVDCWDHjP5VYmx5CdOoxujoe3EZouuu
	E0tB7L97mpHq3apsCf1XHHr7EB7792XRnXvu2J0Rx6j9BQjvijz+/ILgSCiE+QEy2Mgd7inuwHG/c
	ZshUJZAC+jUQ3GKpE2e2R9tPM8byZpA60mliyybiShGlRk63AMgzAFF0P+VqkyKYqvJbDQwn/c2ZE
	4uTU7+UsPH1Khj4YkhGFsWTmj5fS5iAMp7VVHoZ3+lDJ0oWy59SqKWolm9cm834oHO9Sp+oMZMj97
	ITws4xD6snGDGCXx4E9iTuKUbGuRBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RDf-0006Kc-Sj; Wed, 19 Feb 2020 15:24:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RDS-0006Jn-Kh
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:24:47 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F4B424654;
 Wed, 19 Feb 2020 15:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582125885;
 bh=6Bb/XDrQj62mgjsnnjc8MUx6FAqHwX/duWE9OWSLzeo=;
 h=From:To:Cc:Subject:Date:From;
 b=kT0KVK5xLXQvKXUzDzt/U9r0G2ZjNHQ5ZaK4jhH+R/BuO5R38tyxdP8pjZ0+0Q1Rp
 K/7G0boEKlg9eje4ERuwkLHXDcnDXUM1sRScWRSuy2nc1FIHwYts7QyAswRcGlVWVN
 21mRYOfplaOqTBb1eD7bL4gxiRA65JStMmgo+IHQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 0/3] efi/arm: refactor DT EFI param parsing 
Date: Wed, 19 Feb 2020 16:24:37 +0100
Message-Id: <20200219152440.11561-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072446_703487_7ABAEF51 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: atish.patra@wdc.com, leif@nuviainc.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for another arrival (RISC-V), do some janitorial work on
the FDT param parsing code for EFI as well. The code sits in an #ifdef
block in efi.c, which is usually a good indicator that it should be moved
into its own source file. Then, we simplify the DT handling, by switching
to the FDT library, instead of going through the more high level early OF
enumeration code, which in our case will be doing libfdt calls under the
hood as well, as EFI on ARM specifically uses *flattened* DT. (note that
the EFI stub for ARM uses libfdt as well to populate the DT properties
that we read back here)

Ard Biesheuvel (3):
  efi/arm: move FDT param discovery code out of efi.c
  efi/arm: move FDT specific definitions into fdtparams.c
  efi/arm: rewrite FDT param discovery routines

 drivers/firmware/efi/Makefile    |   1 +
 drivers/firmware/efi/arm-init.c  |  17 +--
 drivers/firmware/efi/efi.c       | 135 --------------------
 drivers/firmware/efi/fdtparams.c | 125 ++++++++++++++++++
 include/linux/efi.h              |  10 +-
 5 files changed, 133 insertions(+), 155 deletions(-)
 create mode 100644 drivers/firmware/efi/fdtparams.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
