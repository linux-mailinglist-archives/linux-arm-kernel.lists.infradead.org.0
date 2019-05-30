Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798CA30526
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4rOTDgto4cVslT9K778VICarogacCFw4nSeDO7GOKK0=; b=TCREiyLrgcmHJojFcmp2nPtBEP
	GT7QTxBtRs/7BASKuWWDnQIBgT17gls0iMN9kgy775kz4i9wTSlAmBaeIB3OGgS36KJ9HzCM2X7yV
	KA2RAs4MWlABuQQ7TyW+7pyphSS7Lc/rAma0872x3h865/RpzrH6bh1xp9T8o9s7lAm5yYEDVgLqB
	CBiYv9t3E83Qrx/Ao2/ZZ0QY2FXnVQQAjfvv/oiokAZuwL7K3ELOzojY8xaLvRtbx4OV/cGYsfat1
	GUT2xX2H/TIzhOirgnK6TPSXLTU0XBP4FXjXH3OSM9qthrcrFc7Hokw758afZt4Uo9hLKtkm61G52
	G/OZw51g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU7N-0002fa-2k; Thu, 30 May 2019 23:05:53 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU74-0002SI-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:05:36 +0000
Received: by mail-ed1-x542.google.com with SMTP id p26so11535148edr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b+zhfp2mLlsmTcyYwU+vQigbmWTMuWSVH8iE+gThN3E=;
 b=uzoRuZewUCcPDQJlDJLxMrkdcO9Aba52CApN7ezu5FEu8il6Ypl5p1sa+8eVm6LtMj
 Yu10POMOgrkAqrPmT7QUAyRvhiXAwO8bLzwm1tZOudc/C0JQPrMcRZRtGig/drUVHbAX
 MkNE+3gBJKFBZOjcbjpzNZGG58qqaaCQrSuHsf3eApTeCS1aXKp06ve/ipfqmHwABj+F
 dDwB3kOlKVjVZP0aSkuVIt9u5zRk8AQ5r2aA+towfq8gOG6GUd1tv7U8WKtlt+UdesCT
 DvyLKMPVYNGiarm6R5lAu6g1jhugKPEnIcDW5/eenf5fqM9RkjrQOMvax7W3fH+QQ1DV
 4gmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b+zhfp2mLlsmTcyYwU+vQigbmWTMuWSVH8iE+gThN3E=;
 b=jjZJKmyT+d6a9RwamKKpsyQr/2fGEzWedE4NX6KuivjvZa+XkhvErZbn0vEk2am6Z9
 OuYvgC3ONIzuB7gj7lnL4t1ew5BSXGKIJiQKf6K1ZppRKoh1GPM9MWJSvtVSy06354gH
 J/7rHmuJ79Rn2m7W6ywPavGHEiMQIiKu9tYnobxVzmVjtfMWPAMezg/gTfN0wxmzOAH4
 z+l9dEUFK5LOFk/GWxtzPC6erKsVqRuYd+VBEpIkYyGM14D9EKzMGmVj8kkU4zds4acZ
 Wz+mcBewS3Lcgd788nUm2MqgAYuch62sqsSO90WGbzM7CHwko08LC0pLGDhU36DNxrDH
 7u5A==
X-Gm-Message-State: APjAAAVPyY100MvBaYQfvHA4k9WpHsovGUEJB6TJD4N/U2aIgHXwJvwZ
 nLSsyXPwj0syyi94P2XCkuCHzxTT
X-Google-Smtp-Source: APXvYqx0pj62s9zGLECnIgWhuj1iuXUDyZz2isnGsi4nXi1cuZnAhLZFR8m2Rmluxszy7LTgZwC63g==
X-Received: by 2002:aa7:c919:: with SMTP id b25mr7717655edt.274.1559257532618; 
 Thu, 30 May 2019 16:05:32 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id d22sm640338ejm.83.2019.05.30.16.05.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 16:05:31 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: smp: Include smp_plat.h from smp.h
Date: Thu, 30 May 2019 16:05:17 -0700
Message-Id: <20190530230518.4334-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190530230518.4334-1-f.fainelli@gmail.com>
References: <20190530230518.4334-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160534_498671_A46C298D 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most architectures provide the cpu_logical_map[] definition as part of
asm/smp.h, which is included by linux/smp.h. For irqchip drivers that
work across a variety of platforms (MIPS, ARM, ARM64, etc.), and making
use of cpu_logical_map[] this avoids making any architecture specific
include in those drivers.

smp_plat.h uses -EINVAL, so make sure that header file include
linux/errmo.h.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/include/asm/smp.h      | 1 +
 arch/arm64/include/asm/smp_plat.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 18553f399e08..259135d07a75 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -37,6 +37,7 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/percpu.h>
+#include <asm/smp_plat.h>
 
 #include <linux/threads.h>
 #include <linux/cpumask.h>
diff --git a/arch/arm64/include/asm/smp_plat.h b/arch/arm64/include/asm/smp_plat.h
index af58dcdefb21..eab572cff56c 100644
--- a/arch/arm64/include/asm/smp_plat.h
+++ b/arch/arm64/include/asm/smp_plat.h
@@ -20,6 +20,7 @@
 #define __ASM_SMP_PLAT_H
 
 #include <linux/cpumask.h>
+#include <linux/errno.h>
 
 #include <asm/types.h>
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
