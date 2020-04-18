Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475E41AEB91
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 12:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zrwU7FpjnUakuMWgw/0ScIQaZ3CPn0g7rWyy9TWJUzY=; b=chV
	WnyvvTu+3Q5gfIm0KCPviKNA+MiFLFvxatN/vWrUpTZ9I+n+i8ntM1Q05HLOx4WVHBBlEzRsgvyQB
	JmgIYtfT0OYfisa9h+/ArBX4ZWY7JS094odZAabzR4Qux1Ic6UXppJpcXzhGAWRh34AFH6fNZQq28
	wrz4xW/JholUTMolRomqv+8SaFfLOkcRg4kbjRyBBB/jycuhBpkSKuRqyG+XtTw3MNGTmVHHImb9S
	eKAZWwjC0l+S0GoCnT2+MTZIwemLiFAWp3BRRlS8L+MxoGUBAeranPTIbD0rrT9Rj+5Gyelou6PLf
	nPkBdh2FjSkQ+FAkhPoU7farG854Inw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPkQT-0008Po-6k; Sat, 18 Apr 2020 10:10:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPkQJ-000784-Nj
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 10:10:09 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so5829687wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 03:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Qena3MtWCWW39FG/sL2IEnJF//vW5pRQm5AGBE6pZfs=;
 b=K9fIql3mNM8DUze3LYpJq8hIxn2AbWQHpdVjOEFpNdg53lvoEz1UK9fBmuw3bINzDf
 d+BKyBPyar9YdWtsiom/Mg4JBfehj8B3R1+7oH33sodNU67H74rbsulZEMbQHjr4YSub
 +HTqKKFEojq8XJ+hC5IjCxeCMp366EjOllOO4YjpmxrGLFriF7VEa2A0lZGihbf+qtXf
 gRE3UzCXoggGhRiOBDjeN/sL1qTj85olxCyG4RqsNtxkoz+hOe8W11IyWSgJw8Cl6lEH
 qHjWnln/QBrY5jtSr+Tx+sx1ec5ysNiE3i/OLeKW+AcpjZ8l9NVz6kGlGExLiiyLlkGC
 K2EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Qena3MtWCWW39FG/sL2IEnJF//vW5pRQm5AGBE6pZfs=;
 b=e5ahWhraONMdG1te4ScZ+k2neDHXMOgC45zls1v/0kNapRjqyQjUgEHDX3ngVVfKOf
 o46K9eVpSXCOX/d3Q6napUTW/EgYYGeEb7x/dB+jR7pVX57dTUI95//JJZvJf9GiRobD
 Fj1TfpGt0nhsSj77q3fncEtwXtl/oWKmKqQN3x3eE7HXIsAwjL6V9eSUAighijk8LAlT
 hin/isb8TZgzl/LI0NitkDSkqFeXQ2y4sp6kUVWRr4V5+v/AkhUDvjATvqxN0KJqQ4Mf
 HH2Wbfmn7w2dq3iaVgwDsan09wSep9Gi4F2zColmojzx7/9dTMJ/8J4VaJEjuWiVkyoX
 9+HA==
X-Gm-Message-State: AGi0PuaErhYB2BY9Tv/wDwzRJn2ynJyC6zPlytYuzLwTxjLxsz3LXEQJ
 ZtOG8b9qpmiGlXOntbpn+BI=
X-Google-Smtp-Source: APiQypJsEnFS9Q8J+bi+lqjec6s/dgGbyTxoCgCAdexX5/q13TcVfDXVpTDBzDHeNL+J8l0zlty3vg==
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr6511809wra.85.1587204605462; 
 Sat, 18 Apr 2020 03:10:05 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d7a:4700:391d:588b:ee8c:e294])
 by smtp.gmail.com with ESMTPSA id h13sm23790689wrs.22.2020.04.18.03.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 03:10:04 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Boris Brezillon <bbrezillon@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH RESEND] MAINTAINERS: adjust to renaming physmap_of_versatile.c
Date: Sat, 18 Apr 2020 12:09:33 +0200
Message-Id: <20200418100933.8012-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_031007_820075_C4384B73 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lukas.bulwahn[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini}
into physmap-{versatile, gemini}") renamed physmap_of_versatile.c to
physmap-versatile.c, but did not adjust the MAINTAINERS entry.

Since then, ./scripts/get_maintainer.pl --self-test complains:

  warning: no file matches F: drivers/mtd/maps/physmap_of_versatile.c

Rectify the ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT entry and now
also cover drivers/mtd/maps/physmap-versatile.h while at it.

Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
Boris, please pick or ack this patch.
applies cleanly on current master and next-20200417

v1: https://lore.kernel.org/lkml/20200228063338.4099-1-lukas.bulwahn@gmail.com/
  - was wrongly sent to old boris.brezillon@bootlin.com address
  - got Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c77f02282044..52bb8819230a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1342,7 +1342,7 @@ F:	arch/arm/plat-versatile/
 F:	drivers/clk/versatile/
 F:	drivers/i2c/busses/i2c-versatile.c
 F:	drivers/irqchip/irq-versatile-fpga.c
-F:	drivers/mtd/maps/physmap_of_versatile.c
+F:	drivers/mtd/maps/physmap-versatile.*
 F:	drivers/power/reset/arm-versatile-reboot.c
 F:	drivers/soc/versatile/
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
