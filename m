Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE3A6150D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 15:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CSysFuK3bjDT/ul3p6xHiQbCcg9HGvIU/np8NFiYv0s=; b=Etxt6XfCzEEvk5
	eVlQuL2cOaDeCA1E6jBObpjUB+As17TZNS0MkqYRi09Aj3g7ueEFfh3zrYheWFRdN0UnrW3xPKCvW
	dB3/JxQ62C3Pr1AYCx4w2M1H67BliuPee5jInc4u/zCSUcmAGbD8rNMYEsuVH1bUNqKIfg8vSWSqR
	ZV54z8v8TNxauoKXNp5aYwk8OR07BksXoMci3IyXxWvShfAN+y2Wnigli+OyD6C7Wp8tUFJhnaawM
	VxKQXLASiavSP0b2yq7K98tHDjtUZbVjTFZOht8C3gHRJZBUa0gAEKxYiuUSGM7cVSbkx3taPWBAX
	PDT8qLduPc0FXyjq5JXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hk79E-00036u-9q; Sun, 07 Jul 2019 13:24:08 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hk78b-0002nh-Uj
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 13:23:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id a10so13138256wrp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 06:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=/gM1Cn1FoiamDNCiMz/MtN94v9T5GO29x/2+fXZ9JqI=;
 b=E2eiVdE2E96RFcBV9l+RuYgS5g+FZf9Wsvzf5K+BhmwGfvPQHslK6V69u0+ulfqA/B
 SUumPXD96KwTUlmivng9yiaRtbvkkyjVy3lHexkqnRuunQK1EtXcgSqHQvvbQUSBjxjN
 XGJCQ+Jhr5Xs/wsEWsBjQ979x1yCysw9zdY6lp0Wfte+B0pHijSVr+gNsVG7mG8RzLxC
 bmeBZ8O04lwotsKSHZUfR4iOqayfv1joHAS8opcdA77PNBR7pQIN5JXRhWDMNGjQudw9
 OlomOfmcBy1hiL02rsyJ0hx9ZtcjetyGuQpPuARqugzYQA4WGP8UqN3dV6jQs+pU4qzw
 iaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=/gM1Cn1FoiamDNCiMz/MtN94v9T5GO29x/2+fXZ9JqI=;
 b=UUTnD2j5nx4qDAdUPDMHHto1ffr0x3S6VNQgRkpJJIJ1juK2f+W+Nf6hu/CfT8usyL
 IOCF5qUExfr7M3UM5EADlMsjn002eD9lxiQm+3QUUdJWtMmIndv/YdVPjcUNQ3t0ATtj
 br2Zz0qWnNdr3AJFNBMXxnPg1x3LaNtNsApbFU8NTziGlp4K8XrtLbIDGXLSCWxMruRf
 6zq6UovXaY6xmXf/Iv3JNzNBDldcpBO8VxhxKrJC23Ntjen7aqur8W/EZYJvXBKr7Ih8
 oSZI4/AUFUsNzOUpn0d7bkPL3pUshVq0XaDG3RqSd/+ZQeMR42Pw0E5rdH8Vk8rYAfSW
 pQLQ==
X-Gm-Message-State: APjAAAV0AnvgPwPsaSrVuM63YE/l2Eq1qk4bqdDJ7tmZEE9PHROzfj+x
 9ob5LCj8T7qf5+6MaB0BsnQ=
X-Google-Smtp-Source: APXvYqwf797DK+OmySVwPFquD4vMHQf7L6s/P5WImTsm6ZajfhogqaJ+Ut33Pst7Etxe780UODx3Qg==
X-Received: by 2002:adf:b64b:: with SMTP id i11mr13687369wre.205.1562505808556; 
 Sun, 07 Jul 2019 06:23:28 -0700 (PDT)
Received: from arks.localdomain (179.red-83-58-138.dynamicip.rima-tde.net.
 [83.58.138.179])
 by smtp.gmail.com with ESMTPSA id v12sm4294147wrr.87.2019.07.07.06.23.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 06:23:28 -0700 (PDT)
Date: Sun, 7 Jul 2019 15:23:25 +0200
From: Aleix Roca Nonell <kernelrocks@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 4/6] arm64: dts: realtek: Add realtek intc to RTD129x
Message-ID: <20190707132325.GE13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_062330_003428_AEE4B3D0 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelrocks[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add realtek's interrupt controller node and interrupt lines
to UART0

Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
---
 arch/arm64/boot/dts/realtek/rtd129x.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/realtek/rtd129x.dtsi b/arch/arm64/boot/dts/realtek/rtd129x.dtsi
index 9009db909fab..6f61b9858aa0 100644
--- a/arch/arm64/boot/dts/realtek/rtd129x.dtsi
+++ b/arch/arm64/boot/dts/realtek/rtd129x.dtsi
@@ -29,8 +29,18 @@
 		/* Exclude up to 2 GiB of RAM */
 		ranges = <0x80000000 0x80000000 0x80000000>;
 
+		mux1_intc: intc@98007000 {
+			compatible = "realtek,rtd129x-intc-iso";
+			#interrupt-cells = <1>;
+			interrupt-controller;
+			reg = <0x98007000 0x4 0x98007040 0x4 0x98007004 0x4>;
+			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		uart0: serial@98007800 {
 			compatible = "snps,dw-apb-uart";
+			interrupt-parent = <&mux1_intc>;
+			interrupts = <2>;
 			reg = <0x98007800 0x400>;
 			reg-shift = <2>;
 			reg-io-width = <4>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
