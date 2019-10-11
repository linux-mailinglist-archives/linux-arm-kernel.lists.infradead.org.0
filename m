Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E827D3596
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9dsSs8HTCxMjNBnbaFsGfz3ypmW+7+8t8a6R0/rYhRo=; b=LOGs2yBdMXQ+UrRaDYQMVxTPMZ
	s17PJoBgGXK9amRIOzuJZyC9DRE+uGIFj6c1cDrTL/gG28eZeFReEyPtY6Mp+23FZsZvoJeSnlfdz
	+rdm7O5TQCOQLY9g2rZ7I2tP2NME7fN9qEivPi3WrD0GlRBveJWC488JAbKcB2orbnVHmNOag9hLN
	dY04keVmvpL24dpyYT0fFJnkRvqIXv7b7zbfDpXm/TGxZ41hgedN2899kuCkywmXWWnaaEOQrjhxB
	LHX96ug87YokxQNLcJ9NjllIEh5kp7CT18g2tBGZIU8xx1o8sGOsdcmKnF5SRfgltQuQpBpWYpUpF
	xc9/EnBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiYu-00024t-6S; Fri, 11 Oct 2019 00:13:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYA-0001Xu-U8
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:12:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id i76so4712574pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MdMMErkL0TaCB+AMS9GPl9j3KdOjHrVPYKwcXQnru9o=;
 b=H+PGC98bol8nQLCHGKVMnumPCpE3rZsdeAzu/63Zl+MVbbl4Sn0Xj0/MJ8+SrojoRq
 PDLZ+DEdfwhU0nbRPNgAZmDKGI8JIpf0k65nc/pgyy9bqCoX2oIyxBmx8SkXP421+0dD
 CN9qS2yDtmYN+7Q+QtAoazHu9DvsNkSQPOn/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MdMMErkL0TaCB+AMS9GPl9j3KdOjHrVPYKwcXQnru9o=;
 b=AyTrBLeEP0GNDnL0h2vDxfAnrCb/IKKqIYIL6rR+yf3sq5uHGqIBw/SCnxLU/Pc/PZ
 yqIFl94CdotkuG7WZtcPaCsfwnn+1XiDamp6aoE7WSnrB9Ize5gU8G6GVUTwU0+XMLN0
 UVdafZXFGO4SsLG7JjyrI68h1qLFxUQ4EeT/uYEF1qCdXE4PmyKrw4Sa0tUm5LJhO9Fm
 LgjYujFVxeFEWR0zmZcDJ4AEsh+fbGctYnSgjeUu9gwXzsdSxSezLvvSKgkE3VlUiw17
 gt+nhYZkb4Ocsyz3GlmGpNEVrqfotbksTPEd9hA0F1MRJQ432RC28npyoW7DOJ6qMFjl
 M9rg==
X-Gm-Message-State: APjAAAUvDRWSAD4EFmnS6mk4gVkqz2M/V1zQWTXurj/1VXet/UMpUb1M
 C5huynT0T1JCVoT8J62xyy2UpA==
X-Google-Smtp-Source: APXvYqxGtnvXMUJ3pY0jopkR+VKX/LuW1ntTFWY/1XeIzuIP03PlTUnb++z5MjVk9/9/m40WTFaCbw==
X-Received: by 2002:a63:1201:: with SMTP id h1mr14569419pgl.340.1570752774490; 
 Thu, 10 Oct 2019 17:12:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l22sm6398506pgj.4.2019.10.10.17.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 23/29] parisc: Move EXCEPTION_TABLE to RO_DATA segment
Date: Thu, 10 Oct 2019 17:06:03 -0700
Message-Id: <20191011000609.29728-24-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171254_966207_BE5473ED 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
