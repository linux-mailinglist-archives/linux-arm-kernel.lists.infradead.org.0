Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB551F3C56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9k8fZNH6duJejYQts3ki08kEPo+1EPXNTb6GnpfzHgY=; b=GDa2ZFeNaFG1/HeLX0t3JxuTTp
	xb/bthdEE+wYVuT3GUq0b92sLNY3WNnqs7l0UMmf8SrnrZ908JMKfI2sb94tQS8MBoozTxkg8jaln
	yH22+OfrXltETDsB6Z3LgIKggy52woE0ZFznVJRB4rOG6gy4n55a/UqCxL7EGZBJ+e7GwdbkDReop
	5UVS4OVGLvy3eJ3IZOny4dl05NFNobpJs9F86SFS9ZTX9ow6VrCZeFh+RIUFGGHeYlPhLatREfCRx
	vS2CTACNSix0slMWdZRwC+p4+cMSSUDv9lnCW2qMV6TkYF9z6uhMuyDwQbENx8tg0nZJdazbp7y7Z
	nMDmXm1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieHW-0002ou-VQ; Tue, 09 Jun 2020 13:27:10 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieHF-0002l2-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:26:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ga6so1408867pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 06:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QusMWrbVSqNCA9Vj6aVV3k3Kx07QkMMqYu7loEdqwck=;
 b=fdTB7MiXAKj536SYnUoaU2XnrBKccvOxlmMo0FYNsxJ494eIqCV91FnPLC6TKV9KeX
 36yyhi3hv2ehmccAqefo+n4Iwmqk10/MZAskfd7KQA4T/xKZtKR+37gxo51Sgc3+kkTK
 9ePFnkGmZuMKRHLfjr4+pAReM6TaqymTY0oOwk5BSzC9CyGw0qui2cqCwoAcX5EaJ5sW
 ennahvOHPUvZ3ZQMO1VfUlJGN3qWILZ9CzXu7k02jljs/URFtnTJujP02iR5qrtUQm4h
 S53RSwb0BPAyG4mRi+JO1q6MuodDHapZWbiNr4VRJ77x8xQXDf+xsw/BSnHkMMNzWgYv
 65mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QusMWrbVSqNCA9Vj6aVV3k3Kx07QkMMqYu7loEdqwck=;
 b=liIEGChhOAkoRaootWhoysXu36f52Iuozb512asL74vhLrlAWq4SkNm2HualRhCvmG
 1vQgfFLMJuIflWpikrHyWXgMSrBRSDZseTdTa84aXOhdnqY8YupHYy73al3JJ4pUZC0J
 vhyNLkLT7veB9qWq158CvEMnUtbhh4x9S1yxrsShDAWilRb0bz5ukcbxWxwqePdnTyhJ
 UsP88xp8sBLkLMmPVBT56wE0HPNK8Z66V9HPpBzFOC2v8RcdlqpFchFjO4cE2WFFup4Y
 krrWHEgvBsycDcea9ERxFbhdKHRMpbYJ1sFMkBoymEBOmyB6VIuqINcmNZPBqxD6H69t
 vFuQ==
X-Gm-Message-State: AOAM533CuI6D/DpeMmIcEm1sSnmlpvGyygL3kRrsTOphHQf+asESUhiu
 tXs3UqsgO6M8qJ8H4+WGM0I=
X-Google-Smtp-Source: ABdhPJxLW798RDJ9H+z390Fk/HHj5jev6sBdN99n9t4PT7es6sgvxXULvn01EU+O/ObGIuIiX9qmjg==
X-Received: by 2002:a17:902:b08b:: with SMTP id
 p11mr3449660plr.324.1591709212554; 
 Tue, 09 Jun 2020 06:26:52 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id b5sm2624348pjz.34.2020.06.09.06.26.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:26:52 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, pierre-yves.mordret@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v4 1/4] ARM: dts: stm32: add I2C3 support on STM32F429 SoC
Date: Tue,  9 Jun 2020 21:26:40 +0800
Message-Id: <1591709203-12106-2-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062653_669298_D8706D66 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

This patch adds I2C3 instances of the STM32F429 SoC

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index d7770699feb5..257b8431dece 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -402,6 +402,18 @@
 			status = "disabled";
 		};
 
+		i2c3: i2c@40005c00 {
+			compatible = "st,stm32f4-i2c";
+			reg = <0x40005c00 0x400>;
+			interrupts = <72>,
+				     <73>;
+			resets = <&rcc STM32F4_APB1_RESET(I2C3)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(I2C3)>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
