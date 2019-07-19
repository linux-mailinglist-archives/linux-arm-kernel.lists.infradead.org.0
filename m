Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 765966D7B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 02:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y+/Vd68+6BMGV2uvv4YZszfWCBEU1Pg+3KrAqp1Vr4Y=; b=cea
	Q/hn/zrJxNYzTrwCTUfN69dbeWoCYj6X1CuUJ4AbH03BvI4uf/tt3TKOB8ZYQszxKuLAUpdk9GIuP
	ymqt5bj5Ux5NODqIUjx1F20IWQK7LBhJgQXJN+v294bdiLGB5iwwq0LzH80DQ2mhww7y10W5N47Ht
	7pp/5MatIKFRCYrcHUAgoT9AFhOo54N6Srw8vzVV/gZhIGigh73vw0yAzLv9tIUnoEuLD76Qmb0ib
	46Q4rgHaUG3IObmF1bCdoknWuVyRmb9oEUVyoQLHkEoILbBBdqda9ALvJBYS5lWki0dQvb/NQfjei
	H807HE+KXPysEmjVsKYH0WXbsME7tIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGap-00051p-PD; Fri, 19 Jul 2019 00:17:47 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGag-00051Y-2l
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 00:17:39 +0000
Received: by mail-qk1-x744.google.com with SMTP id g18so21991284qkl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 17:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=WWorDgU37uCZLGu5nz+LNBr1zloc/FRL5SEj+ZKv0LE=;
 b=Cy4Z1/IiSBGyplRUNJm55kYfnXMp4p46k1i8UaPTh+Zjk2WDkYGf5tRE7AnUGphc44
 yRoNHh5R7K28f7vQWoWRMbBYE10bYrbiX9QJvbpicrYeiYJ9iHKi2bhlIp4eZfiyTYB2
 0hUa5lgQ64366gxtPhlI+0BYnI8e4BExFqf6FPqpxlJh2Z80LnZ81NLjKRCwhxG2cGO5
 G4wVxn32/OyWk64s61VC5Gax5ph7xcU6wuyehLF/8z98rRjzabLosGGhUPc2zf41tD+W
 TxyCrR7CbGObTjrVu2Yd2WMXjI4AnAeMrJchJKiq3/ruSP/JoAq+8Gx9IYIqWijQ0bES
 mhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=WWorDgU37uCZLGu5nz+LNBr1zloc/FRL5SEj+ZKv0LE=;
 b=UFmYQFEN646+jJW6lHbl+r1L3n+4hGtvugW4Ocd5mgY7aemrjMYUwPMdEW9wFWZZH3
 he570M3FYYxs45qtNkKAcixSJ4xeI5vF7ZalB3mE3K2e2ZuhvXX91nY2xIEuc5KqBY63
 g74hCE/IzO5oea6rTGE9uLeGaZ8XbBKQGP5K+epUFCy7p+QNSqYwblNNB+SYcM8FXaDg
 5vLXx/mXLj862FoQIYAVujMCPRNViwUk35fSlacQxYyHVdGPuHhkVRElEOkPDZ902120
 1Jo/e+lIRjcHqKUx2PrAAxszbNjFfHWDCpZN10RtkHjC9Drm2DunRvCwPs2YydEvzsPn
 umdw==
X-Gm-Message-State: APjAAAWzdcbahR6KhO0lin7can3tEF66cW2H+6wlugFlhaZU9uv1V9ox
 G1fMQGTL/NVzHrhZgi5Vj9wqE44L
X-Google-Smtp-Source: APXvYqzuf9kt6r7zzHRSY+lY9oh1KFjcvp9Lg0auqmgIbXNGEYb2/lY4T2X9T5Gc8h0LNbjez7qTXw==
X-Received: by 2002:a37:6858:: with SMTP id d85mr32273806qkc.126.1563495454527; 
 Thu, 18 Jul 2019 17:17:34 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net ([2804:14c:482:3c8::2])
 by smtp.gmail.com with ESMTPSA id d12sm12031828qtj.50.2019.07.18.17.17.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:17:33 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8mm-evk: Remove invalid properties
Date: Thu, 18 Jul 2019 21:17:17 -0300
Message-Id: <20190719001717.7192-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_171738_153156_506A14A7 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 ping.bai@nxp.com, kernel@pengutronix.de, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All these at803x properties are not documented anywhere, so
just remove them.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index ee7f2b2fc1ff..8ebe46386c53 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -89,9 +89,6 @@
 		ethphy0: ethernet-phy@0 {
 			compatible = "ethernet-phy-ieee802.3-c22";
 			reg = <0>;
-			at803x,led-act-blind-workaround;
-			at803x,eee-okay;
-			at803x,vddio-1p8v;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
