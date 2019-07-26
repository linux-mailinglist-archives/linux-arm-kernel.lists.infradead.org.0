Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3061875E8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BE8CoGkeftIaJRuuP+Wl2yJ0LJ3j9U+q1INThPEJr+A=; b=eNDCsjZOA0Sxfa
	AT0xYKJVn3t+7OM3I3C8lUHF2ZGM3KHBqWRcPe44etytFxlQOW94L/Xgw7EG2bUi+G8iJxgZeRiHe
	r3Upe5jL1KWs/IW8oNan2abREsTye1yk7ND1DYvAeGy22Ra/UbjYGfW0da+s5sXjl1+rMEiJP72xD
	UZESftTSRitzVjlxwWi3UiTUmi9HOa31TqT9Fapg41hwoe3TXrk0w96eoRD1BUhqUBH7pXmsuvUu+
	8NO4rv2Or/6f6EuMD7G12V4xlIvuXCjgC4A9Botgtg3w+MsFdOJeBv+sQ0/lGB8kMKNez/YloWbEr
	6TMBJz/5eKSUKaBLx0bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqszx-0004tR-6T; Fri, 26 Jul 2019 05:42:33 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxm-0003oc-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 394F222131;
 Fri, 26 Jul 2019 01:40:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=HIlXPSjKgK5qU
 xVhM3BUkxF4hyG95XBN2iVQvkJ99FQ=; b=G2BHcXk0PJY9s/xfFwAzcYhSMCR0C
 DCHepIqJGNpIF2ZZdJkbsTjRizyTOeR/1/E9mhNgWgI19IZkBGnni8NGhgr4UETb
 xx+9httKsAukin6Jr2QRz822tnDNjZa5mdo1YBTUzKfiKshsAQL7KcweOWm9UDmZ
 /5wUdHYvm8XK6Kplb3i7SMZL3W/RiyqpcbqUGK8/AuyK2jQcLOm1CQZG3lw7lKkK
 L4nAWwkeh71f/8U2rb2aF22S8tdEby3plP23AxXu6KoBWfXVOnPmunup8EXd0NA+
 wRp6JD81sLzqefeGj6hQ6SLIgXx0LsCclX1ZcTjq5XvWYSBxc/eXWEigA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=HIlXPSjKgK5qUxVhM3BUkxF4hyG95XBN2iVQvkJ99FQ=; b=RaX88la1
 /8mfNU9bjbL+KsZrAQIMq5BHujxJYav2lzb0uASDWeogcfZzmCQuyZrxT34iBLJC
 D8u7Lv7pWDjIzFE0LCPPswMaw56qKGl7/AyKQCxl/2s28qfvBRj8w4RszXkwZ5Ul
 IDwQ6VIQ6P/fBqKBGsG2tjxItHHeW3AqooPJgCd3H+sAgUOSbMHuDKk5ghaqT76b
 5zxDeDW5k6BGcO5+BAPxKyzxUMv2ZCWhY85TrRFosAQil30INRhK6REo3yUTfvj1
 K+Tx7GcI7RttQT1pa+ZG7PCpyZpqdXsLFGOQg/9bk9G4RdDPbTr3xB0lis6xxQ7z
 Gf+VBKKcoeCHcg==
X-ME-Sender: <xms:QZI6XbsKaVGsM-KOKcH713c2RoXLLPECCb7af3KTALJQ6bs-5p9Edw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:QZI6Xd7lsMlldboqtKETyZcNu4OQ387q6XMenBKZoSZ0-A-comDLAA>
 <xmx:QZI6XaKLNWBDVqr0dKwFExgmjJjkbJbxClWYxnurdDJhv0EE_EmDHw>
 <xmx:QZI6XXT09mFm8fjXsnRj3MivOzSX5BMYuZaodn6WFqL-WbwAggHcrw>
 <xmx:QZI6XYJJsJWWmL4I4lKgTtwX6o-uF79RdcwLgSe-rZzpQI0YGLyuaA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id F1ECD380076;
 Fri, 26 Jul 2019 01:40:13 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 04/17] ARM: dts: vesnin: Add unit address for memory node
Date: Fri, 26 Jul 2019 15:09:46 +0930
Message-Id: <20190726053959.2003-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224019_373415_900802DB 
X-CRM114-Status: GOOD (  10.05  )
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
 Alexander Filippov <a.filippov@yadro.com>, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes the following warnings:

    arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: /: memory: False schema does not allow {'reg': [[1073741824, 536870912]]}
    arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dt.yaml: memory: 'device_type' is a required property

Cc: Alexander Filippov <a.filippov@yadro.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
index 0b9e29c3212e..81d9dcb752a0 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
@@ -14,7 +14,7 @@
 		bootargs = "console=ttyS4,115200 earlyprintk";
 	};
 
-	memory {
+	memory@40000000 {
 		reg = <0x40000000 0x20000000>;
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
