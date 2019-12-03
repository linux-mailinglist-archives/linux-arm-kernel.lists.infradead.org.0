Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45DC10FD35
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoEwk1SZdrLW5kkdkBdLpzxQB8xzZLRnT8XXepJuiuo=; b=HB55VaFwheyPFN
	jHI6c0et7SaAxYAfcr//z+t8J3yMHVGlhGD/9sbSPMwJkglX2ry9lDaUzeJ5d69ko8vT/dBjDDzvw
	bP7nNrPSxjr3xxqapFE44/Oj7gkzEj5hO60KWI2tzS/SSHgBJKvYNff2B5FB1D3ur/ZM+9gnivts1
	2JnawpUSoM3gkeCtaBDwPQvbtrWTImxaW0Cj3qVB8NrAJb+j1tOPmlcubzdRiBsU0+xkbxEd6QCPY
	0pkQnfvu3GXxB/49hYPOpkCyiCRIUUEeYCUqOqTX1VeNgzZUNT7B1ijnifFT4sP9DUefj5iaEZcpt
	938UaIXWL9KQeM7TpqtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6wp-000508-TE; Tue, 03 Dec 2019 12:06:31 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tt-0001DZ-S2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0A5BA222E3;
 Tue,  3 Dec 2019 07:03:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=/hvogHduJxRwm
 aquvl+a1y8LeZNJY1nYzSCajcYwu10=; b=XxtWYWURLN8iLOs50KYgoLDM1oI31
 THAkwVkFcoEnWV0VQZYvWXIn6vj88AwN0pvN+fB76dxQ9O2QRi1gmxSpaQy8hGLj
 k2PKPvxup67PCQ1tlPqBKQUs7A+Ey/vJ0pHydKFIOSAv1I7g25FAnfYpjnBy0jM5
 Pd4FdWVqxUf3/468ZhmCiTnK+BVIbcpN/0Ypf9INXP29eTh+YIAOKrrFQrdWmZJf
 3uRhD4p0eCsbMTvYluO1L+0VxTvx1hQvg0kaSA580/iUMoSOMl7EUQ2vSC5SPyh+
 wVA3RXDwmJs42wEJYpAeZE1GwRm/MzwYlfLEswucCmdbczbkWMHYhEeWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=/hvogHduJxRwmaquvl+a1y8LeZNJY1nYzSCajcYwu10=; b=ETp2ylEL
 ojiAh0jB3UPPj51x/rVpeUhR1bfhA+nm0NkVfi9nmXEwtMny6Ye9kLcuKJn87ZJQ
 fRWzc7/nBZxY/RLuoeaEn+ROIJnJ7raWOTa2cc1Pkzbn20BbK6pTojLHMbrpcoIK
 niInPPO5sEbKpdmH8gkSWtW3Il9KKjRyfykeVj0pY44aNuKG1E/geOaTkpRKgv4y
 2xbvmMQ8TfqBgrjue/MgKJeWojr52wWpzngfGffaK+n3jtGg5JeJGu6Rln8bIIZz
 D0zh1eBvxcEL8mROl2RB/lWYmoEgH9sUy7jvE6sfbAodv5N7Qxk8XG93LBXlJzNM
 RVRKqQAsyGRr2w==
X-ME-Sender: <xms:EE_mXTD2kfha3HtSndD1MjH1TbNt40rf5KeuUoY28AjzM67zJURfVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepuddu
X-ME-Proxy: <xmx:EE_mXS0NH7hL0fw-a4Sb_6okbdMQApewa-Gh5EvPPuEot3XzzHMrTg>
 <xmx:EE_mXa_J0HYd8JQvXkUdVeSzJAK_cDsRykvnaCeQImcC4nqTCjQB1Q>
 <xmx:EE_mXdU5NXfIu8V-xfqBy_VpCRK6-QqZ1CW_t3tFgBWhEv2khlL0UQ>
 <xmx:EU_mXUQCt3dZnkp4Zb7yIrf_bSqceuC_yelaGzKINceRqDqFwPWvug>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5E96030600AA;
 Tue,  3 Dec 2019 07:03:26 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 12/14] ARM: dts: aspeed-g5: Sort LPC child nodes by unit
 address
Date: Tue,  3 Dec 2019 22:34:13 +1030
Message-Id: <b45b4fbba8d80c1e6d0603f2dd0c2d3d69efc62a.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040330_164906_4DFCB1C7 
X-CRM114-Status: UNSURE (   9.16  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lets try to maintain some sort of sanity.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 57c9e45c9e16..954781b82fe3 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -473,17 +473,18 @@
 						status = "disabled";
 					};
 
-					lhc: lhc@20 {
-						compatible = "aspeed,ast2500-lhc";
-						reg = <0x20 0x24 0x48 0x8>;
-					};
-
 					lpc_reset: reset-controller@18 {
 						compatible = "aspeed,ast2500-lpc-reset";
 						reg = <0x18 0x4>;
 						#reset-cells = <1>;
 					};
 
+					lhc: lhc@20 {
+						compatible = "aspeed,ast2500-lhc";
+						reg = <0x20 0x24 0x48 0x8>;
+					};
+
+
 					ibt: ibt@c0 {
 						compatible = "aspeed,ast2500-ibt-bmc";
 						reg = <0xc0 0x18>;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
