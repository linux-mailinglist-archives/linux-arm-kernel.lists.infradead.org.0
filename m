Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD93D18DE99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 08:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sYArtYLWpKVyWQ1aocJUJQLrmJdtvBn5me2iDgsrmfA=; b=ePZ
	acZTgk50FU/rLbfj8DBFuy52W/e5ZTnVOiFHg55SJmLzWR/99ZDMsjOEaK8fFjhLY+1KCogoPHEkK
	EAUfWwU0p2JqRPJm47l9JysuXYlm/ffvgnxkVfjpwhR/7sRFGnvmzn39vQ/PKeb3r7/f5b71Z9PHb
	kkk9YWQyqcc+ekOlYYmdae329IlZOQ1coueQleSQyM5wGX0c1jUdBuMNSqltk9b2fc+umHfM6ka1O
	Drn7oyCaPb/JRbYXXOyXINJkowsjKO1iPMohLc2Kk5/k54Th6i2EEktFROwGtzVujI32MNHQ4+8+f
	6UV9UOuo4kKZyce0XFRYFw6xN2/ib6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFZ1d-0003tj-4o; Sat, 21 Mar 2020 07:58:33 +0000
Received: from olimex.com ([184.105.72.32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFZ1U-0003sG-BE
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 07:58:25 +0000
Received: from localhost.localdomain ([89.25.85.162])
 by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Sat, 21 Mar 2020 00:58:11 -0700
From: Stefan Mavrodiev <stefan@olimex.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Corentin Labbe <clabbe@baylibre.com>, Stefan Mavrodiev <stefan@olimex.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC
 support), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 0/2] Add A20-OLinuXino-LIME-eMMC
Date: Sat, 21 Mar 2020 09:57:55 +0200
Message-Id: <20200321075757.15853-1-stefan@olimex.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_005824_388044_43254862 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-sunxi@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The board is the same as A20-OLinuXino-LIME with added eMMC chip. So the
dts is almost identical with A20-OLinuXino-LIME2.

This patch series adds a new dts file and appends the bindings
documentation.

Stefan Mavrodiev (2):
  ARM: dts: sun7i: Add A20-OLinuXino-LIME-eMMC
  dt-bindings: arm: sunxi: Add compatible for A20-OLinuXino-LIME-eMMC

 .../devicetree/bindings/arm/sunxi.yaml        |  5 +++
 arch/arm/boot/dts/Makefile                    |  1 +
 .../dts/sun7i-a20-olinuxino-lime-emmc.dts     | 32 +++++++++++++++++++
 3 files changed, 38 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun7i-a20-olinuxino-lime-emmc.dts

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
