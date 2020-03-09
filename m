Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B4317E6ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:23:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YfpudjyzaJ6vJ7S9Sx9gh633qKEX+aIe7/0YeaqhIn0=; b=W37of1oCqhqeaw
	dfwPh3MKNeESE4QImheuGBD43Q2ERkXNtxvm8fV4iEqIAidkJXOV655+vfmPLbljg6oBQdKOUIEON
	5kkb1KB0Xb4fEhqxnGM7Cb3G2bWB/Nf3On1yJTjNuALIpNtF0odoMH1agscEUmIpFpLgB2cGczvKX
	NsBBkiZlSToMvwDephPwEYYWXFO2ssNnR4qHWPqCD6wNi8S9G/229d7p0/krdbSkj+tRwbF1ZtAcN
	dvjM6m/lS/MnohoJg37M2XVGarkY9wpK5jwEwLvxjQIff3Gb3KkX55bVkOgDex6af6rY7L3SMinTW
	qroXIqx0/Y3J0o+XCtdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBN3Z-0006Qy-G7; Mon, 09 Mar 2020 18:23:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMzp-0001xX-4R
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:19:24 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9682E80FA;
 Mon,  9 Mar 2020 18:20:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Fix quirk flags for lcdc on am335x
Date: Mon,  9 Mar 2020 11:19:12 -0700
Message-Id: <20200309181912.28645-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111921_908854_8F145100 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-kernel@vger.kernel.org, Jyri Sarha <jsarha@ti.com>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit adb72394e2ab ("ARM: OMAP2+: Drop legacy platform data for am3
lcdc") dropped legacy platform data but we never added the quirks for
SWSUP_SIDLE and SWSUP_MSTANDBY for lcdc for ti-sysc driver.

This breaks suspend/resume. Let's fix the issue by enabling the same
quirks for ti-sysc driver as we had earlier with platform data.

Fixes: adb72394e2ab ("ARM: OMAP2+: Drop legacy platform data for am3 lcdc")
Fixes: 23731eac9848 ("bus: ti-sysc: Detect devices on am335x when DEBUG is enabled")
Reported-by: Keerthy <j-keerthy@ti.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

This patch is against v5.6-rc series, it needs a merge conflict resolved
for Linux next next is using -ENODEV instead of -1 for missing registers.

---
 drivers/bus/ti-sysc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1266,6 +1266,8 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("gpu", 0x50000000, 0x14, -1, -1, 0x00010201, 0xffffffff, 0),
 	SYSC_QUIRK("gpu", 0x50000000, 0xfe00, 0xfe10, -1, 0x40000000 , 0xffffffff,
 		   SYSC_MODULE_QUIRK_SGX),
+	SYSC_QUIRK("lcdc", 0, 0, 0x54, -1, 0x4f201000, 0xffffffff,
+		   SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_SWSUP_MSTANDBY),
 	SYSC_QUIRK("usb_otg_hs", 0, 0x400, 0x404, 0x408, 0x00000050,
 		   0xffffffff, SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_SWSUP_MSTANDBY),
 	SYSC_QUIRK("usb_otg_hs", 0, 0, 0x10, -1, 0x4ea2080d, 0xffffffff,
@@ -1294,7 +1296,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("gpu", 0, 0xfe00, 0xfe10, -1, 0x40000000 , 0xffffffff, 0),
 	SYSC_QUIRK("hsi", 0, 0, 0x10, 0x14, 0x50043101, 0xffffffff, 0),
 	SYSC_QUIRK("iss", 0, 0, 0x10, -1, 0x40000101, 0xffffffff, 0),
-	SYSC_QUIRK("lcdc", 0, 0, 0x54, -1, 0x4f201000, 0xffffffff, 0),
 	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44306302, 0xffffffff, 0),
 	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44307b02, 0xffffffff, 0),
 	SYSC_QUIRK("mcbsp", 0, -1, 0x8c, -1, 0, 0, 0),
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
