Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EDE155FCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 21:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kZHvh8uLgqxsXAtYBoWpfK6Ur4M6dJ/G0gc+mLbWNgM=; b=EgE
	ZxlCNLraHw+1bhBU12nReBq2kBi4VtTjV7LrzVAMk9tsLiIbr02FREqScpYpy5dPBOPd1TzAXszVj
	2iM5VMlXRkhsWM6N8I4C26WQv4QsByaq2Vf0O797unUXcXDfKm0542DbGQIK7cGfwOX9p7LyFXeaV
	bTEPjIvHIzAvZGstsFynN+eyLW3Ze9vR8sgzsNrTc0aTh0SmRfM7PA8pbcseReyTv9XvBol4uT5uh
	pOMwazepLUzYaDa+em90FqDr+sYRRZxFzFc89l3Pc8+zfUvV5iUeG14ZFBYV2nvJjJ5A7BdASUofF
	8IaRYsqBbWsdsMIfI0ssh7Pp3WFJbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0AQp-0001Lu-5O; Fri, 07 Feb 2020 20:40:55 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0AQi-0001La-OH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 20:40:50 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j0ARF-0004wm-Ik; Fri, 07 Feb 2020 20:41:21 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: netdev@vger.kernel.org
Subject: [PATCH] net: thunderx: use proper interface type for RGMII
Date: Fri,  7 Feb 2020 12:40:26 -0800
Message-Id: <1581108026-28170-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_124048_823755_3A8EC3B3 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, Tim Harvey <tharvey@gateworks.com>,
 linux-kernel@vger.kernel.org, rrichter@marvell.com,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net,
 sgoutham@marvell.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The configuration of the OCTEONTX XCV_DLL_CTL register via
xcv_init_hw() is such that the RGMII RX delay is bypassed
leaving the RGMII TX delay enabled in the MAC:

	/* Configure DLL - enable or bypass
	 * TX no bypass, RX bypass
	 */
	cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
	cfg &= ~0xFF03;
	cfg |= CLKRX_BYP;
	writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);

This would coorespond to a interface type of PHY_INTERFACE_MODE_RGMII_RXID
and not PHY_INTERFACE_MODE_RGMII.

Fixing this allows RGMII PHY drivers to do the right thing (enable
RX delay in the PHY) instead of erroneously enabling both delays in the
PHY.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
index c4f6ec0..17a4110 100644
--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
@@ -1039,7 +1039,7 @@ static int phy_interface_mode(u8 lmac_type)
 	if (lmac_type == BGX_MODE_QSGMII)
 		return PHY_INTERFACE_MODE_QSGMII;
 	if (lmac_type == BGX_MODE_RGMII)
-		return PHY_INTERFACE_MODE_RGMII;
+		return PHY_INTERFACE_MODE_RGMII_RXID;
 
 	return PHY_INTERFACE_MODE_SGMII;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
