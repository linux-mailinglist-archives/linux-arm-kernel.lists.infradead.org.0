Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A8C7B92F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGdI+yNeU+USOmtbG+no7DHqtRtCq//RcJP6f+EIS04=; b=m4eqyqaAjKJPx5
	yIgLSfZEvF8/yF9/tzek47sp1juJC5UzgARPfcC2uJe/uqJgyM0BBQK7gHUMEs5CEhwmTN6P+X0WH
	xQrWee9+qa2IP9w4fNcwEA+DoT7YoHhQ41qGs+wktzkNTqBQ5OEEW9sxnKNOA5EwKaCKJrNXlq/N/
	jt+/V48dbiCrb+Vfo2Rh1+zQdXawUbTW5Jvx1ikNW7wSClyk23BWpuTLytKJRUQZt6suuoLm5dRvy
	jSsGgXfTrIe+bk0LrwXLmbGOT8p2qMBZ6bFdEVajzyHOriTH6DNCQnKTuzNl46rixtcR0nicW5Qnm
	8E2mKvvKwsWvLtvekktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshMe-0004mY-Fk; Wed, 31 Jul 2019 05:41:28 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshLP-0003hv-2F
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:40:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5F2C82D4C;
 Wed, 31 Jul 2019 01:40:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 31 Jul 2019 01:40:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gbLCW5fm9NgGd
 7NHSQsOKrpG0gqK4d9GLmhDrnziGJs=; b=VlfQ+jaBx6M1eNbpsmY9c7XoFMwP1
 5iExP5LSTZ/+R2f7B488M+OtC1opnjEMBx/poItkTpP6FtPY1ClROIyFvRHHdUef
 LVgvqY/k7LJnW52DsTtX38pnAzOLMh6HYqvwNHkiZ5XvAnaHijeK2hG1lHSsZtch
 4GVnAFeR7nNHZyrH917dPmWTl+vJGCy8woOYj3MIUrkZm3AjeBrzQbg4/Dn9PVTJ
 QJz9K80Miastnfs5pMgE8/tauF/wOwVEV5m0TZqr2Ip7X/vMdvivhaP+Mig8hqBv
 5caGt2iYNBGAKw8FYb9D3B2atK1n8/bgCvQW7U5d2rxNmyLoOo4ETb4eQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gbLCW5fm9NgGd7NHSQsOKrpG0gqK4d9GLmhDrnziGJs=; b=yxYgPtcM
 rqeEijTvAgpyROeVysMp5lUdI8iwsmWj60tFvhL8AZBfuMu/A7GaT5tLBg5UU+ep
 TTquIN4tv68bCy7LneQRjTDjb89Iue4IBr5S4fZ3LaaWNlAnNFsoq1GpsyAzu6iK
 eGhaG+HLYn9xZUHJZc/FFpXjwaHc38Boi23fe3mQS4bQaIgNpmziNJkxxeHAYoKD
 EHyBZ1L/j7Z512JukWokYQJM0E3JhhTmyMHS3rIxurrwT1EGa8V4N1h6spQiaiCp
 UUAKojLEo+iWuiuaMJr3recWLzs09o9saECTBrXoRgJQSmzJvsdApmE54upwfwMH
 OGMmMJaDJq2+Hg==
X-ME-Sender: <xms:uilBXbe6YnMmqo2bvXPRVM49tzeY7xaees9Lr-bB_pIzhCmTB-AlVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeggdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 ud
X-ME-Proxy: <xmx:uilBXeD5KwrEpmb7kKRGYNIdxbEkJ9ifuNAFDqEj2OtBAT3fFsEV-g>
 <xmx:uilBXYspYjrGPLI-NWjiffNVdRe-fgTdCULKIuGyB5WbxShrrzC5AQ>
 <xmx:uilBXbH74Q90FmAehzDptAdn_seNLkNzDdDfcaglWRRUbf3CfY2z_g>
 <xmx:uilBXXDO62O3BrkRI80kvynlh83Pzok8exg_49HvtyTQjcfBHIqtFg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id E1CC780059;
 Wed, 31 Jul 2019 01:40:05 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 4/4] net: ftgmac100: Select ASPEED MDIO driver for
 the AST2600
Date: Wed, 31 Jul 2019 15:09:59 +0930
Message-Id: <20190731053959.16293-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731053959.16293-1-andrew@aj.id.au>
References: <20190731053959.16293-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_224011_310614_12F03B88 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
