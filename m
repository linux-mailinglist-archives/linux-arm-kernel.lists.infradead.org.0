Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502E234E1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UrMNi8m4qH1EhrxRjRBeqKnBgfqIwZb+gp/tU9M+pjk=; b=Roe
	WWy+ahWXsaIGvGhqydDOVqX1Y1dVqZljQ8wvwCyIMfMzE/bsS31qQjgaTcpTVSGgwz/wh8Eq/TZd6
	iSjMQOWydq1XSkGKdldqnGRQdI3B4AT6TqaHdhjjIjoi8rcouVGu8UtE4TLNGbgHzjfMHAf9gbkgJ
	qRWGn3scggnS2ofEJ3AihmWTf/J8KdTsVmaEuZu6tWAlWvtBZ/Awt15mQudNc/lCSTENwPCceaqsk
	/W9LKZM9ZR2YIsBwJRIsqG/1msHxqwfm7lnbPZEvk7C78p5uBYUo1zUBC1NyzC4J1pk4w3YAcYwWq
	Lx0FWgHOH2Tk7PO7IR8gCu52XkAEfXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYClT-0005Af-DI; Tue, 04 Jun 2019 16:58:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYClM-0005A2-Mx
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:58:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id c2so16616007wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nf3jJrNk6C76DJ8y1UTRXRubP+zTDL/JpeAicSCnsJM=;
 b=kqj8P8lxcUc0L8j5tOPPGZ4yyb6M3wmSSOxouSv0loFpvmYHZzWhuVjN2R8JtNK3J6
 jL/vgM1d2yIWkuOyvL8G8D1rzqKASY0EQZOuTRCuQX5ZTda1jH4wqHL7ifC7Wf9r9Gm8
 QLrLFFkDAXx2ymTAn9h5lFpY95u7vQMZBvBwmvo8MOkRNAN44sihGto76GpHK5fdQSyB
 ctKzuQ66jaoP+z4Vx4fzDYUPtMN6A7A+cDQgXSuaNIp6FvxZZKOUGvu56BiLrZo36Q09
 5tYIgdqHNhZCaZitnRU1D/JdWtz1PL0eCmXI/JOgF1dcYXcbd6sjNCRh14ozlcZ9vOAY
 NaAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nf3jJrNk6C76DJ8y1UTRXRubP+zTDL/JpeAicSCnsJM=;
 b=on+KMeZdfdXOiuPnVBOPRiofcYw4Bg1XbywcxqAXMJfTpO/BVInbX+7i7VLYvewhcT
 bwhxJ+5Dh11yTh3aqWS3fyVl3AMKpNkhUB/GkKHZUa5VYH5aqzuFqnkGH+DcZObdBoiL
 xF73x6lUkm7YpIKK+gYSevQdc6+n9EIHLvvxLRFoQSfuZwYI+X1RoqJSF7rxNdYG6sF0
 JtljNM7477Rh9Np8GdoX/6ahpk0NIvTLFz2i63NFsh0p6ncdaMDbX8xe5ZVG9tmZh4DL
 tnAANo6Kny/cZZ77krsOvFVOs7eEJKZMygsDIQ6dsgtAqAQYv/tf/d5yx+wbXeMYtTh+
 OH9Q==
X-Gm-Message-State: APjAAAWZEtwnLmqAlZeuDM4fZagyUTc0sDaiXf9+yZGefgB27Dtw1rSf
 VH14sMJwjO2brVY6hCDl2idzjg==
X-Google-Smtp-Source: APXvYqxZD1Us/ThhsKGk1nm85wHyP2HqX/Fn7dakkR4+Pd7zhA4BqXTk6Tkmc8vjuYmZTcfBiptgjA==
X-Received: by 2002:adf:e2cb:: with SMTP id d11mr11255906wrj.66.1559667494840; 
 Tue, 04 Jun 2019 09:58:14 -0700 (PDT)
Received: from clegane.local (20.119.129.77.rev.sfr.net. [77.129.119.20])
 by smtp.gmail.com with ESMTPSA id t13sm25524979wra.81.2019.06.04.09.58.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:58:14 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix multiple thermal zones conflict
 in rk3399.dtsi
Date: Tue,  4 Jun 2019 18:57:57 +0200
Message-Id: <20190604165802.7338-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_095816_751405_B55DF412 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Emil Renner Berthing <kernel@esmil.dk>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Tony Xie <tony.xie@rock-chips.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Randy Li <ayaka@soulik.info>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, edubezval@gmail.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 manivannan.sadhasivam@linaro.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the common thermal zones definitions for the rk3399 assumes
multiple thermal zones are supported by the governors. This is not the
case and each thermal zone has its own governor instance acting
individually without collaboration with other governors.

As the cooling device for the CPU and the GPU thermal zones is the
same, each governors take different decisions for the same cooling
device leading to conflicting instructions and an erratic behavior.

As the cooling-maps is about to become an optional property, let's
remove the cpu cooling device map from the GPU thermal zone.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 196ac9b78076..e1357e0f60f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -821,15 +821,6 @@
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-				map0 {
-					trip = <&gpu_alert0>;
-					cooling-device =
-						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
