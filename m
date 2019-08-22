Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F33498F72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJzdo4g+5pRnXQbWs4d1ReSMpjyVpge92g5HnT4lds4=; b=nHFLI7p5BZgUq3
	WM11FxEL45Z+KcW7DHTfGZp3FOzDcglUX2yfduTeNINz3H1lFf22Qfqcztv1luxy6z3DWMvuM8Kbm
	R6CgjUHuWX+lGiUDEbfzSK9fEnFOZCI7eEy5ATsEAxuaBN59m2S0NZRZYSdmMO59Kj1IkDlsk5jz7
	fPFL5S2I2HkPUfb3YVccTkGMeVecO4+33OatS+SRgt8tFUeyBRDInBqrjwhY0hcT4k3X00a/eUBLk
	mn/L/d3Kh/x6qWv4+hqFSDnnfK5eS1/APNHq74JcxZsRBOFEEM0wMVajA7Ixdcx3x4rOEQgqkBx+n
	WWnsK4UeCilj60bk1Nvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jVZ-00010r-PS; Thu, 22 Aug 2019 09:35:53 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jTa-0006bc-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:33:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 85DC5D7568;
 Thu, 22 Aug 2019 11:33:47 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id sVi2EZBn7Y0o; Thu, 22 Aug 2019 11:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 5275ED755A;
 Thu, 22 Aug 2019 11:32:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ClbKA0x62TeE; Thu, 22 Aug 2019 11:27:29 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 92AC0D7564;
 Thu, 22 Aug 2019 11:26:49 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 10/20] ARM: l2c: add definition for FWA in PL310 aux
 register
Date: Thu, 22 Aug 2019 11:26:33 +0200
Message-Id: <20190822092643.593488-11-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023351_066527_1F558CE0 
X-CRM114-Status: UNSURE (   8.06  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PL310 also has a "Force write allocate" bits in the Auxiliary
Control Register.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/include/asm/hardware/cache-l2x0.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/hardware/cache-l2x0.h b/arch/arm/include/asm/hardware/cache-l2x0.h
index 32edfadb15935..a6d4ee86ba543 100644
--- a/arch/arm/include/asm/hardware/cache-l2x0.h
+++ b/arch/arm/include/asm/hardware/cache-l2x0.h
@@ -118,6 +118,8 @@
 #define L310_AUX_CTRL_STORE_LIMITATION		BIT(11)	/* R2P0+ */
 #define L310_AUX_CTRL_EXCLUSIVE_CACHE		BIT(12)
 #define L310_AUX_CTRL_ASSOCIATIVITY_16		BIT(16)
+#define L310_AUX_CTRL_FWA_SHIFT			23
+#define L310_AUX_CTRL_FWA_MASK			(3 << 23)
 #define L310_AUX_CTRL_CACHE_REPLACE_RR		BIT(25)	/* R2P0+ */
 #define L310_AUX_CTRL_NS_LOCKDOWN		BIT(26)
 #define L310_AUX_CTRL_NS_INT_CTRL		BIT(27)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
