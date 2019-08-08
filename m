Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BD285C50
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HP+ZzqtuOuhZzwucOrguApYHXl4nOMXgXifPaIe9IIQ=; b=CslFMXzjEVPOyM
	zCLJEvKvrbrzXaqiLrKbnTqe/4RuOBfvnR0hO6DMY5eYYrAy3PFqBsH7u3L+DDSNiV3G3AGg9HkTJ
	eFHaN0KsYr9xJrbg11JpEMpYKtoD4lLBkoyHnvtGNIFNFDe6hdHwtf4e7CO64nemauNWbaxG82MFw
	1pDuG0rrFClY8SOJCvvKD9VCgVUlrS426qFc20cVy7whti/GVG6DaJzB0mIjHKorkDyDYopTkoQcB
	iwA0IiRwi7+uJMjq50AEvHcDMjheQY7zrOXMZ+wUKtaogQ+vfNdKJ+60yNx6Cfcqi+1xY8ynHuLig
	N/ds21qcZaeXwdYMw6GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdM4-0006sa-1m; Thu, 08 Aug 2019 08:01:00 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvdLZ-0006id-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:00:31 +0000
Received: from trochilidae.cardiotech.int (unknown [37.17.234.113])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id D03585C0B09;
 Thu,  8 Aug 2019 10:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565251225;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=M05gzHKGxby2hM7h2BsIuIBZoqVNih3A9gBg+LSXumQ=;
 b=j52hRIT/sy02HixwzebBmR5sBqtWF8OHjpgWZkS0W0HNECr6IIEgELaMAX8qjHZZuMGrA2
 enVdhcHJaJRnxCquhr1M6NClqMPDcVLqeEQGmWvP7AM/oirXXPQ14lzFeRqgXYhAFUD0L3
 2Iz9HW9//BwNFaiY8WxbjONVa/a3Jtg=
From: Stefan Agner <stefan@agner.ch>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: defconfig: enable deprecated ARMv8 instructions
 emulation
Date: Thu,  8 Aug 2019 10:00:04 +0200
Message-Id: <20190808080004.20984-1-stefan@agner.ch>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_010029_745962_A24F957E 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan.agner@toradex.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, olof@lixom.net, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable deprecated/obsolete ARMv8 instructions emulation. This allows
to run ARMv6 binaries (e.g. Raspberry Pi) on ARMv8 machines.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..fd5af5582dda 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -68,6 +68,10 @@ CONFIG_KEXEC=y
 CONFIG_CRASH_DUMP=y
 CONFIG_XEN=y
 CONFIG_COMPAT=y
+CONFIG_ARMV8_DEPRECATED=y
+CONFIG_SWP_EMULATION=y
+CONFIG_CP15_BARRIER_EMULATION=y
+CONFIG_SETEND_EMULATION=y
 CONFIG_RANDOMIZE_BASE=y
 CONFIG_HIBERNATION=y
 CONFIG_WQ_POWER_EFFICIENT_DEFAULT=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
