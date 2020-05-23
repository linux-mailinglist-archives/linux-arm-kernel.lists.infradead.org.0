Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561B1DF7A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrm4rtMwu+lG/0PBVFPWT/QeKhVVapSlHO7pUIyq6do=; b=rnERHkp2HXWIZJ
	VGBMIgy+TsuXDEUAEc7aDE3VZbgANTuGzM7IH2K7p5n5uhG68DcQ572tYda9LUG8cLbSwxbmQ6Q6u
	zLrVt3h6p5ztMLNwzNOkeo5IXzJiXxwfA5qT1Vx7+0diYb+4inX2F8iWmRdojcmU/LQMkvR43itNn
	PqQSPD+anHtpHW9MaLize4ptpA0ZuvtbdMwNfJAsJAz8PsQllOI8E+W5GJdwuPbindBw7alpQvL6e
	YPrFCnukVttqKcSwuUVojzRMeqJOCmj961n9pGHRABLY2apecBbZS2p3CjBQYHuArfIFa/LKXxQJe
	Fv+n3xNfdnPZRzuMGW2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcUC5-0003HA-4v; Sat, 23 May 2020 13:28:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcUBO-0002wX-57
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:27:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id q11so822203wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=Jb+5ZKalM86utufO41gum/2tS7OCDO9S01QHf7MGzAdq8QJbiQutr25oxxnlWFKFjx
 SZR18qW8XesCnotOkM8H9quVQqYTgPCdLi6Hhg42qTzojhe4TfWrzycKi3iHikDyNJsf
 Ky8/1dwIBaNGn+BmOnu4CzyVMTy5XGhLj6c2FWrDQ7sNwWtbGGg15vH/P5a5y6+hovy8
 0rlqQeKnqGk4cNbfwQjDY2T8Oh4k/d1T2eWIevxv44tfqW6CCjW1/zyJBqc/LB1fD7fQ
 e6hxAoYbB+3ek0K4qJKeZW6zAPnzXJfiIuSvoj5gtKzV/sqVyURCSsJZ7bY796SijLfg
 e/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=sDsU550z5EFz5M88+jnuWRjlrL7LbDUVmTGIhNUlaC692uSHlqxJhTBmGf8tdJzNQw
 NVjoEfa4cGHnd/7HqXYFHDtrMEQ1Btoa1mzzTX+zAI05uDNlfsZyXBQv5y2cBREYqDTp
 Q1WQvmDEHnUsRQcwDNo8lGAx0FgHYM0JfDzUjdQ3Xcz9cLXN7vxBIIrEzlmqHddr50b3
 Fv6Q19wOYpDVdpoa90SBzZFLgK6mzNKcrKve4ZGISdfi0G9vQ9Z2A2vV9NOCsIExslAR
 VzvLqiTBK7Vp1HDlpyWsJgr4mghmbmenvpg5e+XeuuymbCJKKmv/kHD5khUxGW/1qM+Z
 hVVw==
X-Gm-Message-State: AOAM531V1aIk7ODClwITM3qLcTny5Onxa44OOvIso1fYVb24RTEa0dhf
 Gwe+uvPsrcJQqqkOXIBHRLU+YA==
X-Google-Smtp-Source: ABdhPJwRfYPqDnrdo+HMqNm8KeR9hux7USj8U+isJ4xnjN1tAmXFnQplrYileiKI5uqJotyI3sPrWw==
X-Received: by 2002:adf:f907:: with SMTP id b7mr7636363wrr.203.1590240440783; 
 Sat, 23 May 2020 06:27:20 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id g69sm8098703wmg.15.2020.05.23.06.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 06:27:20 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 1/5] Documentation: devres: add a missing section for
 networking helpers
Date: Sat, 23 May 2020 15:27:07 +0200
Message-Id: <20200523132711.30617-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200523132711.30617-1-brgl@bgdev.pl>
References: <20200523132711.30617-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_062722_195659_A41B93B8 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
