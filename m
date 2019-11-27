Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC5510B5F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:45:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fqrZV/ZRDt7IniUVc8dm1y6GbR9dYLxfuvForCJ3jos=; b=bse/Lid7bC0oOd
	nkokCmcBW/uDzTS/bzgdpmofnjLA5SQNcN2Xf09eYW/OV4fdFix5oxs5uaEtRZdtVp6otxR4QVdXf
	CVQrd9f7iJFGewdWyZD8hoUZbD6fHi+o9j7L3e4K7yIWPjfScOqlQfmIwFSLkxWU2UVZMC4rf4TaX
	Uao4ZuZv3bBuTUpbbHKrAoBxdxYWPgYBP1cF37EKL3YVBZ01cYDtUqW++DCUzbnBgrNjsPYEXRjCY
	QXO/5aHgi3XAO5ivW/oCOC/b3BudjIzyQuCOVgD8LmSQWi7s6yO8hqJGxamIR+FnauKq0hxVw5wOJ
	l0TsdUyfxTTPyrC8J0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2JU-0000ll-Rs; Wed, 27 Nov 2019 18:45:20 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2J8-0000k5-Nb
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:45:00 +0000
Received: by mail-qk1-x743.google.com with SMTP id d124so5260192qke.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F/n86b6Kh7/7bx65ohsSuhkfsrRS1fX/ghGHBMXhZiA=;
 b=iY3WGmb47fenakYk1z1uQ4/43MV+16v1SYdlJk6JAl3euekC4kAR8C4/ECW6Rz4kVJ
 cLsUVHWp7fiU24FpQ96I3EO48/XAQq9zOHMo6Z88+oUoYA2qxHZj0u0HXL9lEU30dY8Y
 ep/6IBJL7UCp1cC77ME+6B+78g9QNgLonOnUPH9yYuQX/6yAiB2YXbytWuONSaskHBTl
 LO+aA8Fj3N/cz2+KGHOx7EUjM4pzrKWWB8RcJjxbmMvaWHLPjAHHqiyL6s8xsKcjinzu
 dxrpdBh9lEOmwBD1CeekX+TeZn/pMfMPeKE4YXl9vgLYYwvwh9btiumNMmwMJzXJJu62
 L9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F/n86b6Kh7/7bx65ohsSuhkfsrRS1fX/ghGHBMXhZiA=;
 b=TKtPRwLh1es7FOBzMrLxr39a78MSelRq4NdN2PC8hBSFVBR9+sO7bmX5hyQwyNyMn4
 91x9OyKoAXpIEVNxsgco77rU7HR1IKBj5Lh5ifL/a54qt/jWKQmsImfueeQU5WVkPAF2
 BsxvV7tBU/6aff5ue0TkjkPewc3RCEwAZHC8X5PDWUdajeVWiC2QLiH0q6KPK2FiMIGy
 fDionfXvpsEphQd8q2zgUoZBeTI7GSxkQCdE/T2FnGYWK1oUohIOlJuq2BekTiXkq0hD
 2qJ73nC1kVQwl4B2EHZZeSvk3JMuo4OsM3ha7hAy6ojeKdojCYGiRivDa+xEBNyHWPgE
 0WnA==
X-Gm-Message-State: APjAAAVjCgAq+4kp7OYLMmq+kHpKs4bAbIZGLO2jkOh3/BthcjWSdXfh
 WenNXz20pymNhpwfIG3Z0njj7A==
X-Google-Smtp-Source: APXvYqytTMLn9EqxEu+OgYBIR0W3UcV5QcnBL8/xWD7wWi7CQazQ0liRoDUunsojwesXXqeQBJ7PVQ==
X-Received: by 2002:a37:bd06:: with SMTP id n6mr5990382qkf.286.1574880295965; 
 Wed, 27 Nov 2019 10:44:55 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o62sm2748024qte.76.2019.11.27.10.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 10:44:55 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 mark.rutland@arm.com, tglx@linutronix.de, gregkh@linuxfoundation.org,
 allison@lohutok.net, info@metux.net, alexios.zavras@intel.com,
 sstabellini@kernel.org, boris.ostrovsky@oracle.com, jgross@suse.com,
 stefan@agner.ch, yamada.masahiro@socionext.com,
 xen-devel@lists.xenproject.org, linux@armlinux.org.uk
Subject: [PATCH 0/3] Use C inlines for uaccess
Date: Wed, 27 Nov 2019 13:44:50 -0500
Message-Id: <20191127184453.229321-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104458_912722_10B43259 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changelog
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
Pavel Tatashin (3):
  arm/arm64/xen: use C inlines for privcmd_call
  arm64: remove uaccess_ttbr0 asm macros from cache functions
  arm64: remove the rest of asm-uaccess.h

 arch/arm/include/asm/assembler.h       |  2 +-
 arch/arm/include/asm/xen/hypercall.h   | 10 +++++
 arch/arm/xen/enlighten.c               |  2 +-
 arch/arm/xen/hypercall.S               |  4 +-
 arch/arm64/include/asm/asm-uaccess.h   | 61 --------------------------
 arch/arm64/include/asm/cacheflush.h    | 39 ++++++++++++++--
 arch/arm64/include/asm/xen/hypercall.h | 28 ++++++++++++
 arch/arm64/kernel/entry.S              | 27 +++++++++++-
 arch/arm64/lib/clear_user.S            |  2 +-
 arch/arm64/lib/copy_from_user.S        |  2 +-
 arch/arm64/lib/copy_in_user.S          |  2 +-
 arch/arm64/lib/copy_to_user.S          |  2 +-
 arch/arm64/mm/cache.S                  | 42 ++++++------------
 arch/arm64/mm/flush.c                  |  2 +-
 arch/arm64/xen/hypercall.S             | 19 +-------
 include/xen/arm/hypercall.h            | 12 ++---
 16 files changed, 130 insertions(+), 126 deletions(-)
 delete mode 100644 arch/arm64/include/asm/asm-uaccess.h

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
