Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1CD1A5BF3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 04:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCRxUoMTyeSbxoRBdKqvgREhAV4Cm6mWaLKZB+QNWAk=; b=kIztVxf7KdCQgJ
	r6eIF3IKHMybjzHQ9KTjq5IbkCw/G9y+a2TcW6S4VfaD8zcyez+42p2TPlBDoGhQ5reJHr8U9OaDv
	if6N9sqGdkFXohoL0lYcG64OcZjoXRgTlwe9mQD/4SS2EFLWGfVBg+TaZC/I9c4ct75SvY5N3xWAk
	aIc1vujtjvDY+qVb33Lx+L4Hu/J4zttDjArwUxWTKPxmu3pbKj/ihimsC+dqBdyBGLfTIE+I3cj8H
	OK5cTrwkP4JhVb6z6gIJPGuxiAkOoPw53UDwcswx5TwsBI/6DnVFnMjvwMP/TSaPNUZBTG8Lox+vV
	6oVq5ui3uZzGIE94MVyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNS24-0002Ot-Hx; Sun, 12 Apr 2020 02:07:36 +0000
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNS1Q-0001lF-0u
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 02:06:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id E70C87B7;
 Sat, 11 Apr 2020 22:06:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 11 Apr 2020 22:06:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=4NDaOwg5jepTh
 MDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=Ped5lv+ST74HxjOy1nkjPyQSqkkmC
 3GPJm5KmNJU5GaNlAg9z3DPzpzO2uQ0kl0eo51CdyF+ivgbEQvrFyXUmhYM0qIfV
 RohmPP5kl4T/2NWebs1raDsk+RzEOp8ShsDpNG6omeafbxQKuNaRdYckTUqiohle
 aPolSFXRr+zqXYZPXXwe7EtuK/tQNd76DeLF7vNblRqlUwt7VGiC5hOaV0aeyuEp
 hX7B0T2ckIf6diL5Qwo6eYl8bR5G4UD3D+Si7QriZ6X16RZDhsF6D0xzejKChQp5
 IpXIeojNhaudVMO01hl/b9sNeDe/bdrVZhalHdVJNp7+lYNmV+NYVAk8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=4NDaOwg5jepThMDWgHjK7GYLbHX6IFibl+r4ExTotBU=; b=RRv0xfOM
 kZXoOwg05LTADsX7dlDPCpuwMHfK2u1P6ew5qY71JJb99ioCy/FbwnldpCtiJjft
 FNmFwTCSHbkUofGOx7InhVJ6QYlc2sLcUtpPIPBqWj10YErrh97SokPcAEeswMox
 F1WViSAYLV4WSxPSqLTdlTk5aNHDsQyAvT2F3aveVR2gX9fRRBi0JCCx3mr84Bpx
 IrnAoREhD0lHb9QNRglUSTMeOcZw1u1XquHyRXhcf0XkOl0Z57YC6KbUc/jZO10k
 yrwC9ZAwXK5HL/HOjsMvQt8InSPOW9SU4tc5FM8fRLzhArfBBK6X6UAP1W+uRXZP
 /Iejm3RU7kHoBQ==
X-ME-Sender: <xms:uXeSXn3KN5oQ6xqlGoKmAwc5rEepd6I5I_JRAubL0yvYt6BXwmEWzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvdehgdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghi
 rhesrghlihhsthgrihhrvdefrdhmvgeqnecukfhppeejfedrleefrdekgedrvddtkeenuc
 evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrlhhishht
 rghirhesrghlihhsthgrihhrvdefrdhmvg
X-ME-Proxy: <xmx:uXeSXj7iVd-VsaScO_-izCbzAk2ZOOb4tE66bGCAX7H-4uXuo0zH2A>
 <xmx:uXeSXoyH37Zp33PjtNDIs0v3THPdHGTMDZgtuGtwSt2kemWNLRQa9g>
 <xmx:uXeSXnyF3GSWANtDhTI0LwzY6j4nVwmN75HOaKUAnLvbMQ5fj638lw>
 <xmx:uXeSXjJsYh82Y_fRx45IsX1zKNbYewzuRNF-cj-lt_I8v7VOgqLmA4tjDc0>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4575E3280060;
 Sat, 11 Apr 2020 22:06:48 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v3 2/3] Bluetooth: hci_h5: Add support for binding RTL8723BS
 with device tree
Date: Sat, 11 Apr 2020 19:06:43 -0700
Message-Id: <20200412020644.355142-2-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200412020644.355142-1-alistair@alistair23.me>
References: <20200412020644.355142-1-alistair@alistair23.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_190656_103910_2FC4CAEE 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
