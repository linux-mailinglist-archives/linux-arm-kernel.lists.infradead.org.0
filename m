Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB4B1D3632
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E+6TkjpHCgUtv2GvAn8+v031KuZXnvEX/4UjM4Ji+p4=; b=Kgf02cjKyi6L5Kp2NtSd4TxXfn
	N1Lljy8x4vF7NpA4+CIhQBrlZ92sOmflMN0JJmMyVLVfdNg90FRyYcW4Kb8tce/jWXWkutiEUWKV9
	16J8CKt+A9UrZMXTLCsVxLKvseU1+I9+g2oEYb884rAeBj624wSYnrru2vZJZ0RzTuHbtFtgPWFhC
	C0JXGiYYel+4Jvs8bdh9JFgj4Xf9urMbubtXbirBMsFdZAzj7wJyiYU5WEAbPM0ibWs9bj4pyBr5x
	Z5PKHrWVb2YZGGzdLgWP22/AMo9GmbGhhwWpo4e/JBGyJqVhqs91TScjvA8OYn3c6eKZrcX7Zkfb6
	KmtBWkGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGVF-0006GB-MF; Thu, 14 May 2020 16:14:33 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGT5-0004RK-15; Thu, 14 May 2020 16:12:20 +0000
Received: by mail-pf1-x42c.google.com with SMTP id y25so1509338pfn.5;
 Thu, 14 May 2020 09:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iq25LTwXEFRJhD+OnRlNqkQp31RrUmA9ayd2n+EnuO8=;
 b=qUslQwh7wi9KUoRz7+NTfcmNh906uA25RhWONLuwHJAZ6z5Ys7ozADgdnSOU6AO/3E
 gtNC7/Ar2klwZ9dBwl+ELEExCd5AALzJmWUEE0mN41K82zda8dTR0hDrqyZfA8YxTNYD
 eLbqGvMPsAPQRxrAIMeZldL//XkY8Av8iOGxJ3LqggEQeya7aKuB6MUo0jWGCA/4wiqf
 AbajBqD00r6MnwnwmgySx2B9xHRTiC7eKrHSJuxZEI8KCzVOZG6dG14ecle6006KzfPF
 c0qgoQth0k0GhXcEN+YJ3+SzGnwo9WgjDXqNdS8II6kh2pmCQ4lw8HtdHOdXZT/tpWq6
 S3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iq25LTwXEFRJhD+OnRlNqkQp31RrUmA9ayd2n+EnuO8=;
 b=NY0BJDMtkJ4xckfp/CthyUzloUWg7nSFKnRw7jlvOS77kJIRbRyrfvn8ph+rPrfmVv
 k8l7LIQ8jZQNrIqos0DWP4T+TUgehiZufxE5yZQeHPVA/2SY+IfFC9THEJ6BM9aAqi1l
 VzzyYk9XmP+anqFGMxDzEbeNrHYFbeY3rDwA+RPvmJsKGWQR6EL6jt7E/vWrBCwcJ3c5
 9xTbSCJ3iw7V79gsTDWFmTCMRxSrGG6J5iwi08YuW//Ncls0dKrTSag9rmUZfevUBG95
 QpPfTd9ScZ4juQlJAkbxJccpppF0G4yakTXbQvYpSXDb5CAxxcLdClGRNaRm6W0GHULR
 TiTg==
X-Gm-Message-State: AOAM5337WYGmT+N4+4QntsUAqhYD4Mf74+KXzkMQUQ//tW5bWUdrndIR
 xf1uar7KunafbmrWHFAyQR4qeNOj6kz45g==
X-Google-Smtp-Source: ABdhPJx17oMOQ9Kw6oKeoUheSZIcyfjXCLb5ZrrPy7cBcxJKbx1NeZ2JhL85jxt8Ywumr+U2/lMQ5g==
X-Received: by 2002:a63:1103:: with SMTP id g3mr4684320pgl.206.1589472737839; 
 Thu, 14 May 2020 09:12:17 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.12.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:12:17 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support for
 S700
Date: Thu, 14 May 2020 21:40:56 +0530
Message-Id: <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091219_095684_2E6E67F1 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
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
Changes since RFC:
	* No change.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 56f2f84812cb..3f1fc3e48415 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -258,5 +258,38 @@
 			dma-requests = <44>;
 			clocks = <&cmu CLK_DMAC>;
 		};
+
+		mmc0: mmc@e0210000 {
+			compatible = "actions,owl-mmc";
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
+			compatible = "actions,owl-mmc";
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
+			compatible = "actions,owl-mmc";
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
