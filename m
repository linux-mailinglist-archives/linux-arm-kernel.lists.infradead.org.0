Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB894BE84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a2hr1uxrZ5J8dT4+MMgboIRDHNnVxt6SNNqwza9gUe4=; b=k/m+fbyALaxX0C
	BwtCaCagj18DIBURDsXtqpAU0vcdoNaaoKj/LmE+gNOruXcS3CML995E+sJwjLoJoTmyzPNsPRmFE
	5QkAp3VFIPQ25ZCjT8oJigECTf8kxE2bb/QX/Z8Ioa97WjcO8yR7uLhgzuNpiU8cQth87KkC/0X42
	Mn688jppcHGGYxWlsUr18o1NNb2nLYUVh52ctz80/bwHw9R2qxhdD2G5Pc5PPOymsVu5pJT/G8t2m
	ej+3DEeT2CInagUw632+fRnSScLg7iDTolLfQj0cPSajii4sZAH/UpspHpQWhP00R81MhC3Zmp1pT
	G/TmKqSzJCjeKlPsKmbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddiK-0005rp-4G; Wed, 19 Jun 2019 16:45:36 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddi9-0005qz-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:45:26 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hddi2-0001iD-9W; Wed, 19 Jun 2019 16:45:18 +0000
From: Colin King <colin.king@canonical.com>
To: Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "David S . Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] can: xilinx_can: clean up indentation issue
Date: Wed, 19 Jun 2019 17:45:17 +0100
Message-Id: <20190619164518.5683-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_094525_471922_28E4F897 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

A statement is indented one level too deep, fix this.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/can/xilinx_can.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index 63203ff452b5..a3940141555c 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -924,7 +924,7 @@ static void xcan_err_interrupt(struct net_device *ndev, u32 isr)
 				cf->data[3] = CAN_ERR_PROT_LOC_CRC_SEQ;
 			}
 		}
-			priv->can.can_stats.bus_error++;
+		priv->can.can_stats.bus_error++;
 	}
 
 	if (skb) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
