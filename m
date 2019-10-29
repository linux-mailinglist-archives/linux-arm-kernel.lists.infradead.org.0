Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6D5E9200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KUinusBQ6roiGZosJiJt5qzjYhh+inxjg0e7cCDmrjw=; b=vB6GWyno6HOBBreoAxEeaEXATd
	A8NVQp3sccCSVPRPgEDkYIFvoO7+LMOlWvu5YZUsSUbjDQTM+W+Bbb0HKd6gl0ZqL+zebitr1JLHO
	26psA7isfwv70Mz6ijhjtFOZk+BhyjsgjW9b6NTWxW6ktcYMz40JKZhBhM4IimQ5YtqEWFYzTMdF2
	1umccHwz9ZjjA9+6UILopaATKMI4FFVJRbJmGzONFjUz7Yj2xsHUt7844R/HBxvn5tS3911dzCjTu
	wHt4M0afTXi12T2pfgdFtmdrbuCN12qTApwTI79C9QU3gOrUpC1rPgP8TMPzxe2e6zjSlrGAaLEF5
	H/LMRVVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYxw-00066E-Gw; Tue, 29 Oct 2019 21:23:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYuw-0003pf-Qb
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id u23so10537558pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k/Yn81zcF5guunRscdaPnRGMjDCCToSR8PmADiJbxp0=;
 b=FVaO6aO8ILysBPp4TcG6DRYTfhP64yNYK1NJln6frp9324XMFNpgsYZUbnEC1/BcNI
 d3y6HNjxwiZHSQPSgHJiVtceb3/6J9fduGv+Jcn399jZBSVy0f+CKF1R0ijDo77jPqTY
 64QP9FbsaOR6pmLh7yAYTYiylPerHQmxnysFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k/Yn81zcF5guunRscdaPnRGMjDCCToSR8PmADiJbxp0=;
 b=j5sRZT7ZlJLuMAvl+to7s39p4IGoBM+thkEOPU8SI+Tq3HswZY/uTa/LIBwbDp1tbK
 eS7/EeE49gmTaQ7SUJU22h1Q+q4+VzwXkvBN3bw1Tws1KZr8l6NxJWNya7SOcNgEKYeu
 Mfo/KcQZ0g2YChi8Hfo7YwT2rABugIAkchXKT9430USEYcbe3l0f/wqM+uS0hSTUqnQU
 wkoach0cpg0cvdCRBkmXIlTlfPAR7/sz3/GIWglaQp6pDEf6k5qZnmPczpQFF/QHuzgs
 1hKCkh1RLPmmNTMMzdN1NopfSnpJnAgkN9j1KlfMzsmbRh89rMfYL392KFrxaU2xaxxk
 8ySQ==
X-Gm-Message-State: APjAAAUfLYzEK5Bq/pmk4NQhhrxPHZj4bTCblW1FLW9gxmnsDMMPeSZ8
 UkhflBm/rfTwdsPwBewZ+UqtqQ==
X-Google-Smtp-Source: APXvYqzYc8Z7WdSN2lpbbY2148bXAcfqC0AwUdd9uxHNVkdGRvM/YKRGPHtsurX4YfIZG5rxXrNrPA==
X-Received: by 2002:a65:4247:: with SMTP id d7mr29666739pgq.107.1572384041015; 
 Tue, 29 Oct 2019 14:20:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u10sm29783pjy.28.2019.10.29.14.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:38 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 23/29] parisc: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:45 -0700
Message-Id: <20191029211351.13243-24-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142043_071028_773EBD6B 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Acked-by: Helge Deller <deller@gmx.de>
---
 arch/parisc/kernel/vmlinux.lds.S | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/parisc/kernel/vmlinux.lds.S b/arch/parisc/kernel/vmlinux.lds.S
index 12b3d7d5e9e4..53e29d88f99c 100644
--- a/arch/parisc/kernel/vmlinux.lds.S
+++ b/arch/parisc/kernel/vmlinux.lds.S
@@ -19,6 +19,7 @@
 				*(.data..vm0.pte)
 
 #define CC_USING_PATCHABLE_FUNCTION_ENTRY
+#define RO_EXCEPTION_TABLE_ALIGN	8
 
 #include <asm-generic/vmlinux.lds.h>
 
@@ -129,9 +130,6 @@ SECTIONS
 
 	RO_DATA(8)
 
-	/* RO because of BUILDTIME_EXTABLE_SORT */
-	EXCEPTION_TABLE(8)
-
 	/* unwind info */
 	.PARISC.unwind : {
 		__start___unwind = .;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
