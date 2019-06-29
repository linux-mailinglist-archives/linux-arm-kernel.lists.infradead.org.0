Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 413675AB45
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6m7M4azQsynmK+y5bkBSUUJQbsR4eVcY5//ZiVOk97s=; b=bk2bmTwzTbxdHW
	PnQHkn09woZvVXaCu11TZ/KMEmezhcOQwuFZPa8i8Hb/qPc53pheqIwIwZyV8gq6CukxhFMnO0NqS
	YZHAR12gdUsU5rk94QXuQ1ynvVSeY+QetE5skGCZDRGakuosKSQyG9SN376MQmeCsqXkS7sP48ACL
	lkTm1g81damSQeH1KnbIdxflCnKtAMqibdd+jJIeEFRlgwKQGVUlAdgxE4yJgMJYw4vGIss5CJpkJ
	bky+a8NEuXts5TSBCht9NvauFZqvP5HjQwMJ2RHZqc45AJcOo0o93pBsTUL8pyxMbWtHg1ossaqxJ
	yQF7ZUUqgdZKbD/TlWeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCzp-0004to-3v; Sat, 29 Jun 2019 13:02:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzL-0004gR-Km
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:01:59 +0000
Received: by mail-lf1-x142.google.com with SMTP id x144so5755902lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DbpuIcCBG2OY5e1NmpBE7wz6kAerHOIPdrXSJOYlBOk=;
 b=efVnvG6gsnh3l0XcsGPL7A1HnlxKgumwKIBMGtiqOMwHhdusEpWZaOWf+MqEF7BL5W
 WqbtG12LDpX6unXqMqDWTdVfM4zRrQmh4gqLzTx89lJEYR79woEb8W89uVlvW7MlFHEL
 Zp08PLKv6Na6vEgUdeNTUl5SJw8p7T4ZPUq94KcIME4V87xJpVQbKIHwoCK6jGRKWDu3
 Ngbb1bNlSk8+QAUVLVkhjTR0J8X3cz7gs99b/MC0wyJ4D28Wm9EDPnT2vEzHjH3XqEc/
 mhWNLYEUuhbeHtzFK/maFVDyz7mEP4hs1UZ+jfHb6VE7oiGbwu1a/LhUoF08NL8U/zFo
 qWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DbpuIcCBG2OY5e1NmpBE7wz6kAerHOIPdrXSJOYlBOk=;
 b=X3ABOZFXMZ894gjKWOlRzcKxzjd8HGzU1z2HSduGFPakwXWQlKAQ/Eo7ZjRXGu/ebC
 uo2SnecgqXszLvb4aYLvOLTKa28uHMs6BtDUaEKpjOu7WX0motFH7GVTUcsJUky6md+q
 T+4Wqbtmb5wSvAUFwnYzR4v3FIJ+iUTNwtwbzbwp1tzVfRmeA4T0Q3KRFHU72dGR0BE+
 Qi8WZ2nTqoY0lcI18nBwJW9YoywcefDjACnLLaJz1utLoCQUavU4pYMa7uJA8wQUQdpV
 9x2g1JTM7UXvO1/7bhFhyazyYrKqukB620EoL2K5/X/3IcadwStVWT03v71OSJ5lx9ZA
 bXnw==
X-Gm-Message-State: APjAAAVzAu4ZyD/z3FQpFRFO+0CR8n2U4PeoVeKMQQpCdVGs3NwBdtJZ
 wvWWEGej+luCuhM+iOLE6LKJlA==
X-Google-Smtp-Source: APXvYqwOS0pDKXe1RTOO0fPQa8iQngPginDmqxsbSy4gahwb7Y9qnEGHUp2+11mR/5U04XqewQh3gw==
X-Received: by 2002:ac2:5636:: with SMTP id b22mr4172787lff.2.1561813313145;
 Sat, 29 Jun 2019 06:01:53 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.01.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:01:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 1/7] drm/msm/mdp4: Drop unused GPIO include
Date: Sat, 29 Jun 2019 14:59:27 +0200
Message-Id: <20190629125933.679-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060155_690162_76AD7536 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This file is not using any symbols from <linux/gpio.h> so just
drop this include.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
index 5368e621999c..753579914d0c 100644
--- a/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
+++ b/drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c
@@ -16,8 +16,6 @@
  * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <linux/gpio.h>
-
 #include "mdp4_kms.h"
 
 struct mdp4_lvds_connector {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
