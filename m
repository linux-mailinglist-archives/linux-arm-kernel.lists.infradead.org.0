Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7703C12DB1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 20:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tNCS/c6HCdvOhHU2IusyHwqM6bzxLhZpxX3QwgAKysY=; b=UGh
	uc8oXkUlMJs3jGPi5av8CQ6WhOR3qS6v9W9vqCbzMFUQhiL7lNmO76kP0X9eqmbohKyOA4+uxb4ky
	FE0oHC+jNAHDxY/LxoZQJylJDghrWi4VW9N6di4kIpBM8AQ1PX6u81paUauU2xRkbl2hX2CSF5QKn
	IDnD51GvbtABCJrGytk4Tc+QGLPJpAZlndMI7ssnMEGkm3h/mCN+MmLe8ILuJnZClwrXVTYFfdi7d
	DyyEm7F3OS/lpVddtyC0q9SJegwBPsmmeQJkK8W+lgD6ewSCzOY/Ju/EmN47tfIcBfyyXclIWSO4p
	Xvuf7pLchBt/P+ETof82cCcYoCA1Jmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imMw6-0008VC-5U; Tue, 31 Dec 2019 19:12:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imMvz-0008UU-TX; Tue, 31 Dec 2019 19:12:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so35831766wrr.1;
 Tue, 31 Dec 2019 11:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Ugkmn+9FfNrqX0nLEPxcXHS7THYr0ykg5MLCv/1z8zQ=;
 b=hPoYQr6hMewVT8HtmuJwWQC8WdcrMBGE/UrhU2h5c5RnmqBdO49jlqYz8Y9MkJTNs9
 k1WVy2CyUSgJyQmeko3i8bczYU7u1ATfoFn+nRmG0luUfq6PfNHNgE1dsaxNOMCWDqNz
 xatqT2VOpXN/e0Oy8UVoJ3fo4Gk+LthmCCENPLQOQridmr7QnkY49h9mqPo9i4wEYPJn
 kH7YsFPZwsQlu1tHi0hk/U5I9FazLr7NeAWxvuiCDPVCvmQXrmaAckzKEqM5NFRsP6Z7
 IJOIiwNvOAK3vfOfgXyaTZCPLWSZ5H1a1v8nB8H/UveDGaN+72Gc9utfRL4E3RfFMK7Z
 KuGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Ugkmn+9FfNrqX0nLEPxcXHS7THYr0ykg5MLCv/1z8zQ=;
 b=ggVsWo3UdR+Acl8ErejDP9RJQSqkl4uO5lUrmH7nqsZQWJmviid9ZnUJoCPbMmvpnE
 KRA3iwuSuwYNkodVTn/NioMSLeUKrHlv9dCajboGNSL0vSV/w3Oo5OA7vs6/GdtoLRdW
 r7jlICwQUC6+Sz6A98hJ5/h1Vt3+mqL3qb0CsZ6DOeruD7Il2tJY4wqU+CDpJe7Bx3wX
 Gia2XU+m3ZHCxVM3DMtfg4TyueypkrNmhPxPVzHive2wjm3WlXbyCI9/Y417uJxOHyi7
 2ghtL8YHjuKGP8dl6IZ8RyRHeBPO+mdi6w4gYRCUVARxYE8+nu3DFfoNGE4ziwsEVjzZ
 KLhQ==
X-Gm-Message-State: APjAAAVV3cP29dpMnCyL8Uw2LokTGWYn8rbpume10lpI9coauy1PeQvd
 TgwaXqK3SrvjoAx0bJOd9Dg=
X-Google-Smtp-Source: APXvYqyF0D0ikIVwTiFMzj6mqfRpTZsJr/v++9vO8XHr7OjNm2eCLMU36XEndCzwnyitR0Cm69XkjA==
X-Received: by 2002:adf:d183:: with SMTP id v3mr43483613wrc.180.1577819520818; 
 Tue, 31 Dec 2019 11:12:00 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q6sm53695403wrx.72.2019.12.31.11.11.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Dec 2019 11:12:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-firefly: remove num-slots from
 &sdio0 node
Date: Tue, 31 Dec 2019 20:11:54 +0100
Message-Id: <20191231191154.5587-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_111203_951893_019FC5C6 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The option "num-slots" was deprecated long time ago, so remove it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 92de83dd4..7584351a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -660,7 +660,6 @@
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
-	num-slots = <1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
