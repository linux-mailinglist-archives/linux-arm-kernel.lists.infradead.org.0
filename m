Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1561642A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VsiMBi+/9wSGsafjI1FK2ahtJzuIjCmn50n5p9qW8S4=; b=bifjOJp1LWXpuv
	nnyymKBGPSnvBLlu+1a2QU4GAqbXyNHOefw1DiRoRqFq/hSyT/rxAGW1kLKs7wydlvJyT+rk3sYHk
	QVwpcstOIaEe0Z1OHarrJKxVfi1SJCwvPyHPLB7vnMwqk+80uzk2w1Lu6y08v6zLRiw8CQRswkXSo
	Zm5Yfau5BGH1vVGBaGmauiRxsuOZMSjsBA4LZGihv2bxmIh65FxMjA7bPwLD8l80cXkhKQRvxikEv
	KnOBjnBIWNm9cfHlysk6V7yG60XFP0IQ3p9gwklT2+9Cj3xW1ugFFJ5IzJQuHBvd8zqCXAYklSmE3
	y/zkz7KmJOzWLjl6WqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MzD-0002kg-Rq; Wed, 19 Feb 2020 10:53:47 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Mz5-0002kF-G6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:53:40 +0000
Received: from localhost (_gateway [172.20.0.1])
 by first.geanix.com (Postfix) with ESMTPSA id 65BD6C002E;
 Wed, 19 Feb 2020 10:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582109617; bh=4da/aCxIHKB77/nlVZEvWvQNLVXyCUPaOYknt7VRhaI=;
 h=From:To:Cc:Subject:Date;
 b=DDOv9LgrrQVJQD+dNheEz6/+GsIeIqpnX4c77hFGGIMcNQtRUdoDxyJ/X2P2gvfuf
 HcldEgcX07ruCdx/fS/A31UBBDDB7X61YLi3zLVB3TK1rKax2pcOFvwqd3JJbgNhmg
 jhiSRa72+rVNefjiqQ82Azinq6rVTVPBBMgKApgJKS6ogrhywZmRcZEcIgKSTuxNUS
 Yon5t8ZC7e46/nVQUCCTkWJJzDt+8j64i6EiSx4CzKiRzrN6521S7Pu7hCXUTPL4g6
 fri252G4bnaci1z6dkxOgUZNJ8L4qu9Z4q0jM2T4jtucMz9i0mfrp+d7r1DXlCgvXY
 qOb3kbNj+eHBw==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net 0/4] net: ll_temac: Bugfixes
Date: Wed, 19 Feb 2020 11:53:37 +0100
Message-Id: <cover.1582108989.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_025339_678903_33F3AB51 
X-CRM114-Status: UNSURE (   5.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Esben Haabendal (4):
  net: ll_temac: Fix race condition causing TX hang
  net: ll_temac: Add more error handling of dma_map_single() calls
  net: ll_temac: Fix RX buffer descriptor handling on GFP_ATOMIC
    pressure
  net: ll_temac: Handle DMA halt condition caused by buffer underrun

 drivers/net/ethernet/xilinx/ll_temac.h      |   4 +
 drivers/net/ethernet/xilinx/ll_temac_main.c | 204 ++++++++++++++++----
 2 files changed, 170 insertions(+), 38 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
