Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2949AB03
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ecU1qiPEGlhUcVe5eEL4dwt/2oP95VJHOTzhBOvhDwA=; b=VW3NpauobH+84q
	16WjI/QaQRhdhVbL87To96ZDgFg9DVXgss6XE+HRfs6y9lB9PwTf8rx/3o+Aqe6P5AJ+GTPLKITYd
	ZZEb03lw7w3MzyxZH3kS5fPek6qwMBCJjRq8QLfZW4uQ2i0EmEMczOAn24ZtRSyUTOdeGumUl4bWv
	qSQTFQGvoavI+kb1+1nsq8Q9BuKyZmM2hN3dviiqfmm5f3wMyjHThAMeyMMAYB56WF5N7nLZkUiUe
	YSyjGYW0tf3Z/j0XZcgP2KcPlSRRjP4eT4m2/DRFYjsZQw6+OG/tkfec3UZsa7Ml7IFwb5i79bzDm
	Eupny4ey63uSuN9DTBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15VK-0000nk-93; Fri, 23 Aug 2019 09:05:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15UJ-0000ik-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:04:05 +0000
Received: by mail-lj1-x243.google.com with SMTP id h15so8149693ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D79k8qyR+lkFZuNmiQyz7KjiI3FDq0RN+8yGAkt4ero=;
 b=mt7TlPL5AmogFU9Is2n4Q6zALZP97v2qowDOKyz/K3yzn+8/tDW9g3UxAy4NFXy+A9
 6FxvwjtAqOhpV17gayDwEJXpK+6ZfsYET6rK6x13RQwGQJpiEzojgT/73pjElq4rcLg2
 L00uCWg4yMnrLh4s/8a1zL4UkvidD9Xz1NIfbNoFvnFglmEdV+hOvTCKI8VYXxJVLcY+
 OUvrXl+IfeXiv2aZlN0tepjP1MbWVsqoYYajpHhVlU24IJQKo1PDnGGAh0zcrXjxG3lk
 +y7/PaO0uXQH+Al4sQGeSL+V46t6TtYA75GDkYNG6FMF02m3z6No4CZpkWIC+SfUPjFg
 KwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D79k8qyR+lkFZuNmiQyz7KjiI3FDq0RN+8yGAkt4ero=;
 b=nCf9kpkpiglztJng2ALHBdrhTp3kLHE3LRkI3NlasIitTkNuRDBqCIWmNL0++N23VE
 7a4w3Ut4AcKd/cds94gwxegot4grlaOkGto4iErkm+9ctX5kklCQr62ZEuoMTMDOZnSZ
 Z4tjlnQczQVXIqGQPyoW5MqGh943Tp3ZmDSyfInGrdArYNReUNGW2HbZ+npGf2Btqsv2
 vq8AS/wMEemJ8UHTUCrgaFmrLnFCOj5KWn9JE2AaPXZMqK2vswc9MPjQ2W8h9Ig3WFBQ
 VC+eBqHzfJfBNMiLVAchFOy9MT96y+Kqpy/sutIZhq8PKfDFr4LhY7LfMSUYdeD7Hk5i
 UIHw==
X-Gm-Message-State: APjAAAX6kACi+y7PYLylp6DE8KHoFw8uY5tC7zVrX7qv0wYvHX+42yRr
 rc8W4gUaSQp1JeCWmSlKOsD8Rg==
X-Google-Smtp-Source: APXvYqxn+Myl0Zh68VB/gUSVTk1+y+dieMuMV02tQYFhoO9J49zf6nx+6CzqcvaWsDXjAZBIelYlAA==
X-Received: by 2002:a2e:b0cb:: with SMTP id g11mr2218617ljl.76.1566551042075; 
 Fri, 23 Aug 2019 02:04:02 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id i9sm499237lfl.10.2019.08.23.02.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 02:04:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] soc: ixp4xx: Protect IXP4xx SoC drivers by ARCH_IXP4XX ||
 COMPILE_TEST
Date: Fri, 23 Aug 2019 11:03:52 +0200
Message-Id: <20190823090352.12243-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020403_971413_0C3FD608 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert@linux-m68k.org>

The move of the IXP4xx SoC drivers exposed their config options on all
platforms.

Fix this by wrapping them inside an ARCH_IXP4XX or COMPILE_TEST block.

Fixes: fcf2d8978cd538a5 ("ARM: ixp4xx: Move NPE and QMGR to drivers/soc")
Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Hi ARM SoC folks, please apply this directly for fixes.
---
 drivers/soc/ixp4xx/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/soc/ixp4xx/Kconfig b/drivers/soc/ixp4xx/Kconfig
index de2e62c3310a..e3eb19b85fa4 100644
--- a/drivers/soc/ixp4xx/Kconfig
+++ b/drivers/soc/ixp4xx/Kconfig
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
+if ARCH_IXP4XX || COMPILE_TEST
+
 menu "IXP4xx SoC drivers"
 
 config IXP4XX_QMGR
@@ -15,3 +17,5 @@ config IXP4XX_NPE
 	  and is automatically selected by Ethernet and HSS drivers.
 
 endmenu
+
+endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
