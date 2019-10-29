Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD72E91AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bLdp94rbeFQO2wrG/LySkSwywYve+ZdD0+Bq4i8kGuc=; b=mwK9dB1chgOmWyfRXIcJLhU0h7
	Zbnm4XpTZkLsoePY/Cl6AmqwKYLnVcYJgXnrxwhtroM8KNY3JK9xKbCsLLOfb4aJP70RHGHq4n7E3
	d88x5x1fFW3sUepVZyIm7ljN9NP+wW3zjtbM/0xdBgGYaBf0UAYetT+ybzDzFgRnkOYub8s37tC7R
	wxkF18l1IdU9/FLLu0NkA63KB8raunIGA41HsmTrjwq2iR24ZSKhX9mpyAOXG3HhDFmCBSZwQf0so
	OayPcairTnKsVykNByIHdZavrdP9QBdTheagfbtfhL8Md/TqU5Oof6eIssc53q80Jou5VUSIOU026
	IlefxwjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYsf-0000Tm-8A; Tue, 29 Oct 2019 21:18:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYom-0004cR-2s
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id u9so5808429pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O8SEsfE9Vx0Hoh9SzPjKsL9yL1yAPo1QWRZUpqQZ5BE=;
 b=MVZa5dInIYyT6ti5/NzPmeCXtnqhowzk1esSCyG5Z9GszZCjPRJs6Uq1nYd3sgJ/iy
 I5nUIKu579OFsUgb17L62TPPY9/qPbLOFHiVmTqqoh0Us96LJOlq47Tr0Nf+DbCIpYU0
 LT6TLHPIsd3z+g0ec+N7peRpjdVoC7wJzSqzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O8SEsfE9Vx0Hoh9SzPjKsL9yL1yAPo1QWRZUpqQZ5BE=;
 b=O200SYsqw1fmBGa3vb4urpSFzvKMJfHmNRbKV5ddHkIRJoDRuI/cQBvmWa2ni0KPt4
 RGu/I/KgDFmpK/RpyGoluEmfTFE2Kfr71kHC6I01ksT7kUZ+c0z42rz8dQRCMpjQIF42
 o+zv1u2qwGI4KupSsi4MizTcSINqUb4b6EpIqaevZI8pHfVKo9ApPhswx1g1p2hMOdGz
 HKtPl9unKv5Yeyxs8J+mnTYQGe3xMO7/DAmUysPPlIj89GyYZvzoaqYZ1mlqUySGpvzp
 VECdVZMSKP1uhb/BNVFeFStJg/aLd6IhgebmksqY5REt1tQOyl8z/7pL9ZmjLubzPj/Y
 GoEQ==
X-Gm-Message-State: APjAAAVsf6isXmIBjxgnpToTGkXKVa8Sd7HCkoVDUUStqXbLMykBS8zJ
 FSGyS5pW055SompbjcFmTNh/ow==
X-Google-Smtp-Source: APXvYqxMUhvu1n5WvrxswEvafiIeF+Kxf/nCho5z0X/7ybjlTknoEC2LOXXwkMiKGbP/o5SDd9yzaA==
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr30299789pgm.120.1572383657598; 
 Tue, 29 Oct 2019 14:14:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w2sm43191pjt.1.2019.10.29.14.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 14/29] vmlinux.lds.h: Allow EXCEPTION_TABLE to live in
 RO_DATA
Date: Tue, 29 Oct 2019 14:13:36 -0700
Message-Id: <20191029211351.13243-15-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141420_163649_6BF0247F 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Many architectures have an EXCEPTION_TABLE that only needs to
be readable. As such, it should live in RO_DATA. Create a macro to
identify this case for the architectures that can move EXCEPTION_TABLE
into RO_DATA.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 include/asm-generic/vmlinux.lds.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 356078e50a5c..9867d8e41eed 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -69,6 +69,17 @@
 #define NOTES_HEADERS_RESTORE
 #endif
 
+/*
+ * Some architectures have non-executable read-only exception tables.
+ * They can be added to the RO_DATA segment by specifying their desired
+ * alignment.
+ */
+#ifdef RO_EXCEPTION_TABLE_ALIGN
+#define RO_EXCEPTION_TABLE	EXCEPTION_TABLE(RO_EXCEPTION_TABLE_ALIGN)
+#else
+#define RO_EXCEPTION_TABLE
+#endif
+
 /* Align . to a 8 byte boundary equals to maximum function alignment. */
 #define ALIGN_FUNCTION()  . = ALIGN(8)
 
@@ -513,6 +524,7 @@
 		__stop___modver = .;					\
 	}								\
 									\
+	RO_EXCEPTION_TABLE						\
 	NOTES								\
 									\
 	. = ALIGN((align));						\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
