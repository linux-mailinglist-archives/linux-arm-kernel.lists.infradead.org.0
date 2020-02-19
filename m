Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56455163DCE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrsCePYE+3vpPDuVH/tETJgh8Od+Q4CHJYO6qg9wL80=; b=RitlUa6B5sBc9l
	Tt5UR2XqDz73UxKkVFSoUCIcmynnTxaVFHdS2iSFPrKJ6CTjg/i9dpfhRi2uDem4Eux4P+FnLULQX
	e19IJtxmF5srQxWZYzK8Cf+//40vcRzi9neCMo2iJg2XuRpgdp1ni5xByO6qfJZzqShPxwo40o1WT
	7/ylCDwNZ9iAjRE/AIycOjK23QMt8dbRwSRbbrc4Wkn0Le68ordjP3C0WiagyxaOFVM9IthVMptXl
	4nwCoEGbHnRlUS6hFqWFUvtQRg6UC7TbXNdlWSgmE6ghawsu85tGOeG7Vbx+qUh94sATZE4PnKJkY
	QfsB2U0AN0gjlceuxyUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JvM-00034E-Q0; Wed, 19 Feb 2020 07:37:36 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Js2-0007Ux-9K
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:11 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DD9B2DFCA2;
 Wed, 19 Feb 2020 07:34:22 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id TklClGzdHZXb; Wed, 19 Feb 2020 07:34:19 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2A517E0052;
 Wed, 19 Feb 2020 07:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gaoAiPHX0KQk; Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 6BB55E007F;
 Wed, 19 Feb 2020 07:34:16 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 10/10] ARM: dts: mmp3: Use the MMP3 compatible string for
 /clocks
Date: Wed, 19 Feb 2020 08:33:53 +0100
Message-Id: <20200219073353.184336-11-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233410_502771_E7AC60A8 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clocks are in fact slightly different on MMP3. In particular, PLL2 is
fixed to a different frequency, there's an extra PLL3, and the GPU
clocks are configured differently.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mmp3.dtsi b/arch/arm/boot/dts/mmp3.dtsi
index 59a108e49b41e..3e28f0dc9df41 100644
--- a/arch/arm/boot/dts/mmp3.dtsi
+++ b/arch/arm/boot/dts/mmp3.dtsi
@@ -531,7 +531,7 @@ l2: l2-cache-controller@d0020000 {
 		};
 
 		soc_clocks: clocks@d4050000 {
-			compatible = "marvell,mmp2-clock";
+			compatible = "marvell,mmp3-clock";
 			reg = <0xd4050000 0x1000>,
 			      <0xd4282800 0x400>,
 			      <0xd4015000 0x1000>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
