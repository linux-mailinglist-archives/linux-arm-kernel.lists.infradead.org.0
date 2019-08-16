Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF158FE6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQJh3TwnBEp0egyBEUlL0XvPLGgA9vBVrSnG30JVpdM=; b=fnziqWM8KTkw9f
	qNCv/AxGd7umFO3iDJvH1nkeyCjnokTkv3FaDqSegujsdW5ZdWvl5OAVmZCJMuQ+QxY1/mtq7PdcG
	iC2anLCaa+npFAxmBvJDKHfPCqfFI7wqYqH/DEpAcwvGvd1GjlWL6HPQhF5FzQ9eagBOohM1BgE0v
	A8U8RSbWLyoOULkAhB1/M6g/pr84T7kVm0vZ+uS4AdYPRETA67wTRgnZvTEMxYwPO5WpGeiIFvFFH
	D2p9PGuILch+azk6eAUf2Mk2s2bRMjiede5SxRzf38V2Wv2Mz/pcXeA6b35TZyF8VTwk7pZ8JoKBg
	/FLUg1PlsdK7WyJTMlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXqp-0001yA-Vx; Fri, 16 Aug 2019 08:44:48 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXqM-0001mI-DU
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:44:19 +0000
Received: from archbox.localdomain (unknown [203.187.238.17])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id B068A287B59;
 Fri, 16 Aug 2019 09:44:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565945057; bh=LhSaj2Wrav0bh3x+ATV1e3H8mqMrzwJ+KYcnBJnUEqg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=N249T6Mm6GsclAsGLypNLsYd2Zxo40RcZtnfKomveedfFiRvnSKu8juzl07ijUVuH
 kbM1mLahMimlAgC/lToDwRI8feFpleu+2KBjMUCatZArdG78/B4QGZiDollNI6Hww+
 SF77VbIeA1QyOB1lESkXI9y4zhiyqpZHQ4FpifIoPJmupc2vauWm3/zirCDfRnSOM7
 VDtZzZreie+sJEGX4e5dmAYffk5TgFWy1JTSMV7TG9aPD6AddNdZCnLFV3CXNZzoUz
 EL68X8LZ9yu1jYr3y9VSkluQl6ti4rZE38vFXZE3qpRp6pwbJsTkJmYQPAjhjp8XfO
 7Bp3ulN6LlPyQ==
From: Bhushan Shah <bshah@kde.org>
To: Icenowy Zheng <icenowy@aosc.io>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Wolfram Sang <wsa@the-dreams.de>, Bhushan Shah <bshah@kde.org>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: i2c: mv64xxx: Add compatible for the H6
 i2c node.
Date: Fri, 16 Aug 2019 14:13:08 +0530
Message-Id: <20190816084309.27440-2-bshah@kde.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816084309.27440-1-bshah@kde.org>
References: <20190816064710.18280-1-bshah@kde.org>
 <20190816084309.27440-1-bshah@kde.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_014418_588882_0C269ED4 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H6 have a mv64xxx i2c interface available to be used.

Signed-off-by: Bhushan Shah <bshah@kde.org>
---

 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index 001f2b7abad0..c779000515d6 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -26,6 +26,9 @@ properties:
       - items:
           - const: allwinner,sun50i-a64-i2c
           - const: allwinner,sun6i-a31-i2c
+      - items:
+          - const: allwinner,sun50i-h6-i2c
+          - const: allwinner,sun6i-a31-i2c
 
       - const: marvell,mv64xxx-i2c
       - const: marvell,mv78230-i2c
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
