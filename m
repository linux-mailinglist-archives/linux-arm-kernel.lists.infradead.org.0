Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A223310FD2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 13:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxVuRs/X8dXPSshEWW6WsvseGAP1GTwtofz85qN8kqk=; b=UtvIAPcMhmarxl
	5+H6HxG39FonFo1HPfz3vjyZedFjslVromsTlzJxqpPzBOQ5QPmXRmGobz5KB+rrQqqYgD5xBrnXx
	avX/kPp9lubOhwxQeJflure/OefKe5rSysly8rl7+49NTmGmPm/xegVsYhUBdtImy65xCM/MXlEFH
	c9I/RNq/lyuaJJ4y5r4NgJgdlC1Hhf+0dxF9weMTHnbwRQr2ge7pyrzsjoyoATZKN44MBkgdqZK6F
	+0kzw8Trzm6ZdEDt3B2H7ePiBLOd8fx/KwvOy5hITA9j5oDdTsWBIxh1LPovmgx7QaGxAmFIg3O1P
	a+wv1iLePIaxMN8P413Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6vJ-0002JX-8g; Tue, 03 Dec 2019 12:04:57 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6tc-0000wI-C2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 12:03:14 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 678DD223CD;
 Tue,  3 Dec 2019 07:03:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 03 Dec 2019 07:03:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=PCLgeyjEmKJVx
 dVpuK/Lt0i4thMBkeilCIZdg4t3xm8=; b=fXL0NvN0X4skl+hU9FH0/6yLwtDJJ
 NutsYa+jnJwuMsuqmwIEJNq0+6DmKCFCNjjuT9ge/sxdF8E6HonA0vzc0MnM9cE4
 DiOou0/ZVAnMhbTRVCd3sQVl/xK9ZecbOHqpoL4cSt16ZetLpDKJexCt07FFmk6y
 DV9EOUsCaj9vzVwvPqR4ikc69uP9nbbHFV8LKEwX9P3IUEPjWYWeiZwldg2ht94F
 qeKzl+nPC7cPRVz9GaFP/Tja8BA/hr5UgwlLeXIJhw6KhFacpzSLgTDIb9N4D/yi
 amq5dvj2VQu/LMV7jbUKZREdqcW80aCe04ZIAldtjvNIL4x+wHTJGNdGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=PCLgeyjEmKJVxdVpuK/Lt0i4thMBkeilCIZdg4t3xm8=; b=OvqiKA1k
 /xE3GXVxbEb+aw2heRU+J2ZsdcGi4sw52FlX624jUM3mSZjq5m4ZcIfwFxH7Y41x
 aQ7TLeOIfbj430YsNd+fJnQ4BytH8ITkX2cUo5ZoKPc2tbxXqmzgQISh4FfCgyUg
 ouJZ0+7eez+pYsdPT/c3AsExCV5b9nzKnVOJwhfJEa9tHAtPwr04TJgTfGh0D/7n
 gxEUewdWbGgXXJ3ZUuUNechD9dd/ujGulf/JY1XwJsumCqr23jTQjCSM2Ajk2wh7
 6vSeD42xdZdgpgGSOY1W8ev4naZa+X+ZAlREmrhwC6XaX2JODIiZJBof6FSHhC2s
 Mxv6b3fFOQWErw==
X-ME-Sender: <xms:_07mXfZ4RKqP1eGWgujakp2Ez-Fum8CPA1iLXjHU1TfvtGdCXNAcZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejjedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeei
X-ME-Proxy: <xmx:_07mXRVnUJuT5gTnoSYYNV3WWpSPw_1oZd_sj0-9aGz1f-Y99WYASQ>
 <xmx:_07mXVUpA8CQLA2Riqu2y5KjnwefNa21IsgOMag1PxF9QWUmtneXuQ>
 <xmx:_07mXdLjRUPj5mgBfi8Hip5-ZMEZ9aqyc3e6VyfZ_oifhjph13UIvQ>
 <xmx:_07mXTeVIiarc6YSA9AjLsiPTQ-9UBsbTr3c7bwjudEPKjgJhFp3Cw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id ACA2130600D2;
 Tue,  3 Dec 2019 07:03:07 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 07/14] ARM: dts: fp5280g2: Cleanup gpio-keys-polled properties
Date: Tue,  3 Dec 2019 22:34:08 +1030
Message-Id: <ca7ab33d96a8c20c1b09602ec6aee33374f7c5fb.1575369656.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
References: <cover.08e3a6c95159f017b753d0f240086d1a7923758b.1575369656.git-series.andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040312_813045_7ACB0F2B 
X-CRM114-Status: UNSURE (   7.52  )
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
Reviewed-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Adriana Kobylak <anoo@us.ibm.com>
Tested-by: Adriana Kobylak <anoo@us.ibm.com>
---
 arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts b/arch/arm/boot/dts/aspeed-bmc-inspur-fp5280g2.dts
index d69da58476fe..d6bb0c91d2d3 100644
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
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
