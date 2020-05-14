Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50C1D2973
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrm4rtMwu+lG/0PBVFPWT/QeKhVVapSlHO7pUIyq6do=; b=BbJFSQ0rFJ4Exi
	TRgl9WPWbSye1de7iYCNp3PX/SGgt49jDMk8XtTQkGvXFYchzTUEYZtDjBVB3tjeneruwi7+YLyRM
	TA6B8NZePeEEQNNwDv6dq5Rjina5khLzKtF1+Bc7oO7hW3BCSZs3VoDgAsaHwSV6Sfu9527BDxyUL
	K76/bqtdxN70d6/nck+4BYS5OriC972e1P0418kqtKc4GUlVbMfdB6S5xWKp4Q2/Dhahej/kJXy4z
	edQuLgTx+42A8UoTu4xYvP5cZV+J+ZPp5fV9A49t1gTCjp4I8PwBGgOjX1SZ9jS2MrGl63ijOgskc
	VQYUuk5fGybqo3Ox+Vew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8on-0005V1-Gs; Thu, 14 May 2020 08:02:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8ms-0003gA-Ti
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:00:16 +0000
Received: by mail-wm1-x344.google.com with SMTP id f13so757483wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=ZkLZSavxQRtaRZqyeN3NFITIp9a8YO30SCLrAOX1aUcrsNHL+prXkOix/ACHyjGgVw
 q2jd8BjkbRwT4oWyuOPZgk2WnU5xIg+ORja/yqRwPiv9GFywqNZ4ulkSaelZm736kYYR
 Fu8UY/ImjWaaMsyK66j0UQo5E47LwAU554W01yFA/2vENar3TWpS10oflMxQQSTySRW8
 JbHon+nwYkQtXYF5oGqOvwqCPI62pOAGKXEAfjeV2TQn8dABDV3myryZW1ABzae0dBqJ
 EIPQiClTLRuBE7bkT9QdySvB0BFZi0/0hgpZtmAk4favh17kUH2Elntgnab3OXB98Tn6
 1FKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v4BoYkqJ2NsZ2nSSjChgUqJJCyqhbfFRrbuVJ3n7szg=;
 b=UzQeUpCEOI/wpeUQ8eH5uCQkgixFT9u3T7R4G6J54QYNPaAAEGAFwyrQbfG5Ywb+a9
 Tg8H9IsSQBIoyLzQf4SgPsqOuQL7pn4lU511y2tOPgzhwUYUog2QsWhjKfEr+HSySSHV
 47n67ikDs64bCvdnvRXghXIps1QVfcEzEAgut0D9B6XtQFo3BKMOWgAfh4gh5MGJolFu
 128dNPUPH1ymI4Kp3HdHQvvSha5FYZ6nCLZJV9P9DyjyKR8FaYuDFTKnd4XkbLJQOApG
 LzvlINnS1XhIdeMGWd4t0qLTcYXZVW3TClpQybwPV5NIWG4TxeRf+8IP6sDdXfY7i8QG
 Dl+A==
X-Gm-Message-State: AGi0PuY8On1oB4B6zeFQjqbaq882ckO/ojrw0QHu09HOtpJ1ci2L3GUf
 XV7GpttrxATAZZEagCNCYeuoXw==
X-Google-Smtp-Source: APiQypJomtPT0QqK17VEMkCe8OZhQJx80jykT2rYty3mL5D0FV9hIY70uXGJUu6dWm6hAMRJlHfP1Q==
X-Received: by 2002:a1c:ab45:: with SMTP id u66mr46456934wme.152.1589443213276; 
 Thu, 14 May 2020 01:00:13 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:12 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 06/15] Documentation: devres: add a missing section for
 networking helpers
Date: Thu, 14 May 2020 09:59:33 +0200
Message-Id: <20200514075942.10136-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010015_206022_7CA87EA7 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
