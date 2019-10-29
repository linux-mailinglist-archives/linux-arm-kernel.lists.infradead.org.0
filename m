Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1354BE91F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J7q5MXenfhesd6CF0Ps9Yk46KNvn7XBw4hgmBQaWR0g=; b=gGEsnIkWJ9I4M8Dg7uw+XoJH5h
	mN3g3M3k1uNxc3taBo8j3Ej1nMwM7G89io9Pr0iwKkG443T/oiVufSCtY025IFYy65nu/TUTIX/DH
	8LlcUP8MG6WoNRT50KolzBj7z4ZwhNEsqXNx8aS9v7p83vPmIIBozIb/wZXUZDJFlB/4uUyYkCXhn
	pMeC2JUzg9PnUoXqg2d/kGu27uNFMltgpwe7JKh9Pdzx1IS7Vbk5pSHKi5wnG8vBN2xF3ebAZ2iI7
	D3U1Q6MRCkm5+im86xShWQOUVqSCgTYxeZQC/tg44IYGB7NRy88HeDRPQgRnucarsZpxgxKY6o/5Z
	5u0r+8Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYwU-0004hM-NI; Tue, 29 Oct 2019 21:22:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYur-0003jr-Mm
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so10503488pgh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BONbSwO3yUZE8RnSGxOUsa1O5SfUej1bEo+UUtcRz+8=;
 b=Oul5joLmyxQTlWFJ6A+hcl/iw8HGyCj6DCkGeyjgSJdywZcIXcCkpDkg/j5crt4EDF
 bhYDAsbHELzhL0Rn6NEATnn7EYUCy83UJjn7yKHmtUT0TnhtwYnlsa6tIjmvmGJHa6km
 Wea7MJXRJYBJmpaXEbKQvVL7Q/hNvQrtuzUmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BONbSwO3yUZE8RnSGxOUsa1O5SfUej1bEo+UUtcRz+8=;
 b=DDBVDrgPkDm+em8yEgsmxZKwoWsxSX22IIXL3iQh2Q9/TsLL2T99TtWNp7P9fUh+TK
 zilRTfJD+ZmnwtmWpDg2xlGuRttVakawzUkHTT74+c+PPTCaRQIbEnzUOhow25I+ZEkn
 IhB6UAAveKSavOj72ufEU60+36yItf1ooOEJwFPO6PL9/Hk4ykU0dd2kWx9gsH/1Ctho
 gwGdXjolXSKwtykWy5dVf3btLRzaQZk3appag0CZxODMfbIqe4V2AKAmwW4KqJS9s8HN
 cpoy0lotpX17Mnq2QrHvvOhut1XkT+c/6Driltx3ypht/8vpXAP1Ss8Hhd0ywHwL5Lbn
 ag8Q==
X-Gm-Message-State: APjAAAVBB9jawinbnSCYaz+/MjX9fYovf7eQ89+3sn6tpVvZoUZg9Vqh
 HsHk33YXHO7KMPj9A3jSS9cv5HAZltY=
X-Google-Smtp-Source: APXvYqz1twxon/z5BlGEFoacQMYfl65IbbG8RzpA+ar3THOn4qavQ6gQvOM8c2UD/C5N90cAfco2AQ==
X-Received: by 2002:a17:90a:858a:: with SMTP id
 m10mr9848748pjn.128.1572384036327; 
 Tue, 29 Oct 2019 14:20:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a5sm34040pfk.172.2019.10.29.14.20.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 21/29] ia64: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:43 -0700
Message-Id: <20191029211351.13243-22-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142037_773950_07E2444C 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 arch/ia64/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ia64/kernel/vmlinux.lds.S b/arch/ia64/kernel/vmlinux.lds.S
index 11d5115bc44d..1ec6b703c5b4 100644
--- a/arch/ia64/kernel/vmlinux.lds.S
+++ b/arch/ia64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
 #include <asm/thread_info.h>
 
 #define EMITS_PT_NOTE
+#define RO_EXCEPTION_TABLE_ALIGN	16
 
 #include <asm-generic/vmlinux.lds.h>
 
@@ -70,7 +71,6 @@ SECTIONS {
 	/*
 	 * Read-only data
 	 */
-	EXCEPTION_TABLE(16)
 
 	/* MCA table */
 	. = ALIGN(16);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
