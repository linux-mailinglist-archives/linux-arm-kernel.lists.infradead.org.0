Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AC0D353E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HwSQvjcG1WWjoQkd+gjKEkGGfF6QWxuyH+v0mzcanHg=; b=WGSqGIFBfoB4Q4oJqt/fXD/0Xo
	walTCvuQ7x+aRcdv9D/mFzZ1bfgufGgDg9hHuv+q3jeyt+g/vXdLfD6iOd0RgzkHjMQTAJjdLPvxv
	PZWYZsGzJh0xze7c8unvizIcgJuS0KTd6Ipy0b6UcRfGLgdz1/3y89hOm50jUovkrMyoxWyFTJ9R2
	Bjblfki5qonyh1h5QhTwyKegQmQZc34cQWteVg/O0btAQNmAe+2uZdhL3zBH5ScllnknQYdF0nlXY
	pLRHhQ+0sJSE7QEHnt2a1NpNBfH9x9TX+51n0ij500RtJVVBJa8h1bHn16oVfu3kc2MPFGax7OTCC
	Q9CLQMFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiTn-00054y-Hg; Fri, 11 Oct 2019 00:08:23 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiRv-0003Z4-5Z
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id e1so4695226pgj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bl12US5Yp4ZwWvaEnQTrcBCg3LoqQRPWnxt7WskOqWM=;
 b=MPX+iPjeGRBi9W7v8BaGtEQ7Z0gPfVJ+oEGukA1Qx5FZM3UbvHSgUUNTtJdbrvF0DJ
 Lniffb/JdJpDuc2hFDvI6xqzg3lDsRa6goVJDwHcZqncxHEEePqIwXD0wmcvebpFmc8f
 hOMnZpwmNvMPGn7QBG585RWKNTpfnKyDCS46Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bl12US5Yp4ZwWvaEnQTrcBCg3LoqQRPWnxt7WskOqWM=;
 b=RNaTZe42oU53MgC3yWKMyzvMHL0S4EVpDCH8zqlOFTgHpYpGi3/MajpqJ0gp/ym2wk
 iIvkYwGyxTF84yCVrrtnJ1zILwZ/nfffOubObpkeUM/vI/mvcUMmGmgDtrNAAG0EGk8K
 uu+SOzfIV7ZbmjtN8UK5kNImVKA7p9hURKKpIpzUKrzxKXXSUg+D/nkeCNF2Zg/S9YF+
 cMJS2v4dAFD15r1ZM6OesUqEx67K6fQby3UugtNZO8D0JBln9pe6a0KJx6Y3bdueutMw
 CG40fNFt7cUx4NjALlAzxArhUg6L7AzrymhHIGhujNwswZEJVk9QZsCiXPkaAiki4yVy
 mi5w==
X-Gm-Message-State: APjAAAWPim8HcTIZ63r3BKkIliVgmCqIeom1VgvBXPC71WFxI1ooH7T7
 8WPi7f8zGsAXHOr9NdZBI6yqtA==
X-Google-Smtp-Source: APXvYqx/QRL/EGj1UNqOw9cSZc5qNyXaSBqEdm+ZR6Z42olkPMiWXRzScwFI4gnTT7Nu98OPft+Atg==
X-Received: by 2002:a17:90a:9318:: with SMTP id
 p24mr14062359pjo.31.1570752386117; 
 Thu, 10 Oct 2019 17:06:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 6sm10807049pfa.162.2019.10.10.17.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:24 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 06/29] s390: Move RO_DATA into "text" PT_LOAD Program Header
Date: Thu, 10 Oct 2019 17:05:46 -0700
Message-Id: <20191011000609.29728-7-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170627_325808_F530A4AD 
X-CRM114-Status: GOOD (  11.16  )
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

In preparation for moving NOTES into RO_DATA, move RO_DATA back into the
"text" PT_LOAD Program Header, as done with other architectures. The
"data" PT_LOAD now starts with the writable data section.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/s390/kernel/vmlinux.lds.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/s390/kernel/vmlinux.lds.S b/arch/s390/kernel/vmlinux.lds.S
index 7e0eb4020917..13294fef473e 100644
--- a/arch/s390/kernel/vmlinux.lds.S
+++ b/arch/s390/kernel/vmlinux.lds.S
@@ -52,7 +52,7 @@ SECTIONS
 
 	NOTES :text :note
 
-	.dummy : { *(.dummy) } :data
+	.dummy : { *(.dummy) } :text
 
 	RO_DATA_SECTION(PAGE_SIZE)
 
@@ -64,7 +64,7 @@ SECTIONS
 	.data..ro_after_init : {
 		 *(.data..ro_after_init)
 		JUMP_TABLE_DATA
-	}
+	} :data
 	EXCEPTION_TABLE(16)
 	. = ALIGN(PAGE_SIZE);
 	__end_ro_after_init = .;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
