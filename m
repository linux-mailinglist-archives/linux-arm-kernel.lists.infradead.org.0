Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0DC135AB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmX0FkRGPtHidiS48deCkeCT+z6uuSjsEyIiv6ifvQU=; b=BQldg74pwRlNao
	LbUnRDfRwGdODbyYlIjkDpyGTfu60mgIrZvKX4M2BL4uDg1KMYVoZVyY1viJ5v3Aqpij1SqOwFBXt
	0xebt9e3SJ9P2w26BTA3EvEoWGwStNd1Ra2cb68FUVw8kVSpvJ8VSKboZI0uXwKCqj1q7gkNPckJb
	1Gf4pD6PGWZUvTgra/DXYlD26AScfs1j/rXmu29X90Ms73rNZCWiOGft+QopUoL53TzDrArkR45Z5
	k7u1Z+SvjyGVNsobCGjqwz6jljsM77QhMn2XpslEDTNaTARzc0DnGVRixUYyudLhJ1kU0+X7dss/y
	bPjwnTmoa5GR8Wo9qAYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYGk-00066z-VT; Thu, 09 Jan 2020 13:54:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYEo-0003zP-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:52:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so7433627wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NCu2jl/XHfUALT1gSW/oUJuMvhaIfk+GEmxRnskvRww=;
 b=WBiZ04BGf0FD0e3HDXi2zqqJES7l8wIRo5kwT1O3LHGWVo0iDVBf5TA5HzIEFbutg7
 kpUTzFJjPnmXM0h7ETEg8JmgFtf9UqRhqAwlpTTalIxffO2dLm3XPZqNfKopczBXC7Ui
 ZKKE1w56+xR9VK3Caa08qsUnp5SyN/JD2wztdynHE9OsL0DSLgZvIJXQcZDWKWUKe+6o
 4M4CPAxrnDG28z7o53mVHI+9oaaB/qPWXgX4HRF0NniezhiF1ffsTNCtNwaOOei7ovM6
 KZlLbV8Y6Tj6OZw7zDmN/ZsoQdWmTJDRQqwIUCIASQ2Tc+Jk0C/AiaZvY4NVyl2kDn6c
 vYiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=NCu2jl/XHfUALT1gSW/oUJuMvhaIfk+GEmxRnskvRww=;
 b=XnDrVYQZLPSt59YBhmsvn8xKJor6m72z+am8bXD18gfOy6yQY6PPChl6W+75S4bhw7
 YOmFt9N8ts83YNab0VknXQWXP2qrcq+7YUvHwecdcoma4KlwHLLACjotzJYH7lmwBf16
 6rpx7OmLKx21h0s5lGpOX32znZuE2V3MrQs3He61vgeN4Y0HY7rU+UpMtDePpI3G/i0E
 LNsrjaYsQQvfZ3XSv+btALM3Eds8B0BAT9EWqL7JIq+ThdrFb39taX5k+ovRqWrXg+3l
 YR2eZd4RYUBQudtjqHaESKUFbYPc+HJjxU4M+gxqmiUFJe5q8vW38A7IN15cdFN4O5o3
 iJdg==
X-Gm-Message-State: APjAAAUY9wc1draHxeYCWtmJGOfX45mipQ810T924wvgZTxJ0WzKjWbt
 7V64HpWcDQ/afhPwRunAQQk+7VT6XuLn1Q==
X-Google-Smtp-Source: APXvYqzlZUNpCtgZo0eIHsRriyQS9df0EhD997mMpVJO2gscTH1ejvVUUg0WzAxElifJzEkjuAAYQQ==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr10940641wrm.210.1578577957079; 
 Thu, 09 Jan 2020 05:52:37 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id l7sm8332605wrq.61.2020.01.09.05.52.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:52:36 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org,
	git@xilinx.com
Subject: [PATCH v2 8/8] arm64: zynqmp: Setup default number of chipselects for
 zcu100
Date: Thu,  9 Jan 2020 14:52:22 +0100
Message-Id: <227c68a635b031ce20ba2a48a950bf4407c01359.1578577931.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577931.git.michal.simek@xilinx.com>
References: <cover.1578577931.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_055238_936600_10F6124F 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, Jan Kiszka <jan.kiszka@siemens.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is only one chipselect on each connector.
Define it directly in board dts file.
There should be an option to use more chipselects via gpios.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index 2b3757dd74cc..a109e82982ae 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -250,11 +250,13 @@ wlcore: wifi@2 {
 &spi0 { /* Low Speed connector */
 	status = "okay";
 	label = "LS-SPI0";
+	num-cs = <1>;
 };
 
 &spi1 { /* High Speed connector */
 	status = "okay";
 	label = "HS-SPI1";
+	num-cs = <1>;
 };
 
 &uart0 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
