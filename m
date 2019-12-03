Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A9A10FD30
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIvXRKa9XjrqWrvdlk6lIKQ3p6xxcVKpX0OZp/7iHhI=; b=ugxvu90LyJWESW
	QGXuzC2eBo0+XVkXAHXQ5kQpUSDcYXVEdhmoVmqW3s7L6ECPtddSF3RV3NMu3Eg4NrZTFSAZbwNT6
	M9tOm3aE6CPLbpy3jYT+HBCzPYHe9N1H84Tpx1AR8tz2/iQbtDxKoOJYI/WOiK7CjSbiY+ty1t9hk
	k9r5Qgqr0PD1afq+KjQ7ahIaebePyFzyP+7MGb1xPbBeaHafvRtlEtOnqMd5O+QDigUAxoMFKxm3V
	MruJ64XYVgF1xugZhBkhnWw+Uuw2S8B/n2Lw3WUCraDRcp4klh/u8bx71i3RE5TPFH+jHLCaUPC+r
	gFSg7cem+Sfe6bKP6ufA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6vr-0003yU-54; Tue, 03 Dec 2019 12:05:31 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tj-00012t-Dy
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 90D9022400;
 Tue,  3 Dec 2019 07:03:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=lTMgt1HLjzp8s
 L+PteL0UcJwaA7usVkuzSVyWJEJXu8=; b=RR+21FlIAVje80xSbGcjFMlUfNPtv
 nQV+LDgnbhUlm/xqEXPfa/xgWCx/RKNL3oPXX9mHmkeZ5FRSTnfuPSFEICR3Yvtk
 2J9EBzNPR7HjQwfcX+K/uEHZ1jcKilZ2/rVFavq/Kq/6LhY+v8vdPCYoTpbN9IEz
 PtgyiBlXZ+JtyU+YXkgfKO9gRicy6MkWXJ6xELycOJYHYiBRjRj1MqRG2IrZeWQ+
 sonAPyAhNsDUimjBvpIr6zVyc3gqVI4jlJTeh/wTdyfl65nNlt4oiq6Ucynwcbiv
 kVyWQpaz5OFRVZgHKCU4iBxPPPWofyIJlvPS1QYgkZCN6X43RM4Aig21Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=lTMgt1HLjzp8sL+PteL0UcJwaA7usVkuzSVyWJEJXu8=; b=CV8XFhu6
 gU+QdLhBG5/YK9Yg/ylAugTOryxmjty/zk+dg+JzyJOZQgR5t/7xfAH+y5QLfap+
 GwpQxBUrL8JJgQ2M7sKybzc83xZY1cz3EkM3+YcKC8mLOX0PRZtYfjYDMBqmR3r+
 uW+hKvJnycjJP6biVWWe5LXI7k8bvyLYL0T5fDNL95jI9jGGgYm3xsNHRxB5YXNm
 fxYNweQQN6jNV2WRLYxY+Z1ozWUP0tngQsdHnaev+RbdB6+1taIXTHVmbKrFFkvD
 jBHC1FKKfyrLNHUSyBI5ks93wH41fw+uv2mJjpnlQAN4+0TkIDLNNExMZd8lXAg9
 1uL58/QyGHW8gw==
X-ME-Sender: <xms:Bk_mXcJfd9IhMsaVQsRCTh7_V0DUtXgb_IUVur1PtrvdtL08QObXSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecukfhppeduudekrddvuddurdelvddrudefnecurfgrrhgrmhepmh
 grihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihii
 vgepke
X-ME-Proxy: <xmx:Bk_mXRmnTDCpl1NupdlprVw0iR0DZBrVqZw4CSRbfMT7eFRFSAFh_A>
 <xmx:Bk_mXRe71vo0pQYdZxVdoYqLADuwUHjvAZHs5IqX1u-LZDOddxsYlQ>
 <xmx:Bk_mXaW7K2nUD2dRaBz43t1J9ZW4L-zUhpp6_c8FNt_XKxH4woBfjQ>
 <xmx:Bk_mXde_FPJ7gVUkFek50lKO3_swb8RmNZWmstxWlV3-NiUtJxi9PA>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id B4B8C30600D2;
 Tue,  3 Dec 2019 07:03:15 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 09/14] ARM: dts: witherspoon: Cleanup gpio-keys-polled
 properties
Date: Tue,  3 Dec 2019 22:34:10 +1030
Message-Id: <dff08baaac1fd2710b2db33fcac73c1411e1af6c.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040319_747516_481F4FB1 
X-CRM114-Status: UNSURE (   7.83  )
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

dtbs_check gave the following warning:

    Warning (avoid_unnecessary_addr_size): /gpio-keys-polled: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: Joel Stanley <joel@jms.id.au>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index 39ba4d5a787e..dbcd3dd8b405 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -77,8 +77,6 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		fan0-presence {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
