Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022361DB222
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrm4rtMwu+lG/0PBVFPWT/QeKhVVapSlHO7pUIyq6do=; b=eAUqkOJG7C5sme
	EZC2o9xb/TGxR4xx+/P6rA72rHuoebuAxCotaK8/wq7h+dQTrPE2zZr3PVMmQGVRb3PALj6QwLtEW
	1w2IJuOjMKykXLBKRrGerpdlu2ee8anMYhxp8qpxq0W/tUw9O0h1oAhU7bS6mR+4CNRLQAA3WdILU
	W9gEE2YJvoSY2ZQPiN/npRPquwxuX3OpPjXlcU0ZK4L0DF4g5g3psHS480Pyc+7vaTiTLznRR2Yad
	Ax/t41BM60br+afR84BB7Eemi1VQZH92gOtib4zdBDESnLTFWoGBGtK5jI69ucPwrEdqQEhULXpf6
	a/iKE5YaV0WQ2QX+E6aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNA2-0004Uv-4V; Wed, 20 May 2020 11:45:22 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbN96-0004D2-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:44:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id i15so2775499wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=G2HzL5rdxl8gOOIQV4qlZMw3KWQcZxPW/z+oED1akrqOkokebIn2QxctEc0qMGDENR
 fnBBgU7agpoX1odvaMiQMUaCWrKwE3w7DwOPyGoM5q07zcNglYB1JReA7BQ9Lnf7Ho5N
 X+dwG8oPPExdKj/4jVBNByIeraaDXpT0uVTtEvtSUeuC6Pe7J47V/bSYcOkQD87Jaqdo
 gvrlYFLb2bO/N5ysRqcO1/aOVVirM77Zra0to9qgOQxKpGhC/2rl6GcazkmeCMmjTo/U
 ofBPPKGz0CMTClSICNtkP+NiGp4om1xqGgOZGmUe6v7G9i3pjDQcnm4Hty7lEAXw6smR
 10vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=P6ypMBPbY+Xs29W7GSrjdT3unRGndD/u2x9QkkO4LcFJojwdGOGf4sXhloW3RgzYaX
 QGAuWHzexnSjdvcMawlv3Qe64zAWzFOhQuVNzQwsVj71Fcy3IdRF0iMCtdvZ+SR2/R1W
 F9NiAXGZWqKd3oBWH8+SmnyVVGjKqLBxp5ACDt53hxaWqvcLCQ7831AOHLKjN5haCh6W
 BpS3Zwy5W7OjyaPNfFvc5So/cLzHd3xiXum30MJm3VZUWT3ywPPhIduMONHM1R4f7viW
 D6rWpKdTanvwa+sAicmv5ZrkNuqCweXbHG2kVFGglwelCHMNF265T3BOBgQhFTbtcYY7
 wZrA==
X-Gm-Message-State: AOAM5316k0qO/k9y3PudcKk0+aQQZT/b0esrJSCZakxir467eGQBybsf
 fKAVZYy74v5imWrz7uO/LR+kvA==
X-Google-Smtp-Source: ABdhPJwCKG6qiFzuF7aH6jSWA6csbzJ8395j7lIhL5oX0eAbSe/2g9fc+9TJo6lUPU9TiTHyfgaB9g==
X-Received: by 2002:adf:afe9:: with SMTP id y41mr4193800wrd.56.1589975063620; 
 Wed, 20 May 2020 04:44:23 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q2sm2530782wrx.60.2020.05.20.04.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:44:23 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH 1/5] Documentation: devres: add a missing section for
 networking helpers
Date: Wed, 20 May 2020 13:44:11 +0200
Message-Id: <20200520114415.13041-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520114415.13041-1-brgl@bgdev.pl>
References: <20200520114415.13041-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_044424_937471_5D6E82FA 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add a new section for networking devres helpers to devres.rst and list
the two existing devm functions.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 Documentation/driver-api/driver-model/devres.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/driver-api/driver-model/devres.rst b/Documentation/driver-api/driver-model/devres.rst
index 46c13780994c..50df28d20fa7 100644
--- a/Documentation/driver-api/driver-model/devres.rst
+++ b/Documentation/driver-api/driver-model/devres.rst
@@ -372,6 +372,10 @@ MUX
   devm_mux_chip_register()
   devm_mux_control_get()
 
+NET
+  devm_alloc_etherdev()
+  devm_alloc_etherdev_mqs()
+
 PER-CPU MEM
   devm_alloc_percpu()
   devm_free_percpu()
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
