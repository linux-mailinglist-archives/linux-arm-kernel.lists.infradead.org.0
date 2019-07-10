Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51358647DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neiPeYsj9OFijmTTbBs85p5klmzxzNQndczIeWUBTKo=; b=ULvSm7e/EeuN1z
	GtAQr6hsTPQSxzUPzLQ6uVYF23W51SbCvU6/vFVX8vYVRVVmMXC2Twif1Rm3nBAoTJC94PESbLv0b
	89pVE0EttPA3+hrvFOIWUMeAVJmtoI3FBR2QUie5Cr1M9nler5OrEZK2eVoO2EuC/fVt1S7owbJ87
	DuXgFSv6+KwE94loXmGMIh9uTe7AtZ0A5rDYEgN1uKaTYwaQ8xh2CvvwKVH2GzuQZe9CPnrxCPFwH
	LjencO4VDYFRX0t86S7yTAnic3tdbBjZuzrDq3VXVHWqsNkvUDaSjeLnx7al7GhZLN3E5un5SGCCY
	OdsTZRvh+f5qzctTI56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDMc-0006qs-Vy; Wed, 10 Jul 2019 14:14:31 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDLp-0006Md-Hl
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:13:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CC558220A3;
 Wed, 10 Jul 2019 10:13:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:13:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=VBwKd1WghoPxV
 Q8wzPfjIXtSva+XbmOsRragjWyFYUQ=; b=LPCmO4+GRtWF9BPtH5D+ayPoF1/Zg
 ZofzbOiq3/cjoBtADKEh211SiAjgYEZZLvn7+yZZNoKmK1AqRdpvwodgo3lSQrAn
 bd/+C8gPJRikXjsHnWenph59OQejanHUV8jH4RZcbtjvnHehVsgyo94eT+t5wBgJ
 OJrWH83MOj95rVcqq8htN1G1ai9DVaBRWTARtlJVLcqmBRNHgm3ahrH2Z6ZyjLhs
 XvBqJuXPV73Kik8VicvVr6YVzfkDCRK+ya2SK0AijokRvY/UaXKxFfBoqRN2Sulu
 laQl686mF0znAX8LtebjpzWUvf/P+SpZSL28UuTQsqaGAqvXoHKo9UxDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=VBwKd1WghoPxVQ8wzPfjIXtSva+XbmOsRragjWyFYUQ=; b=ogKsKni1
 U6jdZMgMBUQlrSXpRnEkOZrGp3CdA2Fjtq/0AE7VglI95FayedoWp32FibhRw+L5
 D6d82FtF7Rx9cu6c1iBYoJJAmocv9yRT6MjxE53Bl5h39XLFEcVEnR69SpSQdhjZ
 vAqYTUezSQ1vPN4/sUH9hUrVy4KvXn4zdD50ZF/6q0BZtMNQip1QNZ3YHX3lTiS+
 NfRYh9+xejHzfh4kL/Cs+hSBEsbt7+PfHWnbhA/pY1Bx85mv3ZOd7Yho5dp/v0jg
 04i0E9nfByoXUQrTTMVv8NAaWaP2CxN6YZd8CCBIVySIEzKecn5JrOgIQFHTjx3W
 g6Jr5WdN8fzDCQ==
X-ME-Sender: <xms:lPIlXW-AujqhJfgvPDqlYu8KttD_IymGfhrwMu8NZF4Li1-p2LjhEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepudegrddvrdekhedrvddvnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:lPIlXQCEqmMQx5sKMPZVhVr2jZyGHMH6mM1CIjp4F4FXiNPyvX1zSA>
 <xmx:lPIlXYbzd1LNkXY1ec2eaO1-sXTXYAJOMnEhoVBI45Y0kuKP-TemYg>
 <xmx:lPIlXWA0LTHVxBbHnhI0REUtUevUTERv3b5v19xYcPI8tSx527SASA>
 <xmx:lPIlXSxIJ02fV0e8lRKtGZOAb38_C7Jbu0umYQKNAPxT1kw1-vXp2w>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id F34EB380075;
 Wed, 10 Jul 2019 10:13:37 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 2/3] ARM: config: aspeed-g5: Enable SD Controller
Date: Wed, 10 Jul 2019 23:43:24 +0930
Message-Id: <20190710141325.20888-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141325.20888-1-andrew@aj.id.au>
References: <20190710141325.20888-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071341_767404_8D186F81 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Ryan Chen <ryanchen.aspeed@gmail.com>,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ryan Chen <ryanchen.aspeed@gmail.com>

Enable various options necessary for building the driver for the ASPEED
SD controller.

Signed-off-by: Ryan Chen <ryanchen.aspeed@gmail.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/configs/aspeed_g5_defconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/configs/aspeed_g5_defconfig b/arch/arm/configs/aspeed_g5_defconfig
index 249eeeb55d59..9cb3cfd35a59 100644
--- a/arch/arm/configs/aspeed_g5_defconfig
+++ b/arch/arm/configs/aspeed_g5_defconfig
@@ -182,6 +182,13 @@ CONFIG_USB_CONFIGFS_F_LB_SS=y
 CONFIG_USB_CONFIGFS_F_FS=y
 CONFIG_USB_CONFIGFS_F_HID=y
 CONFIG_USB_CONFIGFS_F_PRINTER=y
+CONFIG_MMC=y
+CONFIG_MMC_BLOCK=y
+CONFIG_MMC_BLOCK_MINORS=8
+CONFIG_MMC_DEBUG=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_OF_ASPEED=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
