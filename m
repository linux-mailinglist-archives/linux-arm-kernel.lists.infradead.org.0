Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5FC113814
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XBmSApVGHcx0GEK6G7ujPZXM0B4XdVp9Fdeu/3MFYHI=; b=jJk6rrxQGHHWLL
	nCFIt898oUU4LtezlKKAhi3ZeXJJ7qZGZJW7M0twwrjstCREfzCqh1MvIrMBI5Q17GxPnWdwAOFGO
	RMZYvY7jca8U3LlIwYR3/S3mRy/glZJ+qyF1V86LqGkXR+brZJc+BMfeoFNZZLwdXxD+aQZWrdo2L
	7jpBXiMyp/vKJ3Q30kYty8x1rpIVUAD6foY9BO43YvfbPt7ILqRZNuXobcEbiacB0RxmlsDnlBLVC
	JbIO/nsqHWGYyiHW5Ey6GbutO3WxfEv6PFBH7IfGmoIiOzqzq5UnUOt+/rVSvPC1DKuBoKpcDgLFm
	qW/v8ZtJNeOF4R6iyQng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icdxT-0005I8-IT; Wed, 04 Dec 2019 23:21:23 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icdx9-00057l-O2
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:21:05 +0000
Received: by mail-qv1-xf43.google.com with SMTP id b18so583058qvy.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 15:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GKIfn1X+i6X56lqVXfyDzwPMZCzheNRzcKTaF4L1NP0=;
 b=XFyzL5rTBwrAztY5nL0Ms1sPvQucTdFNTX8M14EOWrh36IgXf4zoI522rtxEKRoa52
 iLqCy/91jRbUTDBGb3bllaMoyeqCln4xl1FZqj+b3eCzWUr5TgFGFbAmfZ/qpae4CijU
 35EW4FQh7ww/prBUP0rcMSvO++mJcfO+k+fB3+BP0A1lGoquComcKT6UDiDreQjckSUg
 k2hjQvUPo2N86qG8pbxlMAC6Kn6AAxDYJsEGt+O6B9zeTaxWSo/9qm7e42sxKv/Xabey
 MFKaBloUYjQUJ5KZCxkfZDaZn+HAuOoWlPpNu3Gh25wuUFzC7MSzHyNs/Xar9ayJQjzK
 BvGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GKIfn1X+i6X56lqVXfyDzwPMZCzheNRzcKTaF4L1NP0=;
 b=SL7ZutaSaRO7AEzjNq2b4S5oFu0vpvkXAyDGaDGky73QrlqEyx8Ook4kFgXTvKRTyR
 wBSAMqQJEpS1tNvX7CZ4g0hq3YLUL9g/gtfz/o7TG3FkM5w7RxbVriYh7NZIT/D6TbOW
 gNVVZoh/H+Mbg+W6mCQwJ8SO7FRzMYHoUZbAMsCqrHAh+ub0xRmYJJj0zHSK/96kkm9Y
 YVJbyLha8miSsHSx3iVUs7IHeCp942stt70m2AxmtACeQm3m5og64JKHNpab2oxWMRAL
 PCi7/HuVxxcD2FCD/dm1vZAinaM7JLIyEUn66p24Rgx0bRsTX53kIV0mHB5VbQpIqpxT
 koaA==
X-Gm-Message-State: APjAAAVvM6XgNI0zt5nUIRLM0m2jH0/m5BC+YMN3ZPIlwFSgv668kKuF
 jhQWOdrM9qg3wjBefoCKbLVmvQ==
X-Google-Smtp-Source: APXvYqwN8rVvbdjEWOZ3Dsr7ynba65KMLwXI/KiByr8BhvRWV22aS+4kNOZAN22diwAm+JbXcarUcQ==
X-Received: by 2002:ad4:4949:: with SMTP id o9mr4823945qvy.189.1575501661393; 
 Wed, 04 Dec 2019 15:21:01 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id t38sm4667864qta.78.2019.12.04.15.20.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 15:21:00 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, sstabellini@kernel.org,
 boris.ostrovsky@oracle.com, jgross@suse.com, stefan@agner.ch,
 yamada.masahiro@socionext.com, xen-devel@lists.xenproject.org,
 linux@armlinux.org.uk, andrew.cooper3@citrix.com, julien@xen.org
Subject: [PATCH v4 0/6] Use C inlines for uaccess
Date: Wed,  4 Dec 2019 18:20:52 -0500
Message-Id: <20191204232058.2500117-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152104_195203_D8EA8431 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changelog:

v4:
	- Split the first patch into two as Julien Grall 
	- Also as Mark Rutland suggested removed alternatives
	  from __asm_flush_cache_user_range.
v3:
	- Added Acked-by from Stefano Stabellini
	- Addressed comments from Mark Rutland
v2:
	- Addressed Russell King's concern by not adding
	  uaccess_* to ARM.
	- Removed the accidental change to xtensa

Convert the remaining uaccess_* calls from ASM macros to C inlines.

These patches apply against linux-next. I boot tested ARM64, and
compile tested ARM change

Previous discussions:
v3: https://lore.kernel.org/lkml/20191127184453.229321-1-pasha.tatashin@soleen.com
v2: https://lore.kernel.org/lkml/20191122022406.590141-1-pasha.tatashin@soleen.com
v1: https://lore.kernel.org/lkml/20191121184805.414758-1-pasha.tatashin@soleen.com

Pavel Tatashin (6):
  arm/arm64/xen: hypercall.h add includes guards
  arm/arm64/xen: use C inlines for privcmd_call
  arm64: remove uaccess_ttbr0 asm macros from cache functions
  arm64: remove __asm_flush_icache_range
  arm64: move ARM64_HAS_CACHE_DIC/_IDC from asm to C
  arm64: remove the rest of asm-uaccess.h

 arch/arm/include/asm/assembler.h       |  2 +-
 arch/arm/include/asm/xen/hypercall.h   | 10 ++++
 arch/arm/xen/enlighten.c               |  2 +-
 arch/arm/xen/hypercall.S               |  4 +-
 arch/arm64/include/asm/asm-uaccess.h   | 61 -----------------------
 arch/arm64/include/asm/cacheflush.h    | 51 +++++++++++++++++--
 arch/arm64/include/asm/xen/hypercall.h | 28 +++++++++++
 arch/arm64/kernel/entry.S              | 27 +++++++++-
 arch/arm64/lib/clear_user.S            |  2 +-
 arch/arm64/lib/copy_from_user.S        |  2 +-
 arch/arm64/lib/copy_in_user.S          |  2 +-
 arch/arm64/lib/copy_to_user.S          |  2 +-
 arch/arm64/mm/cache.S                  | 68 +++++---------------------
 arch/arm64/mm/flush.c                  |  3 +-
 arch/arm64/xen/hypercall.S             | 19 +------
 include/xen/arm/hypercall.h            | 12 ++---
 16 files changed, 143 insertions(+), 152 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
