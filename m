Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C47131943
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 05:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TETI3xz9tqgvxw/5yEerG50JKr/uoeMqEZZblwjbAlw=; b=XpF
	v1hoCdH2DIYUaecKDj7/1ovnP+URFB3PAij6nEVfiQSmrLXoB0JPFx8TPtZNhqONMhVnZCun5aRor
	SY8bNWWNCieSa1UxMT2ryoWegk8lUH7pq42sispmFM+u7vNNIPG4VCVsNU+SbQy+b9muvzGVpjfxw
	+w8RWlcxbO5tpmi56lya/XFR5mZsy16d9ijvrFQsx3LL+SKEEZEugMYoSCMp9gH9e6LAnHzP0b8QK
	pBuAC/ap1yvsrzfoOj/N284ykbeCtpGNStBXmJ9F9QY95a3XlY/eHac+q+rzfdERAnD9JUXVn72Lo
	as58s90IZ3jGtlmVWec1jhZ7mgYM2ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWuck-0008JC-Vq; Sat, 01 Jun 2019 03:24:03 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWucd-0008In-PZ
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 03:23:57 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x513MrHC023003;
 Sat, 1 Jun 2019 12:22:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x513MrHC023003
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559359374;
 bh=r3qAVs3xM8MaSXiqlFioeBt+ecKWRRFeKPnE+XTAM3A=;
 h=From:To:Cc:Subject:Date:From;
 b=xw0YwrrAPeAY0OlcTa3SqAJKQnezXQoI2+/7rrH2CfETfalYjs1oPY4aVPA7tr9gd
 PRENg4z1TGu6XcME/fQNuRRNr/MWUyJDUA9g6NOMDBnSEuZOGzvFEhQ27AUfnIO3sa
 i1YAFJSzyn2RPF7OIZdKRk5sifWn4Jnc1sOFY9daWmqQyNbN9Bv7WwR1Z0r2TcU1q8
 wYJjAACezYFAKTQmvSn0Nxg8GYX4RN/YnoLhUfVK+VO0x+7E0OfO0bRe/S3bJLJByI
 R2uRHaeHgFubi/04LIXnk9kFNomJCl9TkcTXqn7fOzIIxpVKdpGhv5s4zM4BOfsM7g
 mqkobRgO/jTHA==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] treewide: fix typos of SPDX-License-Identifier
Date: Sat,  1 Jun 2019 12:22:42 +0900
Message-Id: <20190601032242.10405-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_202356_151536_E90BE4D4 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Takashi Iwai <tiwai@suse.com>,
 linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>,
 linux-renesas-soc@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Joe Perches <joe@perches.com>, linux-spdx@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prior to the adoption of SPDX, it was difficult for tools to determine
the correct license due to incomplete or badly formatted license text.
The SPDX solves this issue, assuming people can correctly spell
"SPDX-License-Identifier" although this assumption is broken in some
places.

Since scripts/spdxcheck.py parses only lines that exactly matches to
the correct tag, it cannot (should not) detect this kind of error.

If the correct tag is missing, scripts/checkpatch.pl warns like this:

 WARNING: Missing or malformed SPDX-License-Identifier tag in line *

So, people should notice it before the patch submission, but in reality
broken tags sometimes slip in. The checkpatch warning is not useful for
checking the committed files globally since large number of files still
have no SPDX tag.

Also, I am not sure about the legal effect when the SPDX tag is broken.

Anyway, these typos are absolutely worth fixing. It is pretty easy to
find suspicious lines by grep.

  $ git grep --not -e SPDX-License-Identifier --and -e SPDX- -- \
    :^LICENSES :^scripts/spdxcheck.py :^*/license-rules.rst
  arch/arm/kernel/bugs.c:// SPDX-Identifier: GPL-2.0
  drivers/phy/st/phy-stm32-usbphyc.c:// SPDX-Licence-Identifier: GPL-2.0
  drivers/pinctrl/sh-pfc/pfc-r8a77980.c:// SPDX-Lincense-Identifier: GPL 2.0
  lib/test_stackinit.c:// SPDX-Licenses: GPLv2
  sound/soc/codecs/max9759.c:// SPDX-Licence-Identifier: GPL-2.0

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/kernel/bugs.c                | 2 +-
 drivers/phy/st/phy-stm32-usbphyc.c    | 2 +-
 drivers/pinctrl/sh-pfc/pfc-r8a77980.c | 2 +-
 lib/test_stackinit.c                  | 2 +-
 sound/soc/codecs/max9759.c            | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/kernel/bugs.c b/arch/arm/kernel/bugs.c
index d41d3598e5e5..14c8dbbb7d2d 100644
--- a/arch/arm/kernel/bugs.c
+++ b/arch/arm/kernel/bugs.c
@@ -1,4 +1,4 @@
-// SPDX-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0
 #include <linux/init.h>
 #include <asm/bugs.h>
 #include <asm/proc-fns.h>
diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 1255cd1d9a60..56bdea4b0bd9 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -1,4 +1,4 @@
-// SPDX-Licence-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0
 /*
  * STMicroelectronics STM32 USB PHY Controller driver
  *
diff --git a/drivers/pinctrl/sh-pfc/pfc-r8a77980.c b/drivers/pinctrl/sh-pfc/pfc-r8a77980.c
index 473da65890a7..9ed4ead2dafb 100644
--- a/drivers/pinctrl/sh-pfc/pfc-r8a77980.c
+++ b/drivers/pinctrl/sh-pfc/pfc-r8a77980.c
@@ -1,4 +1,4 @@
-// SPDX-Lincense-Identifier: GPL 2.0
+// SPDX-License-Identifier: GPL-2.0
 /*
  * R8A77980 processor support - PFC hardware block.
  *
diff --git a/lib/test_stackinit.c b/lib/test_stackinit.c
index 13115b6f2b88..e97dc54b4fdf 100644
--- a/lib/test_stackinit.c
+++ b/lib/test_stackinit.c
@@ -1,4 +1,4 @@
-// SPDX-Licenses: GPLv2
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Test cases for compiler-based stack variable zeroing via future
  * compiler flags or CONFIG_GCC_PLUGIN_STRUCTLEAK*.
diff --git a/sound/soc/codecs/max9759.c b/sound/soc/codecs/max9759.c
index ecfb4a80424b..00e9d4fd1651 100644
--- a/sound/soc/codecs/max9759.c
+++ b/sound/soc/codecs/max9759.c
@@ -1,4 +1,4 @@
-// SPDX-Licence-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0
 /*
  * MAX9759 Amplifier Driver
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
