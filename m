Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56243E91F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:22:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JxgXuscmNjUx+3W4Kt8O3fBFelUfO6Yk8d6Cjaqy1UI=; b=MCblW1cVSxVm2DvkZVytNDNpo7
	PRBQ3Xu5fKFtzNc0umr18vUfu4TFE0nDF5NPiKHWstHFuG+XaSwtPTqmt0TGIWkR5cLHuqTgPfZ7x
	xmJ66eFQB7kYt9mxmg74qmNhw/he0QYLsdZIMjCIjRX8FUy3HSPPrFpeypOHr0Cu5NJJTGXu8RqW2
	ZOxlZzfEiD2yq3lh2ne6C5EBxLiY1AcOFRS0eHwinep91xZI2OJuPRabwx+UI6ZWrxXq9mjgqdfSq
	nTCl2JzxtQQRW2JMEEgRARQnQWOPjVDgCv76RYuiGTBsO6+TcCh//8PUAc67reFzHBDHh/vqzAL1/
	X3Rk8vCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYwx-0005CB-Ss; Tue, 29 Oct 2019 21:22:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYuu-0003nv-25
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id v5so8306541ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OvLPSIr20MO1GrkJ0OvwvGngd4/e51+GSaoElj9X+Gc=;
 b=MubpaUS4tHoReayETOIOWs+UpyMNXi3+g7N+ywDFi9zOzhpG5+ZUItxnBn6YjbZqXh
 paBOw3W55VS7rZu51ahUmY0fFJgtBFJYJ3pn22Ptz7nrtHG22uqdhr4XUVK2RZm1oi58
 oDEHrfa53FOnH3TQxpTEFg+lMs4RonQkU3kjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OvLPSIr20MO1GrkJ0OvwvGngd4/e51+GSaoElj9X+Gc=;
 b=F1YE8bkjyTcnJjsRSJNYZ77Y4PejSBgGoaq3r1KIH3+kb9Bn6lXwF2css5tdIcyFDo
 BpuvwDkmK1E5B0ZPyphKXX99hQ7WRvU8I+lIhKW9cfLEIWFnAKTlM+kK0B1BA3LZ6vd7
 VvM3nh1qb/KItIppriEJQdmHy1NREaKnMBEZipdXOSnWEQvbFpukdhzXlhqcH8hXm2BT
 ItHqHY3752ULWiSzfolh2ZGwogpr5RBY9yMqG+Dd4BDRjipk+Ykn5bVLqepTqJNweWga
 duOEw6/t5E2GeeJ81ZDYZsQTt/+psW2a0BISt/aTWCKGC0VzTB0G/wrDch8dw6rscdAZ
 eg/A==
X-Gm-Message-State: APjAAAWaw/O300Aeh+fNBkeN9RVXryc+yv4suMWZ70/7Tgc7kzraAXY8
 swbrujgkvhn+sQQ3fpg5qDaXqp0bbro=
X-Google-Smtp-Source: APXvYqzV95hY+aVbWcx6HzxeaR6KOCXs7TBX7sOZo1MRJwttiLadHkvLLgsv0irLF7laDVGp9UyK9Q==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr759011pls.120.1572384039491; 
 Tue, 29 Oct 2019 14:20:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o20sm58329pfp.16.2019.10.29.14.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:38 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 24/29] powerpc: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:46 -0700
Message-Id: <20191029211351.13243-25-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142040_186826_8132846E 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Segher Boessenkool <segher@kernel.crashing.org>, linuxppc-dev@lists.ozlabs.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Andy Lutomirski <luto@kernel.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 4e7cec088c8b..8834220036a5 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -7,6 +7,7 @@
 
 #define BSS_FIRST_SECTIONS *(.bss.prominit)
 #define EMITS_PT_NOTE
+#define RO_EXCEPTION_TABLE_ALIGN	0
 
 #include <asm/page.h>
 #include <asm-generic/vmlinux.lds.h>
@@ -162,7 +163,6 @@ SECTIONS
 		__stop__btb_flush_fixup = .;
 	}
 #endif
-	EXCEPTION_TABLE(0)
 
 /*
  * Init sections discarded at runtime
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
