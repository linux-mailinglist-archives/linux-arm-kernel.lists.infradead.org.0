Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5FE244AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 01:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nXaLEYzzg0EEiF1MiiXgfF9bD99kwzSj24f+YOqT3k=; b=RdhPO67AVJHzOQ
	SQFhLED04jg4thD9AR9kufha/1ttlnMH+jGc2uGyWsL7iapD21cOWw5yqZKpvT/TPhCqU3W45zzqX
	7eLvn3Mm318v1JqYYWT9ovywWIxU7G8iRCYqcTGUSgcqB8M3KSIp+haqFwxQftiyf4nClRZfnZxFK
	RfXKQyy7qP5LHQe8NaX/wV17KLAmIkkEIM/lRYWpZeJYqWjV2p+u0DEccpVy5BzG6c/4LaeZ0EOQ8
	kscSUSykKakrLMWL0UlQXcbDZzQWrnpyCKRfke7S2z2E6yFNcxqxMJT9akExCTrzzqnx3xM1vKvdu
	sfqDPftOsSNUaOY4Qv6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSs45-0004A9-2U; Mon, 20 May 2019 23:51:33 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSs2o-0002vu-3l
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 23:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558396212; bh=lmN/vA2/QcSdUuzR1xKNkZ8E+T7fPttQ3k8QpH5igsQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=icuRmovmqEiyTkx1kZjdynNoQSk4c78preJIjNGDecNXCTpka+1z9503Aodfx2L88
 6sOPPpp5L2sC2XXN6VuIHqWX1c97ZiYpULA+xILVHEybnqSj3gIIu2jnLkXhLVSlH5
 V6knXlNvxgV1UUKlgvFu1bsGDIuZjLwsN46MtJdw=
From: megous@megous.com
To: linux-sunxi@googlegroups.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/6] net: stmmac: sun8i: force select external PHY when no
 internal one
Date: Tue, 21 May 2019 01:50:05 +0200
Message-Id: <20190520235009.16734-3-megous@megous.com>
In-Reply-To: <20190520235009.16734-1-megous@megous.com>
References: <20190520235009.16734-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_165014_677032_98F13759 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Ondrej Jirman <megous@megous.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, Jose Abreu <joabreu@synopsys.com>,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The PHY selection bit also exists on SoCs without an internal PHY; if it's
set to 1 (internal PHY, default value) then the MAC will not make use of
any PHY such SoCs.

This problem appears when adapting for H6, which has no real internal PHY
(the "internal PHY" on H6 is not on-die, but on a co-packaged AC200 chip,
connected via RMII interface at GPIO bank A).

Force the PHY selection bit to 0 when the SOC doesn't have an internal PHY,
to address the problem of a wrong default value.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 3258dec84d55..0484c289f328 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -907,6 +907,11 @@ static int sun8i_dwmac_set_syscon(struct stmmac_priv *priv)
 		 * address. No need to mask it again.
 		 */
 		reg |= 1 << H3_EPHY_ADDR_SHIFT;
+	} else {
+		/* For SoCs without internal PHY the PHY selection bit should be
+		 * set to 0 (external PHY).
+		 */
+		reg &= ~H3_EPHY_SELECT;
 	}
 
 	if (!of_property_read_u32(node, "allwinner,tx-delay-ps", &val)) {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
