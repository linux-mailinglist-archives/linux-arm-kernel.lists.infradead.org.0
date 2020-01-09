Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33495135A68
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 14:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ninL9JIeBR/0sRp/XLMNJOkpP2SXDGvOa4MW9H5v/68=; b=sdvT+dlKjzmEdA
	IRPkYzpdM1x0EEMXLs9ueC064mmiyFwngMwikgG3V/iOoGRfH+RFAx0P3sZh0Uxit0o4WOOi42mZu
	qQoucpqGQfKhpNpDrF8ASZQlUQjmn5kcMnymWa7nrZpC9iz+zjMEpPlNB2zoYA2WWwbxgf935tKqP
	MLZalpb1isaT61NrSOxvQ/HMhw2hZly6ZMySJe1fFQ8UeLhXZbEu02ardY6AkDNFsDR9So7dWOiQk
	yZJrdt6TfGFY2JGtpkbTxLZP9/XhLbg+oJ78ScovL8FrmYeiMJvVdA0hD0WTRWNqbyh0ZjV9DVdq3
	jt+Wfqpw/AZlTlSccW1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipY3f-0007AM-79; Thu, 09 Jan 2020 13:41:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipY25-0004Yj-Vb
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 13:39:31 +0000
Received: by mail-wm1-x344.google.com with SMTP id b19so2953191wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 05:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3uTRVYc3CwuaK7vmscKhsuq+TjWl2SbzmcNvk0jneyE=;
 b=NzBNdntB5n+8cI1SL4hqMv75gF5qlYVZoch0u5XZUNN4uJshZpMC51TbpQMMmZfbz4
 /2T+YoXIspoZOzWP7ZZp2UN/RCcGF882X7PoCZ86N8BWE6MXAmqVVqSbBKbeYE0XmQZM
 tESlcMvjCBE24H8bTMS5E1AGelx5r61vXOojuK8GbCRdchRQ7lVB++1TT7gVfM0usSD/
 iS2T3WgMxXxWXF8QWlfW6xUiRoJsABW+Z/uoss5qUGF9PvrlI5gZR64dLhTr351ioKeX
 mZoxh4DBVAjdM3a6aLJzGN/bXBq4dBjShu18PMl/Dt1UcljrSlVPQpSfzbDbBmJc7DPu
 FEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=3uTRVYc3CwuaK7vmscKhsuq+TjWl2SbzmcNvk0jneyE=;
 b=pov6SzxbUEGBw/LGYRW11RzBTioDl1yqRXgSxWy8/iOR7aAg/Js1yL8uSwQsaBEmKy
 OeTBQ4Y1kpUhogaIXT7KnnwBIgkq+OwUPTaekYAmn2vj8LgHKPUVaUgCHwOZOPQg3gks
 0XvUTFMLOXQ5akzfF65UmBbzhrq79PtsWSDSl3DFafMNnMq0ixZ8/YeaCKeT7e8IAzt2
 lYk9S7r2L6mfcvTeu4uclacuYzibMe+XorJ0xupcgTzRL/ym3597sfdCKMX+6kubCvo9
 SDPYKoWcUegPoVpXG1pGJrKEm04s67JU1wWnQ4UlNSthbpjY37albWcuM4FEOjPkQOim
 nIaA==
X-Gm-Message-State: APjAAAWnFWu3uKTMjQmdaDsabwOfdtYTk+qANR9NTJReitpmYM4Iaafg
 Jx2EwseTLtfyp1/ZZF4CUsN67SN0e9PUrA==
X-Google-Smtp-Source: APXvYqxf0QTNnxUA/HlCe/Xc2QU9JGp9/9H2D79UhXJ9ShL1knOd6pTuDj94GA14KOuiRGe/kR1Lvw==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr4856590wmc.74.1578577168009; 
 Thu, 09 Jan 2020 05:39:28 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id s8sm7846492wrt.57.2020.01.09.05.39.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 05:39:27 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/6] arm64: zynqmp: Setup default number of chipselects for
 zcu100
Date: Thu,  9 Jan 2020 14:39:15 +0100
Message-Id: <0565b9a88830f0d995d666a9c4bf346641a2b040.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_053930_042423_9512AB72 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
