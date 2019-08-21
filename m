Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E21D984D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 21:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrsd8kR+yAGXiNgVhfOxzH8AHk/snhG7KkUUoVZ9Ico=; b=MQxgndcdD4I7dl
	Ok+uz7v2JRLvJcprSDnVrdtjYP8F6LseSAyjnai0Fp44V1QJkiTtAf7qtN52e63kZYYkUj/fIwy63
	StUgHON9IJVwZhgetz4CeqlhNNAywYwr1EJig19C/YwBvTnkYiVGHZksl4/BqUGRmsjPsH6ngta83
	bfbCQ0ki39UqbcK3r5REhmTpIpFha+C64WAPucgle4uSYwNF0sGdXqTflH/u4uf8AT5/6bS0nllFu
	kD2V7WNubNmKjWpqL2aAXpCF15wgAOHJawgiNrgb9psUaJeBQOBGQBkeTPKrWVMpetNthwl3hGr+x
	fV/rozGnH1GYrUq23FHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Wfb-0007De-2L; Wed, 21 Aug 2019 19:53:23 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0WfG-0006zl-HQ
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 19:53:03 +0000
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MQMJR-1heKyP30ID-00MKOB; Wed, 21 Aug 2019 21:52:48 +0200
From: Sunil Mohan Adapa <sunil@medhas.org>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: arm: sunxi: Add compatible for A64
 OlinuXino with eMMC
Date: Wed, 21 Aug 2019 12:52:16 -0700
Message-Id: <20190821195217.4166-2-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qvsG70X/ZyrWwmkq6jdKgG8Vou1NrQjfOvZJlBUkwRiBRWHclck
 BCLiiIKZSED3yIMGWd99yZD1L/UtsN/01GvPjVVXsO3cfgLQJnTZcRBE0eNjc+YNiiVenBT
 9a7TbHrbMUAqqS7wHZFRQxc4r1LWZadq05L3zyeq2l9KwdQ+bx6qw2QjA9asSYu3s3qDWah
 PBIyXLyCXZbRN8JBAbiMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zGpRyRJDQPM=:6vd+yY2w+zYppZKERKxBrX
 TAdHm1OC+EWa64JJ74yK+5hOTgPOfYOtWcN2lO70V2EpWF6E3iBdJbx4e3GnALhSdhdvjruzr
 T9gaYS5hBfhckSh/iamY4g57nUxydjK0/wg3VXNeXORe69YniHhKgg4LuSIgK5tTlapd/24HW
 kAsoZYRVS+L+T6i15fkIrv45IIwqBGoY2EyBY0wJ+Z9WNfqURkxmCPOEiBXjpW4HNSl9KAimx
 9frZ6PFdtCl7oqH8K+fBKr6pH5kd2jcRDpc+XI4Jh6Qj274OmoeM71cU+C2WVE36haH+MtSbB
 jy3CvVZcTKk3qOe1ZM5GmTTI9wFstnEspHDMpX7aEiwaw70K6sJdefbgLO0Rimpiwja/6NCNn
 I+qUwvmncEwcDdBRCudxy3aXrjzNlnvQLsjshQW0Rj2JmG73pGxpXTK7eIeJqXJix760nTO1+
 5d5MhBhzkgJQvaMvRJkyf26unYZn27R+XVswbpH/v+ialdZClTv3LPpwP4y6HXzeo3Y3EYRvl
 5XUfuaNnVKe0hewvrN5Te79k1EIvigC33+VkDjhtld+FvwBcwv/KnQFrqyCGyuApnarn6YLiU
 mpWdZnVsiCjmgtSt8CGyIpFonZju07yBdupJTbRAOe/HT9BD8CBkvuBUe5fub5hd1o02XXhZY
 GTjDVotUfT03uK4wdaKytJVNrhG/V6v9Siki2q/JEYjPC/ewyHP3fmtniec1tCGQvAeS3vZeA
 DLrRbCnZzGaRKWj2vYWT/y9bxcJteaxtcz8LIg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_125302_645787_AE857697 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
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
Cc: maxime.ripard@bootlin.com, mark.rutland@arm.com, wens@csie.org,
 robh+dt@kernel.org, Sunil Mohan Adapa <sunil@medhas.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

Add new compatible string to the bindings documentation for the A64 OlinuXino
board variant with on-board eMMC.

Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 93dc4c607f07..972b1e9ee804 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -574,6 +574,11 @@ properties:
           - const: olimex,a64-olinuxino
           - const: allwinner,sun50i-a64
 
+      - description: Olimex A64-OlinuXino (with eMMC)
+        items:
+          - const: olimex,a64-olinuxino-emmc
+          - const: allwinner,sun50i-a64
+
       - description: Olimex A64 Teres-I
         items:
           - const: olimex,a64-teres-i
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
