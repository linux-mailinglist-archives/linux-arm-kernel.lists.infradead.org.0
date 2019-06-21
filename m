Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7C4E2EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UG13jG2yD1gQ0o1hQhM1ir/7qyQ6zwFpyw8pRL2k2iw=; b=ru+qryMt2CdQw21qX/UTwX/iyC
	8hKsnlWgKCWQVYPX8j/r25lVSQ07UDp38ZWy4WhWl80r67YHSX6O8ZZ6FH/M2x8g+ssWAJFvAfqlU
	ukmmy3H7ikZ1ThKlL1J/9suTvD5JJD379Sc7ERaH8Dt71VwSkwbHQ+0PvrCdbWxVznwDr1d6leXI0
	SZMuID8BoYgLJ5r3zWWnZ2wxzTy2c2HzlaIlW9Tukb4z7dVjxejW5JLKVhWTYpFKk/X4uxfqNAzIa
	t3trqP53FChnpB38CSsiheyB1E3xQqSyvLOVMDbd1ZxJaEqNiHnc5rzQ2z/4UBFWvqX0/vUJo4QT5
	vSPuSaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFd9-0000IE-6T; Fri, 21 Jun 2019 09:14:47 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFa8-00075F-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:11:42 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 20B9025BE02;
 Fri, 21 Jun 2019 19:11:21 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 1B2D7940B38; Fri, 21 Jun 2019 11:11:19 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 6/9] dt-bindings: can: rcar_canfd: document r8a77990 support
Date: Fri, 21 Jun 2019 11:11:13 +0200
Message-Id: <485dccb48f7590939c6dee794e0a30512926c830.1561107729.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107729.git.horms+renesas@verge.net.au>
References: <cover.1561107729.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021140_900543_FFE5D241 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, Marek Vasut <marek.vasut@gmail.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marek Vasut <marek.vasut@gmail.com>

Document the support for rcar_canfd on R8A77990 SoC devices.

Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
Acked-by: David S. Miller <davem@davemloft.net>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 Documentation/devicetree/bindings/net/can/rcar_canfd.txt | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/can/rcar_canfd.txt b/Documentation/devicetree/bindings/net/can/rcar_canfd.txt
index 4720e916fbdd..41049fed5872 100644
--- a/Documentation/devicetree/bindings/net/can/rcar_canfd.txt
+++ b/Documentation/devicetree/bindings/net/can/rcar_canfd.txt
@@ -9,6 +9,7 @@ Required properties:
   - "renesas,r8a77965-canfd" for R8A77965 (R-Car M3-N) compatible controller.
   - "renesas,r8a77970-canfd" for R8A77970 (R-Car V3M) compatible controller.
   - "renesas,r8a77980-canfd" for R8A77980 (R-Car V3H) compatible controller.
+  - "renesas,r8a77990-canfd" for R8A77990 (R-Car E3) compatible controller.
 
   When compatible with the generic version, nodes must list the
   SoC-specific version corresponding to the platform first, followed by the
@@ -27,12 +28,12 @@ The name of the child nodes are "channel0" and "channel1" respectively. Each
 child node supports the "status" property only, which is used to
 enable/disable the respective channel.
 
-Required properties for "renesas,r8a7795-canfd", "renesas,r8a7796-canfd" and
-"renesas,r8a77965-canfd" compatible:
-In R8A7795, R8A7796 and R8A77965 SoCs, canfd clock is a div6 clock and can
-be used by both CAN and CAN FD controller at the same time. It needs to be
-scaled to maximum frequency if any of these controllers use it. This is done
-using the below properties:
+Required properties for "renesas,r8a7795-canfd", "renesas,r8a7796-canfd",
+"renesas,r8a77965-canfd" and "renesas,r8a77990-canfd" compatible:
+In R8A7795, R8A7796, R8A77965 and R8A77990 SoCs, canfd clock is a div6 clock
+and can be used by both CAN and CAN FD controller at the same time. It needs
+to be scaled to maximum frequency if any of these controllers use it. This is
+done using the below properties:
 
 - assigned-clocks: phandle of canfd clock.
 - assigned-clock-rates: maximum frequency of this clock.
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
