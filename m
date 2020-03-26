Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1441944DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:00:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aNolFJ9r1rpHncMToe0X0+Ouf54oCx3QG/ZX8qa5jvo=; b=NHZ
	pPsx7WiLaUBKwYQu5cG9O9MN5fEqzgaPCYyilO4OKDgw6ik+2eFqdS0akopYfuQ8Eew2Ua4BpxRA4
	cH87D6f+QhcjmPhMCfAMcoOUt56qRZVwTHOiLyXJ0FJMthqvlqbpgH4XIXaOLxsimy/I4m9/QfMYf
	eb1J9Gp+4EiYkdMP1YHz27I0ELTl0qsu8lzA7CzlzD8dDxYho9zO61ZWA46DlCP9bcBvjmhvUBzfS
	A1QDZO4zSWmcn6tZioShFZ9Vq+YoqLgnhAqxbOoV2gpNPZBY4vcSHQxyYerPiDfiTqCYq41WqCvkx
	8ENEcgC9213cZJBeVVw3wuvrWe7xJCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVrk-00049N-6D; Thu, 26 Mar 2020 17:00:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVrH-00048L-1u
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:59:56 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11C1920714;
 Thu, 26 Mar 2020 16:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585241994;
 bh=rV3h8qQW0FYqgWhqZ43zHTAw48+LqjuopHgk1oz9eFI=;
 h=From:To:Cc:Subject:Date:From;
 b=OAJFIulTl2hFO5S3shSIYNsdtc5wosrzM1sChFB1FGubeEBrFs0nliXdBDWSTXmIJ
 kKrCamJcH5xpKtRdVYB02/2g9KeL1QPOH9FtnWqXaqvhu4EvHokac++F0yxnBg2/lQ
 caQFPX3w5M1ydgcJNBAOejNcvETos0V/CdPOdXNM=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] efi/arm64: execute the kernel in place if possible
Date: Thu, 26 Mar 2020 17:59:03 +0100
Message-Id: <20200326165905.2240-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095955_124719_4DED0737 
X-CRM114-Status: UNSURE (   6.69  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-efi@vger.kernel.org,
 will@kernel.org, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the relocation logic in the EFI stub for arm64 so it runs the
kernel in place if it was loaded by firmware at an address which allows
doing so. Then, update the PE/COFF header metadata and increase the
section alignment to force the UEFI image loader to honour the minimal
alignment requirement imposed by the kernel proper.

Ard Biesheuvel (2):
  efi/libstub/arm64: avoid copying the kernel unnecessarily
  efi/arm64: increase the PE/COFF alignment so the kernel can run in
    place

 arch/arm64/kernel/efi-header.S            | 2 +-
 arch/arm64/kernel/image-vars.h            | 7 +++++++
 drivers/firmware/efi/libstub/arm64-stub.c | 9 +++++++++
 3 files changed, 17 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
