Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A13CDB4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 07:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CISxgQ9y1OhPPKg2INACUoFLohi2h1uR1VnTrAEtSP8=; b=V/d
	BUSryCrMWibW6e9i32xETW6vvoShQY7xBYIO6a46Vu6vFmxyLzuvylAtGWJk6HPZRSlSgUxvf25Oq
	6HfSPpHcOuh+hhS4Gs7l7FrdnybRZXXIwJZGzphTWKJwXH9rB5Xy5ThQZEhGd50Rfmo6lo7n1yLII
	am7jP2ssOA1QzV/wiJN9RjMpEQ92WLiaMshZb2DHEVDv51gv7N/aMrwR3XXG8qzGDSZAwTdGm6326
	abV6UgEJ16tUpeQp7YEC9sV4fZPThNxqjitR/S6pD+ZHzYiXJ/TqNMD1GvIdEwcqZlgFPZG4rTyru
	KI+BTvABXNl5QQKq9sGGnS3/KLAs8fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHLNR-00054n-RF; Mon, 07 Oct 2019 05:16:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHLNK-00053l-JX; Mon, 07 Oct 2019 05:16:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so13529936wrj.6;
 Sun, 06 Oct 2019 22:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wc8zArjUNgVy/s50wiyO1NvyueOi4Jj56svA15IfJrM=;
 b=JShsrn52XpdHu4hzqho33vlm/BLTIB0ivbt2uiZYxukY3K1yVykXHD0hQV2AtMlVrx
 x4/ZJz+IX+gDOClpbBgREe5FW11lbD2bbYNh08gfeCdYssDP7b9P+VomVnt0sOQoXXSK
 4lYhsb8kc/DrS2+j92/giE0aFuTkP79hFCrIoVk/sSpv5+YpsLmiunm6L3SEae8+y+aR
 UPLxTLhFfhF67xPlW+kFrYaX6HzPyl9zWAKc1ogJtTZ1JRm+qOGaEs1TKP01dTZHdgpg
 WOLyWa23VwUJZZisFOoh0eQ13smEMog1px57lMXij29uhjpxAjj/R+d2ipurGHDpXcoE
 jPMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wc8zArjUNgVy/s50wiyO1NvyueOi4Jj56svA15IfJrM=;
 b=LvC7AfD6Tw8f6Jn51vZemkHVKoA4aukbCThOA0JSTIPurdxZP8f0jb2plCz/P6tGPG
 d5EjCoqR2ORzTiuhKgvRauq+DVZoxBtvrK8bHBQhI4Avnx0zVgLC/nxkTjVBJDUQ68Sr
 n5dKoM1oz0fp8hgh+yjPkuC8ia7VRd3o+8FZUJyWNEtkVH6DdPFB98vmnbiPUE7djaQ5
 HTMiSjlin5+s77iUcPW4dJ4JDLxL7SxSjlAUywf1vx/qXOcUykUBTfK3rDESAWSC1J+j
 rwL958qSbjxlsnZ7kQULDN0Vs+zwo+G1QAovD0FPfJ2J9pbQ6cYQe8YdSgYPJT/7Hp02
 5+JA==
X-Gm-Message-State: APjAAAWp07aXaCnB/K32JLiHgrUZ/s10JHO7yEGCI5CeMhbJoZYuUqtC
 6hGb/AFYBGRcbG5ZlxKgXH4=
X-Google-Smtp-Source: APXvYqwzo0yTz3gSyrODu8GSaSVC/7ZRDoAU4U46fMeNIkG2Z/7Iqe/R78CRVGTLZSok+sa49AnwLQ==
X-Received: by 2002:a5d:6a09:: with SMTP id m9mr19624526wru.12.1570425358185; 
 Sun, 06 Oct 2019 22:15:58 -0700 (PDT)
Received: from localhost.localdomain ([94.204.252.234])
 by smtp.gmail.com with ESMTPSA id s12sm26655859wra.82.2019.10.06.22.15.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 06 Oct 2019 22:15:57 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: amlogic: meson-gx-socinfo: Add S905X3 ID for VIM3L
Date: Mon,  7 Oct 2019 09:15:07 +0400
Message-Id: <1570425307-3231-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_221602_642286_B763196B 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (christianshewitt[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[    0.086470] soc soc0: Amlogic Meson SM1 (S905X3) Revision 2b:c (b0:2) Detected

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/soc/amlogic/meson-gx-socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/amlogic/meson-gx-socinfo.c b/drivers/soc/amlogic/meson-gx-socinfo.c
index 6d0d04f..dc744f1 100644
--- a/drivers/soc/amlogic/meson-gx-socinfo.c
+++ b/drivers/soc/amlogic/meson-gx-socinfo.c
@@ -68,6 +68,8 @@ static const struct meson_gx_package_id {
 	{ "S922X", 0x29, 0x40, 0xf0 },
 	{ "A311D", 0x29, 0x10, 0xf0 },
 	{ "S905X3", 0x2b, 0x5, 0xf },
+	{ "S905X3", 0x2b, 0xb0, 0xf2 },
+	{ "A113L", 0x2c, 0x0, 0xf8 },
 };
 
 static inline unsigned int socinfo_to_major(u32 socinfo)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
