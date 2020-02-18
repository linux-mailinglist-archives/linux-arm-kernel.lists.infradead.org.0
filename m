Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C3C16222F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:26:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=InZJfW/Er9N4JYg/A0H7eG3zgveWj8xaOxdy2KZnIOY=; b=bPdEaDwCwmYV5r
	CfGWTGLgOHPp3HhJTflO6C7ZO5xH54dOXDw68kjmcQnQssOZgKtuNvw/j0KsJHF1QArwwL4HhvOBu
	aaM1jOdhdkq6ygy0bVBNOY/BtHrhapnuarnEsaY6P7q8pl0XuuLqZutCdtUNFkj2JMx1wwKRd3fnI
	XQ+pkkJzb4U/LxeB8ybohGPEZ+opeT6XbFnpwxoI1U1UjfsU5g+ivRokeBZsjAfp8h1p158lgWnIa
	+lNhMA72lITlZRuGPmmYZELyOuWwssuyuK//OKo1YJ5MNigzzd3AN2PBCeOGPwvnmbHvtbRhvjRWF
	BjhKNc5Lho3ARWPFqh/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yD0-00084e-Rm; Tue, 18 Feb 2020 08:26:22 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yCr-00083L-7Y
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:26:15 +0000
Received: from localhost (unknown [193.163.1.7])
 by first.geanix.com (Postfix) with ESMTPSA id 022A1C0025;
 Tue, 18 Feb 2020 08:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582014320; bh=/5PMdnbcZEmMSf5cYP0ZOMULsq12k2qzbPlGi8rrhgU=;
 h=From:To:Cc:Subject:Date;
 b=ZgWAOP0Hylu0LjKdn3Be7eQFCzflLQxHlbF9uN5ym2/rCl6O/6VcuXiWzoCWPi7um
 VuwNlDTMwWLPnF3jARudkJRYDPOEcX0SNjE1foTw3ezYopjP7ZHlLG2CJ1ADDZNuiJ
 nyWO8ROCLMvNKZvk93KqX4SH7RIK+9UpcGQLUIQTzauvPCtKqVTmMgNbO3J7zGakb9
 QcB6UZr9jKQiv4JCpCc1dG8VK/LydOeIQM7I2FobwSwod2xomL4oGBcQcMKWwrGdnl
 OwoihCxFENs1TfKNVjtHvah/xoG5ucszhw/2PzirGJjgSRsWRavT8WW4C3PcI6n0/3
 FRiDfyPSgmKWw==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH 0/8] net: ll_temac: Bugfixes and ethtool support
Date: Tue, 18 Feb 2020 09:26:07 +0100
Message-Id: <20200218082607.7035-1-esben@geanix.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Status: No, score=1.0 required=4.0 tests=BAYES_50,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_002613_856217_7D2071AC 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Patch 1-4 brings fixes a number of bugs observed.
Patch 5-6 are simple cleanup, removing two unused struct fields.
Patch 7-8 add ethtool support for controlling rx and tx ring sizes and irq
coalesce parameters.

Esben Haabendal (9):
  net: ll_temac: Fix race condition causing TX hang
  net: ll_temac: Add more error handling of dma_map_single() calls
  net: ll_temac: Fix RX buffer descriptor handling on GFP_ATOMIC
    pressure
  net: ll_temac: Handle DMA halt condition caused by buffer underrun
  net: ll_temac: Remove unused tx_bd_next struct field
  net: ll_temac: Remove unused start_p variable
  net: ll_temac: Make RX/TX ring sizes configurable
  net: ll_temac: Add ethtool support for coalesce parameters

 drivers/net/ethernet/xilinx/ll_temac.h      |  12 +-
 drivers/net/ethernet/xilinx/ll_temac_main.c | 435 ++++++++++++++++----
 2 files changed, 367 insertions(+), 80 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
