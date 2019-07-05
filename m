Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E657607B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+1GU07N/RbgxdaoPBp8XY8unGGukHkzT6AoADLitI1I=; b=OFK
	BQj7KYBMJ9nUFYx+z9Ej88C/vkLnhVhpgVQBWndAcWkLRcxkIB2Erw1TVXGCOxpApWtD/foW3sCVg
	NEyHmJVovSyr5RsXLCxfCe+gZFW6mprtVvuVF+Fl2AgF8GeWeel4A/LnaVdufnJY4M6HE0SildBNA
	BLZWsSJFjA0FiOfXTOFwnsXMeyEzXX6mR3WkTzdpqB5zrz2vBzctlcipPcagruCvxUK8t1To8qJPx
	H8kaMUyTjy/jPMogGRJOlw3xbBo0I+xrjZPzDIOjJZxxVqsDkn3vf5Go5oWLa8O/MJBgQSXmHoG25
	OcuRUIUJIVadQZE62XgfoTqnEC0OFaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP2b-0003JR-Gf; Fri, 05 Jul 2019 14:18:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP2S-0003IK-Sx
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+oFio1ea6dQxJRXVTj7of9bcGhugNcqQZNRD6Yn4Zmw=; b=g4+Y9v1PHqy/eaFxQJi6aNNsb
 hxYzM11njW1mK9YoBRh7F1tIknVrSpIGbGGp0snxXhM315b9HTdLh3g2+C4AOTvNocYhSmEQqckh6
 piGd4dRddfBdILF3sG4ytYMubsEsU6lRDCjovfJIL8IdgQVO1JoY1jSwQaoovNGDWHRYlKNstMPJA
 pBWYDeLkq/gINbmsHJxO94UqIyP2yt4UpVeT55NwUPO5Mwmw5IS1Vp+hE8DR7Atam7AezhaoxLr/l
 4zFd4007CwELNV1en9tpsgw74DUiLWGzRH2J17oIQh77jeHIHrggi3A/+kMhoF55StTfCUszgVrq7
 w/EHdmuzw==;
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIZX-00039L-EO
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:23:57 +0000
Received: from mailhost.synopsys.com (mdc-mailhost1.synopsys.com
 [10.225.0.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 28920C1007;
 Fri,  5 Jul 2019 07:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1562311386; bh=PvnjkdO2lPXqItQxzN41sumk2gSLdYJIXhGD4ZnaASg=;
 h=From:To:Cc:Subject:Date:From;
 b=NjRugSxnve5rC5t74O5hYjsdXoLbd4OFJPpJoYnRmzuGfb0yls3NOZRp7RBA8sP8c
 A+c0n7/YnYQcrELsYI/sfCzyu/rul+/nikn/E4q72/lG66JNxRmfB5nkUNTie74JiM
 Un3N7dFaO/jg+dGo38y18TjYwAvErxpidWBiA/10oB+DsJItB1a34+bRug6EDiUKPP
 SQwaVgahw6YkxDJiGlI5ebzS6gnVijxmpgviJRKOaN2J9YbWy2EZZ/x3cocSurC9FQ
 pmghf1kg2RfQJKO/j7SzfUEkpgQ2pT7yR8onriCvBygxuDHmLfmh4cWuBsPDeObcyO
 q6hjgDjUH2yFQ==
Received: from de02.synopsys.com (germany.internal.synopsys.com [10.225.17.21])
 by mailhost.synopsys.com (Postfix) with ESMTP id EF17AA005D;
 Fri,  5 Jul 2019 07:23:02 +0000 (UTC)
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by de02.synopsys.com (Postfix) with ESMTP id 9B7783E234;
 Fri,  5 Jul 2019 09:23:02 +0200 (CEST)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH net-next v3 0/3] net: stmmac: Some improvements and a fix
Date: Fri,  5 Jul 2019 09:22:57 +0200
Message-Id: <cover.1562311299.git.joabreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_082355_655437_0E6DCA1B 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>, "David S . Miller" <davem@davemloft.net>,
 Alexandre Torgue <alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some performace improvements (01/03 and 03/03) and a fix (02/03), all for -next.

Cc: Joao Pinto <jpinto@synopsys.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>

Jose Abreu (3):
  net: stmmac: Implement RX Coalesce Frames setting
  net: stmmac: Fix descriptors address being in > 32 bits address space
  net: stmmac: Introducing support for Page Pool

 drivers/net/ethernet/stmicro/stmmac/Kconfig        |   1 +
 drivers/net/ethernet/stmicro/stmmac/common.h       |   1 +
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c  |   8 +-
 .../net/ethernet/stmicro/stmmac/dwmac1000_dma.c    |   8 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac100_dma.c |   8 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c   |   8 +-
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2.h     |   2 +
 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_dma.c |  10 +-
 drivers/net/ethernet/stmicro/stmmac/hwif.h         |   4 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac.h       |  12 +-
 .../net/ethernet/stmicro/stmmac/stmmac_ethtool.c   |   7 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c  | 217 +++++++--------------
 12 files changed, 114 insertions(+), 172 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
