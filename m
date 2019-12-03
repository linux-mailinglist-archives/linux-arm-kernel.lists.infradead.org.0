Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083B210FD2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:05:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/b1454J2Nbeb0MZ3CqQr/IrEVwOMXtsB+6wPjKmt+I=; b=YbdwnWE23e2I/r
	dLbX6XTQxh7J844s0BpbqOgOMm4zpRgzJ0yZnqUsxZLDbeMNk2nTw+rAVGWSyXGUrvjjJrJ94tvrx
	3MqNjLPpze8nub86OH0K0Z+zLuRtUSIX23EbLX8lz64i6W1xFBQOXYVVs/ULfdDiA6igKXNvCwt8b
	zijolk2ykj+GJjdKmPcr1unzISMAX6wphm6myR3SdGRVU2Va7AL58HfcJUyyQAkUbSyn7Vqt0oKrw
	MJy04NbqbXdSeReDrAN9axr28tT6jvVdVwh2p3/z90NfuCH8kkjtIUNCPVqwa2y306bD6svOmft8R
	/vIrgq3yJB1lI1TwoKvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6va-0002Yc-Dv; Tue, 03 Dec 2019 12:05:14 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tg-0000zi-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1C9A1223CA;
 Tue,  3 Dec 2019 07:03:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=DGJozeGcc7zi+
 9ieiObmxaR/yTCxk8WMksJfUp/Tyao=; b=m5T5qZmfLcPA0mavShTGN0DsbMADV
 MPJbsV/FVhQsmfG0HvjEs7vAwwpg6xRn/pgzQkEBy/1XUNqWo4lSTxPYqSLKw4dY
 ob4ua0CA1X2eWO567mK6xf9z5GOaqtXTpkZcR9nfRn8MyLugUtQIlNqyg/XOctXH
 pDf5ZQcKO/8pJWy8Aa7X6IMWCMcRRbQoV+KQuqrg951fMK/BRHFIwOPMbwsZMfj8
 8rDLMSD1T8nIREaSKkX8jrlXuaBwbbIayYpPpfCogxyx0rm88EnyfUgpOKzLj6UC
 RQyLDp6hV66C3aNGWew6anGsqf8sBBIMRKuKGCOJLwsIYllG7aoLGrK/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=DGJozeGcc7zi+9ieiObmxaR/yTCxk8WMksJfUp/Tyao=; b=v5t+Q25A
 M4DXfcf2F/XlOfz+IKVfiFQBH0kmYv3O5LTOeTDcHftTxN2jWAAsTeP3Ejj0ebPV
 C2IOE6wb4x0v0HZ6TEp+wc5AJYbGlx15VJkxKx6mkiCCzH9V5q1PArW8gFK5Mave
 ZFbGhyfW1ryV9ESRyzg/QLalncPMOysVOuvPSHJaVS7jugJldtDRoYG+binIce3b
 gySqtZSmnH765M0DLOtAZJ2soe1dAmmsQrRIffutf9WY0O5ePGm6rnRPcwZaa3hY
 Z074z5x2zfnZVq0h3RGUNKJ+BEUO25sFIEIdeGxk92uKENEVkdkP4SbFHe62+THO
 bNfw9PUdNToxjg==
X-ME-Sender: <xms:Ak_mXSpVM-lfLMA6g6QGvc-BQciflK2U4AwPZAycyjgmcGMoOW8FWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepie
X-ME-Proxy: <xmx:A0_mXcXOuWRxD53R8sTvfxDgJxS0u3NJVBbzl5Ym5rauxA8n29cNwQ>
 <xmx:A0_mXR5hxuJA3lilqepPY_PSAhND2eCd512955ipnpszP0JuGdutZQ>
 <xmx:A0_mXS2ViiOG2IgsS-he5FV_Cvzh_DhQ7Ajv51_3dFy9gpIkl-APRA>
 <xmx:A0_mXR5xRlUOIg3dgd_hBf289XiZzFxbbTLnCDMSnu4WFVJ0XS-3Uw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id CE7C430600D2;
 Tue,  3 Dec 2019 07:03:11 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 08/14] ARM: dts: swift: Cleanup gpio-keys-polled properties
Date: Tue,  3 Dec 2019 22:34:09 +1030
Message-Id: <78ea3e17108c7c8fded921f5673777fc415cd66e.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040316_552874_175F53DB 
X-CRM114-Status: UNSURE (   7.60  )
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
 Adriana Kobylak <anoo@us.ibm.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dtbs_check gave the following warning:

    Warning (avoid_unnecessary_addr_size): /gpio-keys-polled: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: Adriana Kobylak <anoo@us.ibm.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
index 0831bc1f5a4c..555d79405884 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -82,8 +82,6 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		scm0-presence {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
