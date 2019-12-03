Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0738010FD63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2spSQEB9aUw3wcS/0m1oKhcmEuTkUFPzBB2Xpi00ybQ=; b=U5G
	6gZcvN5+6Sg7WuYxR7G2jApPP0vMSsmeKOYevG478UuoIct1bbqtzrxo+G0ATzcYto4Pzp/exSNgk
	qRs1pUGz/tvXYzG+WxVR9gLdaBbA6geORnNcp606ZrYQQQJ7jXQIX0zcx5ap/hlr6+tVN8/7wl5PE
	CZ4wAg7YxY76fJaHR5LYT/9LlrxF8RYl2CtLm91mQKH2CUGsdAmJQv4wn0FS0BcuJ4t6BVpS20dAT
	j1c3uZfBCG+tDf692KYeFjH6phCiShEQCfr33a+RitEGUWmOTbJ7yhIAimppD8PLtvyaFWFKN5LOH
	uenLE1sKEVDMJ5OEvKKuv1YNh+HNWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic703-00073a-BG; Tue, 03 Dec 2019 12:09:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6zs-00072t-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:09:41 +0000
Received: from e123331-lin.cambridge.arm.com (fw-tnat-cam5.arm.com
 [217.140.106.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 313F3206EC;
 Tue,  3 Dec 2019 12:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575374979;
 bh=HLDxHA3u6zPkA2L16cd+TIrnIq/ec/amOCKSyTzNINA=;
 h=From:To:Cc:Subject:Date:From;
 b=0aqxQRQQMi4A6lW+SzviNDpHyP8y95CWHyDkHQfyQ8TdHG/CkzreQi9kQ8xs5aFxY
 S4LwA1GXUVOTXKnv6/vVnufU82An+JWdNQs4hNTc49sqepTOrWCcL+yn+NLzzTctbk
 xcYMReIIjaBi3DxNj7QgwBsSSZ6u2Cwu4eruLUxk=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-efi@vger.kernel.org
Subject: [PATCH 0/2] efi: simplify property table handling on ARM
Date: Tue,  3 Dec 2019 12:09:15 +0000
Message-Id: <20191203120917.25981-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040940_083150_8F63AABF 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.7 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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
Cc: mark.rutland@arm.com, james.morse@arm.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of sorting the memory map and comparing the placement and
type of adjacent entries in the EFI memory map, which was implemented
to prevent breakage when the pointless and deprecated UEFI property
table feature is provided by the firmware, boot with a 1:1 mapping
for runtime services in this case, which works around the issue as
well.

Also, move the code that handles this feature into arch/x86, which
is the only architecture which is known to have shipped systems with
this feature enabled.

Ard Biesheuvel (2):
  efi/arm64: use 1:1 mapping of RT services if property table exists
  efi: move handling of properties table to x86 specific code

 arch/x86/platform/efi/efi.c             |  22 ++++-
 drivers/firmware/efi/efi.c              |  19 ----
 drivers/firmware/efi/libstub/Makefile   |   1 -
 drivers/firmware/efi/libstub/arm-stub.c | 103 ++++++--------------
 include/linux/efi.h                     |   1 -
 5 files changed, 50 insertions(+), 96 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
