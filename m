Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67038588BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 19:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9nedXaBIWwT73zaE/hbKx9TTqXBWfKpiFW3RNBVAeCQ=; b=PZO
	MAk3Ghb0xLPgftIDhCWAwd4AyZVFgWQ8EsO7/Mu0HG0F7xqCafpecFX8ueTEWqnGzQ2NIr0nWaS1s
	u3CkT5yZ9L0Sca8R9PWqglRknX0Vp0ZogEviuexSAIwV9Acs84EGFw3v9ZF2I3ayygdxM7t9LQJwB
	2F8/eG62vSfclXytSeYAqnbCyrILAFjDuP7kGPVIoNzWw8/gFWZB3RtgyF5QckX2FaUhHzJWVVpCd
	j8yDTeJzrFlaWMM3Kjl+/Eihuq66n5rLocQ+/46QwFUn6UVje8/3yID2//v5AUD7Mkf8Gkk13pGah
	XqoTKB83jnUur11jNLTkSw/cDBAwRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYMC-0003vS-NB; Thu, 27 Jun 2019 17:38:48 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYM2-0003ue-Qh
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 17:38:40 +0000
Received: by mail-pf1-x441.google.com with SMTP id r7so1589979pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 10:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UrGOOwqXYdU4HnZf32fo0+WGpE9hhRvUmIwwr7eD1yc=;
 b=QEx5bAe2IDGhdbb/pyuhCrfIBoyhL7FlODV1yOG8ZjnWT5sOrxCVj6SlR7vbTnZanl
 aCxzh78YfzmbgbPeI6m/h9nOFRCwmq0MRjYUoUiD4mXBAD+Pc2MIo9BfGBeqEeomf8XO
 Ven/aiofV8Jdq6iDjAfb/FSDLeGbDzczd7KrVHpQ+qnNzzj2Kz7PF2DTf/7eFHDLkwBd
 BbSG5rpSLk6vbzMFxO0hynJB6/lRkL7GsU7nkvTOS/3HCurORBqObRy9rR0vO2hlgLnw
 zynlKIG8bwRCtNd3nplq+10N0wZ1Zb09Fj7/9SXFBWPA4+YJvPUkBwVh3DXA5PQJuHwd
 kVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UrGOOwqXYdU4HnZf32fo0+WGpE9hhRvUmIwwr7eD1yc=;
 b=pg6H3p4RJHNpoJuZdiXm6nQv/B/oKVpFJi1KKZgnnzHVUt9IqQ/q+Gukf63h/tMBgf
 uC4Q+oWzMWn3NFEwmb2TkJZQ/GJp4/udI/VY6eSx+a80Qxo4wNxwTLtlNQyXBM6JRQ7p
 w3IkkWP1KzCYcxQOSmnZpIxUddiU6hO31h0O0mq3+EgOKCvQwyFJJWoMMcM+Qugbs67J
 y9Kp4vlWRdAvyFMtgEmX4pK3RkkxjgtL2jFddhN9UvzgiIiw9UfYIWP16Z37U0puvDaH
 48AqmezaK4T8XGlONhD5Cq4+fyuI4nNBHC6W7m6rdCF+ehCbTSDGAvurP2je2L44ugRw
 i3tA==
X-Gm-Message-State: APjAAAUXX1gjizLt/KNgy3whmq7ANWx0dd8Jvsm4iyBhvatySOFOPL98
 HDhD03Ll7hyRDLbnrqm1VoA=
X-Google-Smtp-Source: APXvYqysqhAusiUIFovXzQaY6v+uFPfSxgWZZNDiy+cXjWnBE7dy2ehmnGJY16jdPRVGrhp5EMnuyQ==
X-Received: by 2002:a63:d755:: with SMTP id w21mr4919171pgi.311.1561657118048; 
 Thu, 27 Jun 2019 10:38:38 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id k22sm4057212pfk.157.2019.06.27.10.38.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:38:37 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 31/87] media: exynos4-is: remove memset after
 dma_alloc_coherent in fimc-is.c
Date: Fri, 28 Jun 2019 01:38:31 +0800
Message-Id: <20190627173831.3467-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_103839_038008_38AA5400 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
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
