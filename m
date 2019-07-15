Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9167D68285
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 05:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1eqERA/P/qA6jVnnheVoE19xiNVMhLmXQZcBY4CSUwQ=; b=XLX
	xx5/fuwOopAICPKE31I71ajyQlfdop7wi0CIxAbOyp2PK8wbdRCaXfpz7Crg0TvJuG5nAXQHqGcnf
	MFT52nNHcbJv8eNI9lwYMteOjC7tMkfqBAlBAXYOEux9v1IwbNIGAvLl7K6Vs6I048FipV8SyGA5u
	zZdbt5A7E1YVGG7X9ab3fc6w0JgnTSqCdEswPhxtbJNAySMVoDs0ZhMeCcx7NO6ZLFe/sesIy4Tsl
	nHKQStgiApVZtNOGNqoFn5JwzlLzKmq7EiqogzNrFtXMKy/KrOY/fRujre3LzTqmSlhUC1zDsYpKl
	NO/4jHXT1sX5mDv4hvwqnffVOtRL7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmrWD-0002zs-8K; Mon, 15 Jul 2019 03:19:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmrVy-0002zT-43
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 03:18:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id u14so6744144pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 20:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1UsNuU488bAaTj0JaLnojkSixQzmMg2zbCbBzMy0HWw=;
 b=oFnD7fwF5cyg4cvqJ7TqdFhRAWPdTc49K7YANgPbnWatdlA3Gl4VvwGJhu+olffQAg
 hR1eOySY2bND8nyvHT1JNUlY8n+gM986kC5KEl7wXtomxPfOTAZb95mxOT6XdU/RI1BR
 s1RMmHD3jvfy9ROmTY78VfeImpAeNmcdYQXv8wongDc6w4t7tf4nyLAfAtEcER7CPHEn
 PkCVuICpM5E0D2dXNH0UXhiiL0vlGduXdC9HbJK7kZfupSR7xlrihLbWz2TQmw6J7ibq
 k2BaAiqHKv50H0lyI2AEwvjyrJ2hxniHZbx18GL33ugmH95DYiSUdjTDS1bLUVANKPa3
 ma3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1UsNuU488bAaTj0JaLnojkSixQzmMg2zbCbBzMy0HWw=;
 b=YEa6ML/z73sIUy0QiYoIQogDFTbVIjY/C0JwELZ4TRkgxZ+aP/BGm0vLuJMDl76k/Q
 gyEzjmgHqP0SlP0RoDK7CEuNtdtHtbY5da2k7LiKZlm2+854MyZHU/ky03BgcDU2tO9q
 kIfj5mHk7vmn5QyyFV0fPdUg64iwMbIyqIirjAWm0YcuJ94YsS60C02Feap1PQ4WV+Yk
 AdWngMxmAGqWW7sNNqidJQHisDs1pHjklJZCoMrEIxSiuXHe4WAc6A4CBhEk3zS2bsNL
 qE4YNFPazYX4yMOKy2QwkGowze7TsVluX1aliRw9KUmZDaWSWQW+k21TIukDSUMin4qU
 /mwg==
X-Gm-Message-State: APjAAAVoeRFOaFhu8SAKVDObA/8Oo1/Pdn1L1S+UKGIOZZaHdspbnr4F
 oAfmjp4a+kMQNrKmLWZJWw0=
X-Google-Smtp-Source: APXvYqxdGGfZzS2r8XUhIoyjjIamvtltkvX9H3ARnR8MQSfG3WcpmiOIKoWbP95GlNFhqEhr6orhiA==
X-Received: by 2002:a65:5183:: with SMTP id h3mr24502771pgq.250.1563160737715; 
 Sun, 14 Jul 2019 20:18:57 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id
 f64sm16421304pfa.115.2019.07.14.20.18.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 20:18:57 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v3 15/24] media: exynos4-is: Remove call to memset after
 dma_alloc_coherent
Date: Mon, 15 Jul 2019 11:18:51 +0800
Message-Id: <20190715031851.6890-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_201858_161517_43A2A168 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit 518a2f1925c3
("dma-mapping: zero memory returned from dma_alloc_*"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v3:
  - Use actual commit rather than the merge commit in the commit message

 drivers/media/platform/exynos4-is/fimc-is.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/media/platform/exynos4-is/fimc-is.c b/drivers/media/platform/exynos4-is/fimc-is.c
index e043d55133a3..77633e356305 100644
--- a/drivers/media/platform/exynos4-is/fimc-is.c
+++ b/drivers/media/platform/exynos4-is/fimc-is.c
@@ -341,7 +341,6 @@ static int fimc_is_alloc_cpu_memory(struct fimc_is *is)
 		return -ENOMEM;
 
 	is->memory.size = FIMC_IS_CPU_MEM_SIZE;
-	memset(is->memory.vaddr, 0, is->memory.size);
 
 	dev_info(dev, "FIMC-IS CPU memory base: %#x\n", (u32)is->memory.paddr);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
