Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D95D59195
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iJ0Bokvsj2EnGysd9E7pKwu99yoTJqRnFjDi3f3oBTc=; b=NLZ
	6r3bFQFzkf7r/eAG3lko3DBYDAavny9Uv/Z9P42GWNJ0nY0DQ5oapaUoOrmMCajfP0D25N4Kvle5A
	ksDG0622lonO6w4FgI4SyUzoAyl1SMrc9CMm9avPXg5UDaQ3LwoMdooxk3UuHbRozy0h93gh2RdEY
	ityRtLFcxL1pbsYB1VwL8ntugjFCbrapUoggJ/CKevDrXfe9VGyOEhjg2vtZVzJPjC+Kji/gQHkl5
	IP92IJ3azbhYQpR0GgKoZAmxbXTOIxmBSkKYCTBdSD3BPtW9MpMA89RTFz7CZjkDzmd79WBYxLi65
	7CB+Il2zuPGtLXfkV8CwMbZ3EfhcFjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggvr-0008RM-TX; Fri, 28 Jun 2019 02:48:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggvb-0008QU-VY
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:47:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id q4so418591pgj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 19:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6aVVFTG6J+mdEsYXUboxldScMRbRZCxioRYOiLEnKqo=;
 b=jkXS095oU0EJo69ErmIu2wtcYOP1wRsvlgLdQCfZ5Pv2Zh/7gShFRVIXqJcELmd9Qr
 1BTNahLebCv7Yp99CNXI3P0SNaADHCbW7EZBdeOYXI4hwsdlzEpp+QeEq9CEQ+0buno7
 Ewr3L3245KLVjBcBvkYSf9mxVdzetjaByD9iCF0rYL0qAwwNQFy3lASxtoMeC2QyrSUA
 zgDP4trJVupB4rSAy1wimgi6dvK0RW3lk8FmZeGCjhkPpEV6uVv6amT6NQkMX9Sv4z5f
 oCX0WCKLCsXkCR10WY55sfGOxFeUIUjx3e9IkITJ3vHuIlvwsFCiR9m3AUfzf0hSf+cT
 9lTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6aVVFTG6J+mdEsYXUboxldScMRbRZCxioRYOiLEnKqo=;
 b=hbO3+OR54opBnrR+wRLwsvEgrqeaY6tm6kB8ofzeEbN0xIq8q46uA4S6xcqE2pTn3w
 IsiGyC4dUTafrcCcv0iDjjUNcW9At2NF6/ZKOlx2niVHg1T3RMowhakSVWmHfe5gO6CN
 ICh8CnSKbXGgT40buotufLkRiWYqaPF7rfwbmbqGQOTezxjBmnpIDeE9X2Amqf/hwL+m
 mEG/o0oJJKIxZcIol+m64a+IIwk23UYD+GDU39FznTsUjA5jrwqJQmdqXCfS1TtByZdl
 ANx04N/vrT6qkTHEREhRo/uJ8lSknJ4vayVBsAnzPM5DliVuK+mC2y2ls0vTX36PKmx+
 itsw==
X-Gm-Message-State: APjAAAVtmWVkCR97DkmWHHtIfiIBGyAc55+65FgjfynGY99qjHwtWVob
 0LzyAbDrccKlbRxQGTx9K8Q=
X-Google-Smtp-Source: APXvYqztbcHxq0I2L5B3UFUCS5LeG8dAI4heG4E4Zv6OJyvw7TJjS519CqekfItIYensQjICjYysWA==
X-Received: by 2002:a63:a48:: with SMTP id z8mr6935646pgk.91.1561690075033;
 Thu, 27 Jun 2019 19:47:55 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id c130sm450104pfc.184.2019.06.27.19.47.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 19:47:54 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v2 11/27] media: remove memset after
 dma_alloc_coherent/pci_alloc_consistent
Date: Fri, 28 Jun 2019 10:47:43 +0800
Message-Id: <20190628024744.15367-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_194757_913596_3F2F64B4 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Fuqian Huang <huangfq.daxian@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pci_alloc_consistent calls dma_alloc_coherent directly.
In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
dma_alloc_coherent has already zeroed the memory.
So memset after these 2 functions is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/media/pci/ngene/ngene-core.c        | 4 ----
 drivers/media/platform/exynos4-is/fimc-is.c | 1 -
 2 files changed, 5 deletions(-)

diff --git a/drivers/media/pci/ngene/ngene-core.c b/drivers/media/pci/ngene/ngene-core.c
index b75ab7d29226..af15ca1c501b 100644
--- a/drivers/media/pci/ngene/ngene-core.c
+++ b/drivers/media/pci/ngene/ngene-core.c
@@ -854,8 +854,6 @@ static int create_ring_buffer(struct pci_dev *pci_dev,
 	if (!Head)
 		return -ENOMEM;
 
-	memset(Head, 0, MemSize);
-
 	PARingBufferCur = PARingBufferHead;
 	Cur = Head;
 
@@ -907,8 +905,6 @@ static int AllocateRingBuffers(struct pci_dev *pci_dev,
 	if (SCListMem == NULL)
 		return -ENOMEM;
 
-	memset(SCListMem, 0, SCListMemSize);
-
 	pRingBuffer->SCListMem = SCListMem;
 	pRingBuffer->PASCListMem = PASCListMem;
 	pRingBuffer->SCListMemSize = SCListMemSize;
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
