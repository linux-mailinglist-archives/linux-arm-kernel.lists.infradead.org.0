Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132B1099A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 08:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkebCsscLtZapXmA4zacDXJUlBs8Ymx7+Z9XS7x+9z0=; b=VsrPBukd8Rltqq
	hy6vJUrrdXqqtv2+G8PpRfuF4GRvKp5SYKUh7JTOpFDk4TGgeE12CQl1JKTg5kskPDi+Wgkh7dPJf
	6SH9aqri3FfPI/uJVpazk4XZ9jfhKto1I712l3/q5nn2/VY3k/SXUdsFTka23PNJQe90fEw0PvgOD
	qGjZTy2fMkrQCW0GlZlL4OLWBQPSDTxzXTSyQ00NudFAL3fgdv559urLn99wjtKJQazOc/IzivBtU
	3/5iwUv6k+dmKQKNTuGyD6Ubf3hBJa0TYa1U7kDpQUpLzSihoZWsGs8uJ/wZEMmxSJvxYhv9wtyqz
	9Q/qHveoIvLbu9XivFjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZVTu-0006RW-5A; Tue, 26 Nov 2019 07:41:54 +0000
Received: from mail.prodrive-technologies.com ([212.61.153.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZVTi-0006Qq-LM
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 07:41:44 +0000
Received: from mail.prodrive-technologies.com (localhost.localdomain
 [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id 06A3C32FE2_DDCD732B;
 Tue, 26 Nov 2019 07:41:38 +0000 (GMT)
Received: from mail.prodrive-technologies.com (mdb-dag.prodrive.nl
 [10.1.1.212])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.prodrive-technologies.com",
 Issuer "Prodrive Technologies B.V. OV SSL Issuing CA" (verified OK))
 by mail.prodrive-technologies.com (Sophos Email Appliance) with ESMTPS id
 A51DD30B70_DDCD731F; Tue, 26 Nov 2019 07:41:37 +0000 (GMT)
Received: from lnxclnt2222.Prodrive.nl (10.13.62.32) by EXC03.bk.prodrive.nl
 (10.1.1.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1779.2; Tue, 26
 Nov 2019 08:41:37 +0100
From: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>
To: Brendan Higgins <brendanhiggins@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Joel Stanley <joel@jms.id.au>, Thomas Gleixner
 <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, Marc Zyngier
 <maz@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 <linux-i2c@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>
Subject: [PATCH v2] irqchip/aspeed-i2c-ic: Fix irq domain name memory leak
Date: Tue, 26 Nov 2019 08:40:25 +0100
Message-ID: <20191126074025.5112-1-roy.van.doormaal@prodrive-technologies.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191125202937.23133-1-roy.van.doormaal@prodrive-technologies.com>
References: <20191125202937.23133-1-roy.van.doormaal@prodrive-technologies.com>
MIME-Version: 1.0
X-ClientProxiedBy: EXC03.bk.prodrive.nl (10.1.1.212) To EXC03.bk.prodrive.nl
 (10.1.1.212)
X-SASI-RCODE: 200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_234142_844800_3FE528E6 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.61.153.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The aspeed irqchip driver overwrites the default irq domain name,
but doesn't free the existing domain name.
This patch frees the irq domain name before overwriting it.

kmemleak trace:

unreferenced object 0xb8004c40 (size 64):
comm "swapper", pid 0, jiffies 4294937303 (age 747.660s)
hex dump (first 32 bytes):
3a 61 68 62 3a 61 70 62 3a 62 75 73 40 31 65 37 :ahb:apb:bus@1e7
38 61 30 30 30 3a 69 6e 74 65 72 72 75 70 74 2d 8a000:interrupt-
backtrace:
[<086b59b8>] kmemleak_alloc+0xa8/0xc0
[<b5a3490c>] __kmalloc_track_caller+0x118/0x1a0
[<f59c7ced>] kvasprintf+0x5c/0xc0
[<49275eec>] kasprintf+0x30/0x50
[<5713064b>] __irq_domain_add+0x184/0x25c
[<53c594d0>] aspeed_i2c_ic_of_init+0x9c/0x128
[<d8d7017e>] of_irq_init+0x1ec/0x314
[<f8405bf1>] irqchip_init+0x1c/0x24
[<7ef974b3>] init_IRQ+0x30/0x90
[<87a1438f>] start_kernel+0x28c/0x458
[< (null)>] (null)
[<f0763fdf>] 0xffffffff

Signed-off-by: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>
---
Changes in v2:
- drop irq domain name assignment by the aspeed irqchip driver
---
 drivers/irqchip/irq-aspeed-i2c-ic.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-aspeed-i2c-ic.c b/drivers/irqchip/irq-aspeed-i2c-ic.c
index 8d591c179f81..0bd46f63a3c3 100644
--- a/drivers/irqchip/irq-aspeed-i2c-ic.c
+++ b/drivers/irqchip/irq-aspeed-i2c-ic.c
@@ -92,8 +92,6 @@ static int __init aspeed_i2c_ic_of_init(struct device_node *node,
 		goto err_iounmap;
 	}
 
-	i2c_ic->irq_domain->name = "aspeed-i2c-domain";
-
 	irq_set_chained_handler_and_data(i2c_ic->parent_irq,
 					 aspeed_i2c_ic_irq_handler, i2c_ic);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
