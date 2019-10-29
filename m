Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE53E91A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8DeqocfraIIkVa8+gsevviVEbY/VpH0359DpUjn/v8=; b=Wbgx6dKkWnxLAW6OUylqYj7tsG
	WYu+owx93R1dYour+8XnMlcbCzhUVxFD63p+IQs0VBFUE0aDqcYG/VSzoxcVga3MCOdW2QCm9IuPN
	EQp/yAndV4j1YdFQu1VfsGe/hwox6ZfdCY1pa/Xd43KlLAwb/oaa1lFrdhc9/GFY1E4YwjsWoNKPh
	DIKO75bmmZ74kXbe3YX2oI4yN89ricaYYSy0RroNi4ChNYq3Ck0hdZ0KP1DB4vyQ6jcNmdSMskRao
	uXn45b2cKi0NvD8xNFe9q74gHyoa8PlDlDliEJPjeJF2XVYJYDXOHFU12gN+hS+pSm5Ln5nUbJRQQ
	W5DJzFTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYsQ-0000Bk-CM; Tue, 29 Oct 2019 21:18:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoi-0004b4-TT
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:18 +0000
Received: by mail-pl1-x643.google.com with SMTP id y8so8320727plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C4qrRt1wPf/MBbE+aHUnjpKB3JMiaG6wbnmkvfoIFU0=;
 b=KXyB+1WxXpRP1vWrTaJvj7/3l6dZgZlVJLpBPmFcRTDvj8Ze6KOK96KmDFNZoVzzIn
 FNtvoTTZBOIZiH1ckNR5s2SdRXfn3U8w4gXuf0hv6uGKH33p7qdqUGgLP3Z3IwHF72Rt
 c6i0OYnFF5k/KZH8c9IKWHI/dw4IAGrGwpkm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C4qrRt1wPf/MBbE+aHUnjpKB3JMiaG6wbnmkvfoIFU0=;
 b=XHUmd6tU1tlFk4ryzp5lS2szqHHBqHPS5i4SoeqbKN7HvzWGUNdrdXTYe4vHnceTRj
 yhk1B4OA2B+TpIrv6JqZRItVw/moaf6yKTZB2sXgi9xIUqZEtGoC+WisxMUWaasjy5D9
 biEpsylr2BJ21kvnVkQMqc/tb52ta8SM5/Qe0B9DhdAoDMfOUO0A/hr/A1rvQOViXgGY
 PU9xOTOhxsZSNM9BW2TxAFLRsLE7ZgT9gTx1zVxu+CT9HFxkiBwtfBkPqSIv+R/cMVg8
 EeDIvdOK5LcQ3/gbapXZMMAAHJDPW4LX5wq9kMvW8vO50yiS8T5N8ZaBwjHXHSMBz3BM
 91MA==
X-Gm-Message-State: APjAAAVS61pOZp9rIW0sv3nOrBKMlfb4DeT3CSxgvYmNv8lhIZ/JoWUn
 il+xAy3tcTmn8wcCuLVcPoyRlpXK/cs=
X-Google-Smtp-Source: APXvYqzLrCU++P8bG2JYbV2LJH3eTrhCIrakhV3jmJylmE00AO+0AGji7cSC9oxRISHhfN0jqpW9xA==
X-Received: by 2002:a17:902:ba94:: with SMTP id
 k20mr767116pls.312.1572383656422; 
 Tue, 29 Oct 2019 14:14:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s14sm44942pfe.52.2019.10.29.14.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 17/29] alpha: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:39 -0700
Message-Id: <20191029211351.13243-18-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141416_977343_AD1FD867 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 arch/alpha/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index edc45f45523b..bc6f727278fd 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 
 #define EMITS_PT_NOTE
+#define RO_EXCEPTION_TABLE_ALIGN	16
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/thread_info.h>
@@ -35,7 +36,6 @@ SECTIONS
 	_etext = .;	/* End of text section */
 
 	RO_DATA(4096)
-	EXCEPTION_TABLE(16)
 
 	/* Will be freed after init */
 	__init_begin = ALIGN(PAGE_SIZE);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
