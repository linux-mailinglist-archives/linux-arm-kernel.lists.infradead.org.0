Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7655AD35A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S+bPBlZoW++2qT9FA+YUDQkcYAzczudO58PkRpXBgXg=; b=iQgBfMaVsDABnXPp4S+fMGxGWg
	MxADxf+sZ4DZzDxd2jf2djBHEus00GFgzOqy4ahoOkd1Osf98WGAwzdmAHezUd/YlfF3608iE/uVR
	GxiwVW1xpE2gyOP4P+2pBo+brXcsX2mx0KN/DSdltbcMPTHx7Rt+A45do1RycvMKF8Znyc/qpxe4l
	pVL+0Yxp9hRt3cgxZjMiFzTXGJcTVn2IZs2UaVsDr5sMjuWhbVKFts8M+E4bZ9hnGeXMHy4vWaf4A
	fE9hpP08KDVZbRusvJQnwujRDsV7Te5CHdK21qWmObPqa1IsZTFhgwDn0AuabOASnEGl1M3Axq2go
	Jueu/BCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIib9-0005QF-Su; Fri, 11 Oct 2019 00:15:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiYJ-0001iF-Lp
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:13:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id b8so4678483pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8/x+eaVk+ss1aFRFRC2BuuTBFLP58LLEcIBPNJoL2cs=;
 b=fp0EZsT2tyBJy4pMM0BrQdWNH3jIqPiiR0OFuPR3KKp9NlEmrHQgmL/ZBNM1hxDEVj
 gMnsWemWjREXcL9c9lek/rM89s9e/l7HiEkBH/KqKwR6byArefKYaaiKWxjJgqllWaPD
 6nPt+boxm7/SK9xvW9TYHnHh28YvJaU9w+77g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8/x+eaVk+ss1aFRFRC2BuuTBFLP58LLEcIBPNJoL2cs=;
 b=U4Eab1F7Kncl8NhQUyVTbVA5aTFDC3hEtoh4fcIXe+I+aWOH1BPeZsdEbLPJu6VLbm
 J1sd9wGifKp0jtSCR7zB5xUpfpSre7qQDkrbx7i1ZH2M+feWHcHhcNsDkE3uNOihJr61
 eAcFZc6FicbvNmx/kbh3ri6EJkzKTUthriu9uvXGvk/qdVMGi8wwODgzUTLMEEnUk8jK
 NGrfk9FfXpSaLQ4h7M+m/SHwSlkuLZAWJjjIefO9TGHd/Ji/CqS51stCb1bEMWUFK/k1
 KjGgiHAY3KDdeLONzrANH/oS4zg+ilWhJ56E0l2WGsTRC7CV3bqWoUKfVVHj8Vx6PWRj
 /wMQ==
X-Gm-Message-State: APjAAAVj2kDRDNtnXuIIBaB7+BWbSrAmBiv80fkVkOHfx3v4Dno76ssx
 y2cqaYuOXGDAz5OclKIrC6n+TQ==
X-Google-Smtp-Source: APXvYqzYV7Ta2O1ssdo06WBxZ2tymf8EVzlYCRiZUZ2NeL/vJyas9bBJT97ICY4x4F39C1qUjsxcog==
X-Received: by 2002:a63:2350:: with SMTP id u16mr1550233pgm.103.1570752782606; 
 Thu, 10 Oct 2019 17:13:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q36sm7238812pgb.34.2019.10.10.17.12.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:12:56 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 26/29] x86/mm: Remove redundant &s on addresses
Date: Thu, 10 Oct 2019 17:06:06 -0700
Message-Id: <20191011000609.29728-27-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171304_012672_7097DB9C 
X-CRM114-Status: GOOD (  12.18  )
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
