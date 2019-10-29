Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED1E91B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S+bPBlZoW++2qT9FA+YUDQkcYAzczudO58PkRpXBgXg=; b=CrItsNoIlYGe9qRnpar6wgthpT
	fjhKE6Jc4oO69Omajg8ZsmuL0JzM25wJaBxGUQRindaQ5lABmE3nzu1LFnu4nawtGyfweoZX8OE97
	VvDgOiv9oLnVxjtJAGZODFr84nwF9Z29d/hfLRKNWsNFQ8v5SMWhSFtfKzet8O2EZxnENqIU9sm/D
	SH8FXD1SsLck5zwoohNH31FZLT3O8AK2ETP7JX/P72C3QItOfALYNREHe1VrzlZKhCjj2TnThcPkg
	BN7Jh3O6tkvhR59MEy0GJbKbhBHZbXrX529j7jSaEkwVvQRVo68w4jUYZJTTkgTVV9eWAdjHc4Ygf
	jYlN4Spg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYu9-0001nb-KY; Tue, 29 Oct 2019 21:19:53 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYop-0004gg-9a
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:24 +0000
Received: by mail-pf1-x441.google.com with SMTP id r4so4862762pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8/x+eaVk+ss1aFRFRC2BuuTBFLP58LLEcIBPNJoL2cs=;
 b=E6/biqz3RgqOQZPzeBNo/5tlnkftQUoW2mf9CE298XsO5001NCPklzzOKT7E9Bm3jX
 WYxXOa5pUZ578xzGENT4FOXN1yp+4ICP9ASH5NBrudMTG4WbEhivqJqu8m13wiyzO8yL
 cP3ipZ2zK8zGQCNcxdhBWtwypbIJDVwNy8VIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8/x+eaVk+ss1aFRFRC2BuuTBFLP58LLEcIBPNJoL2cs=;
 b=dJ9v6XhQwulJWA6/kagabUjdBvW1iD8QYmUOdbNANv0cjceYNSC61UnG+g/gyKi250
 +7osZpTgjP1AEKJ1cdGNFoMYOj82oqcAA6voC2rCByeYHfZ7CmPZsl8i/E+rOWHlrVHy
 bbNunmIlPIkCwCkwow512ODbvLWAKSG62PXC34yVXASEpaXJMtqZHj0pXlOqsjIRxS2f
 /+qhJC7WbsNUx8wVU5Y0OUTB80FVfYd5OdUixjjvL9fYpHQ7Fq5dDqWG0ZPcPEbMH3Ox
 1Q/RuftxtkVgQY4N6ShVTTWL706UtYziJ/lh24dBnLaGTDjr4K8mjIQpErptpjN1ZDGC
 Uj3w==
X-Gm-Message-State: APjAAAWv+aDepPVnIUfEr03in4ooUzKA5UMNUSlKlxFGH/hs9JrfygvS
 ahBm4z4ForKkCNupFDx3GNfLHA==
X-Google-Smtp-Source: APXvYqwo2RcUgs96Fy+CgTCDcRMaQZuOmvdYyYfnGkyPMENywMQNuhVEa5HaEFheZlG3BkJsaVvKAw==
X-Received: by 2002:a62:5442:: with SMTP id i63mr29128680pfb.220.1572383662624; 
 Tue, 29 Oct 2019 14:14:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d14sm48547pfh.36.2019.10.29.14.14.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 26/29] x86/mm: Remove redundant &s on addresses
Date: Tue, 29 Oct 2019 14:13:48 -0700
Message-Id: <20191029211351.13243-27-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141423_464947_2F58AC73 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The &s on addresses are redundant. Remove them to match all the other
similar functions.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/mm/init_64.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index 26299e9ce6da..e67ddca8b7a8 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -1300,9 +1300,9 @@ void mark_rodata_ro(void)
 {
 	unsigned long start = PFN_ALIGN(_text);
 	unsigned long rodata_start = PFN_ALIGN(__start_rodata);
-	unsigned long end = (unsigned long) &__end_rodata_hpage_align;
-	unsigned long text_end = PFN_ALIGN(&_etext);
-	unsigned long rodata_end = PFN_ALIGN(&__end_rodata);
+	unsigned long end = (unsigned long)__end_rodata_hpage_align;
+	unsigned long text_end = PFN_ALIGN(_etext);
+	unsigned long rodata_end = PFN_ALIGN(__end_rodata);
 	unsigned long all_end;
 
 	printk(KERN_INFO "Write protecting the kernel read-only data: %luk\n",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
