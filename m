Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE39510FD1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQqkBdINPRCXAy79AoIOC3Wb2k4hgWJfaYaE0Zivs/g=; b=b76j6JrF7+7Jh2
	oka5vT8EvgDLrYEpFSXxJjVMdr0dFDF6/3WSdVKuSJ/YDQNQWupAyOdb/ctbsQWYB7zXFVC9NsF/O
	rxMVUbUOliXYaOshrIXetGERQC4vGNsxhYKvPWNgcR7Im9xz48DndRagLN1s/1cLoAeLmKx4T6TwR
	dT9yw91kB//yVKK5I2J5E+X+4R7R8+1b+zLfqOO4vVdqIfzqVllKTfSAqKJgg4aXIQjFJ7fiyyxSi
	zBBtI6U8FOCOl3e+C/1VRDDcrFt7BIn0fERjqXalaVi0RaerwVqjlufNIUDNJstg9Mhk5PT46aAIz
	6mcoaOMJ7okUqH4TkTdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6uF-0001M4-PM; Tue, 03 Dec 2019 12:03:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tL-0000bC-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:02:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CC3792237D;
 Tue,  3 Dec 2019 07:02:54 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:02:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=oRxzRdsRajLK4
 JLtN6NWanmeTYQX2/mKS46TueKiHxs=; b=SNIn+/zFo3+mFdkF6++DmHSZHHHu6
 ttx7/t2SQzEMzMUKTrVUX0o3Y1xqA1Y04h13HKf5i9FSxY+uk0nwPJaxaskURDam
 T+pU8/8ABB3ERXcMzfqrto1rzqCz/RAdr+uYrWQSyprUJ07JJOYF4lUzJjoQL/uf
 GanzHn9uMgAwDgXz5hXI2aEU78KRmdXLwgo2WbOUuUdWRqsPCyIAV7jEbIVkKUrr
 TA7/ag+bdWMfexRs8AcL3oPJiNfGlJ/PXbiHqh35ky5cd6oUV+Azrq6+SwdeUqVj
 Uaq6f+o+061OD3Ilt1lOZw4Oeu/f8BaVuSyNK/2gulDdrHSRthJzXIc7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=oRxzRdsRajLK4JLtN6NWanmeTYQX2/mKS46TueKiHxs=; b=OgQv4yXY
 t+E+NbNh0VXE/v0ql2eKf9ExaWMZWYPNsqUH0zEbg5PsnoIbADyySUPy3iMvmwIX
 TyxrqoRYmMp5ASgy5sXll8Xqgpj/pGiiWCh9lSDR6G75XtoAejkYmnAJy7HgHqwD
 DvIZpy6dFwsOs4yFpSRpXipYclWC/Nbdk/XlCB8cDYfm0SZjBVzN2yzyWvteRVwm
 stT/0VbwRx3rkCB3pQOtchdKgMO5eD/vpfQWAECu2CjPwpnkzK1fy6v/ZuK2qHqL
 PMjF3l+4CILAX3CiLuFKNDxcDbGNMAdM1155rEFys1INQG/ZnEcVobgrAVwnAlDm
 /mCxx5UocYe5vA==
X-ME-Sender: <xms:7k7mXYyRk7xsKZpCLFJqelq6Y1D9QPcHGMN64NxC7LoEkWKjjImRvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:7k7mXUpJBnoXPAxfC6v0jFikcKS5gGc18ZcjFVnhBj8IiSmdNymgTg>
 <xmx:7k7mXUn29PdTT01nQJdvkOK09yYl1WLE9u_RimfFhGCcl5euPIizQQ>
 <xmx:7k7mXbF8vRmYaBwHtSgkm_FbkNkELQ-qBh892ACZxWxXzSckxsjy5w>
 <xmx:7k7mXZ7HFc070Fr1csz3pYcV5-fSrjT6t0wQYncvCLz62OmSE4OR2g>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id A4723306010D;
 Tue,  3 Dec 2019 07:02:51 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 03/14] ARM: dts: aspeed-g5: Move EDAC node to APB
Date: Tue,  3 Dec 2019 22:34:04 +1030
Message-Id: <73940993d9dd958984ed3f9a0c6c15f7f17ba556.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040255_840077_29341EF1 
X-CRM114-Status: UNSURE (   9.80  )
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
 Stefan M Schaeckeler <sschaeck@cisco.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previously the register interface was not attached to any internal bus,
which is not correct - it lives on the APB.

Cc: Stefan M Schaeckeler <sschaeck@cisco.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Stefan Schaeckeler <sschaeck@cisco.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index a8ce59a3c88d..edad1fd78925 100644
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
@@ -213,6 +206,13 @@
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
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
