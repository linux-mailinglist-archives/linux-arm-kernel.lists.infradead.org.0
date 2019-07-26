Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE47D75E90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pro9nFGud0byVN7dWoIqLBoGmDKfUNDyXNjF3fCvUJM=; b=tRdNValp5SAyb8
	Z8TyTXKWpMQDIBKK++f7T9ZO6j6jHbsx2Qx8xAJfaSxlZAJ/LD1rG1tqs1YCb6Q1AcT8X7MAIMqp7
	4bjLnMuQkqyilPfTY168ht4fhsJUOeC6xDqPlFMaj2lj3m3TWasBGYDs99AVRRIOAr49tQGradTVJ
	hr2AFHB+J97KRG0Wv7QQp1ePtFkahu1UXqbSDDfNa7hs7SNjQFkU8PHzzAUb5tMNcq+cYyJ26hB0N
	CmoMOsAlQZElmtnyC9M6Ms3BSMQZTw07TS2FzqLaq01aRNDH0Mzbpa3eltvMtJdYg1Um5Rn8svFy1
	Yd5BnYz945XKEBb060kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt0H-0005AE-IL; Fri, 26 Jul 2019 05:42:53 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxp-0003pt-AZ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id AE12922304;
 Fri, 26 Jul 2019 01:40:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=FGnrb1We2FOVt
 /++AKR6ddEpH2XDEzYVw5O9qXjrW4c=; b=mMz39AGz6K22TPx02gYs+cd59F73Q
 ymNswcu7ZcjW8sC5jQb2+sBNJk2lLnZj/KM/E4Yw6MfYOLeAVSv9/N9Cyxc5dInI
 ILm4BfzIYhLTVMnb/VA3G8ulzuC7zrALU0t4TLAt2+vTLqgBZb/N6PxeGXj3M1ta
 m4B1Lph2fv1fVOtWIQDKRJfqZYeFAU4ZBpQkMrTduGMhE3XRVrprjs0caXI4AzqQ
 nI4CfrUwMJQfFMZry/9Yt7r6aRanLysbRzbtT4R4av26ZcDe082uluVrH6jY/zHB
 V3zZku9zXXgoUt94WQg6bKflBpEUzCoKIowj8drii6hG6xOjCHPEtDMKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=FGnrb1We2FOVt/++AKR6ddEpH2XDEzYVw5O9qXjrW4c=; b=O9A9eeM3
 4BtcB66bgmHNI18lEjrkyqKy9eO+g/Ecx+meEOju5Jn26CgYggOtFLmeU5NxL/Fs
 JvFNeIkhhOX5OM4Eg5JjDoXhHsRhGmlHgzoSIlHUVyoua9bEdI+cFr0VZcIGSKxS
 GmH2C8nBpdojs0JHnZ8Tcfzh5wf7oH1342ovzcGhAqD1pqHLQKQfgw8+3LW9UTl2
 xby2nJ1WEXBwznBBbjHUsjH/SJ7p2TdWnFkExKo+ZCJvlKTnrsviAt42+qS1wN1T
 SCnhLfkiqoeoR8otGEw7Otb0LYLdaztVe1O55OXyzZIcVd3ayVQqO0Cw+MKYpJwg
 UUMiXN7/bdnd9g==
X-ME-Sender: <xms:RJI6XaQrHM3bllWNNzUdCXWaPW2UuhkmQKG9ygJpgMYg8U5npw4unQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:RJI6XdLEgXOUllC0AhkhBvsi8jHtnpu1jcBQrlD8G7zLr4ucZIEaHg>
 <xmx:RJI6XfLwrysAEgLKcPaFS5aa4FmlIxEQguEWkANwXclTjpeX355g0A>
 <xmx:RJI6XQhsOzujfQ4yGGF-QAISLMsI7bt7MZVpWQ7-rCJgfR8ax30U2A>
 <xmx:RJI6Xd4D749w7J3o9KEiMOEU-GWvHneHbHE3qyiE8eHfXvi5OCMicw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 84613380079;
 Fri, 26 Jul 2019 01:40:17 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 05/17] ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
Date: Fri, 26 Jul 2019 15:09:47 +0930
Message-Id: <20190726053959.2003-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224022_630220_A4BF3507 
X-CRM114-Status: UNSURE (   7.88  )
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
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org,
 John Wang <wangzqbj@inspur.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dtbs_check gave the following warning:

    Warning (avoid_unnecessary_addr_size): /gpio-keys-polled: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: John Wang <wangzqbj@inspur.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
index 2dd664bff928..aa5efd1dfa70 100644
--- a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
@@ -94,8 +94,6 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		fan0-presence {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
