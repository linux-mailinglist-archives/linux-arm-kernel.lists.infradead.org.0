Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F3781063
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 04:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vSGhgPL9znmmxZvJbl+UKmBQcZYrVODJEeQONEWR6c=; b=C6H8Y69HgLHLfU
	YtAGhgc5NJlaFCDw7imTf9RrkCG0RZ3535exkApcU7M6HRrQDA1y9chD1XwENTvjZrphxXL4HWyxn
	00zG/PKByL101KMTO25rslLYVeJ7BwxrRFvpXCxkNadgCXWwctkXb3we41qyQ0Hn31dNtpAfEIosh
	f3Sm+b2mC4TWWQFXpuTOM3Cn/WkLbE0Yj1UcSJj0AvbPsREME+uUA8Nnx2qWvS1ub/BrmxCFHcM2C
	HoJAOxkNnKEHUEUKM6QOL3MRV4y0YrUCrPwUpvPxrcQ1V+5p+OEPalYlo4BSaRceXfeNi3PKNQK9S
	/wxmnI+4OWfulLQbeaHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huT6R-0001c9-D1; Mon, 05 Aug 2019 02:52:03 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huT6F-0001aj-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 02:51:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0083CA41;
 Sun,  4 Aug 2019 22:51:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 22:51:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=i0qal0AGEr2Bges+vL14pUAf+z
 DcRqtDacbfO105sJc=; b=Y9oOz+cTp1dT+y9k89c0uF6jS0yIndtfJNF1u4HoLQ
 KyubJDrvyoRf68NY+GsS6W7kgAUl6O9VmVHuRcXU4ah5Sl8//gs1nlI12eGbCRZv
 BVeK6/xOvqNz6qB0N12dE0RWrCcYY163qCA6iIIM4K7r2CRKqx6t9CXhMMwheBQy
 chtRDWXY+yyT7Q79f9UMOf50J1nIdlsCd95f589YfsUh9x0a9yHK3nsPfTxh07Sl
 p44fD3I40yEut/wU4v3qiI4pHd3liTwupUyXoCqW4Ur1Ek9grqwpSpB9DxCKDyP2
 nC4SG4OHqEooCSlNIre/04iNdo+uIposhTSCRJ+prRbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=i0qal0AGEr2Bges+v
 L14pUAf+zDcRqtDacbfO105sJc=; b=IAYIFF98qPYkFbby2SbF3OR5KLzHzOewm
 gOwkeahS2KdwI2dFHuqStcqzrR9qux+C+8wXustFgY9PaUmDiZY5G2TxmEsgMgS1
 j97E14jv24n4cV+ppLVlGswNf3XjXpyROCgnvXZdQWyrdbzSM6VhWarWyhvhTLqg
 lDX8JBcssJ/IybNKuNB+53Z92fPzNivtTCeqverl3FS+adHiE9PvfcmqkfsKv9PF
 Vg8twHoTEAlj4zjm7AfFV6DLVGqrLU8+uIYzyV4Rol7UIXGgXlKnJxs0DIl5b/6V
 jHL/gpU8fs3bsLL7Xi6C21MF99mPcATvoFMBgvzXQQNyg2ChDozIg==
X-ME-Sender: <xms:wZlHXXD0suC-nz7sWbzArC6Mypbq4If5EatWrrD9Kgm_ePEvZrBD8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehoiihlrggsshdrohhrghenucfkphepuddukedrvd
 dutddrudegfedruddvheenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:wZlHXQ345z92tZP1ACqP10TCE9ZpcEwwp-7h4R9lNu4cwEpdY5sIkg>
 <xmx:wZlHXeY5LoeDNbXS05AywJ3Z0HnfcMwSB-xO4Z32R0MrKipPVjYBtg>
 <xmx:wZlHXc_08vgXDATORorRjBu-vlNoNjMn488L9EhWF9TC7baXsMB05Q>
 <xmx:wplHXftMESaP-1jQepQHnAik1vm9r-oKrmGZgGO9HtuKWPmb1PlLKw>
Received: from localhost.localdomain
 (ppp118-210-143-125.adl-adc-lon-bras33.tpg.internode.on.net
 [118.210.143.125])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2EE18380084;
 Sun,  4 Aug 2019 22:51:40 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v4 0/2] mmc: Add support for the ASPEED SD controller
Date: Mon,  5 Aug 2019 12:21:53 +0930
Message-Id: <20190805025155.9020-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_195151_289049_CAF2D61B 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

v4 of the ASPEED SDHCI driver addresses Rob's comments on the binding, making
it utilise the new mmc-controller schema and describing the sdhci,auto-cmd12
property.

v3 can be found here:

http://patchwork.ozlabs.org/cover/1138793/

Please review!

Andrew

Andrew Jeffery (2):
  dt-bindings: mmc: Document Aspeed SD controller
  mmc: Add support for the ASPEED SD controller

 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 105 ++++++
 drivers/mmc/host/Kconfig                      |  12 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/sdhci-of-aspeed.c            | 328 ++++++++++++++++++
 4 files changed, 446 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
 create mode 100644 drivers/mmc/host/sdhci-of-aspeed.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
