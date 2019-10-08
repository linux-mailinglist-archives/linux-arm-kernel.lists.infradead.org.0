Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444ECF889
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZapB882WLo8eLqflB6ejVJ2sdjdmjb24PufAau7B4qg=; b=GBEpoSp6z468JN
	++bViR4T5i0M0jQzRxjMPADdN/a/jIBBgMCV1BZIt7uW/A88hELmOHz73nSRyi4D7bMr3mqe1WQ0D
	je7sXbYaOzSlnnBlh6hiCY16dRGNz3jLlgsIPXvfVUI52A5mF6fA5dzPcT+GdjP2zlrFgm/Vf0FDc
	fMwGaZqugGcg4aQwqFHXlBzNGRPFBdNquVLEZXAWCu4IOzpZfbZXN7GHgI7D2j9SRgVlgC0K44rhA
	A8D6WhyuWF0o7FObSbWvplzxn+P6lOM/cigAQYHvqz85AWXheF4Hjiua+OE+kavqVVPPeMlAlGq80
	Ak5beEoZlQR85vYLoQew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnmU-0000A3-8C; Tue, 08 Oct 2019 11:35:54 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnla-0006rZ-F4
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:35:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 31A6C21947;
 Tue,  8 Oct 2019 07:34:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 07:34:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Pm0kXIjD5EnSX
 CMvxmhv05EI+M+VF9thTQPnyey0/W0=; b=kh5/7FOWrDpCzViUg2B1WNJJqQrsu
 BkNWaozam2jqUUV5ch+W0Ngo9WjwhTKMyA37cDd9tyCCnB2mtcGJ2YiqzcOvGa4e
 5V8ABOROBBg7fdIfpoc/RSllptIq676BF0VLVBheWhzYNqQSLAXwZwm5E5ngQlr6
 BvdgJDuCou1+dKGIN3odO0Jek2pudDJ901ytJKR1VUOM/ZKdbZy8vNZudT1g4y3D
 QW1XWiO4uwc9Qz5W9Adgbd3N29Q7syEoU/CPgcL1cemjlnksKDPvDStDzzKzcHYj
 4LopTVFRu/ij9ICifeSWrQGZ4kglwdxAhNDkPs3nEWyHKgcibiSis6N5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=Pm0kXIjD5EnSXCMvxmhv05EI+M+VF9thTQPnyey0/W0=; b=gDOgYUGx
 RRCEI3hJq9Gt5RFL4dM1qPIbEI0+aBroI9FRiNohFEfvfQ8g4blLC3yGSedvm6K3
 kXTj56AijNn/lNqwzvitzsstaC7rSEmoF1sXfmqS0YGjKFROkOOYO2qcHuMyZXOg
 cw0aSwEbo1pgMs4I1YnJKMvx86ZjtPhgoRn2H+ytrvjgqsRlm1AMaRBtl6wOJ/6F
 KouOmbbO+nnw/32Wc3bG53J1BLSAI/rhvLcFeX1ptutXa5OabmPlVVNKOV8hVWJW
 bQTQNAW0UmNAPlmpOaOpN3O0qzHbo66xJm1Xj1/9g0/0xw/lrPgx+0nPBIEq+M5Q
 J2Pjrdjwoh9oFg==
X-ME-Sender: <xms:YXScXfaaubACZ_PkWPHJaFdVbgaCo5OXo48mIQyxAsjV5KPIo9lRLg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheelgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtfedrheejrddvudehrddujeeknecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepvd
X-ME-Proxy: <xmx:YXScXYA26vS1yEvEyZLjdAvy9xC2QhSDkMM2dN21lx2n4PV4vMAZKA>
 <xmx:YXScXeoHdIJe49tkm4st59yiNy_kV37pDrGOEC_vbOvZ9F3mUnYaQw>
 <xmx:YXScXXJabEV6sdJWLV1e3XtE2kKvoAFO8X6H7YGRVN3C6DOzXl2ptA>
 <xmx:YXScXUBHPusRgdMqxXzOS-cyIsfCQUGC6SA18U2bTirZBFmIxTt_Tg>
Received: from mistburn.lan (203-57-215-178.dyn.iinet.net.au [203.57.215.178])
 by mail.messagingengine.com (Postfix) with ESMTPA id 489E680062;
 Tue,  8 Oct 2019 07:34:53 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate definitions
Date: Tue,  8 Oct 2019 22:05:52 +1030
Message-Id: <20191008113553.13662-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008113553.13662-1-andrew@aj.id.au>
References: <20191008113553.13662-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_043458_664648_E8271751 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 has an explicit gate for the RMII RCLK for each of the four
MACs.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 include/dt-bindings/clock/ast2600-clock.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
index 38074a5f7296..ac567fc84a87 100644
--- a/include/dt-bindings/clock/ast2600-clock.h
+++ b/include/dt-bindings/clock/ast2600-clock.h
@@ -84,6 +84,11 @@
 #define ASPEED_CLK_MAC34		65
 #define ASPEED_CLK_USBPHY_40M		66
 
+#define ASPEED_CLK_GATE_MAC1RCLK	67
+#define ASPEED_CLK_GATE_MAC2RCLK	68
+#define ASPEED_CLK_GATE_MAC3RCLK	69
+#define ASPEED_CLK_GATE_MAC4RCLK	70
+
 /* Only list resets here that are not part of a gate */
 #define ASPEED_RESET_ADC		55
 #define ASPEED_RESET_JTAG_MASTER2	54
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
