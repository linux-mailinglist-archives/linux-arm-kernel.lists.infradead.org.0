Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6851B878E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 17:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCRxUoMTyeSbxoRBdKqvgREhAV4Cm6mWaLKZB+QNWAk=; b=NnZjuJ5EaoDHtX
	C41oqeY00DMLO4+ieEgNPVHlydkWOj5LRIaHo2dogwSBjB+Km+WRmvtoYfU+1lO9TbFCu5IJc+JhA
	o0fy7c0JTIc1j8jo3G2sfsOLAjgTlG1CYYWQp43JNcO3vnRAt1rW7JdmL37WXV7w/s/icaJrkspsj
	Wl8qS3+AJfS0y466UO/PKPd+Pkgx3fiW1hIWkH8AtzGFZRcboZEdXe2FpCtfaLisvHh2V1tOAFaZi
	TjU4VM/TZ5+rYHnGdwt3/JxGZoA72U6vJm9r3LNTdJ2QPuAizm9XuXXeKHLf/QHna37HcJvtZ5PB+
	jTH6brjikMMnfCgB95iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSNAB-0006qN-75; Sat, 25 Apr 2020 15:56:19 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSN9f-0006el-JY
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 15:55:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 39C485803BB;
 Sat, 25 Apr 2020 11:55:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 25 Apr 2020 11:55:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=4NDaOwg5jepTh
 MDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=qjrasrrRtXMYrs6S+OE4vXcKll5qV
 6GNU2SNqK9tkbOwLgbrIzS+BCJpVXCvl7yYG8TqGBa6HE6z4P/tqPbAU0veD9fMN
 r3e3VistO+tUtmhY9iyG5UfiASAcUkWiQT/L46PpWVVVDKcsuiWok/IhwnRQrk8K
 OzJqUq9a895xA2bVvA2cc0Xqz84dGnvbxKRmtMMgLwF+UbPOG0MODJej/ip9Nf1x
 FgBKXgqthiiWYUQdj9NvF1Ym705mVFl4yNVCHmvARvle82eg4FzwQnllmhBQB9Nl
 /fAyOMOVNU3cM5TzbcxlHoaLy/BsUs6IeRTIyfEWvr3FIbpHteEitBoXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4NDaOwg5jepThMDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=bCfVWHG8
 LBSQMrCS0v3/C5HT46ThY53/r/E9V4cLosMlpERSPU8by3bZ798hbOvf+h+mpQah
 9ydx84tj7uwAhDyjnorAVJbQS9R4nRkRGnRJjCR44GgxOyJ7+FvXqHpSZA10Qo3p
 4/2MLlAXJ0McOkaSk5vWEBELiWiOE4ZPbMILD8ihKWFcKqYNWzoeduMPPWiyX6WK
 r67pQu2LAILHwDztoQ1Xo43q3IowrDxxjFolVkO1vbeThf+W85HsKVFk6t09Mgt4
 IYxps+dfaSAs2auNdclPDzdaI6PJwdm3EGHHxWRoByWkBcId5zrO3zYDaALw0PbU
 guJE4eAXVSqn2Q==
X-ME-Sender: <xms:eF2kXq86cUymBj8QOYZyEdgMiU2szVqg81_gTjSKw1DYzG2jFRTSuA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:eF2kXqS-pC4-YEAay7uvJmtKdXJOqYaO14SVp18YrP8rC8CO7PB3kw>
 <xmx:eF2kXjz-5O5_2NoF2IAZMy_-QAx9M3gehxQ8c8vMlEC1WLoAZvHkwg>
 <xmx:eF2kXm5eW9jo3LrHUmzPfheAdlwwNzSyVVc0Ol3KlTqS_pjV7G_G6g>
 <xmx:fV2kXmWpZWwkjQV75R64eYAOMQujRkt-z7a_usZqW-Jo7C528rQ3jg>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A9EB3280064;
 Sat, 25 Apr 2020 11:55:35 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v4 2/3] Bluetooth: hci_h5: Add support for binding RTL8723BS
 with device tree
Date: Sat, 25 Apr 2020 08:55:30 -0700
Message-Id: <20200425155531.2816584-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200425155531.2816584-1-alistair@alistair23.me>
References: <20200425155531.2816584-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_085547_850203_A750C912 
X-CRM114-Status: UNSURE (   8.28  )
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
