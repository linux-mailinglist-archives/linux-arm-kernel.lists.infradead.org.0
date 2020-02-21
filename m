Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE63166FD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 07:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LtarxSGOE5BztcoLrWinnv6RGeXoOfr1ZAmQzLFcNI=; b=LQdDU/sI5e5rgi
	dTAg/Pv5IAhzLFX+8pvHV6D9zDdMI5HBDqu2IGfTBnx7kWYdtLa56dYGo18I+2LX3bfVREZbOvKoH
	veEWagyECgu0W0+TKX+5tv2n509v5oJC1vIOSdfq6IhMYfvL6+mUS7EE22fBh4ms2yWRvD0Lp6gYK
	lgU9qAgZwinea4Nt6pDz255HIbJ/BVQPmG3tAWcDuEACRIxaaz9IUFuEdL91Hb4gLw0XePVkb6BWU
	YS1CCg+NVUKUJlt1DqW1w20OhRmyyA1FMMrBjNnGAQDY8764ywFqv22ocSS25SBaCvtpu0MDPtDd1
	t2QB3qwM/xPGxnwSVirA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j526X-0000CH-FE; Fri, 21 Feb 2020 06:48:05 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j525l-00085f-2d
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 06:47:19 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 845BDAEB4D;
 Fri, 21 Feb 2020 06:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582267630; bh=v8hfyWw4kbOSf4Vr8iOqNpwVN5vkMHP3BbYopvXwRbo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fwDB4CLntBUZXODVM2cahRr/VQAtZPn9lNpIVIiNpOosKQMFtOvNweEJwPzrQFEqz
 Ej22eU/HJg+Stttbh4O+BGQL2Oz9L+X0uhqlsyxSW/75MM61yAuPH1lXmG1bXqcaKB
 tF5R9LhsLcCTV7qCLodEdc/W52+THIAcHgbwhQL5oRVSYDuPbnY/68GZ2o7gOv9xb/
 9GN0tBryV5QcONGfisqhk9N4RnENk3oC24JC5nR0JNP2sksliUajyqCfl+7/lRU+Ag
 HrwnJZN/HTr11ASBMKqVtl8Yc6W9NGNIUY+QnhdRdG1CkyuHii+aaht1d2RrTqom43
 CPmXrxArJA32g==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net v2 0/4] net: ll_temac: Bugfixes
Date: Fri, 21 Feb 2020 07:47:09 +0100
Message-Id: <cover.1582267079.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1582108989.git.esben@geanix.com>
References: <cover.1582108989.git.esben@geanix.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_224717_332445_75577CA3 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix a number of bugs which have been present since the first commit.

The bugs fixed in patch 1,2 and 4 have all been observed in real systems, and
was relatively easy to reproduce given an appropriate stress setup.

Changes since v1:

- Changed error handling of of dma_map_single() in temac_start_xmit() to drop
  packet instead of returning NETDEV_TX_BUSY.

Esben Haabendal (4):
  net: ll_temac: Fix race condition causing TX hang
  net: ll_temac: Add more error handling of dma_map_single() calls
  net: ll_temac: Fix RX buffer descriptor handling on GFP_ATOMIC
    pressure
  net: ll_temac: Handle DMA halt condition caused by buffer underrun

 drivers/net/ethernet/xilinx/ll_temac.h      |   4 +
 drivers/net/ethernet/xilinx/ll_temac_main.c | 209 ++++++++++++++++----
 2 files changed, 175 insertions(+), 38 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
