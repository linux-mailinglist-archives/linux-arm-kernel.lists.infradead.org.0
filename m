Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269132FF1A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:14:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uhbXw5hza/RxliYcd1QtCC431KZjZWbeO9PDEECz1MM=; b=PnfG0P40gQzE7hAL2Fe6JRwFIs
	KGGbM7uIm5CxIF+/rAlPgqIYphIBkGAmjiaksFBDIR5qDuDWRuS8ZXRSvDg8XnsYwmnuViQlpGUIK
	Bqxkn74oxZkO6NJ6DZrrttKjM5nf4zHekLkDus/kauBtc2ccmdu8VKax8cG0TgKFHLF1cgMbjNel4
	w2Dvjognp21dUjlZlmXXn8+I2mEbtJce+0W0Vw6HqdUvwYYqChTY3QYOugN3KvGP/tKJoO1Y6qSyq
	87PrQ68tm4Q+0kL/KIDBqQd+7MhuLCz152FJxrwWKCqDpJUHZWViLAr7BNzd51N+l34wM2kWeSvs2
	Jp3cqNUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMkv-00027m-IF; Thu, 30 May 2019 15:14:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMko-00026t-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD521341;
 Thu, 30 May 2019 08:14:04 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 12E773F59C;
 Thu, 30 May 2019 08:14:02 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 1/9] update_headers.sh: Add missing shell quoting
Date: Thu, 30 May 2019 16:13:06 +0100
Message-Id: <1559229194-3036-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081406_104993_93416180 
X-CRM114-Status: GOOD (  10.51  )
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

update_headers.sh can break if the current working directory has a
funny name or if something odd is passed for LINUX_ROOT.

In the interest of cleanliness, quote where appropriate.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 util/update_headers.sh | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/util/update_headers.sh b/util/update_headers.sh
index 2d93646..4ba1b9f 100755
--- a/util/update_headers.sh
+++ b/util/update_headers.sh
@@ -11,17 +11,17 @@ if [ "$#" -ge 1 ]
 then
 	LINUX_ROOT="$1"
 else
-	LINUX_ROOT=/lib/modules/$(uname -r)/source
+	LINUX_ROOT="/lib/modules/$(uname -r)/source"
 fi
 
-if [ ! -d $LINUX_ROOT/include/uapi/linux ]
+if [ ! -d "$LINUX_ROOT/include/uapi/linux" ]
 then
 	echo "$LINUX_ROOT does not seem to be valid Linux source tree."
 	echo "usage: $0 [path-to-Linux-source-tree]"
 	exit 1
 fi
 
-cp $LINUX_ROOT/include/uapi/linux/kvm.h include/linux
+cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
 
 for arch in arm arm64 mips powerpc x86
 do
@@ -30,6 +30,6 @@ do
 		arm64) KVMTOOL_PATH=arm/aarch64 ;;
 		*) KVMTOOL_PATH=$arch ;;
 	esac
-	cp $LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h \
-		$KVMTOOL_PATH/include/asm
+	cp -- "$LINUX_ROOT/arch/$arch/include/uapi/asm/kvm.h" \
+		"$KVMTOOL_PATH/include/asm"
 done
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
