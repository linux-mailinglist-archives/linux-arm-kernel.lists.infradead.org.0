Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF3E595B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 11:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DoV3A1m/VVr8TMP3g3losRkZNAwPTgZXWVkVO+9C6zc=; b=aU1GXJVu6e3oiI
	DnEfrHUxl87VgQRV29zBvlgMI6WgHJ+jrmywvACymlajtzZLi9S/ymn64Nv+IFnRdYAmVA34/uz7u
	JcXC9BVjH2JLINmkOdz/Q4d2oaRoGcUn29tsmhWtxtvkDhs5loAJZAZ7p4r62qt5vgalDWl99fYjD
	ayhqKvv5ociSU6omxIWGaieCo+3LXtK4IUG4ZqSqoZq1bc24O7HsSLyPZgFJOt6NyRTDgLlb0igV6
	aBGWPt1XrJ0twEkdCwsz+DnrGqtplDnOBHW+Doq5RyNBZ/xHLDJMK44g8uu6oiWA/LUieaDmoqAFu
	dETM5T55byQcWIr0+5XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOI0Z-0004A9-2M; Sat, 26 Oct 2019 09:05:15 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOHzu-0003ya-6j
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 09:04:35 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.67.182]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MUXAC-1iXByg3mRk-00QUVm; Sat, 26 Oct 2019 11:04:23 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: devicetree@vger.kernel.org
Subject: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic node
 names in example
Date: Sat, 26 Oct 2019 11:04:01 +0200
Message-Id: <20191026090403.3057-3-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191026090403.3057-1-marcel@ziswiler.com>
References: <20191026090403.3057-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AZs6m5j7/5kpHp4N1P9TZUPPmrn+q7afV0uY7Y+OBbvWyaLp11Z
 4azYw13OHQkir1m2J0LuVCj1RXGSiu9S7HZFq58rNgb1oV7kzbU6IiKSu18+Wik1skVyroN
 oAEX9v4N6dLcQEc/to2v9e6QJ4Z4mSz6ZVwXImJ2reT8LiTx7PbAkXR4DwT5/qGMdzNwtNb
 6NhXpZYcAIpI8ssCjXacQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hi6MSf8bkVk=:9KqmD4GD24ICoJH/Tui0qf
 /Qo9D4QE+ruLxh9/JjuFzGVE/WYrYVieXxLo0XmoloAuAmpZQ+LB5MOWPJcrDuRqVMtAIDC+a
 gpJ1c9YTi0Jb1F/HukK6HTVEU09C8DQ/2L5/YFTJxN67hH/PmmvIO1eYjXahTHC+dXYOPTzeo
 1iAyLJgqNqiUr+fNyZjm6yuL0X9WiMV1Qj2KJcDA+UMIo/qarRo7AfLcUSXKBXAPyxQ52pnqj
 Tp+CaJ67A4aSj+GmWDesSDlyN6TTqkfhf3KwZso1HjPFVY7sbgvXsmgZ9WR6Lzt8JmWQCLftU
 +SQss+0SI1vWz3i1jqQ0TpjpXyjAxAKUcCQdyTanFX6M8Lql4Ju9u3Nx1NXpoDhKBrRxN0rdY
 /KHSu6snlA8c8eIWJ7otnwd2m/MpcveA32pd59xFxLpMtXlgUJo8JW3MePUQLAgB6UpivxCtG
 YPVKzr0BEqEMn5poEfhwGxpY9BIm+6DE5HWcsc6n7ZobGnAuc1JWC3SJ+asj91YnJJp4mbmHV
 dPl9NtQ1ECnnj5DWcwOMUAz/bn5zcNfIyBl4jxu+Qvz1GVnIHZimvjYoV/tEuyTAcIt/VWJtC
 lW/ijrP56e3pZDHAR9BkW578ZeZRxJyvTktpMbdbh5Eo5w6tBoIJemFKMTDqLFZipFrK3eFMU
 WjUQFxTJbcMXveSvLPe6n6wVaBODqIMrKEbbstrh9GRRl5L45mnKYCk4wxoHCHxd/Ubwo6vxo
 /JuOYl/frKD92Iplc7RYlTnBjO403elp4ZNIJO3L87evI/Kzb/57uUoqN0QuYNACJYgoz0WP4
 6BJnb+Ri1QIWBcYB5dJAydKoipae7cwUVtqK/l8bpPipz+bnhjuxnfZ+8ntSP2e4aDx2DPGLh
 2TbUR8sN802x4Uv7a+AnG/TJX5PReeJ7yo0uJt/ys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_020434_322623_50F3D4C2 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Update example in ad7879 devicetree documentation to use generic touch
controller node names.

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v2: New patch.

 .../devicetree/bindings/input/touchscreen/ad7879.txt          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/ad7879.txt b/Documentation/devicetree/bindings/input/touchscreen/ad7879.txt
index cdd743a1f2d5..afa38dc069f0 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/ad7879.txt
+++ b/Documentation/devicetree/bindings/input/touchscreen/ad7879.txt
@@ -38,7 +38,7 @@ Optional properties:
 
 Example:
 
-	ad7879@2c {
+	touchscreen0@2c {
 		compatible = "adi,ad7879-1";
 		reg = <0x2c>;
 		interrupt-parent = <&gpio1>;
@@ -52,7 +52,7 @@ Example:
 		adi,conversion-interval = /bits/ 8 <255>;
 	};
 
-	ad7879@1 {
+	touchscreen1@1 {
 		compatible = "adi,ad7879";
 		spi-max-frequency = <5000000>;
 		reg = <1>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
