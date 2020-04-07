Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591FC1A06E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 07:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70GQwguZIgGMiJhXnBtHXXInfvrM9hPRutQD/Aga9Lk=; b=d+g8R+z+xAHUFQ
	1tj8gXb+QThO0zg5Ptn97rG1P31pofGBwDFGmKS3268CxnOfR2sBNzR3Q5ew5DkUxXwVqkOCCg/3t
	KfF+FKpTIvawzZ3fHhhgDTlmwtDtJfkbOz2PuKBFWXu1ZJBq8zlEO1s9KKDcoYnRkQsZtj7Optf3t
	gSBifdbHy9swFw/HT8A087+yojXMzVoH+4m+gBdaG9Fxt/7sqUbz4hzRsMZGk6Agxs/wuxZxeGlga
	lIyFctDjMZ2qTUEZ07ng3KnfHmKUlovteIPohwbQWJdz4KASgeF7Y5+FjWIbY3rywDlgjtqSBVjR+
	oneQgFHA0o0tGs+Qedcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhGI-00046R-Ga; Tue, 07 Apr 2020 05:59:02 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhGA-00044r-DC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 05:58:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 655B1580306;
 Tue,  7 Apr 2020 01:58:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 07 Apr 2020 01:58:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=yrW9UFf8Ckuho
 4dOnBWe9v/QNnRt/BB4F2Z5BywTppk=; b=pbDmPRo0ym6/FacDzog7IuQQ+aMoC
 b9ykP8p8D7R5Yf3AgiJzAggmJMbm1vUcU8cR+gDEQniDhMB4KTlFlHRg0eJI+W4P
 lnux0kZXDWGsm3vgBa4YKmlnxFF3W0QjRROgMxW94xr+oUArijRvkP8u3SenolWX
 d2zTmBqZmz/S3pVJ12SZ3/G6xm4eSoS8I99zPLpLnuh9XylFPqf6Yo18UrNu/0Ux
 Cz+5Bg9qRDrwNnUqD7B+2mwRebhBHERGhe44Za4HRAiejcSB38lQf1cZB6Y4azep
 VozWQTaWVeNAJRhpAmzqzH5W4nxyoSobD2PFNzA2XWaicf04pPsJNi9CA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=yrW9UFf8Ckuho4dOnBWe9v/QNnRt/BB4F2Z5BywTppk=; b=1mMXAFlV
 bF4nm/PRzu3OQ0jztQHgkiMxkneQpWjFJ+GamZoZNarbyVChgJP7ibgKNkDQ51HZ
 XoLc1qhimvneS3KMfVjiXIEh1q/QPOBqTorHWxDpMWrtnznk9fW6+hYK1gaH1x3m
 9f+Z59qGXB+TGScQyJVWb0N5udZW0uIZazSkpumAoPLxrmlitKBPaW8WqLGML5LT
 zJaVx358v8WTxdej5Wg4fZYReMq6+ipwTimpImtESOpK8HgBOKx6taz4f93u8kvi
 xqXoEBebAlTeLVKCY/bIy6nt0EScILwX5SLm9kdpcVAeF7/cGg2FSjFrWfWWcfLw
 bYKk9QlHTt1a7w==
X-ME-Sender: <xms:lhaMXiF0xTmTzPAltDY-_LopFKVzyq51zTXZsmVUB51jk5bqMBGEFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeggdellecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:lhaMXmh1p8jzifoTQ1JfckevUgSZ81BtokFfbvLPZ7Hqe2GGiwwv9w>
 <xmx:lhaMXi-D1cf7EMmOMBK272Lo2ZvNGOBoSZC7N8WIRCa3uwKb7F4L5g>
 <xmx:lhaMXhIyqjhAuB740QRplnIbtVaZbNjbDXkPCmOK6DtfdHF80ZMdXA>
 <xmx:mBaMXoauhRxUANuAkuwlOwMd3GGeocLDdPi2e_SCAXNB-0KfvZhCFA>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 00CFA328005E;
 Tue,  7 Apr 2020 01:58:44 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v2 2/3] Bluetooth: hci_h5: Add support for binding RTL8723BS
 with device tree
Date: Mon,  6 Apr 2020 22:58:36 -0700
Message-Id: <20200407055837.3508017-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200407055837.3508017-1-alistair@alistair23.me>
References: <20200407055837.3508017-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_225854_582364_76926E93 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 106c110efe56..b0e25a7ca850 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -1019,6 +1019,8 @@ static const struct of_device_id rtl_bluetooth_of_match[] = {
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
