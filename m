Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A011D9F4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 20:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S5k/pYU+qbHwWA+mn+0cBq1LXQSPfxuEnYL0nYE9z0Y=; b=WgxhVf24h6CERp2KEg0LLmDQzS
	GgczagMBb3uZbQBrL4ePVYsRS3sn4bQPz5mMdDmi784tF8mkRlsE13v5KDFunC5GRaalEFj+hZc0c
	UChqpX3iJOkm5Sai96dqLgM+up2rmsL2kvl0aadFelzoI8tJm9LALint0oghWTrxhk2dYh0PTzJMY
	2ES247OhGjUY/Zy1hPSuEvi6H0mv/0a1nSUtkYoyZY60CxvTIvz2z6dhIuwLHFbYAvl63y4s1wAJM
	IYtXj/ZEQVEQjQTIElDxJ4aqxa1vgQSFt2wcVZg8j/rTTidBVqw1jjYlxH37CHOH4nTQG0AX6MXxa
	VT8oehqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb6vB-0003MA-C0; Tue, 19 May 2020 18:24:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb6uO-0002dd-RG; Tue, 19 May 2020 18:24:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so284332pfy.8;
 Tue, 19 May 2020 11:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=95BuKgEJw4ZA0+/Faq3WqSrMTnT56+f41Pjs3Qp8lck=;
 b=UPoL8108fuk9BSQWsMoXUVD5XnOSO3GO3tQN9g/q5iVR4YIAw46Xq4MLAJZbiPR5iy
 TEZJ6Td1sWyonYxOy3IUrzWEoF6QS4vJZTx0hVpYJiFYfU16sz4SFe9WFyyUYrKktoyN
 eNqd6jH1fDgq4pXUS/XyUUoqQPg0CgCMNmkkzpfCMRShXz7SXIfRKlDVj8Meff1W1TTI
 MqaU6QYYHVvP/3KmS6QB08drOrK1WSi2EE/gEhoNh9NqB64DhJrNb1BSLuTvvcOx1ZCE
 bsgPtzLTstcxS1U7AEGaWs5i3AupBoqUFT9742NoQC0X+7ms/XoX1Maev4DlqcU4rH0i
 Dfsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=95BuKgEJw4ZA0+/Faq3WqSrMTnT56+f41Pjs3Qp8lck=;
 b=nBtlvQTmchu/etGEQ2yA9KG5iWaIdTadp1J4MA2XLJZtLog2tkosoQ3uvKzZC00rZ7
 QaHFAGeVhIa8p7VTnG1NG3jaFzGuOdqgNkiD3INj3yokYY/JKq/ixKlOVX00rEMQzWHQ
 o7SEkLEO3kGg2Cc/+7E28DVq2CHFA4GFDohZ4zalnAXiDPAoh9eb59PH/BoTMQAVBOGp
 FxcJD8yU2gytr9/0N7j1VBArKwNBHBkuEBOT5f7odOOg7niS0fK1gYelNMt4rE7mooHY
 gKi6ThVjKVbtepbYRbqk/OZOdJz4O1LQHJNlUP11nYeIYDz89R8TuzX2LD8j/91VKHLF
 qkkg==
X-Gm-Message-State: AOAM530u+B6G4f41jHGjaJEdwsnx2hrNvA9Sl02s+6J+AvleVI7cyOFj
 qZiuTI8k5Admlx2x350wP3E=
X-Google-Smtp-Source: ABdhPJzM2fqTcOSYJljXABT0LK1g1ksDEu0E6DJRryZf2ubaKWpNFpLv62aLy6j9uI4zAWaf7aW40g==
X-Received: by 2002:a05:6a00:d1:: with SMTP id e17mr359820pfj.85.1589912647293; 
 Tue, 19 May 2020 11:24:07 -0700 (PDT)
Received: from localhost.localdomain ([223.235.145.232])
 by smtp.gmail.com with ESMTPSA id p2sm148399pgh.25.2020.05.19.11.23.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 11:24:06 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v2 09/10] arm64: dts: actions: Add MMC controller support for
 S700
Date: Tue, 19 May 2020 23:49:27 +0530
Message-Id: <1589912368-480-10-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_112408_997436_95D9612E 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commits adds support for MMC controllers present on Actions S700 SoC,
there are 3 MMC controllers in this SoC which can be used for accessing
SD/EMMC/SDIO cards.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since v1:
	* Added SoC specific compatibe string.
Changes since RFC:
        * No change.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 56f2f84812cb..0d3ff315b00e 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -258,5 +258,38 @@
 			dma-requests = <44>;
 			clocks = <&cmu CLK_DMAC>;
 		};
+
+		mmc0: mmc@e0210000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0210000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc1: mmc@e0214000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0214000 0x0 0x4000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD1>;
+			resets = <&cmu RESET_SD1>;
+			dmas = <&dma 3>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
+
+		mmc2: mmc@e0218000 {
+			compatible = "actions,s700-mmc", "actions,owl-mmc";
+			reg = <0x0 0xe0218000 0x0 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD2>;
+			resets = <&cmu RESET_SD2>;
+			dmas = <&dma 4>;
+			dma-names = "mmc";
+			status = "disabled";
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
