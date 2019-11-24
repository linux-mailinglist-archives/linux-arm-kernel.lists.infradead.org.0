Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021141084DC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 20:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wz7NQzvJOYc9eXkSZe0sS5RE7JDZG4Jn8p2K+NrH3fA=; b=jq6L3FU25BOve0
	voWMEdXHECCMOjV3wZtVeh2WcYT4Cpr6eDQpTw1UwTDBsdZgdEmnW7KBQ9Hv2OlG4RRqClhUd85+3
	So6+iJAexisMXNcGjR/8wFlBrHDvl6ihjymChVXlPs8XCnDYDrVq8T3/SlPF/5Xxm4hiMEfMS2Jul
	zZAcNicJP2DvWD/yw6K9rucM2V4e1Ti9CTrPxUhO7IW8UPK+c0LeOo3Dk4VYHuwgWoFs8y+h8dDRZ
	mStM4vTrme6mI9iVbQFUvbl5zicQ4tqSahk54vHCLDOZP8PDPeQWF64cGoQStRAkxJbVrY8wzJ+Ng
	n6rwybbs/ffjx4tb5PRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYy1z-000858-V4; Sun, 24 Nov 2019 19:58:51 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYy1p-00084U-Jm
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 19:58:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574625516;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=iSO7OSFSi9+a8PsQWpqFjY4N0FXkjXOq4T1wZeOcwIw=;
 b=s0H0y78k7J4E+Fw5LNYOQI4myoDeNUfjzWsYkpvdBn0D9BE/2FANLtkMa34mCJnilq
 oraXEIeLP1KQThDhRvC8ZBUfa5DtqWmELQvGeoD76dA66xn/PJMD8vn4fhZqQ48015kP
 GiKf3Mx8kNIWkxN0cABkcaDBWe1jWSqc0jgGBDCaybAG/oajSD2K65QQEA0YuNpl26GP
 amfObP4LOobUsjmbT6z4T29lOHYdI14UbC+UHDkTKgjDCGSKt9aoSalM5pLrYKBRW7Lw
 BIuNDQpMBMZO02wH4I+Kw3AYsvHcSOFYo2AOiD1eoKyzp2oIMrptCEWjB8FfU0Dzq3WD
 n/Ew==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQ7IOGU5qzCBwY93scQxp"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAOJwRCTn
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Sun, 24 Nov 2019 20:58:27 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: dts: ux500: Add "simple-bus" compatible to soc node
Date: Sun, 24 Nov 2019 20:57:28 +0100
Message-Id: <20191124195728.32226-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_115841_795256_C372A8C1 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:11 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "soc" node in the Ux500 device tree does not need any special
handling - it is just a simple I/O bus that can be accessed without
additional configuration.

Therefore we can additionally describe it as compatible with "simple-bus".
This can be used by platforms to probe devices under the soc node without
special handling for our custom "stericsson,db8500" compatible
(e.g. in U-Boot).

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index bda454d12150..51ac65b78be0 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -93,7 +93,7 @@
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "stericsson,db8500";
+		compatible = "stericsson,db8500", "simple-bus";
 		interrupt-parent = <&intc>;
 		ranges;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
