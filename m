Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F4A1F3C62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CM7UwaaLCpm2fSr6hgpno1ebAnSPTqfiay9om+Fjr1g=; b=cfGO+lRA8eku6cLE5vS6Q0YwkF
	KxKkjfW2qND0NDwYFtkmXaeSXNo3Q6WbQWmin2yYVmKPFgj9zWZuT8+wpm1/AS7ayoXpT9xTepn7b
	ZLXMmyE4bWTQ7bXvUqA/1fCkN1wGiEOqiVA076Mjj17affJfYhg3Y4u3M+M52Lp5o4nyfaeXo82We
	yHe5j80C7cSCkH7xmpIkz4uihAf9wxwEiQs4q39X26gLadv5u5TxaJ4qWLjTPMWtLJgK2DqKQjXdZ
	n41duBHHHbCFDkHqgdbHEmjtoV/xoyQVyVMQqF+oh4yGHNGuTbZ5RZIIqDw+SLZx4t9PvwqThLWli
	9DXpI0Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieI4-0003GH-7X; Tue, 09 Jun 2020 13:27:44 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieHI-0002nT-Af
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:26:57 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q24so1411446pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 06:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ILMp3Me4a0Jm6IXnxt02gFbANgGUJCet44DEGXP16Yk=;
 b=gspW10yeD3Ig3PPYkYAVOZpbqMtWXRLVN0T31UeUe73zINPZZIkp2J90gD4VRGZHRZ
 iei35GZ+L/HjWrOg5uE4kxF6UzLLPvgeKkmc/wuMMP6SbKRkjMN+lroR5GRS6HDFOC3M
 GILf2G94TsrTC6KaJtoRlQ5nCSgq8s+IOThlYfIaLcIG0Tle9BHjkS1aUtyWY0j2qUBI
 jjrZIyqlBdTXNeP4nOt59d+yhBLTVJEw5Q8fAf98w0bMEa0bNtU7uNHKQAHjJxOVYyFb
 4P8UBdyM6effNFMGY3mv0tzNh08zuFrIOV1LFj//LcHmqyXGRqK+MHsyybWBW7FSfcTP
 T+LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ILMp3Me4a0Jm6IXnxt02gFbANgGUJCet44DEGXP16Yk=;
 b=uOKC5Jq9jbYHbEtXUVoSll4buMKp5fUPS/US/SB86NcALS1f0u2QXHnNietB00k8CL
 jHYLlEVJa1UiwdA3n3WkyXPaUPWfgmg0e6M4+iq+xV/8vWduYx1wOOgcp41g3sw7XMg4
 FXwpOMmaFodQErkFlbolD6QxdWiOWR8dS6gXpcfVxVyn905N+6y9usY7QkJDP5KEDQ8e
 Pcw/qFGdhqqmMqVXgSuSbBMeEWoKwYQ6dAdfLFs1WSVBP8oXKRsgBEmZ6o6L3qisQjBJ
 vyhnB8lJIBHdK59f4rQEZstkgQx6jVECJ0o901bc9E/Di5uCyGG50iS1PJDpF0j72Ju7
 jamQ==
X-Gm-Message-State: AOAM5320Iw7MZIQj5jsRscjrup9omSzPVojdtDoygewxQVqZOPtOZWSU
 h68vstS4yqqYjqBNF+NXddQ=
X-Google-Smtp-Source: ABdhPJyhL/LlvJFTDaH4V0AA0HNsugFg+Z3y3YeifkPG4RFoaxYuVgLw6vdy/MZ9yTGT+92M7VrQQw==
X-Received: by 2002:a17:90a:c70d:: with SMTP id
 o13mr4775927pjt.73.1591709215755; 
 Tue, 09 Jun 2020 06:26:55 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id b5sm2624348pjz.34.2020.06.09.06.26.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:26:55 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 p.zabel@pengutronix.de, pierre-yves.mordret@st.com,
 philippe.schenker@toradex.com
Subject: [PATCH v4 2/4] ARM: dts: stm32: Add pin map for I2C3 controller on
 stm32f4
Date: Tue,  9 Jun 2020 21:26:41 +0800
Message-Id: <1591709203-12106-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062656_406246_2AD9555F 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

This patch adds the pin configuration for I2C3 controller on
stm32f4.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 392fa143ce07..051f33627e15 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -316,6 +316,18 @@
 				};
 			};
 
+			i2c3_pins: i2c3-0 {
+				pins {
+					pinmux = <STM32_PINMUX('C', 9, AF4)>,
+						/* I2C3_SDA */
+						 <STM32_PINMUX('A', 8, AF4)>;
+						/* I2C3_SCL */
+					bias-disable;
+					drive-open-drain;
+					slew-rate = <3>;
+				};
+			};
+
 			dcmi_pins: dcmi-0 {
 				pins {
 					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
