Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9741B7B21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=p8hCfOXxHarGBlbScilu6BhmYxvXS2QQfeq3KzixL1w=; b=p+L
	eE8n1vdYTw2jLfea+ih07/tvs1OMEGbFPpNLc18zKkdMUm/GtoY7gaR+im2n1ugbLCEtO9c1PXkUP
	P2UqagvLXaoPoFZRQNVZC139uiRWa+n74i4r0vYgsvvG/XzdZVA+lTFEVUrqsm7hylu+5jE6IRpEw
	Kswai8UgIUfaH5HBJFu15jbH91cdZ0KYSJZXPnjO5R2N8DpEw3G0hqHd6YBxpRUx7dZ3i/Y6NEppt
	XFOvugMrcZ+MBS4KizdzvitzuQevEymyRgB6IUZdJdyVx//ImnxRFMVRJkWWlN7eUNTIHrdTTI6qO
	lJYtHHWXGjspzGJqZ2uprmLuqXlMsPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0tQ-0000ll-N3; Fri, 24 Apr 2020 16:09:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0gU-0001PS-2j; Fri, 24 Apr 2020 15:56:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id g12so11359815wmh.3;
 Fri, 24 Apr 2020 08:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2dfe96YGRwdkJIStyF40QT5+e8yw/JJFrPUrA9ri3jw=;
 b=rpnKX0diuZmEefFJBlH4p0uiZ6nT/Uzyd6C8V+ar2sPq3giyBG+MSqmgtQqykf61K3
 J8s8b6qq9CHsb7VZ+hAgBPpNw0N29/Dx0xZX8yrxDlEymZtAMd0jgz7kR9P09TORmBhC
 TTLx7LLxBi0/qCjROKIvm7dtrRFClB6x/emlo+op9lkWO+yvfjxN1P3ho2PJ25atistF
 3OfY3NIrXmYYuxtFfPxwJV6jy/6mJcjHqBZCamamz/gUOG9Jcuu1cEy5zcTMYCgtpQY3
 eUhzOQdnUt3slZLmWzgh6lJO+UFYWZL2T1F7x+/XI6xSt4/tJvebLm+Z9yAdJn0077jd
 58EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2dfe96YGRwdkJIStyF40QT5+e8yw/JJFrPUrA9ri3jw=;
 b=U+/YAw3rvwTWl6bQ8zoFFffJev6BuNnntSjSp6suT0KYAOPA3wMnLjNt5P5upWSh7t
 syRrUAedhFmiSuk/180EXV5vRXXuAyzO5Rmubyu2fxAQjPR5+b+ITLUIhtcOukM09w3O
 xNur4b6J4qtVFWsqfD92tER8qqFj5dnDL8SQq08wg4F8dj4AD2c8CsYGsuWLw7VLtO+H
 grqqvcgSykOSRmv6lsWpqvhf6DoywTP3zhnqKwfa4/N+Ue1nKHXKCmmb+2rBPSN+aN5a
 NJmfnvgAUvRIzkdqLuxpUU+5N5RMX1YmnAzPl9ZSsuIeyDp6Ovto+bV75d7FSxpOLwdk
 oYkA==
X-Gm-Message-State: AGi0PuYYR7kGLdUK7l5hd1skRg0FpHV7wsICXfLYJZxN+5IWYzrBx4BQ
 fJOaiJOp2Opx35H+e18RBksfH/Mz
X-Google-Smtp-Source: APiQypI/huoG9jnHh4iIH+SQGJJR1gdn4nDg2DnrOfJ4docI19S96D0R3OPHztWOl24tnzb8TeUURw==
X-Received: by 2002:a1c:ac44:: with SMTP id v65mr11008806wme.33.1587743768021; 
 Fri, 24 Apr 2020 08:56:08 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g69sm3554317wmg.17.2020.04.24.08.56.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 08:56:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: remove #sound-dai-cells from &i2s1
 node of rk3399-pinebook-pro.dts
Date: Fri, 24 Apr 2020 17:55:59 +0200
Message-Id: <20200424155600.24254-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_085610_335485_F210504C 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The '#sound-dai-cells' property is already defined in rk3399.dtsi
at the 'i2s1' node, so remove it from the '&i2s1' node in
'rk3399-pinebook-pro.dts'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 5ea281b55..b20062890 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -743,7 +743,6 @@
 };
 
 &i2s1 {
-	#sound-dai-cells = <0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s_8ch_mclk_gpio>, <&i2s1_2ch_bus>;
 	rockchip,capture-channels = <8>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
