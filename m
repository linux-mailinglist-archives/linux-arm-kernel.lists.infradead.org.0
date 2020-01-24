Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAC0148C41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 17:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eXdYV57fWHV7wLQK4OHJB8f3obNje2c8Q0CGClLp28g=; b=FxEtrkSpyRpC5hg8j1wcu9G6LX
	JiENh46+LjRBzh3Ahvq+Q/e+vtkkS939rX5LVOC+dxlY3sgjSMg5QQwrJprzV6AUNZuK9P1E2Jm/u
	ZR581pL4nYNpFxzUzGvWmYk2/fuLoq3igrEW4Z6oz7hZqtOsj1uCB24soKJB24xNwZmTTxk6HIABf
	ecksu1Ax8F9SaAvXctXaQ4Am1YtQx6VdA4vCZV5jtcm8plgWbZ2YLOqvr1j/IpED4nwWxhnkaLgE5
	juFvNR8HbiDs11IutqDkO1hEYxnrKaxU5qGmXS+RE+cqTNjVQn5ASJdfa/fLIFrHE2i4K06G5KpSR
	Kczm+61g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1vm-0008IX-CX; Fri, 24 Jan 2020 16:35:38 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1qf-0002YN-Br; Fri, 24 Jan 2020 16:30:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so2724282wru.3;
 Fri, 24 Jan 2020 08:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m4uH+eGyV8vifXYAWHIYcpVOQ6Xb6SMallkR/M4Jzo4=;
 b=N9DAU6TTlHbKO4obm1WBB/8OVkXS9wDNxNScvOY9VzaXFRFu/d/gM8Wp4t8CmSJH6R
 kHQHSuTVqyVx6j2LUZWROmvEjPlv2DOwKeavv4wLM8XBO6nykxGMc3v8BKERBTVCoN0v
 J1TI/MM5xTGDHkGbpZ4mHIqv+Mb/yFqty+XiIUpARwIH2EowSELTyC2EsD4ifvA511ho
 o56I+WptcLEhBOpW1zTOoANtU2wjq+Rb84nkbarxGHN6sniP2hWtV+V4N0iKHxdY35MC
 ZWmtfkj27qFJuLxezcANfWgeyFmKVekOAumEjq3oje6dMAbxfbm+Fk2rRYn9aLRYWws9
 dA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m4uH+eGyV8vifXYAWHIYcpVOQ6Xb6SMallkR/M4Jzo4=;
 b=ZcyB/Wt4G8OH69TuWif8QcVGx7OV0TAdSJcsX8w0kgensdUyfM3t1VPIkZKwGIedD4
 BQte0ikG1Any+T50EhAfsvCWmh0Zuk0l1R/1+UCkbXRaaB+AEtDlz7ROmSTFy0BUVW+p
 f90APMM6E5rRCcOdhfSlhHVAc0jzMbeq9ncxuhk9mcH6pptobRtGlnRldRqjtp0M3S15
 d6GacuPTVnONJbmSF3idNJ4NAdriReR0oqJ0dJojKbbtcKCAwC5o+DSlFeD/h/C50w4z
 ygnqh+chL8j5dLnm9j+4XBN161Yoj5dPKE/ZDVraHS8NtyocNkDG4Q/seI8+g4rv0gW2
 beGA==
X-Gm-Message-State: APjAAAWoD8uRPuVM6y2mTldcwM1Vdyo+NVO+UBGGTKyoXXtOeOfXXaeh
 Va1kvO9Had235xDYmyIg7VU=
X-Google-Smtp-Source: APXvYqxD/FBeeFd3slUqJ5Vb/20lkgUjc3N2O4Q64GE49ZY7NRKOlNPUIY+qChA1pkM9tk0K61fYoQ==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr5156235wru.173.1579883420073; 
 Fri, 24 Jan 2020 08:30:20 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 205sm1977304wmd.42.2020.01.24.08.30.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 08:30:19 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: miquel.raynal@bootlin.com
Subject: [RFC PATCH v2 08/10] arm64: dts: rockchip: add nandc node for rk3308
Date: Fri, 24 Jan 2020 17:29:59 +0100
Message-Id: <20200124163001.28910-9-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200124163001.28910-1-jbx6244@gmail.com>
References: <20200124163001.28910-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_083021_416702_CC1C5222 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vigneshr@ti.com,
 richard@nod.at, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dingqiang Lin <jon.lin@rock-chips.com>

Add nandc node for rk3308.

Signed-off-by: Dingqiang Lin <jon.lin@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 8bdc66c62..a6c98edfb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -627,6 +627,15 @@
 		status = "disabled";
 	};
 
+	nandc: nand-controller@ff4b0000 {
+		compatible = "rockchip,rk3308-nand-controller";
+		reg = <0x0 0xff4b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_NANDC>, <&cru SCLK_NANDC>;
+		clock-names = "hclk_nandc", "clk_nandc";
+		status = "disabled";
+	};
+
 	cru: clock-controller@ff500000 {
 		compatible = "rockchip,rk3308-cru";
 		reg = <0x0 0xff500000 0x0 0x1000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
