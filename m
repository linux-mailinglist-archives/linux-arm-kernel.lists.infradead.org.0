Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B04A16A5B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ytSfNVov/t5+1AfHqEbwENvC3xwSp3UmF+w1TqMIdU=; b=bMsY/6rDi1WBvm
	rii/XqYT0wXsDsOEC69RKw96acCtzGWWJBSpR0pGYoVgo7vKJGRDsbm/cNyNd4s+AySVIxwB0OGCY
	qFul+n+eOv8k4ScW99+Y9vEqmNMQD0/N7MohB2qM4LOaezh06Yewz6Kpae7omUV4zv+AHzTzAPido
	MBbDI4qRPVZpsadLBZQKIttLUdKIGf+GmaIpwULlyorPf92x71Vr3ZGkdmO6q7SvUHUUiUn34JKms
	vfumNQmlDnHeFxYK5qMGpTsPGcU8Cd3Pex6+WmL9oAU7rbdCCTSsIxnH/He4ZyrE9uW0X5oio8/Jd
	pRYYLZklGAaErExD6vIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CUi-0002jk-2J; Mon, 24 Feb 2020 12:05:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CUE-0002a0-3O
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:05:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so10090753wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 04:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+LeHmzlfx+umAweFKxJZyLgVIhI59yzqxwgRoOvY7YU=;
 b=QcS06Jt0AX7e2PSCjcI6PQQBMyLRc2VD60FxrDz8h3EMqDsSuRd2RLDZoSJNg0uB+x
 zUf1zfn1OE5eQjVajP9RazyprH54XrJBCcKWKP8vEaRxvHPv9D8wtU2SVZwUxuElKmuB
 on6Q1/ECXDTJ2sTIClbiKwdj2XQJkEurqdz5M1RjLOyv1/wkhsOuCNychQOnppnIJ4tw
 h3g6GLRaIeiiVUxuG1xkozDGubu2Frr+uaYt6jhwM+WtpGKoa4bujb5jhqAsHYBYnsKJ
 H7T5JV0M8G+u1ODdhO2YGP/r4uyHHSRWxSxm/h0lob/F8hLTfp6HEN6Ju2i4WEuNg10Q
 ObNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=+LeHmzlfx+umAweFKxJZyLgVIhI59yzqxwgRoOvY7YU=;
 b=U4Q2DiPMrW9CxuQ7ILpxt8bJ+uF/Cl83xMZ39WG9CGSIEf0SU4Td6GtSEeWonR6YRC
 PuBCSxOyQt58cXPogHE859NQdjcAECxu7D10uMSqrPbx56k9p9al2T4n6JZrhQ7Y2m1f
 tUMjD81IAPB+4Y1wSfGbSm5B+KZIvF+viY0QA0UQ/eFBI1kfNfhOOhlvMqSYbQZZR0df
 8AEXpSW3cdxzqMaQprCuWpvCZw2oGC0g31+qfMldU70wjZCO731bG9C6u6J3G46mRUp6
 +UzfkALLCkf/5aoFb4gPGoOAK/6Fh5xUyP3ox2xTgwAaBy/zqSnsXlQEa/jRfQ9s5r0b
 D69w==
X-Gm-Message-State: APjAAAWvjEsK0nzLDwXjRg339Z4Z1KbOU9cKkOzeIgU2sU4cuz7kGkGe
 TlZEwFHWYkjuypc3w01w6JzesA==
X-Google-Smtp-Source: APXvYqwUdVXRUTfIuXkyOrnXa8hcj1rmhHlTKci7z6BlJe+5ABh3MjFYWICh8Q4tQN/oLuHwepyRoA==
X-Received: by 2002:a5d:61d1:: with SMTP id q17mr68226377wrv.156.1582545919575; 
 Mon, 24 Feb 2020 04:05:19 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id z21sm17611297wml.5.2020.02.24.04.05.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 04:05:19 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, maz@kernel.org
Subject: [PATCH v2 0/2] irqchip: xilinx: Switch to generic domain handler
Date: Mon, 24 Feb 2020 13:05:12 +0100
Message-Id: <cover.1582545908.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040522_144456_E4DA0601 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Mubin Sayyed <mubinusm@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

this series is based on cascade mode patch sent by Mubin
(https://lkml.org/lkml/2020/2/11/888 - v3 series).

The first patch is just fixing error patch. The second is converting microblaze
do_IRQ() to generic IRQ handler with appropriate changes in xilinx intc driver.

Also removes concurrent_irq global variable which wasn't wired
anywhere but it stores number of concurrent IRQs handled by one call. There
is option to get it back if needed but I haven't seen it in other archs
that's why I have removed it too.

Thanks,
Michal

Changes in v2:
- Merge generic irq multi handler(v1 2/3) and domain irq patch (v1 3/3) from together
- Add likely() suggested by Marc

Michal Simek (2):
  irqchip: xilinx: Fill error code when irq domain registration fails
  irqchip: xilinx: Enable generic irq multi handler

 arch/microblaze/Kconfig           |  2 ++
 arch/microblaze/include/asm/irq.h |  3 ---
 arch/microblaze/kernel/irq.c      | 21 +------------------
 drivers/irqchip/irq-xilinx-intc.c | 35 ++++++++++++++++++-------------
 4 files changed, 24 insertions(+), 37 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
