Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBE360701
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4EYAqSS9octTzaqELnwxzxpt/m4X8vTJYNceuHqDSI=; b=c98T9PZA+v814N
	3mjcz86biRwKwj7LMxUcZ+iwDw/34ssK/skupp7NiLoEc0Q4LKMd2nlrHlxXZwGcI4iied900nLXx
	U/8TMoOUFmojDmadzc47UifGRecnDUPtNKu8dST6YwQMSupaP/0enLrwW++c/GjChaZcHtQ2mALW5
	dkwusVd4EynikYQVZiTM4NtVcfPwhiyKZJUFxgC36GXcKxC0cAtnp7kHQP5E0eVuFlLfEG/AuHW7u
	EjbEVjg8OmA2rXW3hx//nXrDyB7y/80tzYNgGbsjwVXRz23GNvEDWVrOwYCIUq1OfpspStgfGzLCx
	/cnj13Cad8+Db36x+KlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOjp-0001X8-3w; Fri, 05 Jul 2019 13:58:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2c-0004ou-Gi
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 12:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T86XdJ8efDoll85FvdfuxVoAvnlka8CM+xoA0u9jJyI=; b=GuSRP+QOfKXKY2fN+jvkUadIs8
 yG7IGVfCn+bkS8Dmpc4sBZo0TiywCb1oEo1ZrGzW06l81x5MHAYmMn7o46luz/naNqCLbf+3kZiqD
 Nzm8GIMiexSqqHlvsts36JwIcEnrwzDKM/7/n13ve4r4A1DpY+sOqZ5uinKTQbdXGelF6SDn9sYig
 MozKnGMai/WeqlV/eW2X7XOabeMln4Gw/6S2PKQ3IYWoSYEbxlzYoVWKc/oNspBvfCbvDlk+Z8joS
 2IZcnYh9X5yJpWDHng2uKFx76odzI6agKnImdQSACahqxVljQ6cJps5f4HSMcGrLI57EcQNiPyotp
 K9VCtXgQ==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjN2f-0000tZ-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:10:19 +0000
Received: from mc-bl-xps13.lan (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: maxime.chevallier@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 51EF7200017;
 Fri,  5 Jul 2019 12:09:16 +0000 (UTC)
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Subject: [PATCH net-next 2/2] net: mvpp2: cls: Add support for ETHER_FLOW
Date: Fri,  5 Jul 2019 14:09:13 +0200
Message-Id: <20190705120913.25013-3-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
References: <20190705120913.25013-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_131017_724551_55CB11F3 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, netdev@vger.kernel.org,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>, nadavh@marvell.com,
 thomas.petazzoni@bootlin.com, miquel.raynal@bootlin.com, stefanc@marvell.com,
 mw@semihalf.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Users can specify classification actions based on the 'ether' flow type.
In that case, this will apply to all ethernet traffic, superseeding
flows such as 'udp4' or 'tcp6'.

Add support for this flow type in the PPv2 classifier, by mapping the
ETHER_FLOW value to the corresponding entries in the classifier.

Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
index 6c088c903c15..35478cba2aa5 100644
--- a/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
+++ b/drivers/net/ethernet/marvell/mvpp2/mvpp2_cls.c
@@ -548,6 +548,8 @@ void mvpp2_cls_c2_read(struct mvpp2 *priv, int index,
 static int mvpp2_cls_ethtool_flow_to_type(int flow_type)
 {
 	switch (flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS)) {
+	case ETHER_FLOW:
+		return MVPP22_FLOW_ETHERNET;
 	case TCP_V4_FLOW:
 		return MVPP22_FLOW_TCP4;
 	case TCP_V6_FLOW:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
