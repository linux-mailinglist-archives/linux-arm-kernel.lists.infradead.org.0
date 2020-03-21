Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE77218E4F0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 22:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6JUNHJI1FD2T6Es8KCvTGnwhBs2EheWkf9S8j98MFJo=; b=YdO83f4QqbAxNBTNvep4w6nPUF
	4+V5cYsUPB8SuWJIS4yJciXSKThPtG+KRTjXfxmH3t0FQXkfyyHrRV7wKvKutxgsZd25hYytEWjmV
	VzI+Pi0OqHlfMf6Ypmz4TlCXwbgATBV5iHQwDQH0B8PwbtvKQwTRrLQz6pX4z5c2qTO+OUejd4HIu
	w0tkX24zIZ12AFTd/LSLsrlqcFKHWu5IT4efsjd4oRNrlkql8xGXOxo9Jx+s6lLEe88Cm5y+KJ7hr
	nEJ+5woW0ougE+mv//AqGg7XRt72ylmq0Pt291Rim8Sg4Mh2yY+exEapRjxNbLtSpOBBRtWx4BZFv
	GU1u1OVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm5g-0005Jp-T3; Sat, 21 Mar 2020 21:55:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4g-0003aO-4y; Sat, 21 Mar 2020 21:54:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id s1so11888777wrv.5;
 Sat, 21 Mar 2020 14:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yAx8su1/7aGFuhAGg/EaVyMzVkBJWF+j6/kaWK9mJHw=;
 b=DYPMRiocriecW171ocGwPa9hcFeccH9jeYHN2XRG1NEeJm4jMNxU5HEbT66vOzJ+0b
 TBM+D+7C+/rGvMBuWvg7CL+g6f8u/nBpXpE87DuISS9Miig1W+Lkw91huA7ov4ubDRsf
 FOpgumAN96EbnJbeMfACCrmh+z4C75zUyN9AgYGxnTo2DeubxMSx4kNyqVz6E7AdrEny
 7fcCG5uRamQa0V/TnRUWzvNXwnVRKsZ8mfcAlfc4ACpKJ2z2GJpVTHk9UGlbvaotImyM
 YKaHOnPxLE2+ChXIQpvjLViwAimRpS0AQI/3bALuyQkarhgh26ntT3Ssj0/ZSaMQ0yEw
 /z7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yAx8su1/7aGFuhAGg/EaVyMzVkBJWF+j6/kaWK9mJHw=;
 b=oXT6TD3eOBMy8ypO7he0dMdTV2ysBFs86PHFKzgsa9jdMbQl23+LtZM9DZP6/cXVvT
 LroxVd3ynphqcs5la6HSun7k2/ca89WMcYRBXTUi3LcY/cCLi1bcJLvC1qV4xKNPCyTR
 RBUbbNVgaye2iRXmjOaufVMpnhqzsIgU3IOMoKBlagxBptgVMqPbBD8uoDbesjuD5vks
 Nnsh84FFVMF9fZKk7khk59CEE3NqBQfeysSMyMsv+cZBn7KgkX8JMDA116gFgLweSD1R
 EY9s6xjEk+omNWUdXsGJSs+W3mbpTx9ruSPN5niyrl3/AV+kS3dhQNTWHyocqrX0BZ2Z
 7HRQ==
X-Gm-Message-State: ANhLgQ2P1D0Lp/g493GHhKBqEW0M/UQndJBvhFV7/pEEYtBYV+Rc8+VH
 A72ahPfVH9ALARgZU6fFR+U=
X-Google-Smtp-Source: ADFU+vv2IejMRNQduQ+Dww45mKhZKuLxpXnA3+KypuBSPMYHDsOLLuGwcTQoWBA5U+2hewuhWvgEPQ==
X-Received: by 2002:a05:6000:1184:: with SMTP id
 g4mr19735035wrx.396.1584827673044; 
 Sat, 21 Mar 2020 14:54:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/6] arm64: dts: rockchip: fix rtl8211e nodename for
 rk3399-nanopi4
Date: Sat, 21 Mar 2020 22:54:20 +0100
Message-Id: <20200321215423.12176-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145434_188565_EB0370F0 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, aballier@gentoo.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dt.yaml: phy@1:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dt.yaml: phy@1:
'#phy-cells' is a required property
arch/arm64/boot/dts/rockchip/rk3399-nanopi-neo4.dt.yaml: phy@1:
'#phy-cells' is a required property

The rtl8211e node is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index c88018a0e..20529105c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -182,7 +182,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211e: phy@1 {
+		rtl8211e: ethernet-phy@1 {
 			reg = <1>;
 			interrupt-parent = <&gpio3>;
 			interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
