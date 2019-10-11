Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C002D354C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wI6DcODXcog0rHPfEA/Eo0qNwMDFBV5X2a58BUYMqcY=; b=FA03rC0OBw80zI0uLBE5hUWPfh
	QGI1vQSnKtlf5ABWMjngaArnhSb7VHEBUmIb88aMYz8hWkqJ9BevPgppNzE8lpA0PCk3SlxX7rgOI
	eiR4EDf5eXUpLTpR1doaJwdrgs6AVoc6ybP8mccWHHJcTdvDpXPh7n4hiTbhcb1Zl6qM885iV4Xnm
	XhVJAUEvEh33rGH9833e2EOY7tdXza+YJGlCCixnmodFL0HJTGoZVE00+/tY6g19KSy9xGFXSuRDa
	LRp0CqeT7QxSttoFF+NP2ck/+yIQuzUaSg3Aqe6VyB0yQqMCP3OCZV98OkSlJL1j04HFqugWGFS4y
	wG43Yrpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiWJ-0000GT-Dm; Fri, 11 Oct 2019 00:10:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiS3-0003iK-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id i76so4704838pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aFfN5juCtHu18am/Lscu0/nkwdENrYqqL+l/G+SE/2I=;
 b=fLT/IFk/zcWpEKQQpsCuZreeSESJFRNdZ9hKHV0Y/h8n0IfaNLHOqmTYtdPHeZxkjc
 xWb/DQdE2uR1oDMr4EtvYElJra/mVKFp1aLbbQ6bJ3wnEDggQhIotPy3fghpdD1vLtdp
 EDoZ6HuknzX/OdZ89Gdo2kWzGjDi4EqKGpRbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aFfN5juCtHu18am/Lscu0/nkwdENrYqqL+l/G+SE/2I=;
 b=Bgo3/lNAFa9G4pDeXMqET35Tm5q6iGpaKu+5DvIyDsKULg4ezEt2Bmt4mWz55IVzyI
 NTnA9L6Ru/ZByvpXjVFdLj1dMrnjjbSry4BUD4+xJzdVOW4HNAlHiZCyU+I8jADWhy3Y
 JHqDRHdoJaAbqlMPxz2SfSaChYGRS1afOWbQqWI/Z7QYNqB9BuePoq7ag+jTAkvdOiM4
 p8A9FUJz98VS6WRuWnf3hU9XtmZJBxEKLVMRjsoGY047lGdyLwGA3OzHp7lt7PdjtSRk
 Aea+x3JEZ/wAFOiywPcei9xMiSxq987CAZLMqcA7FdmAUHmQSkgIVsle3uPTGNl443zG
 N9SA==
X-Gm-Message-State: APjAAAWmFvZdCJ/Mcyxega0oUZoxS5/sLm2AoFuegqRWyblGoCtAZjwE
 2Mf/iEDT/m5XBMF830CmmcBLew==
X-Google-Smtp-Source: APXvYqxt91xs+DlKHANMAIgcph9JiYJXmwrfwOJOztv5tZwNFPibvGy6e5lUsAYLGSGL3bBhVSlFEA==
X-Received: by 2002:a63:906:: with SMTP id 6mr13901748pgj.324.1570752394983;
 Thu, 10 Oct 2019 17:06:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f14sm10473924pfq.187.2019.10.10.17.06.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 16/29] x86: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:05:56 -0700
Message-Id: <20191011000609.29728-17-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170635_966198_92E3733E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

The exception table was needlessly marked executable. In preparation
for execute-only memory, move the table into the RO_DATA segment via
the new macro that can be used by any architectures that want to make
a similar consolidation.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index a1a758e25b2b..b06d6e1188de 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -22,6 +22,7 @@
 #endif
 
 #define EMITS_PT_NOTE
+#define RO_EXCEPTION_TABLE_ALIGN	16
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/asm-offsets.h>
@@ -145,8 +146,6 @@ SECTIONS
 #endif
 	} :text = 0x9090
 
-	EXCEPTION_TABLE(16)
-
 	/* End of text section, which should occupy whole number of pages */
 	_etext = .;
 	. = ALIGN(PAGE_SIZE);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
