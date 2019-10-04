Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E211CC43E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dHmD7+pyTraHtU6tNX3vZnXR737wGLCZLdWRfkYFpi0=; b=Kyz
	udsgxHfoJqpjf89AdGuslY1w4pUpYO7aJ6+VJuDnsGLufBp9F4+yxX7UHhyIbWqlaegelJ+Z3a0CN
	vdb7065nXi+ggnq64pCIXY8ZyS13Nc+lpmpFoEMEyvxgrNdu38SJaLj5s8LUMJdZENP1j8kLESEa4
	8VbV9r7X+GwBf2aBERsF9+vxV3D+49ULxCaDv5mLVRX+5nM8d/AEPJqyBnLYh/i7j/31rk6aH26dY
	4TdVsdvTnm2Ck6zIcHEDX22Eq2vlcw1U8WdctFzzfHSDsWFGAvVvWPwnSe0h7niizqbqLO3cC2WOT
	2ttragRnBvdMCd1TD/sRdBnoOj946RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGUFl-0002b8-Jp; Fri, 04 Oct 2019 20:32:41 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGUFc-0002ac-RO; Fri, 04 Oct 2019 20:32:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1570221145;
 bh=x/DBaa+r9mxjwAjUssLHup4baAiO0UG/yVrLOutxWsg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=LF1if5y/7T4QYPyiawCf94aYJcnXUc1aL405rucwF10cabjCghlaJXN/uO8vszdOl
 pJS9oYcF8l9BmR4yT8PVrUWeMZYyAGpt9jc7syVqksEP91IhyUph/X/QnrJzecxDXx
 1vehZNdcbWFN/q59sUmwmzsDfjka3LhL7znEDfv0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from platinum.fritz.box ([77.191.3.29]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0LetQh-1hlnfS19m3-00qhBK; Fri, 04
 Oct 2019 22:32:25 +0200
From: Soeren Moch <smoch@web.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] arm64: dts: rockchip: fix RockPro64 sdmmc settings
Date: Fri,  4 Oct 2019 22:32:13 +0200
Message-Id: <20191004203213.4995-1-smoch@web.de>
X-Mailer: git-send-email 2.17.1
X-Provags-ID: V03:K1:1I5fDQkIZVn2LdNRnwDfp8md+rO+2Vp/TSL6bgE19S+U7e8RlmF
 EhFJGxdLBOeBh6Du3qsKPexxIxstJER4ErQMtp1m6HJoiQsEne8w+BrsSwO0Wh30laTuPec
 sK6/onl3zLo9YFphxcEW9zEFFPKS60lWUADP6OIr07s0FyO6OanEsEx+RHULWedKrDDKbbW
 4W1V/uNb/1JyOY4IW4Qow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ICsnY7aMJQ4=:5/WFKM85bWZHZp/krlqXXa
 JGKxGv3pOO7ubUb+8TvRSP6RJu3y4QxXOJWL/6bmP5fpRZvWD3UZl7gdjPlA+nLBC8i2W/+dO
 zdVsBndquXxgZt1sQulCc5ZMhkMIh6ThPnQnHBB+oy1YPivo6dPcxncbjvbgb0+O0i7ydHoXj
 9ZiON6aJCfh7U6zRf7GSQSUu25BEz2Oyo8z8ITYVI+YANji74gj8tiobps8fVES9iDrL6irbj
 dhL1JHZOJxr/fK6Z51SzaBX3usndL2ldDDzJI/TWTeKygsqRVom91DOy93TS2/y3+qdVSvYHG
 Ohp2hB9xJxVXu2IJoD0BlEEMMMLGLXsi9R8z0GYiCaG43z0zSRDzc0SdumQ7fznh8D2k2mmMR
 FPMSML/uY/JqWBSj1nTV4nmpdVeLGEuANsCwJoXq+NOlXAaU2K5vXwSSoNPY9+ned+268R90G
 28MCRcCSpFU0YrPun9sMM9fy/3pD3PKjGmTMDoOQHOlF7mYi796LT/8J7kAw2TK7XILqRP0/V
 2RJz031b8L1r3Hptl0OD20z+eYtpFmPPsa7q2+CmsKLprUxrdBx+xgC4poof91mOYwsQAqLBc
 X6ljlMxZ+BwxkNf4QTipd4dhMcUuTrIO5BxXx02nG9XMwrHIx5zHBaMz9KAnyxHt7Q1BVocqi
 Wv4JyFhARvR526ogFn1aXu7KJxyBeM87BW5J2a4fsaeGrQlrMViuc6VzaSV/jHDJ8Hu1i+i6O
 Mfgqc4+EEuoFxKT4vfCmaYNX+2Jn2t1jXf1Km1+AE05VCFEkhmo4ogflTJ1fsf5NrX4fyoZcU
 vFlEQyR6Msy3TXJGZfVmHSdTV1BnTSIMMDUfgJHO+Gwuw3t0J0xITHeF/6VebU/APujrOpRqS
 bvEoHl729Odz0/0o7HK+5fctl7UktilntlJkCQnUzVl12NrTOrdFeZNU8jvm/PyK7U6UlWVva
 iIjHQxfZqOOCb7no9+gZ0+OXFguVTBdHUsDbdI8rMTY3l1xXsLKc0wZoBvGtJkydtkZxQ7K8r
 yvGgesqk8DaEJSzOL1rSStkQBqE7gHuApTovSRLe9nn2uA0UNabEYbwP3mmZ2A8X02EZ3m7Yu
 SjpYxwom+3lHLwSTaYCSoGEe/zKKwZBQ/I3sRnuKEGJwMT2Ph7UWe/OohBaLf5VDopnWXL3iP
 D5waU3h0q0iVYGMjc75FAtIpG/uPJAVIAouxPQa4k0aoqU7IzGd2dCky/LxxSob/H7k4Bu4Vq
 sjEKSF7D5Grbp7B0vKAQvqgdUg6ohIjG5LGVLRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_133233_182966_B73EA9A6 
X-CRM114-Status: UNSURE (   6.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the RockPro64 schematic [1] the rk3399 sdmmc controller is
connected to a microSD (TF card) slot. Remove the cap-mmc-highspeed
property of the sdmmc controller, since no mmc card can be connected here.

[1] http://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Fixes: e4f3fb490967 ("arm64: dts: rockchip: add initial dts support for Rockpro64")
Signed-off-by: Soeren Moch <smoch@web.de>
---
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index 2e44dae4865a..6ec4d273a39b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -624,7 +624,6 @@

 &sdmmc {
 	bus-width = <4>;
-	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
