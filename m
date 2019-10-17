Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B69DB9B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 00:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AYiFwVeYj5avsDvnvE0+6Sur6cpiDjZZgB9m7UBpyfs=; b=fl0XflIjAVzlcq
	elJeQZF/r4p9vAjkegWIezDKgG4D4XIqfSqkzyxlPfmhBwKlfJbMynF6j7EhG5GKzMTeQWpsclvFm
	P79qhVGxhP0VMO3kElXzdQHfM0GFTCNZubOZA047szFFFAMMitY5g5onmYtUcMKHD5G5kgdfKp9h2
	ZFVrZqNvYHbts3k8TWhGqJIQMBqLiExczoOhkr/tFVuhjQTa0NoOK7n+cWgEDlv42ppZXDaCbrHgP
	ksIQRVXFAxRiHpPktraqJl9lUAVhCQPhWIPbA+19jsmIE9AGlKvkjxBr04Kys0v6reV2HId6z6hSI
	mtkvmamsCDrF/Pyz14qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLEAX-0003R8-5o; Thu, 17 Oct 2019 22:22:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLEAN-0003Oh-1V
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 22:22:46 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 312971C0003;
 Thu, 17 Oct 2019 22:22:32 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v3 0/2] net: lpc_eth: parse phy nodes from device tree
Date: Fri, 18 Oct 2019 00:22:29 +0200
Message-Id: <20191017222231.29122-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_152243_217158_7025B7CB 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow describing connected phys using device tree. This solves issues finding
the phy on the mdio bus and allows decribing the interrupt line the phy is
possibly connected to.

Changes in v3:
 - rebased on net-next
 - collected Reviewed-by

Changes in v2:
 - move the phy decription in the mdio subnode.

Alexandre Belloni (2):
  dt-bindings: net: lpc-eth: document optional properties
  net: lpc_eth: parse phy nodes from device tree

 .../devicetree/bindings/net/lpc-eth.txt       |  5 ++++
 drivers/net/ethernet/nxp/lpc_eth.c            | 28 +++++++++++++------
 2 files changed, 25 insertions(+), 8 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
