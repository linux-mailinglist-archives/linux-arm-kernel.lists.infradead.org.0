Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AA51B35CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 05:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCRxUoMTyeSbxoRBdKqvgREhAV4Cm6mWaLKZB+QNWAk=; b=b5StSk8Qz47Z4F
	HntWVawvKQk88N52MS89usdjHxayqbDKEdvfqFBEpQFf0dBLTEBHf9/ZQ6wNP7UNGM+Epe3xoGgwt
	DYFagMs6KkyeqG1JUyIgPh0aC4JaIQyqh8E8yusZNNxD5JarRiGmjgBkmsFMHM/xP7Ac2Ul+6RZLH
	mbeIHM4sGxNPkMtUfcu32QI1CArKmlMsurtQ2la2QWn+9HKOtXKsCO3T8LEza4pksHNF0g5nYsGs0
	NPzuOLvZrZDjx+2y0Vzj76Ww3dn/vmviSTShDi4l8TmLSsfupzAVnMoT8u3E3b+TSwEiWljoJ5fm3
	qkl9Y3eZTYCyT4TI8xZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR6SO-0002E5-VL; Wed, 22 Apr 2020 03:53:52 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR6SG-0002CR-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 03:53:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D85D65801C7;
 Tue, 21 Apr 2020 23:53:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 21 Apr 2020 23:53:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=4NDaOwg5jepTh
 MDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=BF75GViA/WfpZ42bIeuoEei73lYmG
 JM2i9BttJzOn6NbD8495IQc28VYtgrET6iOCWS/L6Qave6Djet0T08HzshXIrXuV
 kSrReF2ix4mz7TocckYkRVLI2OwGmbEQytFYPZEoeE1TLBpR6Pc46lQpPdYoiRqc
 TNTY1ojV5bMngpUddkEKqaTVoUVA0xJmvhDqQMCa2XQXkreoMkGltwcQuCLpkwWR
 HU/sKMfs0OV97Pp7bzx+3jsfzZJpad3ZlWhmZl2oVLAJA90iyOjYDdp5us7Gk2Xx
 WrciG23FeAiAmL26gMe/rS5kaaXt5xlhblY4WfZV1uXSL5nw/I9vun/PQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4NDaOwg5jepThMDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=FJmTJX12
 PpAVU5FUBbc0HZbqFR/j6XPS2wA3Mi+hhFc0t8wCxMtujaEQPOvXiYU8laOB7ore
 vg/4OJhokVs24bB0kUFxQZ0lRr7LulpHg/L9Z1UIaDvd4gOKbeN6+tEsrzE9Rbz1
 Cqlf9WPftCg9CO7xGkxg3yrH5d8W3n8rWIyQOtG8UT75vU1iEk5GBLaRI/+Cs9CO
 MLY+q8XKa0QPwbVnoCyUO6efd5wxc485Q2SI5NXc8FsTVG+4QKdz2mZJyMC24J+z
 aSi3a9SCPsHu2MrSOmXMkC//79d6fk078mMNipmGaWTc1iiKk9JlSyl24D6C1oaD
 O7W7JdP42fhnpw==
X-ME-Sender: <xms:xb-fXgMZKZHGa2A8G8X9xwqCgTiuNQQuXM6xNFGQo1qQoTbN552kog>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:xb-fXizD7SBTgnp3IGahq3npEqipiXNCihgf0FwA9MHOGPUDO2ceSQ>
 <xmx:xb-fXirbdn-aFRWRdF60j4_Kq45RsPapFOF-afffxQyRinPckBlrhg>
 <xmx:xb-fXiNK6bc_vQZ7ddXaFVA8P2hEzS61JeJ9O0yuZYDMXwgXzZN63g>
 <xmx:xb-fXiQxFWskSBiWmt7QSJfHI_BjCU9EItf6Pcthi3j9pIHOhUftEA>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 79CC13280059;
 Tue, 21 Apr 2020 23:53:40 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v4 2/3] Bluetooth: hci_h5: Add support for binding RTL8723BS
 with device tree
Date: Tue, 21 Apr 2020 20:53:32 -0700
Message-Id: <20200422035333.1118351-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200422035333.1118351-1-alistair@alistair23.me>
References: <20200422035333.1118351-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_205344_922782_4BB70EA6 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

RTL8723BS is often used in ARM boards, so add ability to bind it
using device tree.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 drivers/bluetooth/hci_h5.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
index 106c110efe56..e60b2e0773db 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -1018,6 +1018,8 @@ static const struct of_device_id rtl_bluetooth_of_match[] = {
 #ifdef CONFIG_BT_HCIUART_RTL
 	{ .compatible = "realtek,rtl8822cs-bt",
 	  .data = (const void *)&rtl_vnd },
+	{ .compatible = "realtek,rtl8723bs-bt",
+	  .data = (const void *)&rtl_vnd },
 #endif
 	{ },
 };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
