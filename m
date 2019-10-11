Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FA0D3584
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5KtzDiIAA94ebvgZWkQWwr2KPMax8EyWWAf658FUN6g=; b=crNQYlpSJxdA7AL6unQq3yjn2i
	mnk4u3Kxbpf8OR1ozjQGfxTxH0hi1YeGnKuVEaqR5wYqAaBQpl9qC07kiyE7c4LZlEILkUE9IGo/W
	/IK+WYZT3noFlH2XA28eWOt2BDp4fx7bNE+NIZdXYNWJs955eSQvSWW8rXLfLaNbH0lWem4sGIGWU
	I2uIWB4B4eLjMs+rGnd8Kz9rYqlUYyS6mnSEvbXz6S67hohdaOm0311Ol9HIiGaMHBk0tGoOVEI2K
	m+aU+91xYzYRBE+OOkVlgJAUTYz+YMTawitFWR3aK7zGezVsPzyH9A+qw7AG8LY/lMRcdbsFWddpi
	8YXtEJtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiYg-0001mo-N6; Fri, 11 Oct 2019 00:13:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYA-0001XX-9t
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:12:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id t3so4693928pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aXC4EKkSKWAzbgJ5UkNW5ASNd77O0uNGfoVDwB8PV7o=;
 b=QKMy1WMIao8eo2h9Q1TmJ+NvwxmYIJS5BiRFvnKXyWnyHt2NVU1sSJRyaYkSK0bnTI
 3g26hGi2M+7oPqpQxxO8mfA0+ckl3W/NOZq89OJYBy8zqpl256YQ/kRKmZl3wcK/Al8o
 WR97u6SnuI6udJBDDM4eXoslNY2BMQS6h8HHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aXC4EKkSKWAzbgJ5UkNW5ASNd77O0uNGfoVDwB8PV7o=;
 b=ZYY7XnTnb2Am7UIbUFEAsf6ogrdrnDUoJ8K52/yESYz6jaKDLK6ooRiu1HNkzPkL0V
 20bPLxrQSYKx49RWN3AEobwzcZY0BfbGf6PxCNMbqlCtGs7TR6JcdoS0HYUaPJ9r/0af
 84RvzaWoMZ2pEyVcN7bAq2Iwlp2+b/G4D0W4Bb4lPhOwBbkL8ZGjGPy0u0dvhTUFHcS0
 iEPvBGl6PJezgCnaMjOTHjUzm/A7JCypTkv0MhdzGJakm6JDvaW7ayzpwnWQGkPAXvjx
 AiA6/FAGvq/tHvL1SwT1uwI2IjNpPSuHlGzCMl0uMEXRjMLAUjm1paOdGDYcY3xynD0h
 yBWg==
X-Gm-Message-State: APjAAAV5V3BL66A1tAgy/VLrSlmm4q823Bwiz+ZUiZK9xHUiywgOHkp6
 uqqRy5uG/qAJGtZAL2GqgFiLig==
X-Google-Smtp-Source: APXvYqwyN8mvkbsH6LAVRfjY92v44FJMaCqPYldcWqY2MvbBlNQ7Douul4dniL7y8RNurjH2A60mLg==
X-Received: by 2002:a17:90a:1617:: with SMTP id
 n23mr14581628pja.75.1570752773811; 
 Thu, 10 Oct 2019 17:12:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w10sm5837436pjq.3.2019.10.10.17.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 25/29] xtensa: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:06:05 -0700
Message-Id: <20191011000609.29728-26-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171254_343181_D01BA67C 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
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
 arch/xtensa/kernel/vmlinux.lds.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/xtensa/kernel/vmlinux.lds.S b/arch/xtensa/kernel/vmlinux.lds.S
index bdbd7c4056c1..0043d5858f14 100644
--- a/arch/xtensa/kernel/vmlinux.lds.S
+++ b/arch/xtensa/kernel/vmlinux.lds.S
@@ -14,6 +14,8 @@
  * Joe Taylor <joe@tensilica.com, joetylr@yahoo.com>
  */
 
+#define RO_EXCEPTION_TABLE_ALIGN	16
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/page.h>
 #include <asm/thread_info.h>
@@ -130,7 +132,6 @@ SECTIONS
 
   .fixup   : { *(.fixup) }
 
-  EXCEPTION_TABLE(16)
   /* Data section */
 
   _sdata = .;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
