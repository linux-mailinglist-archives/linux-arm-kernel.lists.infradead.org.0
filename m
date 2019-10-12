Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEC9D51E4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 20:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5UMOiyfRxHP+S4WQEFmtoV335W1AFZ993zyZq4BgKw=; b=Nzs9BC+mTquayr
	NgnZ0VcbE4F/qiEOOmYyZJ3h+0J1HCDlWfABIrFNyIPi/66sAgqPZzcVZoumQBLuH08zdA4FfRi2T
	zQ6PfxELy3cA/r4DLT3PA9T4q7GmbuHj11PFcna8T3H89Fz8A2Q4yKNquwy7enf79PJnPmyPYRNQp
	Hy5gjkEMrTBJAZz2EAN4rUFrAxlX796vkQ+mkVx/dO5YWFxmQvFScIsW+Rh5JZ97YSwG4gZeMhhdX
	o97/vrNJO9RmgDnb5rINkDNw7rpCJNdMeBOdjlutHdhSXZBOrUt8LxmwjiKTImlt6EkSfays9P8ft
	xm2did/TsT99YKY8ZY9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJMSh-0003c8-KH; Sat, 12 Oct 2019 18:49:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJMRr-00038X-MF
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 18:49:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id y19so15264340wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=UJ8N1YnyS5qFw+3hQ3wHH5qfKH2llANndMmxVbmKPRFZFunXLbuK+yD9tw96qzf0PE
 A/m0wISDjend/x20vATRDUG1JCXyrOYIj03D13PuaTDKLFnUuCPlSUhnsiC5zsNBsmjf
 mo2GoPkv27PlCPvWHWteG887VCHCMoLUOwiBggLgZFTPbeSwNRSUOnd0MbXcZ0wLvT65
 GJbc3aIp9DPxRCjJkTaweu1iaxBYYOjxlTAdT0ZMRdJ+c5eZZE0+4QsnFdMWvIcfgsWh
 atTuxyBXM2Ox6d7wdji6LRj0u0GszAubZBddCT7m4iFvlEmU+ZxQZ7qilVuyQL+8t505
 1wtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GJDCD24q8FHHhxNDtUAkpzQYbJaDZYgAmYeaRlxpr/w=;
 b=DfFc0f2Mdfnunt71bvSKkdwI6QiUuSqTN/8xge0O9cjWhjlHkx1biXFfgiD61upyNs
 oGfRzyzpDqoL15+8mzITZtOn0sJIvYiDbg2HNUHDqetHeE/8UCnqIWJRbm2QrpH5Xw9h
 B025y5xP0j12+YgDRQKx8hQo7V6IeGfkHTkSEh7+OTJCzRGby1vZePeL6G7k/HypZZu8
 NYbaMT+I9wlJbhAIYLcRGZIi/+l9NjeX4f45SgEWhutV3FmwgOlglbPgo4Le9TPRFRo9
 az+MFH9AETSYGiAcMI+WB0UgrlM5yB0m0mQB3H1V2LSdgzVqffW5R3ojXgfL4dq/83KT
 rMfA==
X-Gm-Message-State: APjAAAWl3Uqh1AXLHcjNe0WPhTDX+3bPJoRkHLNt8VETWmv1LoJo16xf
 2tue1q9wwlenJOrKhSAVEi8=
X-Google-Smtp-Source: APXvYqxnME26nF6TxFl78Rm1SskYXik1n78MVRjhh7ocTVWwXQmDS1/gxLMcjqW5qc6QHhau4k39EQ==
X-Received: by 2002:a5d:6581:: with SMTP id q1mr17970758wru.393.1570906142613; 
 Sat, 12 Oct 2019 11:49:02 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a13sm33670580wrf.73.2019.10.12.11.49.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 11:49:02 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v4 04/11] ARM: dts: sun8i: R40: add crypto engine node
Date: Sat, 12 Oct 2019 20:48:45 +0200
Message-Id: <20191012184852.28329-5-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
References: <20191012184852.28329-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_114903_722511_43D605AE 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic offloader that supports
many algorithms.
It could be found on most Allwinner SoCs.

This patch enables the Crypto Engine on the Allwinner R40 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index c9c2688db66d..421dfbbfd7ee 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -266,6 +266,15 @@
 			#phy-cells = <1>;
 		};
 
+		crypto: crypto@1c15000 {
+			compatible = "allwinner,sun8i-r40-crypto";
+			reg = <0x01c15000 0x1000>;
+			interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		ehci1: usb@1c19000 {
 			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
 			reg = <0x01c19000 0x100>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
