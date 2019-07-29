Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C5078440
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 06:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGdI+yNeU+USOmtbG+no7DHqtRtCq//RcJP6f+EIS04=; b=F+sVbiPFlk5cCo
	1DzwU+pNGifPMYayIjLw+ccC4UnVmIiWw5xXZcPPNUEeqeM9s/U7EYvO8p4epF6mZx09dEPhWtqpo
	6iYhsMfIHy6CH6wpdF1+CF4xxep6Ex7R8lS65kTNYr+J1GihRALZtKc+Uq+XHdaDpqVWyyyq4vV1g
	kWZSQeT/DEv0R82YwDtPUxZDbOqlxt6OQae/uBLuNj5W5jsdzMRGwlWi7oJjNkZT8fX7Jga3iIug5
	n1QofEDAnx6yWutXuW4sfxMlnrmS91sqE/gaLOcQm4E70Vng8xU/aRsHA9sGAD8DlhqUXbAx4peNJ
	GsWGEnr1+RjyiDBkXNgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxT5-0006W9-N9; Mon, 29 Jul 2019 04:41:03 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxRl-0004Ta-Lu
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 04:39:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0AEB815E6;
 Mon, 29 Jul 2019 00:39:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 00:39:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gbLCW5fm9NgGd
 7NHSQsOKrpG0gqK4d9GLmhDrnziGJs=; b=hp55ISoU8+QgD334QT5GIX0PfHxLJ
 cWMvGN9B788ZGK9aVgcIsD2ftEo+x9HRPTXoFnXiCrzRpIVPGM3pc+BfAtjZWkgP
 CwIKZAN+/9ZqOfooOhvWy/GdAIrIq/BLf1eSqIkFPYYtNCqSH1QzX+yTwYUiTHkF
 OaNdFXCl8O51IgFY2G51Kx6lkU9QM1hgZPO3gdrdSE46P7r+WCPZX6Sk1uyGtEai
 BDxO3QVb0AOsqZrvnrJ366LV8Wfc95ymwrJn4OwkBG/3Vwzvrr/19kMn5+XVxnqh
 kDttFzMPueC52PJQMoA+B21s09Ov8YTiQ9aj0lP6cy1Pgm6VB8opK78Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gbLCW5fm9NgGd7NHSQsOKrpG0gqK4d9GLmhDrnziGJs=; b=Sfu5Udh3
 PIIwUkU+eLLEDQPjOSZXztBhSJDvGsjmlZVef8IFw3zQaslUaFHBXRSkfqlWjgE9
 WTz4hJp+2vBF8aQbaeVW4OWsxz75fHNegnguK3gCFVwGNR9nF9P/J2zyc3BqItqQ
 bM+eFcW5VGHz5QQjpwWQhfj9DEA2nNWn2FL2cHUc9N3xBo3/f1SW2jLvC4SrqNpy
 Mh9nANtV9BR9VQHHt+I3s5InfjFFhik+GDtyW++WGWPoi2swiRtRzkWrH/MI5dwM
 wMo9xH2W8aVO3atUUfM30BWxKrMwDa9pTIUCqGKA9mvJFWssh4GKoluzRRJsPMIG
 HaoEb3nwEc1hmg==
X-ME-Sender: <xms:jHg-XXPK51iR4BfWppR7-D7MruukohO680rZTa-7jaOXfakR5sv-lw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 vd
X-ME-Proxy: <xmx:jHg-XXOOl4VUPd_LYePOGJ5Pmw0bLPq_LYXBF1DFfVcTi5JkuYLOQw>
 <xmx:jHg-XX-YGvCONlIW1rtRfkSmX3OErjkltvkCFRk7HF3-EwZA8-HRSQ>
 <xmx:jHg-XT7-sQvC5-4mj0JPeWJ1H8emLKDxCd1k8t7sNFmA8pM47Ipdxw>
 <xmx:jXg-XW6cX41nswoNqn4yEttHtHJMqDRsP0avOLrCJLO2nfNvOKDiGQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id DE0FF8005A;
 Mon, 29 Jul 2019 00:39:36 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH 4/4] net: ftgmac100: Select ASPEED MDIO driver for the AST2600
Date: Mon, 29 Jul 2019 14:09:26 +0930
Message-Id: <20190729043926.32679-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729043926.32679-1-andrew@aj.id.au>
References: <20190729043926.32679-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_213941_913623_4843D39F 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ensures we can talk to a PHY via MDIO on the AST2600, as the MDIO
controller is now separate from the MAC.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/net/ethernet/faraday/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/faraday/Kconfig b/drivers/net/ethernet/faraday/Kconfig
index a9b105803fb7..73e4f2648e49 100644
--- a/drivers/net/ethernet/faraday/Kconfig
+++ b/drivers/net/ethernet/faraday/Kconfig
@@ -32,6 +32,7 @@ config FTGMAC100
 	depends on ARM || NDS32 || COMPILE_TEST
 	depends on !64BIT || BROKEN
 	select PHYLIB
+	select MDIO_ASPEED if MACH_ASPEED_G6
 	---help---
 	  This driver supports the FTGMAC100 Gigabit Ethernet controller
 	  from Faraday. It is used on Faraday A369, Andes AG102 and some
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
