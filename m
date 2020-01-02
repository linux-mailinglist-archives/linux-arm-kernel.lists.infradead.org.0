Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686B512EB14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 22:14:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Upu06zIBIh/XBV/qpm2TeWyf5H/0WjbyvOYwvaz/3vo=; b=CB1obC/hEaa19V
	m5TwwiT0Obxi9RuyeqZkLZvcG68cECsubByRezbL4CJs9PU6KjBTazJIZzTjizS7sMYISVAneTgFt
	zM+0BDr8HPJwtOI9M39RP2yyf3+bIeaOgx/rM28dPagl0suoL3wx+xh2p7y7aHh1svqIaMxYp6fhI
	5JYSapi2xU5CICo/d6Cia9uVlikLSzk8gzXa0xJEap0TnDv60q9zQTkSL1n/M1hivv6t2OnpYS8x7
	dbXPKAPsAT55tmW7yYsXX5BQbqWbywZXF55wv24EmuOG5yNbQ69tKI90u8EC4Eg5UwHEtMVrbtWbB
	j57YFqCSRfOaYGBx0/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in7nJ-0004Ai-SD; Thu, 02 Jan 2020 21:14:13 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in7nA-00049o-6i
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 21:14:05 +0000
Received: by mail-qk1-x741.google.com with SMTP id c17so32355719qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 13:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id;
 bh=MLMP74Qul+kzC8cejQXgeuw3tNFBJiGyUZucJtJ/QlY=;
 b=imrt7o+Nqx58g1O6V2mkVBF0X3mpKD7xziHHz/l8CuGj82H8zbk9o0pJKvxc8wOmXV
 VJelDvV9Sarj7pQNjxsZvXh6YCVIipLEW2vgXE2sUrAenPUIFhV6h1UMd1w2fhJlrYVy
 9Zc9EtQAARm5MWqdbkMAd9Yc2rB/6ZIUq7cwRT74dGCjbCQhVNB4m4/XOBLFQ4SzVJVt
 xdNLPyTOC5jnXobeUSmc/vhUaK5AdcHt1UHQ8I4D0Cu/XGM1TPDf4y8swfAtoywA34oy
 JsTcvvAPH6Ixw+FmxMvlmP2LLQubnM7MI4xX4QBxOKvu0SnayI4ATkyYnd1nQ/44jWYF
 XZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=MLMP74Qul+kzC8cejQXgeuw3tNFBJiGyUZucJtJ/QlY=;
 b=aBg0FRAck7aTg/yln9ar+CnRvsJQugZ4v02t3EgZ6lyDGMQf378UHyeurGdLwDmHub
 Layyrb/Yl8KoSPNIetvb2q5DcHQNJ4WYKhUGltwX5Y8pFxPjZvnhI6D63oN6sVm69OXM
 4tFw4PClaSCMgZScmDeGF498BWgq1Ikcrft1T2y1LJjcjkfjoOin8lqyN2wTECZO/3qO
 cQXt77BSX64FT/wlDvao9FhcGfEymHnSyLD/t9Y60kFe+VmBgRoAVpcTW2/ONm8y5Xl4
 fKpjIzJ3w+7AnHXnCwfLbku71Km53oCUzICuf53EHD+BtJ4HzbRbW20OfJYD7fFaCoxS
 jDTw==
X-Gm-Message-State: APjAAAVJM41Ob1x1y+Mb7jfDm1CR7gleJJiJ+Vjqctpx8TOsvCjAIzUH
 5ZhuQ0lJ68oVlW6ULjhS16ve6A==
X-Google-Smtp-Source: APXvYqxe1FkmrFoyzjV9jkb3V7sY9OvDubbb64WjyE82gpvQTibRMR/HebgLizW6nByQc9Tc7zrXdA==
X-Received: by 2002:a37:e308:: with SMTP id y8mr68320580qki.347.1577999640406; 
 Thu, 02 Jan 2020 13:14:00 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f97sm17384185qtb.18.2020.01.02.13.13.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 13:13:59 -0800 (PST)
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
Subject: [PATCH v5 0/6] Use C inlines for uaccess
Date: Thu,  2 Jan 2020 16:13:51 -0500
Message-Id: <20200102211357.8042-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_131404_394462_2C8553D0 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changelog:
v5:
	- Fixed build issue reported by kbuild
	- Removed a comment fix from the first patch
	- Added reviewed-by's from Julien Grall
	- Now, these patches apply against mainline
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

These patches apply against maineline. I boot tested ARM64, and
compile tested ARM change

Previous discussions:
v4: https://lore.kernel.org/lkml/20191204232058.2500117-1-pasha.tatashin@soleen.com
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

 arch/arm/include/asm/xen/hypercall.h   | 10 ++++
 arch/arm/xen/enlighten.c               |  2 +-
 arch/arm/xen/hypercall.S               |  4 +-
 arch/arm64/include/asm/asm-uaccess.h   | 61 -----------------------
 arch/arm64/include/asm/cacheflush.h    | 55 +++++++++++++++++++--
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
 15 files changed, 146 insertions(+), 151 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
