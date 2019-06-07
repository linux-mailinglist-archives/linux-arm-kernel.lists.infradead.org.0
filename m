Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232E838900
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sQOxK7w+QQljzhNlsI9qTdzEktFiklXXwCUagisQFu8=; b=OD851ltCK2WLNyxILMsFLq7VPZ
	2IH+abZrW6xwn9HRemqcnAizFfRpuuvmMNRk2Xw6tQAIivMSTrb7UHTHvm++u8qYJW0OQ9ldH9AnM
	vM12GllY5OqfO4d7Z7IGCxBSllPjiF2HgVtoruUnDYMlrlB8LuV4ee30DrOrfFlupOKaSyTO9S30V
	YQddj0z0SdQHl7MFrrwQ8byXiKMbFa5MtTMQuDhspaKQuxqVpuBO53R1Swds7CgLnNgzaeyzo74Yg
	YnAXPiRK7tbZBS145n7h0/g/7G4jvW55CvOzQVEzn+Bb+jJHs4FQ09CMMzhCzWr4IjgCgoTE5+pLc
	b+gTRs2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZD2O-0008Bh-Pp; Fri, 07 Jun 2019 11:28:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZD1j-0007lq-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:27:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42DA33EF;
 Fri,  7 Jun 2019 04:27:19 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4D9413F246;
 Fri,  7 Jun 2019 04:28:58 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v4 3/8] update_headers.sh: arm64: Copy sve_context.h
 if available
Date: Fri,  7 Jun 2019 12:26:24 +0100
Message-Id: <1559906789-20936-4-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
References: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_042719_997242_672A089A 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
version, ignore such optional headers if the source kernel tree
doesn't have them.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Changes since v3:

 * [Andre Przywara]: Quote argument to local (it turns out that some
   shells, including dash, require this).

 * [Andre Przywara]: Factor out copying of possibly-absent arch headers
   as optional_arch, for easier reuse later.
---
 util/update_headers.sh | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/util/update_headers.sh b/util/update_headers.sh
index a7e21b8..bf87ef6 100755
--- a/util/update_headers.sh
+++ b/util/update_headers.sh
@@ -25,11 +25,23 @@ fi
 
 cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
 
+unset KVMTOOL_PATH
+
+copy_optional_arch () {
+	local src="$LINUX_ROOT/arch/$arch/include/uapi/$1"
+
+	if [ -r "$src" ]
+	then
+		cp -- "$src" "$KVMTOOL_PATH/include/asm/"
+	fi
+}
+
 for arch in arm arm64 mips powerpc x86
 do
 	case "$arch" in
 		arm) KVMTOOL_PATH=arm/aarch32 ;;
-		arm64) KVMTOOL_PATH=arm/aarch64 ;;
+		arm64)	KVMTOOL_PATH=arm/aarch64
+			copy_optional_arch asm/sve_context.h ;;
 		*) KVMTOOL_PATH=$arch ;;
 	esac
 	cp -- "$LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h" \
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
