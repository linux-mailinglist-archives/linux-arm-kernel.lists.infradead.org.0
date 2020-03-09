Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A2A17DB2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 09:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dCKsPC2X3OZ/mjGMMBZ8s65P7mH01n5CW51FjM/k3CY=; b=NkIo0fffyQ0XLpijX5RpboaFul
	MUmaXLOE0814RNF7pv1N0KS5snJC5iRcTS0jYwle0bniTVFSQTUug4wuGynCI5p0HlW+4Wgq5fccd
	dTF0YI2XebTUoSIrqegUjKO3ioqvcKZJwPMddhBanMvjlcx/qRm6VQ0yEBBwIzNCetOKJvxwKIu7U
	3P8x6NkML4KHOSvLyRh/n3KrBsh2t3SaaRThXWT7CpHTNAY15b2qYb3YSlPlck0sTOP+IHr1kaiye
	pRNakHOL5yKrA517/IpNRk5o7z0NbtrnxuerrmMmh7Y1NMlQLBEW6ypeKD8SEZQuiNmicxXrgBWEd
	/M0Oy5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDvL-00040A-Li; Mon, 09 Mar 2020 08:38:07 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDu2-0002x0-5Y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:36:49 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0BE24C04C9;
 Mon,  9 Mar 2020 08:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583743005; bh=l4GGId4B8ITZnEheuBbnHxTOMeyOh89oiemUVnP91n4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=B+6fx6mpT48iBw+hv1r49pCI4sDvO0ntudaH96Ju2bucqI2sISfbhq9UK6ipq74ro
 /9ho3uv6t+uNhyhNNw8zFG0ao9C0loxXG6IJaeyQtSBnaJZ9hJkfwRDIBU1eGwv2pO
 Izl3i+Qls8rLIddtLQPz/ZhwkYsER3iQb6PnTsKZqgaLnHprNKellxK+XHh9UURhBO
 /VF/UvIMrCmxqEy7n8skzKOvpS/XvT9QtPNeLeUySJInolU8B64evWfdDlSmkkbc4o
 RJMs64BpjrEjiKeDOFEzE3nFKGBNMLNFVCki8bcJ5fTmZpRQcC1N1y0AXCIsret235
 j4166sK961YwQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 676CAA0075;
 Mon,  9 Mar 2020 08:36:41 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 6/8] net: phylink: Test if MAC/PCS support Autoneg
Date: Mon,  9 Mar 2020 09:36:25 +0100
Message-Id: <001bd169362fa564d515d423ca6d42640a35df6a.1583742616.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1583742615.git.Jose.Abreu@synopsys.com>
References: <cover.1583742615.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_013646_257233_87DF1D54 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

We may have cases where MAC or PCS do not support Autoneg. Check if it
is supported after validate callback is called.

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
 drivers/net/phy/phylink.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 47f4ce02d7bc..19db68d74cb4 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -340,6 +340,9 @@ static int phylink_parse_mode(struct phylink *pl, struct fwnode_handle *fwnode)
 				    "failed to validate link configuration for in-band status\n");
 			return -EINVAL;
 		}
+
+		/* Check if MAC/PCS also supports Autoneg. */
+		pl->link_config.an_enabled = phylink_test(pl->supported, Autoneg);
 	}
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
