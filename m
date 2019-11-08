Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4DFF4EB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTQLzyDfqUbnEujazlFTPTvyUSFiOlBvjwjB/0nd4zo=; b=QuRQnOVXpxbZ+n
	JSYFqVavd6ACw8X3L27ZntRBpyndbG60ceOcagKVT9s5KDIru9wwKVb8HzPD0QaYFBz1027zL1xDC
	4PLYVpNxYJaCl7gNjsX8qxxj1HdtejiW/USL4z6CTy2wN2adRE5QvQzlcI85TqbCPGOt7GlcXirLB
	lRFTyUXUwFfcmaw/qsFWgfxfAShDik43tVAMv0LNvoz7ZTk3jT5xOqizv9QD1VZulhdQFsH2C/pna
	w+0u4mTUw5WC9iUVjlTZ94C3bWwVFkTpGT1Dl3WuftqRWKvnxqMog65ln9K2lLJHh4mdbAruSy2xL
	nDiWmVVwjMIKeokxMU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5aw-000770-Vi; Fri, 08 Nov 2019 14:50:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5ah-00076S-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:50:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 93E4E46A;
 Fri,  8 Nov 2019 06:50:23 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 768A53F71A; Fri,  8 Nov 2019 06:50:22 -0800 (PST)
Date: Fri, 8 Nov 2019 14:50:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v10 00/12] Add arm64/signal initial kselftest support
Message-ID: <20191108145020.GF22834@arrakis.emea.arm.com>
References: <20191025175717.15154-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175717.15154-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_065024_058123_84CAA648 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: suzuki.poulose@arm.com, andreyknvl@google.com,
 linux-kselftest@vger.kernel.org, amit.kachhap@arm.com, shuah@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cristian, Shuah,

On Fri, Oct 25, 2019 at 06:57:05PM +0100, Cristian Marussi wrote:
> Cristian Marussi (12):
>   kselftest: arm64: extend toplevel skeleton Makefile
>   kselftest: arm64: mangle_pstate_invalid_compat_toggle and common utils
>   kselftest: arm64: mangle_pstate_invalid_daif_bits
>   kselftest: arm64: mangle_pstate_invalid_mode_el[123][ht]
>   kselftest: arm64: extend test_init functionalities
>   kselftest: arm64: add helper get_current_context
>   kselftest: arm64: fake_sigreturn_bad_magic
>   kselftest: arm64: fake_sigreturn_bad_size_for_magic0
>   kselftest: arm64: fake_sigreturn_missing_fpsimd
>   kselftest: arm64: fake_sigreturn_duplicated_fpsimd
>   kselftest: arm64: fake_sigreturn_bad_size
>   kselftest: arm64: fake_sigreturn_misaligned_sp

I queued these patches through the arm64 tree and plan to send them to
Linus for 5.5. Please let me know if there are any objections.

I'd also like to propose the maintainers update below for the arm64
specific selftests:

------------------------8<-------------------------------
From 629ac5665380c0c65e44e0aaf717090905204555 Mon Sep 17 00:00:00 2001
From: Catalin Marinas <catalin.marinas@arm.com>
Date: Fri, 8 Nov 2019 14:46:54 +0000
Subject: [PATCH] MAINTAINERS: Add arm64 selftests to the ARM64 PORT entry

Since these are tests specific to the arm64 architecture, it makes sense
for the arm64 maintainers to gatekeep the corresponding changes.

Cc: Shuah Khan <shuah@kernel.org>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..553c64308060 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2609,6 +2609,7 @@ S:	Maintained
 F:	arch/arm64/
 X:	arch/arm64/boot/dts/
 F:	Documentation/arm64/
+F:	tools/testing/selftests/arm64/
 
 AS3645A LED FLASH CONTROLLER DRIVER
 M:	Sakari Ailus <sakari.ailus@iki.fi>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
