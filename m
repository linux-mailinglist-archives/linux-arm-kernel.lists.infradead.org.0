Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C70B81098E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 06:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVJ0PcBJUaTCr55X6kmJ5J/8w4lqxOtF/+g6+sDmtq4=; b=EP4RsgoTYr6esn
	PgseJN6Ax2Gl4lwps2EOm5qUcP0PJU6HpDxG4MGQ9Uf6jHLCgyIGTVjRfh5TCmXdW03p12ccqwU7w
	1AFmMzg9Nz7JLjEV/0syfqwZVXvz8eS/RvDqKv2Z9+8bnaOOR2ntsPUdRRAequ7sIlRt+laB7qNyR
	gigL3rbhGFQBVGMVKziCqtGqqql9FYZsAJXUlqmx2PAKv0VSIxgjIpg3uJlrwvmkHK1+FX++1gi9J
	IQDg2pIueabxrmgMpsW2If4zn61p6Dcgu/u71bSP72K8EbvllDxvKdtMc23RhP51xetJvG0lG5JVP
	LR90JaXver1GRiH33z7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZTXl-0004QY-Qv; Tue, 26 Nov 2019 05:37:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZTX9-000479-8i; Tue, 26 Nov 2019 05:37:09 +0000
X-UUID: cf7b56382dfe420a8c9767369ddffd4e-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Y1RF2/cLUQF2MNOynB8uR3SFbEklhbVv5kPFp1T7iWo=; 
 b=eO9HCBU1l+JmiIaDsimASO9Oqfu+sN+fpGRyw1ildMRFO9BwouVtSgEP75/KSgLXvQYhXcwBo7o2MeYwCnVTMswB6KtxyhTV9c5YtiJuuTlkocHRBJ/Im/8IaXic2XvWHd7FvcKHg2+EGlr+dnwl+WYvla7Uw8U4lvVrCD2JugU=;
X-UUID: cf7b56382dfe420a8c9767369ddffd4e-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <freddy.hsin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 38576255; Mon, 25 Nov 2019 21:36:48 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 21:35:03 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 13:34:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 13:34:35 +0800
From: <freddy.hsin@mediatek.com>
To: <sre@kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <wim@linux-watchdog.org>,
 <linux@roeck-us.net>, <matthias.bgg@gmail.com>,
 <linux-watchdog@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 3/4] soc: mediatek: add reboot-mode header
Date: Tue, 26 Nov 2019 13:34:49 +0800
Message-ID: <1574746490-625-4-git-send-email-freddy.hsin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
References: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_213707_318465_8539D3D2 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Freddy Hsin <freddy.hsin@mediatek.com>, Chang-An.Chen@mediatek.com,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Freddy Hsin <freddy.hsin@mediatek.com>

Mediatek platform use a RGU (Reset Generation Unit) mapped
register store the reboot mode magic value for bootloader
to use when system reboot.

Add the shared header describing the values firmware expects
for different boot modes.

Signed-off-by: Freddy Hsin <freddy.hsin@mediatek.com>
---
 include/dt-bindings/soc/mediatek,boot-mode.h |   17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 include/dt-bindings/soc/mediatek,boot-mode.h

diff --git a/include/dt-bindings/soc/mediatek,boot-mode.h b/include/dt-bindings/soc/mediatek,boot-mode.h
new file mode 100644
index 0000000..f7d5107
--- /dev/null
+++ b/include/dt-bindings/soc/mediatek,boot-mode.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+#ifndef __MEDIATEK_BOOT_MODE_H
+#define __MEDIATEK_BOOT_MODE_H
+
+#define BOOT_CHARGER	1
+#define BOOT_RECOVERY	2
+#define BOOT_BOOTLOADER	3
+#define BOOT_DM_VERITY	4
+#define BOOT_KPOC	5
+#define BOOT_DDR_RSVD	6
+#define BOOT_META	7
+#define BOOT_RPMBPK	8
+
+#endif
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
