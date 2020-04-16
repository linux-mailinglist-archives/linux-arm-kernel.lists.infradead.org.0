Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933EE1ACFB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:31:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zw6Xwz0DT3roh6hMzKGhNh7Xd8+VvhUESu2/Yjf1fu8=; b=sHP
	x1kMYlLKGiEkbpwxJBkPWXtwdFsle6fit0i1TG/oD4lU1rUXdlvJOFhH/cJiNXsRqr4kzAhwU5O7x
	5EZo3YIHA3jT8l29fD9OkyrrJuEjg2sHyyRBrIhdfE2H9xkQ8bHA2vYhQg2luOqyvwikGZ5WwSk79
	PTrAuFUwZ8d2Fczw4/tSeP7yeD1ag9ENb0VabfE657zhMrnvna4tcCIRRhDMJJnk2vRNHPJkJiluN
	FhygubzzSq7BsgWpXECz/7sZ9ECh3HTVamT/Qs1aDSwYvVuZ38fW9yHttdrXsBKbgWHFslgknbWkw
	1wePvcr/tYRs90rI8v0qmDcHIPH0/Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9I7-000815-27; Thu, 16 Apr 2020 18:31:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9Hz-0007zs-32; Thu, 16 Apr 2020 18:31:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id j2so5996308wrs.9;
 Thu, 16 Apr 2020 11:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3Nyh5TNzdvU4zTksMNA3H/k/3n0TfFI0KKcct57bE6U=;
 b=CcXi45OFPvGGii0CicbOzHItjo336x/+aoM0fXl2270MtrHa7/RdnKu6xh074BgXL8
 xW1WGLNVAK3Uw8D6rqWF9XyMIcz6r5IjKjwWh/6IWLzoMQYjxcsF17q0zq238fLZis2e
 PuY7BRjF1r0BKIDLkjrIFjDxqk/yIsPPLgQ9On4a/63cuphMYpbaUDWfW8en/OIj9zyx
 EJAQC3IB5IrooaB7r6wqc2MJk5opbcxcD4ekUUIDoXCtSTnr9Kcagj0zXPs8N1zE3VrV
 QQn4hpVVo8KixTZ9Vd0LZkKiBtsk8h/K9V6IEw3ZktKFFlHjCw+N3D5DbD4e8g55yVjX
 pzcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3Nyh5TNzdvU4zTksMNA3H/k/3n0TfFI0KKcct57bE6U=;
 b=jrU8JAY5mQQR4GXo55+lnrq8dMIvDGCCEX3qlwNPZTcqO/bDiHqi6Q5oqkdprZeyck
 yNXJqYangt/JQB5n3saXDuHK77suoOEFswiKSrfvKX/NVoYQG3J2cHiZi6ackuUA/1W6
 A0vVLdO8GXTCjzmFZcF3jncFNYBhZPS0hNJ8CSF2qKmBzQquX8bTUSNKsVDgJNw33sY4
 Exg4ppHWS6PWXIBswaR0Db6ToKh4i84MIbejcW7c73HbAxIM6+4+ugNiGiDJ86z+WP0l
 8JACNkSCf8y8qrlEIkq67KMNK6iXNLrsa7fuk+yrENWCIuBkh5SeVWNWgHpr9sDQeTSJ
 lLyg==
X-Gm-Message-State: AGi0PuZwg0+U0k7JOMo4TV6q78MQFKtu6MbjBUBM7zfcLEhz2J02uAhm
 HXzKwWgFFhlqly1GrUDtJ4I=
X-Google-Smtp-Source: APiQypJzkj+OxyfIBJYhLSIraECWen1zsYiNeLEHY0lY8SqIgnmWu0l8dwfVdsHu476GvPjWRqIFdw==
X-Received: by 2002:a5d:5144:: with SMTP id u4mr34607368wrt.32.1587061861677; 
 Thu, 16 Apr 2020 11:31:01 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a20sm6098495wra.26.2020.04.16.11.31.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 11:31:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: add bus-width properties to mmc nodes
 for px30.dtsi
Date: Thu, 16 Apr 2020 20:30:53 +0200
Message-Id: <20200416183053.6045-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_113103_136775_BF42256A 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'bus-width' and pinctrl containing the bus-pins
should be in the same file, so add them to
all mmc nodes in 'px30.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4820edc7f..b66a4ea9d 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -928,6 +928,7 @@
 		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
 			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
@@ -943,6 +944,7 @@
 		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
 			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <4>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
@@ -958,6 +960,7 @@
 		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
 			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
 		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		bus-width = <8>;
 		fifo-depth = <0x100>;
 		max-frequency = <150000000>;
 		pinctrl-names = "default";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
