Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFA975E62
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:40:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ntrka8zAJv+MMHgDCqU7hr1ephXglxRNhBSVUj1qyug=; b=pYC+boF3bmDJJs
	/ZWvbX/kuApHr2ML5r8/ZgpiQHpV8G8cZHI/NYVNY/PfI4NdU3NxszXlPNrCSV9EGG5og0U64IK0z
	I7SG9BhWsR7jTIl+MNzDRtUiypaAj6P1/sbrMY5kuHamUEZ0wyKTCN8yPNN4tWGLkf/m1BXeMG9lo
	NvS30/iV+ighFeTqnPd4UZuaKbI2hPEPGldGMlL+e5OM6dj6dGVz0xLu1qMlTbHUdqsJrhPb0ZCrX
	9UKJqJBJsNOrkm7gBF9CqMe+RpgQy8vafWx54rSdaK+i7UwS5eGnibFf70EJZVRtT8CUJkUEQkeNM
	7k3A+fTWQAeyqrHsrw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqsxt-0003k9-Oj; Fri, 26 Jul 2019 05:40:26 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxb-00037b-TL
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5774A22316;
 Fri, 26 Jul 2019 01:40:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=VAmBJkwQa1nYT
 pHvlFa8arKTnGNAQUEikNjCfoiyH7k=; b=M+KYS3fIgpccxDg6Bt8b417HA/8Pa
 ViI/Pj8uR70BP4qQdmk4CWNSeTi2+Mir125FcJXOubW3H+wSacsMByWLSWY+lv52
 eaMQplbbdVNJlu7CovN0d4DM40ypBfxr3ei6cLjoQsU+83PJ0kN3IUcEexO4tD2E
 4Ma6MZ2xNzxjnnb1VyFJF9i25V4qa+juWAdF/5Au4oWyq7tMmoJOrDM3sR5OzvKm
 DTwkhzSjm8aWW+mlYtqgqMbHEP98b9ugm7jKu4y7Cv25lM3H+thEqpEnFIn/L+xc
 1d5tnlJC4HJXNNbDuZk+aCuO2VTSHdc6O/2XaYt5qz7baZqjYrdn2k+ng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=VAmBJkwQa1nYTpHvlFa8arKTnGNAQUEikNjCfoiyH7k=; b=KPnevW2V
 15OyMrFxm/AWEprcvIdfXTegs2XLJiRD8SbodqUrNvN2jMMy158zHhfnhE5OPql4
 YbZn9Y1i33yWWm81SA9xwbxsnM5Ckkks5WE/o5bzEl+JC+Enq/nTJU8cvmQJuL9w
 yQyxfVao/F1RXKo7UGhiiCMSKD8bFqpd51hENGDXp36FagtWCiMsd3sQmN9No5Uy
 OZbCKPADFXOQDy1AnaRc7cCJ8KtC6oxtfH+xg9uDsq6J0i/tlo5o5oWvoP0d99jb
 59hdjcWt+cnD8MxwkV6gS2KsRhfqYqwTLPCYsQamq1lUwyMwxXmPDnWGf9HISMbi
 wEpTOqicHUjc8g==
X-ME-Sender: <xms:NZI6Xesl5S-e6ZI7uh9yHfozUDtEmLupzewlhplTvWd9AEldPBoS1Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:NZI6Xfwz8cSWL501sAtmmtbyDGvvMlVHjnZjsnIb_nhDybMaRMqKeQ>
 <xmx:NZI6XciTthIgiUfCNGVrm1kk_d25ZhzKM-UFFMrDk9m2LdQqqY6BSw>
 <xmx:NZI6XbA7doWG1_bHK1UYKoE-RMa97OE4Wa-IZlteBtpmqWtiX0iQgw>
 <xmx:NZI6XU3b05Szt3ND7HdHAufRZqdUJYv-fhN3nnUR3Ww3D31VW9hLbA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 22F61380084;
 Fri, 26 Jul 2019 01:40:01 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 01/17] ARM: dts: aspeed-g5: Move EDAC node to APB
Date: Fri, 26 Jul 2019 15:09:43 +0930
Message-Id: <20190726053959.2003-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224008_199515_BAF1E28A 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, Stefan M Schaeckeler <sschaeck@cisco.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously the register interface was not attached to any internal bus,
which is not correct - it lives on the APB.

Cc: Stefan M Schaeckeler <sschaeck@cisco.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index 5b1ca265c2ce..7723afc7c249 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -47,13 +47,6 @@
 		reg = <0x80000000 0>;
 	};
 
-	edac: sdram@1e6e0000 {
-		compatible = "aspeed,ast2500-sdram-edac";
-		reg = <0x1e6e0000 0x174>;
-		interrupts = <0>;
-		status = "disabled";
-	};
-
 	ahb {
 		compatible = "simple-bus";
 		#address-cells = <1>;
@@ -206,6 +199,13 @@
 			#size-cells = <1>;
 			ranges;
 
+			edac: sdram@1e6e0000 {
+				compatible = "aspeed,ast2500-sdram-edac";
+				reg = <0x1e6e0000 0x174>;
+				interrupts = <0>;
+				status = "disabled";
+			};
+
 			syscon: syscon@1e6e2000 {
 				compatible = "aspeed,ast2500-scu", "syscon", "simple-mfd";
 				reg = <0x1e6e2000 0x1a8>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
