Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40B4E23FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPjh4S7YL29ATI8TbCle6rCWz7Z1afKs/da039xzEAo=; b=iDMvwk+aD9NK5j
	ZeVCokERDCRNTBTR/0N+BtW0lijUg/4Dh0MQHscdJh1LN0/yJxy8FJ+Z4NH7k4VI7A/uMmw2Kw+4F
	vvnXi2HhfPnwiauWULVt5plQ+zJoLKtELFlwPXWvn3TxgGzzfRbSMGwM93DFeF0spzgqg53avdT3K
	TnXE+sCYccP8YSj2pgk2R4B1hAYTtPFbxifqFkER6RMUsLe/+JwVznSArFzmzQReMMrzMDjjkyILW
	CDBnXHjss1iu2Fli47nfHV0XenJ49vOa3PIY5TSVjhMhD6R1JL+xlT5BNrc2rBmLWhJ3I1IYUfp0w
	JGlymNvPz1FQeIuSJMOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMv8-0003OH-4h; Wed, 23 Oct 2019 20:07:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMst-00019q-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id r19so274714wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=h1/5ykbSeK2MvTxfvsr+9IgQVPUcm525MFfBL54hFqWeOoUeG14PcdjHy/oqw6iRLj
 S/aazg33LohoatqDWTxMxdaDV7nDwAiuIaKDEPxiiDFvWGbSsWoa3+OJiBSsTBPuryTb
 UayPoR6RAYUybFq7HO+NzsRbxXzf17cjMz+If8YOSdorOb/4j1uCGHF20LU55V86QzGd
 DT12sHqQL1emWnjPo6A3M7YIaNSr29uYi/tULTWTLbvRbMZz8CgVL5yrBsh3WXPeVA8P
 ytdTwD8E+2ZZIRVudT4t9t1izDcnJu7GyM/0yod4y/0LmAk6Bx/daC47gg6kQalPIebp
 jk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=44TuELDtNCusYZupj5B8B0t5vnjX1mlerc4abRfeM5Q=;
 b=gQTcBRqnEKig2qz8HLavcLULhFwjaNcccxKvGPpUOvH7ESmdwdbgfSsMgiA9y1h6oJ
 NuokXizJKEqI8InxMOpcqYjGMm6+gfw59xM5andb8+XgNbrb7JGBH9c3j4m2ZvYQ5eDv
 fZjY5W1j7VzMmMNgkotFndCq2hqSK+mOCMKNo5PdOOAo5t6RxsCvb+D20FlsuWzuXqyt
 BGRS4z773qKaoyhhSkecmJN7Pg7elIjC3XdmVtLyoQ7vRu5zLhgp66kZ+D6zN70BxeDQ
 4iyhO6VxwxJ+awdrkdDo3wJobdcL7ktuRWoGmr+0pvfVmbciFqI3wArYGFMhCLXM5c98
 K3iw==
X-Gm-Message-State: APjAAAUmHd6iXWJWk1kmaXw+sp2blhkQntLmgGvD9tuaVLTUimUmLydM
 zCn6STSUzZTzolzLu0e1MUA=
X-Google-Smtp-Source: APXvYqzZXD4PfW/Fig+qtqAV7jM5QtA5LeGXSih2yJGonjEMHu2NKHrk7dZyOttonuBKpuf4S33OsA==
X-Received: by 2002:a7b:c652:: with SMTP id q18mr1360450wmk.148.1571861130332; 
 Wed, 23 Oct 2019 13:05:30 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:29 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 08/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on H6
Date: Wed, 23 Oct 2019 22:05:10 +0200
Message-Id: <20191023200513.22630-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130531_871624_00AF9813 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 5d7ab540b950..89d09b441abc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,15 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CE>;
+		};
+
 		syscon: syscon@3000000 {
 			compatible = "allwinner,sun50i-h6-system-control",
 				     "allwinner,sun50i-a64-system-control";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
