Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634A8D83E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bc+n+xRFPdw8GL7yU54Q5NxmpXhrLo2Bst4nEROSSMI=; b=aNTMyTegMNNpyz
	lGO5ME4SV+JmhyeJp7yNAZsdmuqo5cblrVq5yBtEwKbaed6IeLD9VMW2zOUp1twwhtg1jEgyRx2Uq
	pnQGVyaespxJ4CZwq58iT4H8nujYe8oGQMGdpKCV7veHToWvZTtt+yJd7ydqguhfJGW3VlZtuw9XM
	bufRZ8/KjbTkm0Y/uegWYjc07BPd4Wy6cPzd8xtKTL4Z9iJBoLUiycfsv9UNN7bmVVsgKU9+chfla
	PuECs8g6FX1eX+5m7vQ04gbfETMmaY7/S4jDsRNCZmYMMeuvBZHyW/Qbu55nfJgA4xDzZB+W0cVTE
	Q999Cb10hS0nzZTcg53w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVY7-0001qm-PN; Tue, 15 Oct 2019 22:44:15 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVXv-0001ps-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:44:08 +0000
Received: by mail-ot1-x342.google.com with SMTP id m19so18463751otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/bXnmbscWZtJykXXrw37z4L1ZflXNjKDo4nbAwnlNE=;
 b=jmLRv8ZYIlwkdYjVwllTQoVsbUaOuj+oaLFYbE2i5bRi9rzefOEnGOTDHTuJZMFKgA
 SDL1WMgNCIi+JpecQbfQ71lV/611WLaJcfrOaIlM58Hb4XdIZdGl8m7h5P66pxWjavX/
 Dd+zHZVDyoEP7Jceh3g5FSYJJhn2SOQTLDLIR/hxLQWt7Bltz2rC0ZV3pl7TxBeFlBSZ
 zvsz6WhXtss1/aGEjTZuD3M/jtlSQjgcIdRi1PCkVduSSO40B13zAN7HzKvK2Geg3UoH
 Qh83yyvN5rhtyPprAiH6ouS9LIVC/RmtliVdXLaiKG/crDHn+VCMYjeoU+qJjhm10kXc
 V0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1/bXnmbscWZtJykXXrw37z4L1ZflXNjKDo4nbAwnlNE=;
 b=MYt+uT5T0xWLkKK8djZM3uh0Gg8QnYlMu2GYUyF3DGQWf7bJDqjiowDLSifk786GwI
 NoTaKSRsOF4vsOfNQY3NAFgfhXJ6et839PQIXGH3kb6AeygI4DEL2H9cBhKMXMcnjyN3
 FHhmWl/K17RTS/sdvPCjwONCc1lDIrrj0uKwpuIRrT8a2qSyvH4Hp5JlYuQfak1WzCsI
 qY1QrSN5hOIEUji7jKLHrje7XyujOw2pTMswRHbE+Aqvda7dny7UAO83gOB/Ynvwi1MA
 r4MXrVPx047L4HDbBCu0Dvoe2wuTnfESXK48KbEXROi0k0SGDEKixpqhaahwe6zm/DLf
 gp4A==
X-Gm-Message-State: APjAAAUmfupAJpOrWviXNYo3L8UN52LZpRUIrbT41/oEqvl91YLJCmGW
 kssFvlWAbsqSz5Wtu0G56sc=
X-Google-Smtp-Source: APXvYqy1VFCcZsmFugM7TV359XTS5pkgqTSwfqZaUQSf+0IKEGMqZ/T16yth90qKkpB03mkIe7J1Vw==
X-Received: by 2002:a9d:624e:: with SMTP id i14mr13890468otk.335.1571179441340; 
 Tue, 15 Oct 2019 15:44:01 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id u130sm6843008oib.56.2019.10.15.15.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:44:00 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH -next] arm64: mm: Fix unused variable warning in
 zone_sizes_init
Date: Tue, 15 Oct 2019 15:43:04 -0700
Message-Id: <20191015224304.20963-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154403_239656_726DB209 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
get disabled so there is a warning about max_dma being unused.

../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
[-Wunused-variable]
        unsigned long max_dma = min;
                      ^
1 warning generated.

Add an ifdef around the variable to fix this.

Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/mm/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 44f07fdf7a59..c3d6657b9942 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -212,7 +212,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
 	struct memblock_region *reg;
 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
 	unsigned long max_dma32 = min;
+#if defined(CONFIG_ZONE_DMA) || defined(CONFIG_ZONE_DMA)
 	unsigned long max_dma = min;
+#endif
 
 	memset(zone_size, 0, sizeof(zone_size));
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
