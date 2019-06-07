Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A5E388FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KoGNpWk6f4qWE5uMoN+vSc/Ob/ghgn8v32k+zi7i3FI=; b=BsUR9Wot20i/Cbf2PT2QMWrUYm
	E7ELppws2s00UxyNXELg17ToQ56SNXuASpFeSO9Pk0iuV6y9Yoz7FI3wVsfA5nUH6MBQ9Uz+Dxse9
	RHUEi/HJf25uDKSVaTN06aB3BkC/cZ4koPA1GMLAwfFjT3KTJBlq+VU6VjSC+XjdG3Z4EGqd7x6nN
	Mtk5rFe+pnMLPcBru80oSEqljYYE+OGWb5dP8MWJGNeqLNFfvas+38VsgDvYDGcXUgFwMWhEnRC0U
	dU+xU2gGEad/286PAL0/MXkzHr53Nu3Z+cUV2WltW+HMdOcvyCLGxal0fvTPHIs1hhe0+EB+PGpHJ
	lYoh0xzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZD1w-0007lr-JP; Fri, 07 Jun 2019 11:27:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZD1h-0007lH-2e
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:27:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1975B360;
 Fri,  7 Jun 2019 04:27:16 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 240973F246;
 Fri,  7 Jun 2019 04:28:55 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v4 1/8] update_headers.sh: Add missing shell quoting
Date: Fri,  7 Jun 2019 12:26:22 +0100
Message-Id: <1559906789-20936-2-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
References: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_042717_162573_558FE40A 
X-CRM114-Status: UNSURE (   9.80  )
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

update_headers.sh can break if the current working directory has a
funny name or if something odd is passed for LINUX_ROOT.

In the interest of cleanliness, quote where appropriate.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
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
