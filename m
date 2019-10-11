Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2146BD35A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bLdp94rbeFQO2wrG/LySkSwywYve+ZdD0+Bq4i8kGuc=; b=PZSNK1sbMhM8lgDjPAPKJf+gyD
	N1siUOR+VlSYVvh1SrPGmKk4jhkkgd60mvz0Q8C+ESYCIlAsUnVNZXQjL9Hv++qrcU5Jqi37GPgrk
	AbO0lxeq9yiBRzpJo46S9mQ5WMMHT0Lw7lP9Up705HC48IUZgM0uK9Ohvtnl8c6Lzpx8pI/QEnAos
	RyBztKf7A/cWZdfB89qIkHUdm6tCGHmzi6JrGJ9UgZz38PiF4sYljApf8r0z+F+MoVHZ9+4R2wSub
	Ow2y5YobTZL0XjQGW5qKBZKfeFo3oylilk+o2H+Z86OuTQ7x4bBoysZ2QbjXFO+9g2rIjeyckvkpL
	OS55/rPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiZ6-0002J7-4U; Fri, 11 Oct 2019 00:13:52 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYB-0001YF-HG
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:12:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id d26so4697693pgl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O8SEsfE9Vx0Hoh9SzPjKsL9yL1yAPo1QWRZUpqQZ5BE=;
 b=Gv7TLEhljmk67n05hXgtlXOGcw9tGWMBrimWEdgAzAJXSYD424xsVS93uPgKCKbOtA
 KpknhwokmtlZdLNepzxzaEOUq/9kMlkIhbFFmT4rtodx7TYV09GcbgOeE2Tx2zJJHzL4
 OqaceGT7qpam5Y2W3jNCRpS/l3/Ec0FSl0z+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O8SEsfE9Vx0Hoh9SzPjKsL9yL1yAPo1QWRZUpqQZ5BE=;
 b=mOiJLxRCWjBKaXnNGJ/WFFrtaoStHvmEDq0+4yOMtO0OCy6YqNNEh6ajhH/gRy29aN
 amOiB6xxjCGgESXZEHqqfjt057zudrJ+pMqS8OdQs7vBVrxa/oIukSfqn5wicn9CmSBl
 kgsl92G6wirugj3U1/xSinFsBTOnL4NOXM8+u54U1hL/bTXT2fpJxwocjB842QLKhH0I
 4qrOuvNpMbYJ9UdWbsHsrAjXlCT9S85whbq33CHiLwe/XRtkJPhe7xQMQk0Z9cCBgfzm
 NxymHZoWJ66srMrpxmQjbiW0ezVnYLUDZHvnKkLGJiGhIWKkxVJX0y5YeZxroXH9U+iS
 674Q==
X-Gm-Message-State: APjAAAUvVMtvJAwITmKbfVkIZd/TaOvaDn7vaMkubWdMMPshcXGo5zFb
 dRxJwAihCjl57/JLwYIVyfGusA==
X-Google-Smtp-Source: APXvYqzyaJSRYesLvc9/cYfNuiEyqu7JRw4xKIgMuM24rG56rksdn8ZIgzTA7SEJDJgU0X32uEGKXg==
X-Received: by 2002:a63:4624:: with SMTP id t36mr11232771pga.376.1570752775059; 
 Thu, 10 Oct 2019 17:12:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 2sm6371584pfo.91.2019.10.10.17.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 14/29] vmlinux.lds.h: Allow EXCEPTION_TABLE to live in
 RO_DATA
Date: Thu, 10 Oct 2019 17:05:54 -0700
Message-Id: <20191011000609.29728-15-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171255_574858_6954B723 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
