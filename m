Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F6610E52C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 06:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sS/Iav6dpzBTHXnnjJ/A1wO/iTnRZHLy15fRgKdm6go=; b=HL9wRiyYpetGZS
	p0iaTNBADlkbiusjKXN/3M7MN30T5QB+rYXHhhPj/wVYIfKtywO+vL8VHlCwgjpLW+d7Am10rsNSz
	DY3jBXn+KUIJgc9GvXf97YnBs17kbfWYfR089Q9dEquSk6knNJkCFqqKYZniZqIytZkflIVBYTsFM
	6n1xPmgjVrlz4yZAzl4KtVsYzzF96k9wosiQTjvJOo4gC6QqOu4f9CTQ/wpTmCCTF+RSN9JC5ZwMh
	B317kv4hYViA4+aCPBqtSLNeeJQTLL5uzcm5XPoiqFNRUiRjEFPYiUE28IriaHHatce/LP00m7E2s
	b3dtvA2qQjQQuQuPmrlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdob-0003hw-VQ; Mon, 02 Dec 2019 05:00:06 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdoN-0003hG-Gi
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 04:59:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 992F32264B;
 Sun,  1 Dec 2019 23:59:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 01 Dec 2019 23:59:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=5XPvx7dahHaDCSKQZYma+ndFTi
 gH3Ld8SyUwmsY1Bo8=; b=R0+LAX5U287DyZdJvzISx2Z8v04k0VhqfVy9Bsi/TD
 OwQcI6ed1AXa5FFyN31+clQSrlPUv7hg7DpmryaO9JI9GrqcmynI5UunfvqjKqSf
 Ncp8eBz1YCkK0RSvL8SJIbcLLPvprLHew4vD02p9lMrK6q2G1iSDbrtFPX2niYys
 ZJXsyi188ZbcD2q38ZDA50VAl2raNujf8a4Ayiba8yZ+hYiAwH9hxwfB8YhGi1Ck
 m8Z7X/uSXXS4Ku1BjQrQYSVrfqOg71+U8kohp/vJ4AgzVyDgbJMDdFhnHnIy+Jh7
 QSAVS0sEguZDVNVXFRSmdjeeC/SFXXEQqXd2BBCrOoeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=5XPvx7dahHaDCSKQZ
 Yma+ndFTigH3Ld8SyUwmsY1Bo8=; b=OCKffBQh7LpEgoLyLhgn2hJAinj99yu15
 yZJ/ulmnElXGZvEQlGtI11sLjz3Yd4tdZdoiOtMuMuahYT0poIQpORPobLvC71j4
 FO9bHGMUyyJOJWZZmkHM8a/WHveY86KfVHd44XM0+pcMuhBRw7m9awRBV9FqIH5j
 2GPUrW3AHtUEdyqKj5mSxOVPvqUM69jBIMZkjquxoc6SEqee5/j79UrlG2Zt199L
 ZtfaPyGn7pHMaFalEwzajk51wlWGA3wiJzHYcE5jeq+nnkJWDi/NiIf+pjfx5DTn
 uMeaWRAPAWZa0kjLxwuZywOwdElMw+sCVeXyodhaC8CLfZ/9H0/GA==
X-ME-Sender: <xms:RprkXQa84OItlhQTmireRt-2LaF61iOyP3d49Iz1lBSz5wqTqtxi-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:RprkXc7b9lXzgySKP6g8pv66xsglicsxZa3-fqGjgcxkHPC41dVvhw>
 <xmx:RprkXfgJju1cRJGZLD1nOvdTZxTMMkqXax2HpTQHjdEcq7kDGpctXQ>
 <xmx:RprkXaK4AKeDegGat-p9e_dWJN5lqkDBfyHuGvXwl0bQ_XvavCwchw>
 <xmx:RprkXYUZVpCY4stLwh50XOG0_YoZpn8N4w8l5O65pXTyptA61BpCTg>
Received: from localhost.localdomain (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id C40DC3060122;
 Sun,  1 Dec 2019 23:59:47 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH] pinctrl: aspeed-g6: Fix LPC/eSPI mux configuration
Date: Mon,  2 Dec 2019 15:31:10 +1030
Message-Id: <20191202050110.15340-1-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_205951_694757_67898187 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-arm-kernel@lists.infradead.org, linus.walleij@linaro.org,
 joel@jms.id.au, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Early revisions of the AST2600 datasheet are conflicted about the state
of the LPC/eSPI strapping bit (SCU510[6]). Conversations with ASPEED
determined that the reference pinmux configuration tables were in error
and the SCU documentation contained the correct configuration. Update
the driver to reflect the state described in the SCU documentation.

Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 24 ++++++++--------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index c6800d220920..bb07024d22ed 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1088,60 +1088,52 @@ SSSF_PIN_DECL(AF15, GPIOV7, LPCSMI, SIG_DESC_SET(SCU434, 15));
 
 #define AB7 176
 SIG_EXPR_LIST_DECL_SESG(AB7, LAD0, LPC, SIG_DESC_SET(SCU434, 16),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AB7, ESPID0, ESPI, SIG_DESC_SET(SCU434, 16),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AB7, ESPID0, ESPI, SIG_DESC_SET(SCU434, 16));
 PIN_DECL_2(AB7, GPIOW0, LAD0, ESPID0);
 
 #define AB8 177
 SIG_EXPR_LIST_DECL_SESG(AB8, LAD1, LPC, SIG_DESC_SET(SCU434, 17),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AB8, ESPID1, ESPI, SIG_DESC_SET(SCU434, 17),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AB8, ESPID1, ESPI, SIG_DESC_SET(SCU434, 17));
 PIN_DECL_2(AB8, GPIOW1, LAD1, ESPID1);
 
 #define AC8 178
 SIG_EXPR_LIST_DECL_SESG(AC8, LAD2, LPC, SIG_DESC_SET(SCU434, 18),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AC8, ESPID2, ESPI, SIG_DESC_SET(SCU434, 18),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AC8, ESPID2, ESPI, SIG_DESC_SET(SCU434, 18));
 PIN_DECL_2(AC8, GPIOW2, LAD2, ESPID2);
 
 #define AC7 179
 SIG_EXPR_LIST_DECL_SESG(AC7, LAD3, LPC, SIG_DESC_SET(SCU434, 19),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AC7, ESPID3, ESPI, SIG_DESC_SET(SCU434, 19),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AC7, ESPID3, ESPI, SIG_DESC_SET(SCU434, 19));
 PIN_DECL_2(AC7, GPIOW3, LAD3, ESPID3);
 
 #define AE7 180
 SIG_EXPR_LIST_DECL_SESG(AE7, LCLK, LPC, SIG_DESC_SET(SCU434, 20),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AE7, ESPICK, ESPI, SIG_DESC_SET(SCU434, 20),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AE7, ESPICK, ESPI, SIG_DESC_SET(SCU434, 20));
 PIN_DECL_2(AE7, GPIOW4, LCLK, ESPICK);
 
 #define AF7 181
 SIG_EXPR_LIST_DECL_SESG(AF7, LFRAME, LPC, SIG_DESC_SET(SCU434, 21),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AF7, ESPICS, ESPI, SIG_DESC_SET(SCU434, 21),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AF7, ESPICS, ESPI, SIG_DESC_SET(SCU434, 21));
 PIN_DECL_2(AF7, GPIOW5, LFRAME, ESPICS);
 
 #define AD7 182
 SIG_EXPR_LIST_DECL_SESG(AD7, LSIRQ, LSIRQ, SIG_DESC_SET(SCU434, 22),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AD7, ESPIALT, ESPIALT, SIG_DESC_SET(SCU434, 22),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AD7, ESPIALT, ESPIALT, SIG_DESC_SET(SCU434, 22));
 PIN_DECL_2(AD7, GPIOW6, LSIRQ, ESPIALT);
 FUNC_GROUP_DECL(LSIRQ, AD7);
 FUNC_GROUP_DECL(ESPIALT, AD7);
 
 #define AD8 183
 SIG_EXPR_LIST_DECL_SESG(AD8, LPCRST, LPC, SIG_DESC_SET(SCU434, 23),
-			  SIG_DESC_CLEAR(SCU510, 6));
-SIG_EXPR_LIST_DECL_SESG(AD8, ESPIRST, ESPI, SIG_DESC_SET(SCU434, 23),
 			  SIG_DESC_SET(SCU510, 6));
+SIG_EXPR_LIST_DECL_SESG(AD8, ESPIRST, ESPI, SIG_DESC_SET(SCU434, 23));
 PIN_DECL_2(AD8, GPIOW7, LPCRST, ESPIRST);
 
 FUNC_GROUP_DECL(LPC, AB7, AB8, AC8, AC7, AE7, AF7, AD8);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
