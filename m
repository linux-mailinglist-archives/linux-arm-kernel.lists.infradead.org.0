Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55266E91B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oiRcE1Mi4TeHZi5E8OLwj+ZJCIuFmdRvhtg8K+cMCDw=; b=ZB4B/Xuhgeaid3WTG8UlVvAYAg
	dAOCIRq/zE+n2M6wJPvh+iDc8+/L5txuj8ZGJpv0zgw/AK52U5njiBXWU3xwv2nO9iKt+ZgHJoRiZ
	OzdkE5a5ASE7yRCHayUhEyBDJrKlDaT7zEQL/ad7sJQUnV+Lyk1U+AE47HtWLQBXHi9fWuVR7OU4q
	VO408exlxx0kYTtsFkI6k8HGL5/x5pWy1PcLvcwPWldgZMxxOP6HTeJQE1t6ahKH+18O3xWESuert
	/F5yG6xAS35iWTtH7CK53SnOZxUx+Nl9SuVpONCFFLmjsrSJ6Z16NE48WLXa476u51cXEX9+zGdUs
	k6hgsqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYtm-0001Xa-RW; Tue, 29 Oct 2019 21:19:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYop-0004gB-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id f19so10480887pgn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wn91QvvOWXGcdAukdBFPOsAS+V9wjbJFfxE/dszqFsM=;
 b=e23Up0zA+FknG/wy6VhmeVSbZB8QZjiX0vsAsUiCjELXoASbot+u6O/Ejby5OAZXcC
 D20Gb77Tr51mlHzmSwSoKEoW2ET0UoL8WLxGdBgnuf4w6xJFYBJGnW///YPOFqwXtqCa
 uskFEoYIZvG0NYVP/lEJT6kwVN4SzBgoCgvaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wn91QvvOWXGcdAukdBFPOsAS+V9wjbJFfxE/dszqFsM=;
 b=gUukTlrCI/C9wYBPAgDkHH6SxkWPWJ1VDRUEq0CKvIHBTEcK6OKkOJvWrKnWOiwRvs
 YmRsfnkWNMaGzc82C3u4/t2lpx+F0CxAvm87Lgxtn/j/G6A+GPiJdmLf3zTpLDhv2SVQ
 +ipIdBsV6obeNgkUbTHwpJ38fZDmx3Sia/E1Rub2kBf7v6ffVqdJ6GA449eFPvAr9X3l
 lr/wzyT1zjF/Cghd6DtzUvhKxYHsZAbSYbs5bqi6F+BXROpcF5Xzu/3J+9AZb/tYqqM9
 jb6dJ7Xde3PJU7E+6XvL9N4i3/eNHiSjADZNPOU46DJhIbl8KiEXV+7gBHPM0jdkrZc3
 H6vg==
X-Gm-Message-State: APjAAAWWp2Qw+cQp5bsLQCMzsPcLq/nJGr7GzVi3lMRlaDxDgxDMPUk0
 3v0YD2IaUeCzKeooX6UG2m78rA==
X-Google-Smtp-Source: APXvYqyvNm7i+bRgKLxrIbvnaiMusgEvUvRAV9KmH69+2MPaKK4I97mcIP1d4LNMzQRr44De1wfu9w==
X-Received: by 2002:a17:90a:854c:: with SMTP id
 a12mr9437017pjw.2.1572383661980; 
 Tue, 29 Oct 2019 14:14:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k24sm149619pgl.6.2019.10.29.14.14.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 29/29] x86: Use INT3 instead of NOP for linker fill bytes
Date: Tue, 29 Oct 2019 14:13:51 -0700
Message-Id: <20191029211351.13243-30-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141423_323557_6DF5F27B 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Instead of using 0x90 (NOP) to fill bytes between functions, which makes
it easier to sloppily target functions in function pointer overwrite
attacks, fill with 0xCC (INT3) to force a trap. Also drop the space
between "=" and the value to better match the binutils documentation
https://sourceware.org/binutils/docs/ld/Output-Section-Fill.html#Output-Section-Fill

Example "objdump -d" before:

...
ffffffff810001e0 <start_cpu0>:
ffffffff810001e0:       48 8b 25 e1 b1 51 01    mov 0x151b1e1(%rip),%rsp        # ffffffff8251b3c8 <initial_stack>
ffffffff810001e7:       e9 d5 fe ff ff          jmpq   ffffffff810000c1 <secondary_startup_64+0x91>
ffffffff810001ec:       90                      nop
ffffffff810001ed:       90                      nop
ffffffff810001ee:       90                      nop
ffffffff810001ef:       90                      nop

ffffffff810001f0 <__startup_64>:
...

After:

...
ffffffff810001e0 <start_cpu0>:
ffffffff810001e0:       48 8b 25 41 79 53 01    mov 0x1537941(%rip),%rsp        # ffffffff82537b28 <initial_stack>
ffffffff810001e7:       e9 d5 fe ff ff          jmpq   ffffffff810000c1 <secondary_startup_64+0x91>
ffffffff810001ec:       cc                      int3
ffffffff810001ed:       cc                      int3
ffffffff810001ee:       cc                      int3
ffffffff810001ef:       cc                      int3

ffffffff810001f0 <__startup_64>:
...

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index b06d6e1188de..3a1a819da137 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -144,7 +144,7 @@ SECTIONS
 		*(.text.__x86.indirect_thunk)
 		__indirect_thunk_end = .;
 #endif
-	} :text = 0x9090
+	} :text =0xcccc
 
 	/* End of text section, which should occupy whole number of pages */
 	_etext = .;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
