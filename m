Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8A610FD26
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:04:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHx45eRIqPsuniHzv6ZTa6dmhjWohfFiZiYfDXrt0tA=; b=i2sZAWiQucBM+u
	qiQA/17SVR+LVFCrJPwPqj8skZyiuisW20CgDjSkijuGL44XqTU9fO0K8bCkmlU7rS3BZqTq65QKz
	jm1EYV7EGbNeFUt+lwGeTY0smb0IPHfF4GfqJAsfb936ju470mEBw2hRMAM1dwWiuXCVxpUR0y4De
	5kL1zxniCGIjJtuwiaUkwMUK8I26LpBr1J2ataZqKWLpuM2CZ/vPe6KEUXnXse6+125qCqw2XO6Zd
	2ucmLeIl3Q1Pc0xuvmCXAt0aL5sS4P1Er4CCihtXTBP708g1Uw5NVtVjapK0wiuZYxF/7gan2XB9T
	+E6sSydBpp2sau5CrQCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6uW-0001Zr-Tv; Tue, 03 Dec 2019 12:04:08 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tP-0000eu-3X
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5A6242237A;
 Tue,  3 Dec 2019 07:02:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:02:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=jm30yheMpSomj
 rpkWzReiyBbV2WMRj2TirNvmaUSIp4=; b=TyQTwPFhVMdXHf+7WolpbPFfUTAOA
 Pdy42plpu8GtDEYyY2+WL32jg/QmINT9wLAPPi+8sX0PeSsIbyrxiiqM6844/nug
 ihDvzMJTB48O950sroHoeSbEFWNymyS2N99ihvuSdaKcUrAUEXoKfxnr9y3cjjc4
 m6x7G1BmpOJTdEWXk10WQBupkuTzTA6IQMN2pbk2LFlZB7Znais6QgU1398SZ/lP
 GGwbb51x8OETwStsVTwfjgWD3cdeU7ibqintvTJSxY00/BtMnsbqPtX/eUjryt+V
 rBgcK3q9/6UUG4GBbZ7leX8rgI0d41hfmj5SsExuMbhp7btRGzzFG69Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=jm30yheMpSomjrpkWzReiyBbV2WMRj2TirNvmaUSIp4=; b=kXWM650D
 pK2kod/FLmXZJFV/Hxbc71i8z89ybmHfGDZmSmfxy5Le005htDfrrWylETR4/rOV
 Ziuxv1KEkg25ypGB1OPImFRbL5rI9m+xAi6Qlhb0N3bqbCEcKoOzvf1LpI1Wx5rY
 k0+VidZKri1EWnb6pTUAZtudD9MeKJ0sCptxvPokLufoeMmqPsr1wJY1XWoYBg26
 irlVm1BRr5tkClhiye74ksz1hYfw9GT68hQpLvBYOECCzjAy8dBKmFWrR4tdRBA7
 PDC/wHsyMeiq0gZhSCbido7Rn4TiUyisoh5NJBhrCMLSugrPrqFO01maHz1KrjDB
 WVCcz7kcUEZvpA==
X-ME-Sender: <xms:8k7mXbscz4FaJIyES5A5kWth5HppQOQufM4w5z6i3WDxkLQyMN2ihw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:8k7mXcKrG6EBQCI2BULgXWIywLn0-wXsj6V2G2kW5szo8VK3WYPADw>
 <xmx:8k7mXUsgjvaXqKZxqGZtA7EycLncmWjYzrT5wMwbTWVBTcIoFwePOw>
 <xmx:8k7mXUfeUrKBlhIX2JnVO41T6E_lrkbs7Zp0MpiVaSlogN_TNy5Ynw>
 <xmx:8k7mXfZqyAHvvVbKcB6Ur1yB0vE5pZE5afabjHicgKKVy7G2gvxvsQ>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3EAE5306010D;
 Tue,  3 Dec 2019 07:02:54 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 04/14] ARM: dts: aspeed-g5: Use recommended generic node name
 for SDMC
Date: Tue,  3 Dec 2019 22:34:05 +1030
Message-Id: <f6963e3de99508b1053e7d96e4dbb05cb4bef3be.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040259_305211_0F7E7E80 
X-CRM114-Status: UNSURE (   9.53  )
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

The EDAC is a sub-function of the SDRAM Memory Controller. Rename the
node to the appropriate generic node name.

Cc: Stefan M Schaeckeler <sschaeck@cisco.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Stefan Schaeckeler <sschaeck@cisco.com>
---
 arch/arm/boot/dts/aspeed-g5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-g5.dtsi b/arch/arm/boot/dts/aspeed-g5.dtsi
index edad1fd78925..d8d358e23d78 100644
--- a/arch/arm/boot/dts/aspeed-g5.dtsi
+++ b/arch/arm/boot/dts/aspeed-g5.dtsi
@@ -206,7 +206,7 @@
 			#size-cells = <1>;
 			ranges;
 
-			edac: sdram@1e6e0000 {
+			edac: memory-controller@1e6e0000 {
 				compatible = "aspeed,ast2500-sdram-edac";
 				reg = <0x1e6e0000 0x174>;
 				interrupts = <0>;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
