Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2918BD3557
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8DeqocfraIIkVa8+gsevviVEbY/VpH0359DpUjn/v8=; b=eMw0vQydv9YcdAhf5kMSEZ8N4h
	ZPqr74wLKQQ7UdoezhuSggAb+LcaVJKH2yqxYBOixUDINYNTwvVngum9ognrRA5q+kcL5uwOJV3Lw
	0ucYjLRmQpfnzkKiRfUYdoHKYhh/pgK2cuIfwi8YO82wO/eXZOol37NdPLmEpPrIwsRTmPQsiiCVu
	K3yjo7ZUExxqpq2m5j4XpqxU8lnq4CiPvT1Y6duFjzUaCMgIg3L4a3x7J4P6xyj5NxUSxbyVefaKw
	ySkUTSEinzrxrArJpnCdXCR3dB6Zyq9s7LDWjtK4nqFsKeJ8eKPZI8O6IXQ9Y8ZdX8rYxpaUJhuT5
	RVfw26DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiYL-0001Ym-G6; Fri, 11 Oct 2019 00:13:05 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiY9-0001XJ-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:12:55 +0000
Received: by mail-pg1-x544.google.com with SMTP id p1so4699952pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C4qrRt1wPf/MBbE+aHUnjpKB3JMiaG6wbnmkvfoIFU0=;
 b=UICOc5TKza9BTCIUokRpRXRixWvfiu//j+nLFORdk7UGk/JwyzBWx+ycolyJCZr/Zj
 USYjJEh9S6rYvbkeSR5dqh4t0wO42rK96mEpNN2uDcZMnixq8tbOTsEogIYGcWgVfWSY
 D4i8QsjQVcM0qjRwO2F5cvKbTZ8BLcWZFx7T8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C4qrRt1wPf/MBbE+aHUnjpKB3JMiaG6wbnmkvfoIFU0=;
 b=PWwazqIb90TOtEZCD/9rzuSPwqYNRdVJbP/ye3+mY2Q5Deojkk066bm+XGVtUR98ri
 MhpFI3bZspYDcKURBkKTZ712e+xVfi46Z/EU/N7B2Gvg4qHV9IUrnIzk2B/wwNjC55s5
 HNWkPUT0883EtuMh50fCCXlkD4/uhSaQRxxcXEQLZNZsi/k9tDF1zBTH9fxqbUgHBkbw
 G7ydSlNtk7N26LM/yqYZu5X1mQ3Myyui+0nBd4RJfrBL/fOLuOpFW5ifnEz/Mx7vkmCG
 kU5N1y3gpfLXpYYw4sSTFXfAjzSt9DmupduAkV58XvhHsfXE39Vnm2AxeviTS3enR9WM
 ogrQ==
X-Gm-Message-State: APjAAAV71R++hdHWrBihMhBUMz2Pr7nwtI9y1Rb2n6XBhemRYMNcEIBQ
 CxnikJehoD97tlUL03/v39lJBA==
X-Google-Smtp-Source: APXvYqwliD8aT2m8D5BS3pRkZKxejc1RX6nlHmvajkiWktD94kckhfSBhz7/A5hJ2lTUaMfRy1yv0g==
X-Received: by 2002:a62:e206:: with SMTP id a6mr13749471pfi.245.1570752773224; 
 Thu, 10 Oct 2019 17:12:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w2sm7937638pfn.57.2019.10.10.17.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 17/29] alpha: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:05:57 -0700
Message-Id: <20191011000609.29728-18-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171253_759323_A8296A5A 
X-CRM114-Status: GOOD (  12.92  )
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
