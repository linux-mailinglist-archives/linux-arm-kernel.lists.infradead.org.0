Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B610710541E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mcNgwk6r4V9vr12/z/qyHlFi/n9yquXI8OybZxDsB1E=; b=rMNTdNpVoFBhTh
	TJ0+emONAZyZ1K/rNOH0TGSqadeKQ/fgloJ1lcfvFFLCFNJd2OqAFLw5eFzZ/fLEM+qXh/ZGUHx26
	vvh/mpcACn1mVUmE8FtqBgnwsdRq+7dhYzLtOzXl6E3KBpxaQ8piBERs54SoX7QTAGk00rIlkrMAM
	lgW2WwIxEA3h3J5lTcKr62v0ReRTe9LeqqmHU0nqgd0aw4TLN0Vp4kdAC9n2GUFqukug8O5HGeKOC
	TID/aO8hzUP7pDorMdAqOjmX8sLnbXtnCHDtF5F1LTZFEcem5+d+xlxxLSnHPaeMLTHSkfvjcXhIy
	fGCGwXAr6RiC6jB/hxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnEu-0001cM-F0; Thu, 21 Nov 2019 14:15:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnEg-0000as-4K
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:15:08 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so1217229pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0lg7xoqCU9griTX07bOPborDv4xC+ndaqpkFXe9TjLg=;
 b=Dn06DFYADguxXrNrHFoCiFbFd1uG/ryAw8ky8mYHCn9oUzVz9hB2yMDAu5ULjtXAI0
 hqC4JRrQZa8CXukoaP5Y2URVyXUjUpoKO7Lgzizd9Bp5vGOLa8HrAUeWBKmfT0wOmT1z
 p43ut5Cy5wBhePmkmrvHQVgasIXEG9iPq+vVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0lg7xoqCU9griTX07bOPborDv4xC+ndaqpkFXe9TjLg=;
 b=Om6wK0RshoYgP3KJ6R290UUGfNSTpgQQiTKdkbtT+umCTZOW3UHhLck+zvvjoiHuNT
 4aj0yI9aoSBU82vJx0vC4iinIzXNNkVpvTRmXp1DV5RDdfUm97Kg5ol8X7VsoW0kgNbH
 YtwU8PVrRCvy76u1MmmoXIK8GCP50YAlmPZ65R4a+jURHActZfsrGW1BaDUzOiQ80ghl
 oSIzj2SYJgYj2v2T1mz8RsYpropVPd5cNst5QbeUoYTOPbmpL6EKaHNqs6aupEaGkwNN
 tKL/6bt6GhiAADIX/JxA/35BYQ7sWrBDjYsAnz7Mo+8whH/8YnFhBS//w1bva8ydDnNb
 VKnA==
X-Gm-Message-State: APjAAAVbdGcMieb3UfqPETE3/i35QsAU/aKz2AhOQTzHy3egAu0dr/M7
 6XaM4DOuUTPpD1xSYQ73Omwpbg==
X-Google-Smtp-Source: APXvYqwuTjhpD/waPmGZkM+fuBj2AUAa0JiWceYv23FKWcp+RSP3vrbjA1wVoDSX04kNhqg5Ck74hQ==
X-Received: by 2002:a63:1303:: with SMTP id i3mr9710113pgl.430.1574345702647; 
 Thu, 21 Nov 2019 06:15:02 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id w138sm4072304pfc.68.2019.11.21.06.14.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:15:01 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/5] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Thu, 21 Nov 2019 19:44:40 +0530
Message-Id: <20191121141445.28712-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_061506_340145_74AD7F2B 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Dalang carrier board from Radxa.

This series add initial support for Rock Pi N10 and fixes comments 
from Heiko from v1[1].

patch 0001: dt-bindings for VMARC RK3399Pro SOM

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: dt-bindings for Rock Pi N10

patch 0004: Radxa Dalang carrier board dtsi support

patch 0005: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

[1] https://patchwork.kernel.org/cover/11253649/

Any inputs?
Jagan.

Jagan Teki (5):
  dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  ARM: dts: rockchip: Add Radxa Dalang Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 333 ++++++++++++++++++
 5 files changed, 442 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
