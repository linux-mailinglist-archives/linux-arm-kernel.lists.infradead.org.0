Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B47D1E33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 04:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo6bl3TlM1IOgDOXEYjC08zD6bEAvPaSof82R38JAFk=; b=CvPNRZmMN8ClSr
	Y5m+VPbBsP41VU9PtpzYhOMGdXGJA6twmdE+TLoh+5BPin81jhAwPUMYQgMtunxj5br2XrZB6aIDR
	iIfOT8wsHDodCApFi+LkOyuVtEnUyifxgmZztFH14f6YqLRaLb276UlaiQtvCOiNxX/JLcCx+Oyhw
	HXGo7rAF4h+D0fBxBOU9wwBhQB+WLbQoIA1oiin6lT6FTCTJDNw99dtaAm3zAmCR4fieM3JxxF1Kg
	tMFfKs6nTD2JpDDRFwmDWDoAhqD55J9D+OdX/1w9xJB5tgb0kYXY0DKj4Emvw2Or54H/VH+HJAN0t
	f3kY9bVxg1fGdcaG1vAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iINrT-0006zl-6t; Thu, 10 Oct 2019 02:07:27 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iINqU-0006OK-Kz
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 02:06:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3D5CC21F5A;
 Wed,  9 Oct 2019 22:06:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 09 Oct 2019 22:06:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=KDItDJsFBQom2
 Sf6FH9mRJIzJqOmoka2T+mY3RP2gCM=; b=RjaegqIhn6V4Zt4cnx4uS4cdLpbfn
 ryAhRPfao/9aKkwIjisqSrX6TdaM9NEkH6Plsvtiok/i9uKURq3zOG/a2JFngjaC
 deki3bF3YOKQqhJZUjF13JvExcrGpkfGS7u+KDzRxUgl7UEXcnvfu42gNU7yMWub
 1+Q/zx4GMvbSmh09TSYoESFjdF6e5wcGsC6Oi68joyYjcXZPrXG1Xw3cAZyVW8IE
 6FkdLCLeUKYLBDkbqBJP7eeYykC9lSu9/iFFKYiDvTuKTEOn6E3N56/nIkkOXs2N
 +hyjnjd4bdlWJUiorMr0f2DTL/mD3npoYXqtJ1aih45FqGaUQr+0hX/iA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=KDItDJsFBQom2Sf6FH9mRJIzJqOmoka2T+mY3RP2gCM=; b=lgrKLx3T
 Hi1Z09ZVQ04453umwSVXmkcM8rPzleABmLS9RzGzEV09BQzIPgQLNEsPM6WG1ZzP
 XwMgAT3DULxIMtxYZuFmDAALhQZxm2pLefsOBGDrt2btwa2aJYeUPfmHnaHsp1Q2
 +ccVkEm222Pn5zjFk1VgscWqqnIbki+1lGu3obvu2yA18VZpZeFaKcSM8HnlEG5f
 C/YQLGjnc61WzREOWrT63sfffvgfyF8lQueuBLEZvpGCPSte18HsCsF8ljT32vfn
 fxyMWhlK4u9fu00eQTD1w1Yh4xEUupixt7zCi13apucxocEI0coitL8bcFgQak8y
 zrCnk4P2W1XdOg==
X-ME-Sender: <xms:IZKeXcEnjHcV79PDuAnKbgf1T8EPepXIPIE3Z5gM_iRCrQMSJ1_OlA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedriedvgdehjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 vd
X-ME-Proxy: <xmx:IZKeXZlIdXdQ6xA39TGEW6Y75K1Su2jknNhwnbWMmYIBlD9yR-avhg>
 <xmx:IZKeXRJM4JjJWZWj-8d0zaNar4vj8MmrZB46gtM8WF8esrnwymVjhw>
 <xmx:IZKeXSaZb2f4g9gbnz6SQrKFHwM3-_7y3o4x-iMT30ZiLV7j3_l9fA>
 <xmx:IZKeXXPpTThZZiexiCDrU3DFYN_r6UI1vi7-ukS1sW6BmHn5Xh2SZg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id C2E6A80061;
 Wed,  9 Oct 2019 22:06:21 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-clk@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
Date: Thu, 10 Oct 2019 12:37:24 +1030
Message-Id: <20191010020725.3990-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191010020725.3990-1-andrew@aj.id.au>
References: <20191010020725.3990-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_190626_863017_1C33681D 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 include/dt-bindings/clock/ast2600-clock.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
index 38074a5f7296..62b9520a00fd 100644
--- a/include/dt-bindings/clock/ast2600-clock.h
+++ b/include/dt-bindings/clock/ast2600-clock.h
@@ -83,6 +83,10 @@
 #define ASPEED_CLK_MAC12		64
 #define ASPEED_CLK_MAC34		65
 #define ASPEED_CLK_USBPHY_40M		66
+#define ASPEED_CLK_MAC1RCLK		67
+#define ASPEED_CLK_MAC2RCLK		68
+#define ASPEED_CLK_MAC3RCLK		69
+#define ASPEED_CLK_MAC4RCLK		70
 
 /* Only list resets here that are not part of a gate */
 #define ASPEED_RESET_ADC		55
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
