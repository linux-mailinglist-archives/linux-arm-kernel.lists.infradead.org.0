Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC5019E7A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 22:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5YaCdApVf0ENbl6/xNgUBd11tT5YpWGYg9U60ZUenM=; b=CZ3HNmkhcyEWQC
	M1YyC/vA1BMJA1Cyi0/NCbdusREGFc/Ay/xTtgPwI07BqOM67sNbqnlvqNvQMEmYCbuEAnMOzbVv3
	Z4xGyJyGsSNwB85BRdiVMqmpe1mkuQTk1SmrT6SJIAPZBB2acRjR0W5A3ZbP3KBEVUboP0kDMQV56
	BD25dBTDVKAPnn6B51DuyUABr8+RVKSZj5w+AgZjDMInxBMKttmtJs1p8tBaRWQV0xBc+pkYwuOYN
	HJ63XrDNnru6rMm1PWfudsNBwZwhSjFbY4Sd7mU7KEQriKpI9m6sueoZLoaJHL6djZBeHDK9pnapi
	9eb2MlyyNn/FOdtxzREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKpje-0007MF-VW; Sat, 04 Apr 2020 20:49:46 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKpj7-0006vF-4j
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 20:49:14 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 829445801D4;
 Sat,  4 Apr 2020 16:49:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 04 Apr 2020 16:49:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=5Z62tta6RewP7
 vFb8pMLmQzZ9HleyuU0GSnH4JaxFcU=; b=fS+sH+WOcuw6FGpl8XeL577h7L68f
 /+IBFRU4sFKsYNTs4deO7XXeeATznXTGegkYzdJQsjmG5V0WYWaw16tD1QU+vK1R
 OOWugORUW9zVW5g53TLn3NQSJdvB9oNnba+WZW5Xi6e3pbXFLIgwO4aiWJ/mzspT
 4MFrMxAedXQAC+kUe1zUnlMTPAk4HiISukvgjTrqIcNWnA41pf6Pv/te0HNx288K
 xzUp9QQ8akvlOIo4TuUe/feiCdxXU+P0g2kg7PwTONtTibwWKWH1F6XmFgO1KYnG
 bwGnEKld4CSfwZSU6nkJnltrz4IMLu1mYDl48ib2cg6SNw4FkSSwaTDrQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=5Z62tta6RewP7vFb8pMLmQzZ9HleyuU0GSnH4JaxFcU=; b=bQIJLvkH
 7WOxpSAWkP92QSRgiOeBcezWjF3AqajGOhLCogI14RZcuKtVfEznpHe4Bt5iuqeh
 dtV1Ea7lgG6IAF30th4jGNGmn4iy3AK6GEFiSjOiPu2IL128zmCZCHhJziKO7Y8r
 Gi+RzBFpC12VD55w4zeXH0gNTOx/VjukANGCllhoPN24bCgHVak01Soc8TTbogSM
 FkiKs5eysC0R6Qdvf+bLpBj/G4wCYZ6RnQX2wS3AElcCcBdTI54ImXYj8/ec7jxx
 vbqvWtp/I9vJki590A1ahf9JHoESHXbaXC/xBSrCjuXBHt0qWs/zhsqS6Jsxt8ap
 QK9P/YT+6sKCnQ==
X-ME-Sender: <xms:vvKIXt3ICXJZ3Ww8bcE_-2xOaAHO6hKS86lVT35n82ibJQxvQusIMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdekgdduheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgr
 ihhrsegrlhhishhtrghirhdvfedrmhgvqeenucfkphepjeefrdelfedrkeegrddvtdekne
 cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghlihhs
 thgrihhrsegrlhhishhtrghirhdvfedrmhgv
X-ME-Proxy: <xmx:vvKIXvzj_zaWI2K2VeIoTvIeWebruHjSg5Kke8AUTHcYL-Yod8n-sQ>
 <xmx:vvKIXonTYKKh9Rv0tZ4JBlJtmFTL7T4notcJ46ptAu0rwppiF4rqcQ>
 <xmx:vvKIXrxuvb9OVjW73-Sr4XkNjYekZhgIep4o1ol3GDAFB7l7HQIQZw>
 <xmx:vvKIXlxK7UEtQVUHsHrmQpNVyAGyZyooSrAQB1yXsAWcfpvoWfFmXA>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 30521328005E;
 Sat,  4 Apr 2020 16:49:01 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH 2/3] Bluetooth: hci_h5: Add support for binding RTL8723BS with
 device tree
Date: Sat,  4 Apr 2020 13:48:49 -0700
Message-Id: <20200404204850.405050-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200404204850.405050-1-alistair@alistair23.me>
References: <20200404204850.405050-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_134913_335305_651EE6B5 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/bluetooth/hci_h5.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
index 106c110efe56..6ea6cd73dff4 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -820,6 +820,8 @@ static int h5_serdev_probe(struct serdev_device *serdev)
 			return -ENODEV;
 
 		h5->vnd = (const struct h5_vnd *)data;
+		of_property_read_string(dev.of_node,
+					"firmware-postfix", &h5->id);
 	}
 
 
@@ -1019,6 +1021,8 @@ static const struct of_device_id rtl_bluetooth_of_match[] = {
 	{ .compatible = "realtek,rtl8822cs-bt",
 	  .data = (const void *)&rtl_vnd },
 #endif
+	{ .compatible = "realtek,rtl8822bs-bt",
+	  .data = (const void *)&rtl_vnd },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, rtl_bluetooth_of_match);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
