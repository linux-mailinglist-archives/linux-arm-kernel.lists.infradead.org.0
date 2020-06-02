Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464501EC133
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 19:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0XQaVlA1zIgieBCld91E8ghvwhtGIXjFcOVasVy+USY=; b=d9Fe01e7yWIh2FZr3Nw2Qtoiz+
	1YEZUL/+rnAYOj4k8qNnAbC40OSiQ/QQ/5sFWyUYVgxIeh+aPkNgyxwBdj4hIa/7tOZ3ATadZFR48
	7wgHtcEHToAARH/WGb8tUbFhP3af+i/fgFBcL1CbSDMgqepqpmZjvqw25eIU28cuVRc5BheT6H7RB
	+wp1vR/NTMaD+C1OB08tYmM24ze1b0bxzgI7/VVmxNR6DL2c8RwRNi3/2Oogwokh5GZ2ppAQG7PXF
	0uBNkLhmH6DoqyVMp1uyySghBTwQ+5JsxZX/P3qjaQDi0WDKCWF/3OGHCSluXEuinjyQQKVLFT8MF
	g+EJcY+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgAsY-0003qg-Jw; Tue, 02 Jun 2020 17:39:10 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgAs0-0003Wa-7c; Tue, 02 Jun 2020 17:38:38 +0000
Received: by mail-pj1-x1042.google.com with SMTP id fs4so1721676pjb.5;
 Tue, 02 Jun 2020 10:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wRmkP6kAdBR7TaWl8CAPxlHOoqQz8rJlj1f3tr5k9TE=;
 b=PLMJ+dCKk8b/fGljUh8B1Yf0pxUDiNve3Iy39rE28FzcVaEsslmgWJgAdQsqu1+rGq
 71MX+KHONlVuD0qC4YtYQRAnFFtheCX+/A/u5LCD3iQ50n/s3sHaXmTePuVvl9LKoX59
 lmfzoujFNSMzEIlLmztXVBtmKcAboIHa7X+sFOs5UgDfqdQdt7j0AVEMBlO0qixzVq4h
 7BQOk31nl9WF+eGhmBK5VXRHnujO/mNOfqtL9tTA7Hws9a/uHvAXcnc3rYox+5fy4IUE
 THJMD8YkpV3HAjIZ9JQBaUKI71d1pBVgFX3BQv+AHJIESxQrpwuZQcheF/KPhHMW7GpD
 u7PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wRmkP6kAdBR7TaWl8CAPxlHOoqQz8rJlj1f3tr5k9TE=;
 b=gmkJyPhef96qEVIjGj4ZNCk2tPv4exkFoV4ToqsKV/GZwjswNVY0IoleyfAwFyQONe
 L6LAm75WecMzyC286wzpv1i/rrQXM4IT14gq+H99QzdeyURpID54a3esrDni0A+UtGtJ
 m56HYzTuEUSuLiEErbZ8BfX9h4SrCClrRRonzyZ5n8x7FIgYwGKlf6plGfFYGISTZq4i
 hKVbFOoCr/pnwdmn+DuMoRC7vPZK4vJBQvW/+jpxK26s62nj3ZeHHW6v5IPTDbZx0mSM
 u9jDfcqkwWBXUjpjByLrEh+ma4gvwY/Y5UQo2QSaVTt6LdC2A8xBjZCEk0LnL98a84If
 redA==
X-Gm-Message-State: AOAM532lEIYlDQMVhKfj+ZA/8fFJE9fk7RRu4a8FsFtKsKJOKHTtR5cA
 /92QI/lY58ULmEcFsgbksT8=
X-Google-Smtp-Source: ABdhPJz3hIQhct0HIJc2XhQ75/vck8IojRxBrjisoBjFg2X+DwipcyTdDvk6VYrf/8g27UGAUfnTuA==
X-Received: by 2002:a17:90b:28d:: with SMTP id
 az13mr308523pjb.67.1591119513888; 
 Tue, 02 Jun 2020 10:38:33 -0700 (PDT)
Received: from localhost.localdomain ([223.235.152.125])
 by smtp.gmail.com with ESMTPSA id i22sm2864382pfo.92.2020.06.02.10.38.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jun 2020 10:38:33 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v3 09/10] arm64: dts: actions: Add MMC controller support for
 S700
Date: Tue,  2 Jun 2020 23:03:11 +0530
Message-Id: <1591119192-18538-10-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
References: <1591119192-18538-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_103836_298751_EE7E02E4 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes since v2:
	* No change.
Changes since v1:
        * Added SoC specific compatibe string.
Changes since RFC:
        * No change
---
 arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 605594dd7a0e..b1a34f95d44c 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -259,5 +259,38 @@
 			clocks = <&cmu CLK_DMAC>;
 			power-domains = <&sps S700_PD_DMA>;
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
