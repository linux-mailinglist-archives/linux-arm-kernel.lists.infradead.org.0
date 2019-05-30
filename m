Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD312FF21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YOWchE1edZesvoTcNJ1P2Vo52cXbkoXubJkPGgYAhmU=; b=SHXL4Un30SNrHzuGx9ZpxbMYJ5
	h2EoAUaimHWsisStH+e2Awd48JNEoc6eaWaUEe7it3KwhOl+YebSA0OGMFykD6s+vjJgQGFmc5OJ8
	ta7V4sp6ZgIVyG7Re3LCxt8FejF6az3VJ5IV2vyXzCuEUjNQ0Qg+X47nsDiQ5ZOqqdNcXNKjOjmbP
	UPTwAV+RUFUrEG47xxFI5weACl/3eX9KHdmydXGZboRONp8VDGUXClnFJGwFKGM0eWIKEI2SpZXMs
	IyQkQqNXCFOo7hPj4meQ2QRZVbYLvfRfSbWHZCW6LPmIjI2LcVkzXnk4+o+iuIGhmM6qRsTBS+9bM
	zg1gXhog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMlK-0002UH-J6; Thu, 30 May 2019 15:14:38 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMkr-00027l-6U
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12693341;
 Thu, 30 May 2019 08:14:09 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3B8153F59C;
 Thu, 30 May 2019 08:14:07 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 3/9] update_headers.sh: arm64: Copy sve_context.h
 if available
Date: Thu, 30 May 2019 16:13:08 +0100
Message-Id: <1559229194-3036-4-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081409_251190_EE58B410 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SVE KVM support for arm64 includes the additional backend
header <asm/sve_context.h> from <asm/kvm.h>.

So update this header if it is available.

To avoid creating a sudden dependency on a specific minimum kernel
version, ignore the header if the source kernel tree doesn't have
it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 util/update_headers.sh | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/util/update_headers.sh b/util/update_headers.sh
index a7e21b8..90d3ead 100755
--- a/util/update_headers.sh
+++ b/util/update_headers.sh
@@ -25,11 +25,22 @@ fi
 
 cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
 
+unset KVMTOOL_PATH
+
+copy_arm64 () {
+	local src=$LINUX_ROOT/arch/$arch/include/uapi/asm/sve_context.h
+
+	if [ -e "$src" ]
+	then
+		cp -- "$src" "$KVMTOOL_PATH/include/asm"
+	fi
+}
+
 for arch in arm arm64 mips powerpc x86
 do
 	case "$arch" in
 		arm) KVMTOOL_PATH=arm/aarch32 ;;
-		arm64) KVMTOOL_PATH=arm/aarch64 ;;
+		arm64) KVMTOOL_PATH=arm/aarch64; copy_arm64 ;;
 		*) KVMTOOL_PATH=$arch ;;
 	esac
 	cp -- "$LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h" \
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
