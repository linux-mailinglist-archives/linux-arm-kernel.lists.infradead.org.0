Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B2614A2AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y8n9MzYnYo/DhZzwzs5P6ym//Jh6LJVG9NfOREHjKU0=; b=jLk0rM4eV/nz/2+6HAPhNUJpZt
	YWXPUUnXmkyGGq4VdldvnitGnTQQXZUkrzyGlphGtzBdHZZbIwUme62OIh+kBX4UPaWhRuLG7gomv
	mW7oiFkb/RXdLovIPUKjRrPw2dCmTNK0rKn67Ly6HUsWPaAZ2cu2wzbT/BI7bXshBhyur/Vc/EHbu
	mNs5YPFNskkey0cjOJ+sdCTPMqK9ztoCjt0jiYah8P0aelvEtz3pCq+P1SE5DyV+y4QQkCl5awyQq
	psO1CbuFLY4eoqBRP0d7/wA+rfRQqPHKvOMxcIEdH/iIpWcS+YKOmyvR7MA2vFtixOxiw/HU8R7mM
	zbpHKr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2JE-0000D4-Q5; Mon, 27 Jan 2020 11:12:00 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2Gt-0005Rs-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:09:40 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 30CF8407A1;
 Mon, 27 Jan 2020 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580123375; bh=NixIYL9DJLQ1EjTICLfMWuieQcujDdoMHw59TKyyS8M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=TfOTD3c61jySU590rkw/WFPmnX4b3Yp1lziig60p8MtXl/WVBNxXo6Eesngx+eomY
 QwzQcFIQEBQT5yFCCWbIYUgPd/Gf6bquxFUnrJzgLahK/AMKBrYhn8TK8iXfLEXQBE
 1uWntPc45cgt/P611nE6So2fe0aScGXMFPM9bvqOQK+xi9p5SBRa9J6PnCYtBUNmbb
 B+kXNx8qSeg2RXFaVHbaPzhvqv6jX8y9HInABcF+DsAvrx3OX/rpSknvCBn4nMkS57
 R129Qv3KRyueOvdsntraQascjwgfEXhYZJco/6HdkiKXUdmHHeyx6SIr0d9ysgYuFa
 sZWoAJcRwq+Bg==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id BD0F3A009B;
 Mon, 27 Jan 2020 11:09:28 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is up
 without PHY
Date: Mon, 27 Jan 2020 12:09:11 +0100
Message-Id: <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1580122909.git.Jose.Abreu@synopsys.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_030935_793155_4D87E2CB 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When we don't have any real PHY driver connected and we get link up from
PCS we shall configure MAC and PCS for the desired speed and also
resolve the flow control settings from MAC side.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/phy/phylink.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 4174d874b1f7..75dbaf80d7a5 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -533,10 +533,20 @@ static void phylink_resolve(struct work_struct *w)
 
 	if (link_changed) {
 		pl->old_link_state = link_state.link;
-		if (!link_state.link)
+		if (!link_state.link) {
 			phylink_mac_link_down(pl);
-		else
+		} else {
+			/* If no PHY is connected, we still need to configure
+			 * MAC/PCS for flow control and speed.
+			 */
+			if (!pl->phydev) {
+				phylink_resolve_flow(pl, &link_state);
+				phylink_mac_config(pl, &link_state);
+			}
+
 			phylink_mac_link_up(pl, link_state);
+		}
+
 	}
 	if (!link_state.link && pl->mac_link_dropped) {
 		pl->mac_link_dropped = false;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
