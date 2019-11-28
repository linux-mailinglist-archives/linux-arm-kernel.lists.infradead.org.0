Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742510CB53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uenfZS3z34DH2VaYIDFsjzKx0lsmeZ9K7u4Z0/aohOA=; b=fQVOz1LYYzXapW
	BAGvqayrSLtlCO1jxhgvrvS2JBEizmnUS2CCqhgDk/WjuHZW9lysP78zvZzZl+py5yNqGtHxXjkU7
	yrFWFU9mds/cOezKJQJ4Es5WGPp8ggbT0CTc0MWyHsH7QRAM5HlNs1RF5kQ4yatecxvMJE55C1WtP
	ms1QI/bXsazaXGunX3dPfs4eyW4KVm00R1AI83t96B9iWvaL515CMURqg4pJ+2S57tUw8LtXwhReJ
	RkZ8tsRt84B4lkjzoTHxVzwFBqE7aXTQuOLpqrPUPkhhbmWxn9UWu5mMY6ugk2s4qGm2DntiUkwdn
	OgWtLx4Etm2JScOcPICA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLOb-0001w1-EJ; Thu, 28 Nov 2019 15:07:53 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLFB-0001A6-A8
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:58:15 +0000
Received: by mail-lj1-f193.google.com with SMTP id n21so28799787ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z0ILJLPvMSycr+N5z1WBGPbbOOzMeVGs3+El1NFG5gM=;
 b=MsBrXnDd/G1Zjj210ATgY6vuErblELNtwtEokGCaoA1MxxkLkU5DMXWZ/DqI4rkd5Z
 gETgTkCKjtmJ/BL1I8x41SvinDsW0tjkR9cfyiTi9zOlB2m8FMv18BEU617l2rIZlRYm
 JgqrkOdeLh5F0tEM8F/+7LQYmLCxUlP6KBeO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z0ILJLPvMSycr+N5z1WBGPbbOOzMeVGs3+El1NFG5gM=;
 b=mR5KnDZLK4q+ls6sHNQkbgU+sD3dxHgSFOh2JSnwZYaamJWkWfcXDCw7CXR3JyjBiw
 Fr2BXug6Nguf5xwQPLvCD5RTuc+E7Th7ZK2VlVG9wD9qPxBnRNhSPWZlutczvyLHXzZg
 73rDlbq+tt4lSGkiKbti7x/+ADe3ziFFLXaa9rchZ4//fLSdm3RjNJl3ka/iBOI1C6Wp
 Z8OH41mG9FdpLpdvVWKsaxrGcjRda9zlprjx/KOOpEOjVg5EV4ZG1YpuKD1LaLCU4fXG
 hMBzQo/KkrLd1R+n5sGuAvGwT3zYnsHfo/xwtdRFRkWDHvqtWXVaBdYDFJh4Cs7SlFIW
 GWqg==
X-Gm-Message-State: APjAAAUfkk4cMkG/aaYa6AuQYtU+PPYC9H8b8KKVK56hF56UbkadducH
 SHPwki2QzvWjo71y6zvQNy9jvw==
X-Google-Smtp-Source: APXvYqzc2fQxY6lskiW/Z09onmsQDrBOExaD6v9SX5/irAT7oq304NVrn38+PRfo+mxcFltlRIIozA==
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr35084645ljk.78.1574953086759; 
 Thu, 28 Nov 2019 06:58:06 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.58.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:58:06 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 48/49] soc: fsl: qe: remove unused #include of asm/irq.h
 from ucc.c
Date: Thu, 28 Nov 2019 15:55:53 +0100
Message-Id: <20191128145554.1297-49-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065809_444796_3DFF3DB6 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild test robot <lkp@intel.com>, Timur Tabi <timur@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When allowing this driver to be built for ARM, the build fails (for
CONFIG_SMP=y) since ARM's asm/irq.h header is not self-contained:

  In file included from drivers/soc/fsl/qe/ucc.c:18:0:
>> arch/arm/include/asm/irq.h:34:50: error: unknown type name 'cpumask_t'
    extern void arch_trigger_cpumask_backtrace(const cpumask_t *mask,

But nothing in this file actually uses anything from asm/irq.h -
removing this #include generates identical object code, both on PPC32
and on ARM (the latter with a patch added to asm/irq.h to make the
build work in the first place).

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/soc/fsl/qe/ucc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/soc/fsl/qe/ucc.c b/drivers/soc/fsl/qe/ucc.c
index da3d7e2dd837..90157acc5ba6 100644
--- a/drivers/soc/fsl/qe/ucc.c
+++ b/drivers/soc/fsl/qe/ucc.c
@@ -15,7 +15,6 @@
 #include <linux/spinlock.h>
 #include <linux/export.h>
 
-#include <asm/irq.h>
 #include <asm/io.h>
 #include <soc/fsl/qe/immap_qe.h>
 #include <soc/fsl/qe/qe.h>
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
