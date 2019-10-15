Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71454D8163
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 22:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9qHoIfbFd+IEJQIuCMZmmPNjDTQVnQSnRU1br0awob8=; b=Ddu8oXRU2DFANqunSRgJKKdRtE
	HGVYPGyb9K8s+qv98qGNueI7wZu2/GkbmQVHeCr1sElOFlEYgDeG5XBijNcv9N73YEbYvJyUabtaq
	lI+XbKXGH4vdVjkyWU7FRizqJNGLD360KH6+5qOaxAJID0Hi03i5WSs0EDcWR0pks4VobRGs+/HVS
	OP3ZCCow5C4boUGhlGHho4/K+sh5vd5i6FE/3RfY5S1oL3Ho0CuugDmrr+qBS+iCPnx3tF30rIOrP
	qbqYmsSrepmvZJAaDqkZB56tvE1KlwJBWcwx+f58Ur6dR4IInC3LUzNXW0LXMHDB6+dTtOP42Wf6N
	WFLzZgkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKTuQ-0002pu-J9; Tue, 15 Oct 2019 20:59:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTuI-0002p0-Iz; Tue, 15 Oct 2019 20:59:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so3166812wmc.1;
 Tue, 15 Oct 2019 13:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=q85wWT1Ntix0umS+jHesJR+Bc8njDJ95cdjzzQg8isg=;
 b=CylCMKtkQlC4uueCkpuJi9WczWZOQTKFedytAMI5AAAcdHpeUc/P3orCB8s1rMUvEd
 KvRPubUzd0n/80xL/ZS1d+TRarHeHCacs5PLzcP0h1CYDs2NSBwp2GTaSBnez4a2dU5M
 8caGlVXkpe7E6dQhSEz4LhnBjhKDRqUNjVlQISHns8Hz2RDlwCKnJTPrl1e6+aCkDIRn
 BJL+xLt0XVtC9T6U+n8WIh4sH/DibNEkvV3zJM9gndFW3MXdxstFFP+cdaW25ljMU2Zp
 bzzeu8zrgJPkYODuJgVv3Xu+u4MS3QdsmEJ5SbSJrcG6Lmzltep8qm+wy1jvID7fdlOo
 9SwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=q85wWT1Ntix0umS+jHesJR+Bc8njDJ95cdjzzQg8isg=;
 b=B8mFYO6PqbpBTsH+h9jWFV2U9XsiG8wl6UCqXj484z4gmM5MvOpzs6GSHnB2RKBMMa
 p7y+lkbGAr6c0CJHQp3FdiJ2Md4oNknO+oFpXxI0B7T4ilXHQRdpN9VhpQz/FdbjhEIa
 QC1E8HoXNO0crLqjzzAYh6SdtsffQye/jfovAQzzdluZeM9YwBFjOZRM6jKMvsiJttiL
 ztfQY4breKINZjV3pcRYiRJ/v8H5r6V+GFJEiDOvM3ymdUgqS2oTTGTTiMqtJCCtxSzf
 OusdfwzdKAaS8kN7A9jsDfLERUCiBOR7MrMYKm0R0ntZcfz+Cu1sBbZe6wOTA63rtD6k
 qm/A==
X-Gm-Message-State: APjAAAUiqbdpjSti4BK1TaNzulCK6FJdtybt4RqfkgImKbJ4ywcP/g49
 rV6l++F58vdHWHzhOfGJp8U=
X-Google-Smtp-Source: APXvYqz9JsvtcsXk7EmrFoq9r6t7wKeiaW5swS27FNq1ZgoZtcMm9xCDFbmybDRzY8x3UlNy/yhsug==
X-Received: by 2002:a7b:cc06:: with SMTP id f6mr309275wmh.158.1571173141190;
 Tue, 15 Oct 2019 13:59:01 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j18sm19216963wrs.85.2019.10.15.13.59.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 15 Oct 2019 13:59:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: rk3399-rock-pi-4: restyle
 rockchip, pins
Date: Tue, 15 Oct 2019 22:58:51 +0200
Message-Id: <20191015205852.4200-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191015191000.2890-1-jbx6244@gmail.com>
References: <20191015191000.2890-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_135902_626960_41122F98 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The define RK_FUNC_1 is no longer used,
so restyle the rockchip,pins definitions.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4e..188d9dfc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -486,21 +486,18 @@
 
 	sdio0 {
 		sdio0_bus4: sdio0-bus4 {
-			rockchip,pins =
-				<2 20 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 21 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 22 RK_FUNC_1 &pcfg_pull_up_20ma>,
-				<2 23 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PC4 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC5 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC6 1 &pcfg_pull_up_20ma>,
+					<2 RK_PC7 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_cmd: sdio0-cmd {
-			rockchip,pins =
-				<2 24 RK_FUNC_1 &pcfg_pull_up_20ma>;
+			rockchip,pins = <2 RK_PD0 1 &pcfg_pull_up_20ma>;
 		};
 
 		sdio0_clk: sdio0-clk {
-			rockchip,pins =
-				<2 25 RK_FUNC_1 &pcfg_pull_none_20ma>;
+			rockchip,pins = <2 RK_PD1 1 &pcfg_pull_none_20ma>;
 		};
 	};
 
@@ -532,8 +529,7 @@
 
 	wifi {
 		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 		wifi_host_wake_l: wifi-host-wake-l {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
