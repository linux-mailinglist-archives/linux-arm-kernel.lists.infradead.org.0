Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D137ED35A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUHhUAFbADyO2b3DuTeZerd2KkKMnevpM7O23GqruUU=; b=QqsIIoX3OEwI7vD+X2eR7gSW+C
	FIXJ5qcJivJHY2FFZ4fKbYmJq1W7WGKFxwkeYTkHCOR5zTh/aFERScu6xY0pRu3AqBQoJhdZmvKvH
	XjYLyotThWOXFUwV9B9bmICoRpOUyiQkDcpni+hqpGZncuLGnrJV0UbUw3bGGPHiTLFRmJVqIoZmC
	aFyblwfrBZouox76q3ROXg5w9pNS/PyZ/Gis6chiQ5c2vnMzMD21PEoM1dWSEadkbN3Pua71mF+9g
	Ucg47qd/DdJgeC4p/ExyMDUtnb+pASeycZ2YY/KNijoMDIeislG8Ne+OkYMIRIFNhV6Wh8r9ARMMN
	qUW+9xaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiaD-0003KS-7n; Fri, 11 Oct 2019 00:15:01 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYG-0001ek-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:13:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so4954720pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FW8b8NX2lcqvjxUkqurmeLymDZQTO5emHjisNR3IdMA=;
 b=P4Fuk21mSaKNwFMUmZxSt/IIxNtkXj+Ys/JxlgIct6Hlb4B3yXk/i320iivrHPWx5w
 hPi5AFgp8NwZicAqmOBJvk6GzGKldRwbd/3LLSi/srLk+eGZ7yRithSSv41nscZhF3Dk
 GELZr5uH3JzvVYuz2LSeaVERr6mu//7mpofAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FW8b8NX2lcqvjxUkqurmeLymDZQTO5emHjisNR3IdMA=;
 b=tmEyAlzgpqnMDwCwOnifHY4E0BnDVOBqicUyhkapLHaVTo4ZJGCXbzSIG4t1FLR1aY
 AvfyiCCkJZ8rn57JuEr4zpB6m1RfyrMs8Pnf71BJMnZg1737WrxKWwxgdRLwQal8dTHA
 nJfCyPwvbcbWkQy5/U9vhslbvvMo329TDL2udSw6sU9AbB0yIFqpoynWGWJx0sURDAMc
 n9lXK0GxZ3pviUknTyD8XYtMry00AFwoTfR/wKKlMPlTZA7C5wyMk7vC9af66DV2sswW
 j83w14IOO1ro4CX6MDBoTU46TxAorMZgSfpDHnOnvyBHzABzuOZRrQAX1yy6oCn947j7
 A6og==
X-Gm-Message-State: APjAAAXDIhdzgusqR3UPvwDiGZ+2Ccsh9rJcx3Mo9lPx8ED9Zcdnk0Ss
 xHfswrVT6ShXH/o+yeBHBbkW0A==
X-Google-Smtp-Source: APXvYqwSt3lft0x1k4gSFxtu2q9aicPcZGAiZFY9usQRrxAus3R2IZvqQ+Z/MfqEoiJ8yKOquglteA==
X-Received: by 2002:a17:90a:246e:: with SMTP id
 h101mr14385157pje.133.1570752779910; 
 Thu, 10 Oct 2019 17:12:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 7sm5985112pgx.26.2019.10.10.17.12.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:56 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 18/29] arm64: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:05:58 -0700
Message-Id: <20191011000609.29728-19-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171300_728467_47BA42FE 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA. Also
removes the redundant ALIGN, which is already present at the end of the
RO_DATA macro.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index a4b3e6c0680c..9128a26eb45b 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -5,6 +5,8 @@
  * Written by Martin Mares <mj@atrey.karlin.mff.cuni.cz>
  */
 
+#define RO_EXCEPTION_TABLE_ALIGN	8
+
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/kernel-pgtable.h>
@@ -135,10 +137,9 @@ SECTIONS
 	. = ALIGN(SEGMENT_ALIGN);
 	_etext = .;			/* End of text section */
 
-	RO_DATA(PAGE_SIZE)		/* everything from this point to     */
-	EXCEPTION_TABLE(8)		/* __init_begin will be marked RO NX */
+	/* everything from this point to __init_begin will be marked RO NX */
+	RO_DATA(PAGE_SIZE)
 
-	. = ALIGN(PAGE_SIZE);
 	idmap_pg_dir = .;
 	. += IDMAP_DIR_SIZE;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
